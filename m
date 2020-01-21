Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2714E143B6D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 11:53:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=u6iZY+Vl/BjHy77FX36QLAdhJqJsyDNlcU17vjBhUCc=; b=dm88YmN9KtlpgtpfNjumGT+SdS
	jiCjnZsli2NTpQSMWVBFMSQMuXuFhyXzEMbTyHh6DbE/4vahjljGdt/liQpYPmHYt4GRZ+rTT6UmX
	YXbe/V1C53omXZUjOhy7195nzjwShsGCCYFFNZRikbRGc+ZwQS+iYSWgnyc3AcfeTbVJ39U83IYM5
	nO+YRl8ymowViZKqpKlET+3Lbs6F8Y9YeHuMwHz6Eom7rUuokrGvOL1fySqQ/ODqud68r6D7K/Pos
	mtFGl4xitV222QAZUqIsd8+lMj6z1r5mjVXsNEOxld80+tkelKbMZBFc8Rljdjs+gO/EijPR+7ZpG
	STyiXzuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itrA4-0000MR-Qa; Tue, 21 Jan 2020 10:53:32 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itr9x-0000Ak-4J
 for linux-arm-kernel@bombadil.infradead.org; Tue, 21 Jan 2020 10:53:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6BYyYp428jzIPxrYicfIqrJM+sDswxy9E/2kb9MnsS8=; b=UpQwHIhIja3zBFr1+El7s5cnt
 CvJP7kHlmTtWK5xbqQENzpCehUaWGTlsocSAbv16xecoWXEP/MXuED5figKkcgjG1LbrDNusJ+mic
 6ICuffQEqR/dMxTYQWkT5WV9YzPRKLzcUV6TyqYHWsmB5U1BrIsR8SjiRCnxykRnMCofxmmrqtrjD
 BtoGyhL34WfheVC2AOxSqwve9ghqEc+NERsYf9IN8JVoa1mZm9fiHs+BwuH0zZRAMb5sv+DaYCl3F
 ynFMlwoUf38o8+OLZhgwqOGfS7WY7Ue5kZ0Ftdif9wLiK6+QprxywSEO+z5+gvC1WnqwTXJGRl4fr
 yzF3H9Eng==;
Received: from newton.telenet-ops.be ([2a02:1800:120:4::f00:d])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itqvC-0006lU-Fb
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 10:38:14 +0000
Received: from laurent.telenet-ops.be (laurent.telenet-ops.be
 [IPv6:2a02:1800:110:4::f00:19])
 by newton.telenet-ops.be (Postfix) with ESMTPS id 4824jk58srzMqvKm
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Jan 2020 11:37:30 +0100 (CET)
Received: from ramsan ([84.195.182.253]) by laurent.telenet-ops.be with bizsmtp
 id sydS2100E5USYZQ01ydSJT; Tue, 21 Jan 2020 11:37:26 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1itquU-00011H-3a; Tue, 21 Jan 2020 11:37:26 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1itquU-0000Tw-29; Tue, 21 Jan 2020 11:37:26 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>,
 Olof Johansson <olof@lixom.net>
Subject: [PATCH 05/20] ARM: at91: Drop unneeded select of COMMON_CLK
Date: Tue, 21 Jan 2020 11:37:07 +0100
Message-Id: <20200121103722.1781-5-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200121103722.1781-1-geert+renesas@glider.be>
References: <20200121103413.1337-1-geert+renesas@glider.be>
 <20200121103722.1781-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_103810_546679_A42E2227 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on casper.infradead.org summary:
 Content analysis details:   (0.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a02:1800:120:4:0:0:f00:d listed in] [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Support for AT91/Microchip SoCs depends on ARCH_MULTIPLATFORM or
ARM_SINGLE_ARMV7M, which both select COMMON_CLK.
Hence there is no need for COMMON_CLK_AT91 to select COMMON_CLK.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Nicolas Ferre <nicolas.ferre@microchip.com>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Ludovic Desroches <ludovic.desroches@microchip.com>
---
All patches in this series are independent of each other.
Cover letter at https://lore.kernel.org/r/20200121103413.1337-1-geert+renesas@glider.be

 arch/arm/mach-at91/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index af41725fcc72d1a4..dc7ed483306348c8 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -136,7 +136,6 @@ config HAVE_AT91_USB_CLK
 
 config COMMON_CLK_AT91
 	bool
-	select COMMON_CLK
 	select MFD_SYSCON
 
 config HAVE_AT91_SMD
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
