Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3AC216A247
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:29:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XdAiVeU1NeSlsLW/J5FBqOSdffweZICefoUFjby8oII=; b=VMK1wlocko+ZyP
	S2Ml3p2r+7plKlY3YzVdqH6q7udqqsta/jwAUKTynmM/IyM+Z+FaoXJL6vVr5C8d2omUZ6/SoB9lk
	uNlOseYDCb4nu9agaVnYAZQ9WPRwBI/Iw91I7H9aCtlnvf4jLJPV010U1l1h4J4SehcwDCUhrhQCR
	qeWk1+y9LUtF005TXRXblbs2eTbUCld6q49FzpchVxXUqako5PXYLJFkrU4tfshal2K5j87vVup30
	4ssqNJEqif6yDb2njex25Rpw9l0PZxRw66LpINtlPP04/8fnrJzfBO9gYlxvGDwy8CYWK0+daQUdy
	bCIw8Te25SoHxa0W5BKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6A3Q-000592-Jm; Mon, 24 Feb 2020 09:29:32 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69k4-0001la-9v; Mon, 24 Feb 2020 09:09:36 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id 529AF61B;
 Mon, 24 Feb 2020 04:09:30 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:09:31 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=LR8mdDtlCr3Pd
 X4IZvrJzJtuH1/odhhyEU81Aywpmxc=; b=aL7PnAFOPiCRVmaYG3ryUK3sf8R5m
 ZnmuPVco6woe+bjwu7T09YucP4gIZSZL7gvNwNK1KAnPeJ0WxIfJZvGg4uk1hasj
 CDaPSrhCcen+8uhWjzwlniFWXHhk82q/JF4eWhiqk+heCl7OtaDU7aCSgfy6eKk9
 qx2W52/trEWwukymR1r3Z3nxMT5QQjKi/hR+RFT4SjTxPnK4FTaRvPTjGng0Ru5i
 jLdnaiurP7fRU9dsyzLd+Grh1MXKun7PslhxDg4uXF6y12N9jOWnASmqssZ/Ajxs
 pt69vKuhpbbwTbQmhoJIKccq11W45fzbD9hAwnk5I4HiLtekKjgBugMcQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=LR8mdDtlCr3PdX4IZvrJzJtuH1/odhhyEU81Aywpmxc=; b=hylC7+MU
 b36bmJ2rebmaRYXV6/RsMUzeJmgsUsNoebifrINBCPGz96uKkSybzeFd4tnEdKNc
 WCIvO2vrlHg+2dOcYiw9BW/kBuoPNO/HBW/p29tuvgfpuKnK0dXLKPud+cvskHlp
 28viH1uxwN0Xn6l6/v8jQpTHHDQkxT4s9X/jmfTdN+ohunH0mZDBOs1oTd1Tc4Ni
 U+5pICCJzTvcEH4OTfAZ8mJhVae/ej6kXgPLsDMzOWCIJKP01+oHCUSjsQAiEfbY
 d/8tTx3om7HqXyfJj30Ndlov+/BS87+FtK8Wa7aKMtcQHUI9OS15fFsypMErnZtr
 Jc73PHYSvJvuOg==
X-ME-Sender: <xms:yZJTXkwUMzv78SKyxc07yYersDZPatXKz6rSncmSE7mIg7kgvtMB3g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 ephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhi
 phgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgepvddunecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:yZJTXnBR7wr2czXcS17B5tM6aomeldfQKK6wiaa6GWyh09jzvSOQlQ>
 <xmx:yZJTXq5D0DR6aZj_eeH6Jfc8PmQKozAnQD5x1Hi2Xt2B7MEk7zIsmw>
 <xmx:yZJTXukZxbYL1CLqmFi-K-VA4jtb4H91FtgdxokYavThGmmbryKlAw>
 <xmx:yZJTXp202iWWLB8fjzEwXk_ongMR7ANBRFb_3sKD-1BJzpoOXPm-tkiHPgk>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 954AB328005E;
 Mon, 24 Feb 2020 04:09:29 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH 28/89] ARM: dts: bcm2711: Add HDMI DVP
Date: Mon, 24 Feb 2020 10:06:30 +0100
Message-Id: <08c939ca305d936db002060704f252d026b77cc5.1582533919.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_010932_761433_CC7CBDF0 
X-CRM114-Status: UNSURE (   8.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.17 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 arch/arm/boot/dts/bcm2711.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
index 4742e1a77a65..1e89f2a810f3 100644
--- a/arch/arm/boot/dts/bcm2711.dtsi
+++ b/arch/arm/boot/dts/bcm2711.dtsi
@@ -12,6 +12,14 @@
 
 	interrupt-parent = <&gicv2>;
 
+
+	clk_108MHz: clk-108M {
+		#clock-cells = <0>;
+		compatible = "fixed-clock";
+		clock-frequency = <108000000>;
+		clock-output-names = "108MHz-clock";
+	};
+
 	firmware_clocks: firmware-clocks {
 		compatible = "raspberrypi,firmware-clocks";
 		raspberrypi,firmware = <&firmware>;
@@ -258,6 +266,14 @@
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
 
 	arm-pmu {
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
