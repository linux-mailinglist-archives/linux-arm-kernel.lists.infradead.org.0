Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5D8813EF2A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 19:14:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=r/sU5I6dxHx0eivqHyow/qV+p+2xt/AY4vCVObDjrPM=; b=EwtbHUPwxb3GkB
	NbRJxweZIGVKhs1IgduleJevMR0M4OB+lkeOxWbCeTwXVUoAavFIcVABCSYuf5hR3Oed5J0eyBTi5
	yZZWWDqe6q9EBYb2zv41NSri6oK1k82NLsj04LQ/j27q3elzUtK12LIls3yOd4UMetpIaVrZBFTYd
	QvzvcR0SymM+DHA/jngaCToORJ/Ydn4on5VsYFUOAf5GNANmGeV5U8n80DWGkJ5E4A6ddCVM9evk9
	czUVQVG7ksqEPCXkqSbPI806tb3ymjKXQJrAjN8EsNw4t+LnZXz28IkVvVK5gvm4sSKShgn7aHNC5
	7CQGS3TdpUpf1XajF3kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is9em-00056b-Ds; Thu, 16 Jan 2020 18:14:12 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is92v-00046R-3g
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 17:35:07 +0000
X-Originating-IP: 90.65.102.129
Received: from localhost (lfbn-lyo-1-1670-129.w90-65.abo.wanadoo.fr
 [90.65.102.129])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 0900B2000B;
 Thu, 16 Jan 2020 17:34:54 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] ARM: dts: at91: at91sam9n12: properly order shdwc node
Date: Thu, 16 Jan 2020 18:34:52 +0100
Message-Id: <20200116173453.427267-1-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_093505_325682_A702E36D 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The shdwc node is not at is correct place, order it properly

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 arch/arm/boot/dts/at91sam9n12.dtsi | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/at91sam9n12.dtsi b/arch/arm/boot/dts/at91sam9n12.dtsi
index ea675174432e..d6eacb2e3792 100644
--- a/arch/arm/boot/dts/at91sam9n12.dtsi
+++ b/arch/arm/boot/dts/at91sam9n12.dtsi
@@ -396,6 +396,12 @@ rstc@fffffe00 {
 				clocks = <&clk32k>;
 			};
 
+			shdwc@fffffe10 {
+				compatible = "atmel,at91sam9x5-shdwc";
+				reg = <0xfffffe10 0x10>;
+				clocks = <&clk32k>;
+			};
+
 			pit: timer@fffffe30 {
 				compatible = "atmel,at91sam9260-pit";
 				reg = <0xfffffe30 0xf>;
@@ -403,12 +409,6 @@ pit: timer@fffffe30 {
 				clocks = <&mck>;
 			};
 
-			shdwc@fffffe10 {
-				compatible = "atmel,at91sam9x5-shdwc";
-				reg = <0xfffffe10 0x10>;
-				clocks = <&clk32k>;
-			};
-
 			sckc@fffffe50 {
 				compatible = "atmel,at91sam9x5-sckc";
 				reg = <0xfffffe50 0x4>;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
