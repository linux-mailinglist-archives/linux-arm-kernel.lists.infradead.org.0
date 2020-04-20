Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E7DF1B0FE8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 17:23:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=5Av70a/amsSuZo3jjk/O/LcFb8SyWXVp86G5W9WfTcM=; b=X0Z
	SFcD5gAXz4JPMRC3Xp/q3avpvkTuPfrwa4J4ZT3ctmhAcBIc9ZbJWWQkdlcxlZ/XuX+6Sxnv17yh9
	d80lpyg+eFGKf+lyED0iy7oA9S7pJGR+Z10Fbo5oKQ9acW+NNCHD81J9uWrtbVdyalTL5mjQ0fkEa
	ZXBx0+Wy+AkTfQKeJe837lOizWoRvQPygHqtRMwnCh4T2mFQrhgguIVLd2QYOWEmcq3+9xJykKRDg
	JiRkqKJLHAa8/S1qlSK+Qae0uFyG9rMj5kWrVZ/kl1Z0gyfWQejtSuSAjN6ROBFinSHDYkTlZYQzt
	/ngO34JGKYx23DrH75X73IOiGW3p9Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQYGr-0007l5-AS; Mon, 20 Apr 2020 15:23:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQYGh-0007jE-V7
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 15:23:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BFE0B31B;
 Mon, 20 Apr 2020 08:23:28 -0700 (PDT)
Received: from e120937-lin.home (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 109163F73D;
 Mon, 20 Apr 2020 08:23:27 -0700 (PDT)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/4] SCMI various fixes to Response handling code
Date: Mon, 20 Apr 2020 16:23:11 +0100
Message-Id: <20200420152315.21008-1-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_082332_044592_FF5E3E21 
X-CRM114-Status: UNSURE (   7.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: cristian.marussi@arm.com, sudeep.holla@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi

This serie bring a few fixes related to handling of responses in some
corner cases; renaming also .clear_notification() into clear_channel(),
being indeed a method of general utility not strictly related to
notifications. (and needed by these same fixes)

Based on scmi-next 5.7 [1], on top of:

commit a2fe63248225 ("firmware: arm_scmi: Fix return error code in
							smc_send_message")

[1] git://git.kernel.org/pub/scm/linux/kernel/git/sudeep.holla/linux.git


Cristian Marussi (4):
  firmware: arm_scmi: Rename .clear_notification() transport_ops
  firmware: arm_scmi: Clear channel on reception of unexpected responses
  firmware: arm_scmi: Clear channel for delayed responses
  firmware: arm_scmi: Fix handling of unexpected delayed responses

 drivers/firmware/arm_scmi/common.h  |  6 +++---
 drivers/firmware/arm_scmi/driver.c  | 26 ++++++++++++++++++++++----
 drivers/firmware/arm_scmi/mailbox.c |  6 +++---
 drivers/firmware/arm_scmi/shmem.c   |  2 +-
 4 files changed, 29 insertions(+), 11 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
