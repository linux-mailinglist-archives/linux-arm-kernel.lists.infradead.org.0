Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE871B7AA6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:53:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C6SNCNaEcXy8dvLqq3eNMeZwiujpUP1okPEYFYyyE0I=; b=EcFdUT/0lg6WOm
	P6R+Fzzl3uesv2Ij3yW5T4YRGQtpyLOdriOrInkTXH4mFagEjBBwDVw0j8+Wb+c1RUpdaTfFCU2zW
	BPwZp30jdFGAtEQjNddCVgh1Ddc+SFaCHXKf8oR8s9OAed4Zkci6+wCyFkOVIYb8Az8q2sOoa5ALB
	ItWo/Ecy3MIG56jwhfqfE1pfr5sOFHINlkGIlOXeCMYOEiy+s2vSUiPipx6Sws4qXl7CB+2WcHiuz
	nlgOi1zvhvw3UiymA4iATOBbPLCRV+S+iH23tFms7O6so11ViemgtGW4BaUhcjIh2iLkj5hDP2bYx
	x3KbLBBA4Dv8PP1jmAug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0dY-0004Kd-4j; Fri, 24 Apr 2020 15:53:08 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0Mz-0007pL-W6; Fri, 24 Apr 2020 15:36:03 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id 6027A10AA;
 Fri, 24 Apr 2020 11:35:59 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:36:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=2w0cp3nEr88sP
 +MV7TWqwyUO3pJl2Co6QHKEM/4+4iE=; b=N/dSk6AJQ3C/nUbhapEedJE8eLmX2
 64M3LAKqUh5PbHZzy0kcTTR5gXf7I9Yo/XTHyeK8u9Pi5jcpjFxP8RUoIk43kZM4
 mwkHfJmkIAaavFEIn/eU9qJ1BIKL2gTYMVgUimSjt1YWfGKxzxR6iVru+g+2miWt
 2rHB7KDELarm6JAiMkwvcMkUDrhH44bmutGaWQuVIm6uATGP7I0nrzxNaBAfu+1M
 Ax9Iz3rPQjkrPueoeexDFDf1zAAq+eV9IpFSC6otMQZNnYdx6ZlGDCRFHsgYbV1D
 2uCOHCGMvmd/XFmmZP1QveOHsZS2FfvIllEfxsqZVnJl6WG9gvwgFoZcg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=2w0cp3nEr88sP+MV7TWqwyUO3pJl2Co6QHKEM/4+4iE=; b=kTleo0e+
 gMAEV47fJbZF3oyXrxhwLUEskfUiu7xadCctIv7i/1qOxZn3QCyFPRMFCaLSYCDG
 1M64R8jq+LpW555I2nSnQyEVd4IHcUdZizhXbSOpJCK9nzNrzy+gTRg+eeiPJn/g
 aBebi8YKjr4q5r6lpHT7o08pnSqUz2FLoAbxN3IOgjpOUiY/MPADfnvr+65LbFN+
 8kCSSpqujJSC3G4Qr6xHBucc/JsBCuqf/p8gzcn8LyIqx3iGt7LDFrNjhjNj6D/J
 FPWUJtbp+Oi3M3zCb5ifGRuYBjy3mp7oFGbhJTHc3jCjbaYnrFRmqfeZ5YCtb+CB
 ZkcUKmVxyzw1Nw==
X-ME-Sender: <xms:XgejXvy-mkltDnTqrR6_gzZVfKIgItlOYvFTWoJGCzelGLq5TKUMYw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedvvdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:XgejXtn8h8u_Xl2aJRvaEUlvSidwnL7bxHKLeu1BH9nnvw8KWepvjg>
 <xmx:XgejXmD1VTLs8GlrLpZp-gfcJsccdqw1wihvhDZsY4J85_N-IBGnuw>
 <xmx:XgejXoIyRRU1OayvfaPNQ0lmr-gWNY-K5ylCQ-EKhxxo3PbHaxtDmA>
 <xmx:XwejXnMTX2fvQKu4pEB0q5Qw_6II5LX7R5BEXx0RHOMw8Zz6q7lMiXJQp-U>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 9A69B328005A;
 Fri, 24 Apr 2020 11:35:58 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 26/91] ARM: dts: bcm2711: Add HDMI DVP
Date: Fri, 24 Apr 2020 17:34:07 +0200
Message-Id: <5607ea5d992f98051e51bcf30ab28f4a7b065515.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083602_148483_07048BF9 
X-CRM114-Status: UNSURE (   7.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that we have a driver for the DVP, let's add its DT node.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 arch/arm/boot/dts/bcm2711.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
index a91cf68e3c4c..00bcaed1be32 100644
--- a/arch/arm/boot/dts/bcm2711.dtsi
+++ b/arch/arm/boot/dts/bcm2711.dtsi
@@ -12,6 +12,13 @@
 
 	interrupt-parent = <&gicv2>;
 
+	clk_108MHz: clk-108M {
+		#clock-cells = <0>;
+		compatible = "fixed-clock";
+		clock-frequency = <108000000>;
+		clock-output-names = "108MHz-clock";
+	};
+
 	soc {
 		/*
 		 * Defined ranges:
@@ -244,6 +251,14 @@
 		hvs@7e400000 {
 			interrupts = <GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH>;
 		};
+
+		dvp: clock@7ef00000 {
+			compatible = "brcm,brcm2711-dvp";
+			reg = <0x7ef00000 0x10>;
+			clocks = <&clk_108MHz>;
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+		};
 	};
 
 	/*
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
