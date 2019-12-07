Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B4A5115E2D
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Dec 2019 20:23:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yiovfOeiVcdQ45+Rkk3/IJ3qb32L7kCLXESjGacRT8A=; b=PYAHBLQmCKN6Eo
	6UNQ5I9OBsLpyfGgiJ3IjqVoPGCpBxQs4tMCLD9Ts23V4OABigASMfFGg/4Os2rW7dmCLUvWPEE8l
	Qgsrppv1rxR8fu5/+hTm7APuvMWxrGb3G8orQl2TneQDc6UlGdh01UJN/tmaG72Loi2JeOdkOcpD7
	Vlqu+aVl5omRu9utdjzIPRZ03qkQ1tXhhLfOt9NlgB5ZtY9TOdyAV9OFIfcAF6o/fA8M8lDuTblGD
	XYMybXPQrxKFZkI0ZWbi4yAcT8lDWzYIYD1mgso5wd9Kc7iLsH11nb3V5zTQxA86D5v7VXa5/QVHA
	bUrfvtpE4jb6p7xcThrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idffa-0001vm-4N; Sat, 07 Dec 2019 19:23:10 +0000
Received: from wout2-smtp.messagingengine.com ([64.147.123.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idffT-0001vC-Qe
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Dec 2019 19:23:05 +0000
Received: from compute7.internal (compute7.nyi.internal [10.202.2.47])
 by mailout.west.internal (Postfix) with ESMTP id 25A3960B;
 Sat,  7 Dec 2019 14:22:55 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute7.internal (MEProxy); Sat, 07 Dec 2019 14:22:55 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alistair23.me;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm2; bh=Z2PjyZf3136gCvtJS7r8XhFYol
 pFs7Qq0QrFZubMpCM=; b=HSWfbL1RCQWIFnBsdrVRkQaLS2TYI0LaPj/VDRTvnT
 ldIZsB2gupLuHbodKyMnKt1kQd/Pr7X1L3U1RDZPmgbGTlfkwiJgcRPuRNuTRN5D
 H5A9m31TJnU0wqh+80QlYCu8jxVIkTw0UAR55hN2G/iScfKDGv5Izbv59K4s68Wt
 WPQmtkyt2tWwuo8R+X5XB1bAqFWEkCbNGIMJ5xvv2QAkS659Zi9nDYY31cm2T/Ff
 va1BkoKdRz2gKk5Rz3Wx4cNWt6xUkZpyu+6riqGG931gKTIBhpitmleqNyuepa+b
 jzRF6CjMtxwtyu6HUZnOJTKAG468Vt0XIx5m3SMAU2lA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=Z2PjyZf3136gCvtJS
 7r8XhFYolpFs7Qq0QrFZubMpCM=; b=nMRjGBn3tzAClgnICYBySrm/ENoibw3u6
 tx2fC1IAGxGKmqKajoP+0SsT7vg6qAHP8RcxEC3OFr9xhzf7M+dgTwCcZ/K10c6D
 xsPSOI5Uw1wTihZWdVN3RADyBz8SV6nYiLji0Wj+5ccohR00Ai+2+XRtVNhK+tsy
 1n2OKWgDq4J8VLHra/KqFT0VRYpxRqbGROlGun3eZyjOOkbWiJT3EKWdE9x2WSEy
 eAem2dUQLQR/8M0jsREiciqyNJj3Q1qqKmimA1WC7CtjYAJ1unel1OiCYK4copT6
 Z7pkP6tPXhmybRAXCq0Y6qohi+k8GlHvCQUhAdtx/KCX6VZZP2h4A==
X-ME-Sender: <xms:DfzrXRmpJRN1AyywKk3kYG79Eg5bpc5ViuUbW1HA7sToh0gWZvKKRw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudekhedguddvkecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffoggfgsedtkeertd
 ertddtnecuhfhrohhmpeetlhhishhtrghirhcuhfhrrghntghishcuoegrlhhishhtrghi
 rhesrghlihhsthgrihhrvdefrdhmvgeqnecukfhppeejfedrleefrdekgedrvddtkeenuc
 frrghrrghmpehmrghilhhfrhhomheprghlihhsthgrihhrsegrlhhishhtrghirhdvfedr
 mhgvnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:DvzrXaqDIWey4LD3tIiJ70YiTXjivHNS_kuFndwt3rMoxX9S3aIfTg>
 <xmx:DvzrXSEBiX_6Di5fnn1lT8q4LAVeDMWjQpohdvoONgp0cq3LZXYbjQ>
 <xmx:DvzrXexuW1uHyS8qlDMhp7T0BVv63nIGTCmgPUCfjEHvMvoF_o80_A>
 <xmx:DvzrXfpMp_j_rK60mgG68zfbChFE1hv5ztTxxqh5X7XH0qxREg-yig>
Received: from alistair-xps-14z.alistair23.me
 (c-73-93-84-208.hsd1.ca.comcast.net [73.93.84.208])
 by mail.messagingengine.com (Postfix) with ESMTPA id 0CDEE80062;
 Sat,  7 Dec 2019 14:22:52 -0500 (EST)
From: Alistair Francis <alistair@alistair23.me>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: allwinner: Enable Bluetooth and WiFi on sopine
 baseboard
Date: Sat,  7 Dec 2019 11:22:49 -0800
Message-Id: <20191207192249.8346-1-alistair@alistair23.me>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_112303_906955_5439F942 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.25 listed in list.dnswl.org]
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
 mripard@kernel.org, wens@csie.org, alistair23@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The sopine board has an optional RTL8723BS WiFi + BT module that can be
connected to UART1. Add this to the device tree so that it will work for
users if connected.

Signed-off-by: Alistair Francis <alistair@alistair23.me>
---
 .../dts/allwinner/sun50i-a64-sopine-baseboard.dts  | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
index 920103ec0046..0a91f9d8ed47 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
@@ -214,6 +214,20 @@ &uart0 {
 	status = "okay";
 };
 
+&uart1 {
+        pinctrl-names = "default";
+        pinctrl-0 = <&uart1_pins>, <&uart1_rts_cts_pins>;
+        status = "okay";
+
+        bluetooth {
+                compatible = "realtek,rtl8723bs-bt";
+                reset-gpios = <&r_pio 0 4 GPIO_ACTIVE_LOW>; /* PL4 */
+                device-wake-gpios = <&r_pio 0 5 GPIO_ACTIVE_HIGH>; /* PL5 */
+                host-wake-gpios = <&r_pio 0 6 GPIO_ACTIVE_HIGH>; /* PL6 */
+                firmware-postfix = "pine64";
+        };
+};
+
 /* On Pi-2 connector */
 &uart2 {
 	pinctrl-names = "default";
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
