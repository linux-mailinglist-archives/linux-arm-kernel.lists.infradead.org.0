Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C0EA1E05E4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 06:16:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BhBkwPWndZz+JE8ndhhRsxTLJImwGC+O0Gri8qbX9f0=; b=Sc4nSN1TngQUgL
	OCUZgXtMw5wivY5I8yEr8RficzKLwB+ILddQoRzROPyO9rrQ4B8Yn1ug0I4RMzh03HhL2tP1XK8tT
	hjJJYnbgkN2K5fpkKPjPk228dKOi+fjT7j0kU91Lpxhrrijj7h5cX+9Q4kdTdlw9BlbedDn2MIZ1V
	WhYm9UVFACXnt20rAJOpqbvGTvznEwP1fFOPrrfFq28N/yCuRAeGKT5G+HLtUP6qkVBO2jmVNtyfo
	2T43YwgLoSdvuP380K/vBlChjggG78UoJRbt52zd5DpeUTg78J/D2pmAAq2c14qSEehGUBdjtLFu5
	zdQGBFHgKe6zFpM+rQVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd4Wp-0004Zy-EV; Mon, 25 May 2020 04:15:55 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd4Tj-0000Az-2D
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 04:12:49 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 67AA358009D;
 Mon, 25 May 2020 00:12:42 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 25 May 2020 00:12:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=WnCKLIGDJB4zf
 8Jo5QFngI60qvtZyt+/INzJ07sVSxs=; b=hSCSmp5SeAiTfim8E39c7IwhYULzp
 WqljHofUDVR8DIll/ggXEc1z166vm3GaWPjgBLiGVXq2Dv4pv30nbaxrCX6gFjKA
 44vZFUTGFw/NsZPy9f5u6uo56rlYaJb9uHmf0MtCRlbJRwOEHWI/qBW0hPFUv4jh
 V8hrYARhAFpmiDTSN1LWZ9BEh15nKHw7is+QSrows1lYgP5rgUwK7Mz/L4nYUKQD
 5/hqe4Z5lefB/UZW0qz1P1LXnBOAya53Q5lTq2r5u/fS0as+PPORHRKLHBwzGWLZ
 Fqf2/wvPBUg+vKQ2Zvej1vOQwtqTgGttYBBMSLr5qRvhaATlRy/KALVag==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=WnCKLIGDJB4zf8Jo5QFngI60qvtZyt+/INzJ07sVSxs=; b=FcF/jux0
 foaDt723wxyGj1wJXHYzCscuQEFjRD+qIa3XqIJ1pPQtZRgTyWT5GBgIn6SMiRUa
 dHtYckq3L++UiYt5h1urujLFArBv9Dof3U/evNyYkmqwfOG6lS5o06P5WGKUnxAe
 3AybAwqXFp+PkfdloqtTFyYVtULRC32mevzqMkcpz0n1ewrc4B2/Zt1FqA5hZnAy
 GTqHGNlHQYIzNI6AbN+CUyLbyJgsdgYFrhbd/n4rQtJAz8EpRwOr2qiZ9MCmn6wt
 UU0flNXS5g16MvyoTiG5ck5rg97KnkeE5Got+97doLtLy02/j5DEFHfz8UKL/Har
 gSBNq4epb5VLIw==
X-ME-Sender: <xms:ukXLXgqTbZnh3A5GJK4QHCjhKHAKWn1SmzrbNT7MDiS4ffcMnQnxZw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudduledgjeelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucggtf
 frrghtthgvrhhnpeduhfejfedvhffgfeehtefghfeiiefgfeehgfdvvdevfeegjeehjedv
 gfejheeuieenucfkphepjedtrddufeehrddugeekrdduhedunecuvehluhhsthgvrhfuih
 iivgepvdenucfrrghrrghmpehmrghilhhfrhhomhepshgrmhhuvghlsehshhholhhlrghn
 ugdrohhrgh
X-ME-Proxy: <xmx:ukXLXmqz8EaQw1eGrJR2VOdXf0g6LkZk8ETLGHnqmCQ_Peu46u0GwQ>
 <xmx:ukXLXlP4xb4wfLbck1JX2QvvFwl0tA6aQ-TDgcMviaUsVW-wmDTUFg>
 <xmx:ukXLXn65zELhO1A0iyG32vvojKTdvft2q4Nb2v8OARz2IcbcvmQoLA>
 <xmx:ukXLXsxAH1cRK1DYgS1iNmS_wb2yR53P1kBE1OfjRc8Qi_wZECI1aQ>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id B4578306653A;
 Mon, 25 May 2020 00:12:41 -0400 (EDT)
From: Samuel Holland <samuel@sholland.org>
To: Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Russell King <linux@armlinux.org.uk>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH v2 8/9] arm64: dts: allwinner: h6: Fix indentation of IR node
Date: Sun, 24 May 2020 23:13:01 -0500
Message-Id: <20200525041302.51213-9-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200525041302.51213-1-samuel@sholland.org>
References: <20200525041302.51213-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_211243_259932_0588252D 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

This node was indented by two tabs when added instead of one.
Remove the extra tab.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 22 ++++++++++----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
index b9ab7d8fa8af..d912188dc6ea 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
@@ -901,17 +901,17 @@ r_ir_rx_pin: r-ir-rx-pin {
 		};
 
 		r_ir: ir@7040000 {
-				compatible = "allwinner,sun50i-h6-ir",
-					     "allwinner,sun6i-a31-ir";
-				reg = <0x07040000 0x400>;
-				interrupts = <GIC_SPI 109 IRQ_TYPE_LEVEL_HIGH>;
-				clocks = <&r_ccu CLK_R_APB1_IR>,
-					 <&r_ccu CLK_IR>;
-				clock-names = "apb", "ir";
-				resets = <&r_ccu RST_R_APB1_IR>;
-				pinctrl-names = "default";
-				pinctrl-0 = <&r_ir_rx_pin>;
-				status = "disabled";
+			compatible = "allwinner,sun50i-h6-ir",
+				     "allwinner,sun6i-a31-ir";
+			reg = <0x07040000 0x400>;
+			interrupts = <GIC_SPI 109 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&r_ccu CLK_R_APB1_IR>,
+				 <&r_ccu CLK_IR>;
+			clock-names = "apb", "ir";
+			resets = <&r_ccu RST_R_APB1_IR>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&r_ir_rx_pin>;
+			status = "disabled";
 		};
 
 		r_i2c: i2c@7081400 {
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
