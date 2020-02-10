Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FDFD157286
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 11:07:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yRQbeRImXMIWDuF+HirNSePn2yNqODDuWtQvbGObHNg=; b=IezlO9ZeTG//Kw
	ENZ91Rod4xnAxqGtqKweJ5nS8LErG4sgMKd+9zjILYCZ7vEwFl7k31AwFOWzmLPPPq1y/rcx1grnf
	6Gxnf6Da0IRXD5TPOV5EXeb82/tKv7si3rvwWsgJvwZrHc2CEIMxnPapoNtu2od6XG0rSovVNqe0u
	RyMIjKqDiDO+3TXQyZ7ARxajxEJIqpptFiTNIAXPYBNmNc1Bb8DystTdIKyuj0VrKscEE9aoiK7XO
	xbUmi5Et3UHk8wihHPm+YnqRDSIEBIB0Fxty21f5JwGLuTgtM6YqtE8Wy0KoGubcBvCPo+CbSkTZS
	wgc9OgVExTom77K/sVqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j15yW-0007Wc-KM; Mon, 10 Feb 2020 10:07:32 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j15yP-0007W0-OX
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 10:07:27 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 0473B21EAD;
 Mon, 10 Feb 2020 05:07:24 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 10 Feb 2020 05:07:24 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm2; bh=o5cxvnYPHtXYofz4LWCa1xrp3L
 TwvGGtgPAsTKOoIyw=; b=Bze+dD/tJOKO0J062FA5AarYHYvEaeN6Hol2EdRjwh
 5X1G1Z3FfwsZQ1kFBfk85KBr9FSYayvczmObmuTBDVFwBMfpelZq1a5qjt3YURGw
 +AWeALdwSNiS9zSKKwqQr0HS0pT8f+dPGEWmxoBuPEpIGu8EiXNy0ITR7GZbkuYj
 wr/S9F42cMrUxBkOym9N1jneSJOyVc3ZUhjPyPREZEByeL7Ds27mmuZ5O5cVSVdt
 zSlWqnDDOduU6ZB2fKsX9J3PEiljbEPbaWsQpL40xoP2RkpLvCPPguKldmUV7wuc
 PjXQ+Uzx1wHq2J1Mdw1xUZXhh2iXkcE2vURZtYvjgUPQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=o5cxvnYPHtXYofz4L
 WCa1xrp3LTwvGGtgPAsTKOoIyw=; b=Oc/UOUoZWILFjeKjeGF/SMBdmAeBn9h56
 Dc79BNYE3P15oh2xW3E5JlZPN7K/8F1yJfQ+ldrWYZf/vfYqccDue6Rnwdr3Jn45
 KyunPEFNhSSj7XgHtJBvBdW7iMzlfC5T1SYSyarFMYtthG6ULiIB4KPBDwoymTg+
 Qk7kRL8mNJC7Gs94t1Xr9jIf8yp9HRghWSIvumZ5xkJa58pI2ojPyPXDiWvLuPJn
 cV7h4EmKNGGi1BVbVUOzYNOuMxM1n9QrIa0do1Cr8+h/AyJX/XLrW/OhJAQH2pH8
 DueuUj95a/dSj8jOEa2kDf/paOgbywKqloBNR1hkJpGV9brB5KDhg==
X-ME-Sender: <xms:WitBXlwuwTjPKVNc15_uz2gvlmQV_uIJ81qvJ_mgxf41l3NulGzH0w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedriedugdduudcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffoggfgsedtkeertdertd
 dtnecuhfhrohhmpeforgigihhmvgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhho
 rdhtvggthheqnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivg
 eptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggt
 hh
X-ME-Proxy: <xmx:WitBXmBpf8G4QuubyKXST9qoRREYhs1iNC0ckNHBnDG6icesD8IP5A>
 <xmx:WitBXu8u3ZLKJ3iy7A8bhMcOxP4zpRfy81Pubei9TjTA7EhHwImdxA>
 <xmx:WitBXgs9GMaIdAn3I2GL4p6dSzT1o5QRo2AkuPwromnHM1cVyecWlg>
 <xmx:XCtBXkNA8jEQIhib-b-kLAXNiqwfv_1J2v3k-F9Oq8cUt3ogM3jXiQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 5387530606FB;
 Mon, 10 Feb 2020 05:07:22 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Chen-Yu Tsai <wens@csie.org>,
	Maxime Ripard <mripard@kernel.org>
Subject: [PATCH 1/2] ARM: dts: sunxi: Remove redundant assigned-clocks
Date: Mon, 10 Feb 2020 11:07:17 +0100
Message-Id: <20200210100718.78951-1-maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_020725_939578_AE0C14F3 
X-CRM114-Status: UNSURE (   8.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.28 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Maxime Ripard <maxime@cerno.tech>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The display backend nodes have an assigned clocks property, while the driver
also enforces it.

Since assigned-clocks is pretty fragile anyway, let's just remove it.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 arch/arm/boot/dts/sun5i.dtsi     | 3 ---
 arch/arm/boot/dts/sun6i-a31.dtsi | 6 ------
 arch/arm/boot/dts/sun8i-a33.dtsi | 2 --
 3 files changed, 11 deletions(-)

diff --git a/arch/arm/boot/dts/sun5i.dtsi b/arch/arm/boot/dts/sun5i.dtsi
index 0b526e6e5a95..7f5cf028ce1a 100644
--- a/arch/arm/boot/dts/sun5i.dtsi
+++ b/arch/arm/boot/dts/sun5i.dtsi
@@ -771,9 +771,6 @@ be0: display-backend@1e60000 {
 			interconnect-names = "dma-mem";
 			status = "disabled";
 
-			assigned-clocks = <&ccu CLK_DE_BE>;
-			assigned-clock-rates = <300000000>;
-
 			ports {
 				#address-cells = <1>;
 				#size-cells = <0>;
diff --git a/arch/arm/boot/dts/sun6i-a31.dtsi b/arch/arm/boot/dts/sun6i-a31.dtsi
index 7762fbd9a133..f41440ecbdad 100644
--- a/arch/arm/boot/dts/sun6i-a31.dtsi
+++ b/arch/arm/boot/dts/sun6i-a31.dtsi
@@ -1139,9 +1139,6 @@ be1: display-backend@1e40000 {
 				      "ram";
 			resets = <&ccu RST_AHB1_BE1>;
 
-			assigned-clocks = <&ccu CLK_BE1>;
-			assigned-clock-rates = <300000000>;
-
 			ports {
 				#address-cells = <1>;
 				#size-cells = <0>;
@@ -1231,9 +1228,6 @@ be0: display-backend@1e60000 {
 				      "ram";
 			resets = <&ccu RST_AHB1_BE0>;
 
-			assigned-clocks = <&ccu CLK_BE0>;
-			assigned-clock-rates = <300000000>;
-
 			ports {
 				#address-cells = <1>;
 				#size-cells = <0>;
diff --git a/arch/arm/boot/dts/sun8i-a33.dtsi b/arch/arm/boot/dts/sun8i-a33.dtsi
index 1532a0e59af4..d80c8a6856cf 100644
--- a/arch/arm/boot/dts/sun8i-a33.dtsi
+++ b/arch/arm/boot/dts/sun8i-a33.dtsi
@@ -372,8 +372,6 @@ &be0 {
 		      "ram", "sat";
 	resets = <&ccu RST_BUS_DE_BE>, <&ccu RST_BUS_SAT>;
 	reset-names = "be", "sat";
-	assigned-clocks = <&ccu CLK_DE_BE>;
-	assigned-clock-rates = <300000000>;
 };
 
 &ccu {
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
