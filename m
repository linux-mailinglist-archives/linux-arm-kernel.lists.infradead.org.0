Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C540138A76
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 05:52:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6iy1oDlEau2MPPuifGNXPK8i59y/yAbAnsE4LiPaBx4=; b=gZ2vgDSpn55NFp
	CcgUt++Va6eo9AZ/5RzSYgMz3VnQyMTx8sRxBMNOAghcsIfVGLwBsV6YvCjaHgRUloP1ReC3ipyhl
	wM3CC/SoVntSP60PtMMhwiR1UIywtoQ18Y/7lyPCrR0vNhDr+TgeFjaIuRRZpCcrWWmaybqWDJXts
	PWQ5was1lotjrANwofNix4nuCOxcScjcZQgrTalysZy/BGHv3ZBy1/hPyueojtUJDWB9LrdJiQnk8
	E+6jYwcGzT/vYG9SdGuCe/1j66Cs+ym8dSVFzQeK37faL0RLpkmJdqIA8eHvm/b8n8S15CXPZ4XE5
	+xamlv5e82ooFi2MeWDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqriI-0003a7-Bv; Mon, 13 Jan 2020 04:52:30 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqrfj-0000E4-HN
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 04:49:53 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 360C1634D;
 Sun, 12 Jan 2020 23:49:43 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Sun, 12 Jan 2020 23:49:43 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=dURdrtn452X6F
 w0Ia0mRb8PvrJx/GMnv+qVHdfETAAU=; b=HxsCuqVIaoBM5XwmjaMSxKwK/lEiJ
 1m+31P/cV1B+KhwQwSAPSkv30oh8Cmyc5qLjUmSadEY4LsiFhyXkhcX6DziEus8B
 uGbyrt6/zoyAlyr6FdVCGuqjx8sCqcvQac2xZNj6PYHEnEQMZHLYv/SFxXShsaxZ
 YdX1jSQ0K6d/aJniLWKwX62FjiWRQPS1qnj/pPHzvdsNtLdITc56UHNAqPbZ6qVu
 t5XcZEGJhhH2PNbgolNoIGloGKr/0G87yptdttqzmPH/3FYoZsIFCxoRO7U1zN4b
 ZvxWwCWRjVvdb+Y5Aef3vVIkWQCP/FWiS4ipf7UST6GmSBayPzYYIo1SA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=dURdrtn452X6Fw0Ia0mRb8PvrJx/GMnv+qVHdfETAAU=; b=GIb4SqWz
 86IvFzw0ouaCtPMknPovJhMWHSwJ5RGojxrmKtZ6ZZloIuUNZcS2ik8tOIFn/3lE
 UA9Yuc0JS9v2TcXodjtBQt2cBsrEpASeRpo8Le/1q9gOruwKomr0sezIjA20XzcT
 3CujphF15JknX8DsQpghNOQ2j6K2zSv3nhLL3QJ41e/nJ5kiuF0lTDtHM5sY/l8H
 wvEQ2Lnkv2tUkuYCstLsfFZZHwpp9jcC9I0GqRhAJSN6L6M37xzw6Pd4mK7OvV8V
 dOhYMeW+DVPUWjkXfYEN9t5i8A2ygSLtzSj37BTDPG/5iD3NqLWoK3sD3Zi8aUUt
 Ju07Lk3dOXlGgA==
X-ME-Sender: <xms:5_YbXtJvoXkW1YbvmDqkp4RYYfmvn_2QArteWRXux01CwsUQKgHaaw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvdeiledgjeekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucfkph
 epjedtrddufeehrddugeekrdduhedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehsrghm
 uhgvlhesshhhohhllhgrnhgurdhorhhgnecuvehluhhsthgvrhfuihiivgepje
X-ME-Proxy: <xmx:5_YbXg7Mle6q50yMXuA7SQfvLGpgv-adJo_EuWuoUtiBeq9XEmODDA>
 <xmx:5_YbXozxZdbMPGzwp1u3dHscQw-gjlGm0D3Ysku6TNEmWe6jfmFP5Q>
 <xmx:5_YbXsYhDQCFKgPMxc33HTWq0dHWrKlh4-DloudvkbBVs2HZVCHT7w>
 <xmx:5_YbXsYzxB5ZId-EAqOAgJh-Ylqesaae7FILT3EBL921F2A6rbUP-Q>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 7582630607B0;
 Sun, 12 Jan 2020 23:49:42 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Russell King <linux@armlinux.org.uk>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH 9/9] arm64: dts: allwinner: Move wakeup-capable IRQs to r_intc
Date: Sun, 12 Jan 2020 22:49:36 -0600
Message-Id: <20200113044936.26038-10-samuel@sholland.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200113044936.26038-1-samuel@sholland.org>
References: <20200113044936.26038-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_204951_767873_6F1CA529 
X-CRM114-Status: GOOD (  11.40  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Samuel Holland <samuel@sholland.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

All IRQs that can be used to wake up the system must be routed through
r_intc, so they are visible to firmware while the system is suspended.

r_intc IRQ numbers are offset by 96 from the GIC IRQ numbers.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
index f597f3fe06c1..6285354e83a6 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
@@ -708,8 +708,9 @@
 		rtc: rtc@7000000 {
 			compatible = "allwinner,sun50i-h6-rtc";
 			reg = <0x07000000 0x400>;
-			interrupts = <GIC_SPI 101 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 102 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-parent = <&r_intc>;
+			interrupts = <5 IRQ_TYPE_LEVEL_HIGH>,
+				     <6 IRQ_TYPE_LEVEL_HIGH>;
 			clock-output-names = "osc32k", "osc32k-out", "iosc";
 			clocks = <&ext_osc32k>;
 			#clock-cells = <1>;
@@ -745,8 +746,9 @@
 		r_pio: pinctrl@7022000 {
 			compatible = "allwinner,sun50i-h6-r-pinctrl";
 			reg = <0x07022000 0x400>;
-			interrupts = <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-parent = <&r_intc>;
+			interrupts = < 9 IRQ_TYPE_LEVEL_HIGH>,
+				     <15 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&r_ccu CLK_R_APB1>, <&osc24M>, <&rtc 0>;
 			clock-names = "apb", "hosc", "losc";
 			gpio-controller;
@@ -769,7 +771,8 @@
 			compatible = "allwinner,sun50i-h6-ir",
 				     "allwinner,sun6i-a31-ir";
 			reg = <0x07040000 0x400>;
-			interrupts = <GIC_SPI 109 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-parent = <&r_intc>;
+			interrupts = <13 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&r_ccu CLK_R_APB1_IR>,
 				 <&r_ccu CLK_IR>;
 			clock-names = "apb", "ir";
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
