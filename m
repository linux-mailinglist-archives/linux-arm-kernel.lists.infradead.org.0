Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E5A10E9C1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 12:46:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WQoQwGxwnmGyvXmzKeGZOM8lQAGCgLQgIm0w7Ntt/wI=; b=YPAUzivkxUZmAt
	na0x+Ilv3dXgC1azM/Dmjc90NyNIkRZreHYDkNcn3NKb9HZXffHOsOiECk0NI/Aa3jTb9gAbbRFpq
	gc/5coXQAJouFwB9+oVRv8lfwWDzDKRPYhQyK50oTp7KmLeoNar31kxftcwKqFdZ4TJ2vhmtmWU4q
	Q7oqHauUYydbtOsMIUxSitA3pwEJ8cuw8y9uYRSZtkF9xkxOYM7Zhcn1AImuDyofgqcaBGEMCG+ff
	P9M454dEtz0pAh69exQwDdIzkCN13/00VyXUMzH7xtqmvmPTNlRpx/yWxjEe2zSGB719cbjFKYOZF
	RhyKi/wzWd9pWIEKH5mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibk9d-0002XB-Su; Mon, 02 Dec 2019 11:46:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibk9T-0002We-QW
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 11:46:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 76BD030E;
 Mon,  2 Dec 2019 03:46:02 -0800 (PST)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7786B3F68E;
 Mon,  2 Dec 2019 03:46:01 -0800 (PST)
Date: Mon, 2 Dec 2019 11:45:59 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: ARM SoC Team <arm@kernel.org>, SoC Team <soc@kernel.org>,
 ALKML <linux-arm-kernel@lists.infradead.org>
Subject: [GIT PULL] firmware: arm_scmi: fix for v5.5
Message-ID: <20191202114559.GB20965@bogus>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_034603_902636_1E2A30A4 
X-CRM114-Status: UNSURE (   9.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Olof Johansson <olof@lixom.net>, Sudeep Holla <sudeep.holla@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM SoC Team,

Please pull !

Regards,
Sudeep

-->8

The following changes since commit 7bd39bc6bfdf96f5df0f92199bbc1a3ee2f2adb8:

  firmware: arm_scmi: Fix doorbell ring logic for !CONFIG_64BIT (2019-11-14 11:13:50 +0000)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/sudeep.holla/linux.git tags/scmi-fix-5.5-2

for you to fetch changes up to 8305e90a894f82c278c17e51a28459deee78b263:

  firmware: arm_scmi: Avoid double free in error flow (2019-11-26 10:50:30 +0000)

----------------------------------------------------------------
ARM SCMI fix for v5.5

Yet another single fix to avoid double freeing in scmi_device_create
error path

----------------------------------------------------------------
Wen Yang (1):
      firmware: arm_scmi: Avoid double free in error flow

 drivers/firmware/arm_scmi/bus.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
