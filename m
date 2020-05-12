Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80ABC1CEAD9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 04:35:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lBOabyth+RjCimz0aFn4H5Mftq/V4BTb7tJrtYCNQpE=; b=u9Xy/I9E7AyiOo
	tlBy+vkEPIvU860hB9Pj6gE362WtopiEdpNsNuMZ3mF7jDbWBSMRGWkqO7JpxvidVQHPJub5Z5goA
	7ANTXg/QQnXPEG0T2sOY2kq+WEa6KBrCKZXh53nIoxmMIVu67WTbTR7cKRIMLu54mUgjihffIggLw
	FbLPXQgaxUF3LuMfOq4Qncximz2YdCH+7Y0uh7agFlEjbIj0sYQkgNoURej9aGu/mWhVpRCHtKQBH
	IyHySc3mjLhjn84Rt87tWcSk3jvLMPDnBq3KxPHvtqu10vW/qrJFxEe6BXptH0N2FPcdwoDjNunxo
	QfNwfqbMftSFRXUxEMXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYKlS-0004cS-RI; Tue, 12 May 2020 02:35:26 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYKlF-0004ar-46
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 02:35:14 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 3F0AFF321171ACDED613;
 Tue, 12 May 2020 10:35:11 +0800 (CST)
Received: from linux-lmwb.huawei.com (10.175.103.112) by
 DGGEMS401-HUB.china.huawei.com (10.3.19.201) with Microsoft SMTP Server id
 14.3.487.0; Tue, 12 May 2020 10:35:05 +0800
From: Samuel Zou <zou_wei@huawei.com>
To: <khilman@kernel.org>, <tony@atomide.com>, <linux@armlinux.org.uk>
Subject: [PATCH -next] ARM: OMAP2+: pm33xx-core: Make am43xx_get_rtc_base_addr
 static
Date: Tue, 12 May 2020 10:41:11 +0800
Message-ID: <1589251271-106359-1-git-send-email-zou_wei@huawei.com>
X-Mailer: git-send-email 2.6.2
MIME-Version: 1.0
X-Originating-IP: [10.175.103.112]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_193513_336952_EDE09375 
X-CRM114-Status: GOOD (  10.12  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.190 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Samuel Zou <zou_wei@huawei.com>, linux-omap@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix the following sparse warning:

arch/arm/mach-omap2/pm33xx-core.c:270:14: warning: symbol 'am43xx_get_rtc_base_addr' was not declared.

The am43xx_get_rtc_base_addr has only call site within pm33xx-core.c
It should be static

Fixes: 8c5a916f4c88 ("ARM: OMAP2+: sleep33/43xx: Add RTC-Mode support")
Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Samuel Zou <zou_wei@huawei.com>
---
 arch/arm/mach-omap2/pm33xx-core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-omap2/pm33xx-core.c b/arch/arm/mach-omap2/pm33xx-core.c
index 5455fc9..58236c7 100644
--- a/arch/arm/mach-omap2/pm33xx-core.c
+++ b/arch/arm/mach-omap2/pm33xx-core.c
@@ -267,7 +267,7 @@ static struct am33xx_pm_sram_addr *amx3_get_sram_addrs(void)
 		return NULL;
 }
 
-void __iomem *am43xx_get_rtc_base_addr(void)
+static void __iomem *am43xx_get_rtc_base_addr(void)
 {
 	rtc_oh = omap_hwmod_lookup("rtc");
 
-- 
2.6.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
