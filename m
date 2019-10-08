Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A68ACFA00
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 14:37:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S0sPaRw5UOb1Y6lc635qR4gQGK1OLhe7bLDWYGmETcI=; b=W8X+lweDlnHWMX
	Qf5BZRf/vB73ny3TcUtSkgMkxDYfSYXuprzHJyutDFVN3h0klpIS+dCtspu7LdaAnfmP0iGnqMfzV
	El31vh+Mt3owMZ/InvJkotRSqDH+Q/BLvRQNJvZd4zLKNXMKOSvM4IkrYemGJ6Q5kIaGHLZ3hIVbY
	Wi+gmzlGbxUXw3XmgPuXYf8MJ4cD/C9TxHquitBBFuxd6lPkC2+ajeQrluVs7WTwzz4QBvLe/czgU
	CrKlO0T4NNcbEdr3JVdgarFA6MFsegIq0A6HYigBrAdUo+Ua/ugVuIuELgU7OuvT5exl19TJqzDuZ
	oxRHfa93M+yqinRMeTqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHokL-0002xY-6g; Tue, 08 Oct 2019 12:37:45 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHohd-0007s3-07
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 12:35:01 +0000
Received: from [167.98.27.226] (helo=rainbowdash.codethink.co.uk)
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iHoha-00013T-S9; Tue, 08 Oct 2019 13:34:54 +0100
Received: from ben by rainbowdash.codethink.co.uk with local (Exim 4.92.2)
 (envelope-from <ben@rainbowdash.codethink.co.uk>)
 id 1iHoha-0000Ro-2j; Tue, 08 Oct 2019 13:34:54 +0100
From: Ben Dooks <ben.dooks@codethink.co.uk>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 10/11] ARM: mach-prima2: include linux/rtc/sirfsoc_rtciobrg.h
Date: Tue,  8 Oct 2019 13:34:52 +0100
Message-Id: <20191008123453.1651-10-ben.dooks@codethink.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191008123453.1651-1-ben.dooks@codethink.co.uk>
References: <20191008123453.1651-1-ben.dooks@codethink.co.uk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_053457_216565_62532E07 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.8.82 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-kernel@lists.codethink.co.uk, Barry Song <baohua@kernel.org>,
 Ben Dooks <ben.dooks@codethink.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A numbre of the rtciobrg.c functions are declared in the
<linux/rtc/sirfsoc_rtciobrg.h> so include it to silence
the following warnings:

arch/arm/mach-prima2/rtciobrg.c:40:6: warning: symbol 'sirfsoc_rtc_iobrg_besyncing' was not declared. Should it be static?
arch/arm/mach-prima2/rtciobrg.c:65:5: warning: symbol 'sirfsoc_rtc_iobrg_readl' was not declared. Should it be static?
arch/arm/mach-prima2/rtciobrg.c:90:6: warning: symbol 'sirfsoc_rtc_iobrg_writel' was not declared. Should it be static?
arch/arm/mach-prima2/rtciobrg.c:137:15: warning: symbol 'devm_regmap_init_iobg' was not declared. Should it be static?

Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
---
Cc: Barry Song <baohua@kernel.org>
---
 arch/arm/mach-prima2/rtciobrg.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/mach-prima2/rtciobrg.c b/arch/arm/mach-prima2/rtciobrg.c
index f5177219732a..ba6aee0aadce 100644
--- a/arch/arm/mach-prima2/rtciobrg.c
+++ b/arch/arm/mach-prima2/rtciobrg.c
@@ -15,6 +15,8 @@
 #include <linux/of_device.h>
 #include <linux/of_platform.h>
 
+#include <linux/rtc/sirfsoc_rtciobrg.h>
+
 #define SIRFSOC_CPUIOBRG_CTRL           0x00
 #define SIRFSOC_CPUIOBRG_WRBE           0x04
 #define SIRFSOC_CPUIOBRG_ADDR           0x08
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
