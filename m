Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3896919E7A6
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Apr 2020 22:49:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GcAlay3Ns2I5PDDAeaAfe+bTrzF3Wk8F1YdgNAJRquw=; b=d8MLHgoMcl2ex3
	sSTLYBibq5AsxQDkPTg+MCjumSUubBPb5PylZ9oqxgERF5pZF75/pt1TTKXVNeQVNwbf09pRUOTYB
	qoB//VEkcvHMxtYMQ3A7eTWATsA1Ny19xfFlitIFxatVUuViv+FOFYtGn0wm1/1sXULzyO3YSc+ym
	y2reg50ZpQvGGcEuFp1zF+mhul82ZWycDEIKSns62boTV+CL42d1CejUXn+2zWgKvRP4ArmXcejyF
	96s3XTxGz5/3xg2v5sC5ULPjD4iusGRZzvMlTfC5NzHQNqLIdO6TZYc1MfRJ3+BomOTMA+J+utta7
	hcNuOKJyAQ8skXtad5rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKpj9-0006wY-Ir; Sat, 04 Apr 2020 20:49:15 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKpj2-0006vZ-9H
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Apr 2020 20:49:09 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id C58A15801D5;
 Sat,  4 Apr 2020 16:49:03 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Sat, 04 Apr 2020 16:49:03 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alistair23.me;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=y+MayVaAZgHOI
 lJXNt5L435nPg8iLvxccPaJPfrhuPo=; b=tMTQIJ5raaK5IuRxdLbBoSYMZALaL
 Iq8ZFYiIkW7rBJqSfIuwPqw1Q6TT2HuPrvJ4SkOyuY5k+SilkNqyUHtuJXnWeWLB
 2IamNBQCKiE+MBuLZCB7jD87/9LVv40/zIGoO6u7f0T8g0e1b3yJNDACFg5mEP7B
 VkPLAsQEu5b8WJNedIqd+4ceD6BEr9pVqvpDVhPhVwt8O8oLDyTy98MpsTWGE6Ci
 VJrFR/EQuh0d8qarSBUnRD7ZuOF4A2sqKhsNJG2v8dinhV2Psc0KorG49hG3cFrx
 QCO4h6qHfbjrvI9kS3HFx7c33OjEJt6ZOsjP7VNFWLZSFSxA4RoTJ/pFA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=y+MayVaAZgHOIlJXNt5L435nPg8iLvxccPaJPfrhuPo=; b=pmUuBKcK
 dEepWgAj4A0QdI5qXWlX1iXiSgBJ9ah4sgE1mZE0gHTASCUlERdEt5QErMlz69z1
 WxNBjK4CZdu8iQwq3xr/2Cyt+3GGOaDbTsTqy73Tfxp0pCLdvaytHnQI/czdnDBu
 ESJehiJqoIecu/xBRv1upDZNliViVyjvl1hadRhJPG6bDYexFA44tZuzwGpcJ1iO
 Gte2RlUkF5duJzzDll7iboaQjyHfsG5JwuovkN8iwdfq6ANNl7yZNbx41T/SIeJx
 BxjvnEDLPehen5XQ+wozcHuqKy+vgCRxlvxqFlGSExJCF/tmt/YB23PnqOEEfSrL
 m5qt0wF6xapWBg==
X-ME-Sender: <xms:v_KIXgi8iHOd3bwVkUQCdsNn5gJyHsv9pLnrGBlk3E-FRrjdyl4jIw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrtdekgdduheduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheptehlihhsthgrihhrucfhrhgrnhgtihhsuceorghlihhsthgr
 ihhrsegrlhhishhtrghirhdvfedrmhgvqeenucfkphepjeefrdelfedrkeegrddvtdekne
 cuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheprghlihhs
 thgrihhrsegrlhhishhtrghirhdvfedrmhgv
X-ME-Proxy: <xmx:v_KIXg_2fVXNkTZpam5CFaIimV2h8LC6E5xmVc2Q31EpamvsFRVofQ>
 <xmx:v_KIXvRHLX_cuNePAerAHbSr4mPIm8swSZqmkpCGqZjq768ijFqmNA>
 <xmx:v_KIXns4wNbjkTYyC4-77KK52fsVTZNJcOI0pbXhfFLPU4vqehF2_Q>
 <xmx:v_KIXpiVepmvyARkPgFeksdSxhxfrOhhaj3Q1HNyO6BLykBi5NQJYA>
Received: from alistair-xps-14z.alistair23.me
 (c-73-93-84-208.hsd1.ca.comcast.net [73.93.84.208])
 by mail.messagingengine.com (Postfix) with ESMTPA id 76D603280063;
 Sat,  4 Apr 2020 16:49:02 -0400 (EDT)
From: Alistair Francis <alistair@alistair23.me>
To: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, marcel@holtmann.org,
 johan.hedberg@gmail.com, linux-bluetooth@vger.kernel.org,
 mripard@kernel.org, wens@csie.org
Subject: [PATCH 3/3] arm64: allwinner: Enable Bluetooth and WiFi on sopine
 baseboard
Date: Sat,  4 Apr 2020 13:48:50 -0700
Message-Id: <20200404204850.405050-3-alistair@alistair23.me>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200404204850.405050-1-alistair@alistair23.me>
References: <20200404204850.405050-1-alistair@alistair23.me>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_134908_458263_2976793B 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.229 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Alistair Francis <alistair@alistair23.me>,
 linux-arm-kernel@lists.infradead.org, alistair23@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The sopine board has an optional RTL8723BS WiFi + BT module that can be
connected to UART1. Add this to the device tree so that it will work
for users if connected.

Signed-off-by: Alistair Francis <alistair@alistair23.me>
---
 .../allwinner/sun50i-a64-sopine-baseboard.dts | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
index 2f6ea9f3f6a2..5fd370b1e34e 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
@@ -103,6 +103,16 @@ ext_rgmii_phy: ethernet-phy@1 {
 	};
 };
 
+&mmc1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&mmc1_pins>;
+	vmmc-supply = <&reg_dldo4>;
+	vqmmc-supply = <&reg_eldo1>;
+	non-removable;
+	bus-width = <4>;
+	status = "okay";
+};
+
 &mmc2 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&mmc2_pins>;
@@ -174,6 +184,20 @@ &uart0 {
 	status = "okay";
 };
 
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart1_pins>, <&uart1_rts_cts_pins>;
+	status = "okay";
+
+	bluetooth {
+		compatible = "realtek,rtl8723bs-bt";
+		reset-gpios = <&r_pio 0 4 GPIO_ACTIVE_LOW>; /* PL4 */
+		device-wake-gpios = <&r_pio 0 5 GPIO_ACTIVE_HIGH>; /* PL5 */
+		host-wake-gpios = <&r_pio 0 6 GPIO_ACTIVE_HIGH>; /* PL6 */
+		firmware-postfix = "pine64";
+	};
+};
+
 /* On Pi-2 connector */
 &uart2 {
 	pinctrl-names = "default";
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
