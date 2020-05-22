Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29A321DE725
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 14:50:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Ow/S6Ph8608OhJsHvzjZkfBQQnYiRlJ3Wp1qq8bVU7c=; b=hOC
	GCjXzAyeLum7FUbfJKDw/Jk8goY9lKFg/My2rcyLSHq5khU+X7P/HS7YCqAnCNzfTPU1KgC31H4JO
	LHEBIU/+bpUsJG98EKHBVB9nV7Ray4UA5zoWVp7aqpGKCy9LHys6bFcXeOU92pHcCxVijqoAfgBXI
	uJwE2x67ueoLS//ENxCA8sCx01EBN5UJVoQaqXfw3HbYSpKndOFFkmVy3gHe01cgucfjdjKcM6wHX
	7oPmUMHdFCtE7o9p019UTlDrwqMrgnjJmHJy9ldzm0i6gUvSs4LQPR/N5sPDHH7rwad6PV0oLHMqV
	Y8QPHbGjAURkDHekafORrlmoaJY4IXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc781-0003Po-2n; Fri, 22 May 2020 12:50:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc77j-0002PM-LD
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 12:50:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D92A555D;
 Fri, 22 May 2020 05:50:00 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 99A583F68F;
 Fri, 22 May 2020 05:49:59 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/2] base: soc: Add JEP106 manufacturer's identification code
Date: Fri, 22 May 2020 13:49:49 +0100
Message-Id: <20200522124951.35776-1-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_055003_741521_B8407B4E 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 harb@amperecomputing.com, Sudeep Holla <sudeep.holla@arm.com>,
 Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

While attempting to add custom sysfs attributes for SMCCC ARCH_SOC_ID
Arnd suggested to make it generic. Here is my first attempt.

The original thread/discussion can be found here[1]

Regards,
Sudeep

[1] https://lore.kernel.org/r/CAK8P3a3dV0B26XE3oFQGTFf8EWV0AHoLudNtpSSB_t+pCfkOkQ@mail.gmail.com/

Sudeep Holla (2):
  base: soc: Add JEDEC JEP106 manufacturer's identification code attribute
  firmware: smccc: Add ARCH_SOC_ID support

 Documentation/ABI/testing/sysfs-devices-soc |  31 ++++++
 drivers/base/soc.c                          |  12 +++
 drivers/firmware/smccc/Kconfig              |   9 ++
 drivers/firmware/smccc/Makefile             |   1 +
 drivers/firmware/smccc/soc_id.c             | 113 ++++++++++++++++++++
 include/linux/arm-smccc.h                   |   5 +
 include/linux/sys_soc.h                     |   1 +
 7 files changed, 172 insertions(+)
 create mode 100644 drivers/firmware/smccc/soc_id.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
