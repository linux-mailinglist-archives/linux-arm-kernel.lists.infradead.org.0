Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36F511E4901
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:00:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C6SNCNaEcXy8dvLqq3eNMeZwiujpUP1okPEYFYyyE0I=; b=k564RLESvvvgGf
	kd0HAwm69D2WLgcjJvZBLbLMKtF6FP0WlBGahoiP5GbVid+yoGfzVDds+U+c/YEqUqsVjqB1qWKwe
	Di9YIDC9l5NqclYWtG54w2RnXHTnOTVSpLBi/MWGLQSZ7ik61vcwE7xZNntobDh2guN86ALMyXgDf
	FbSwXXqjap8Waib9w2AlV93m9fwBfsc+kiANg30foHROiIx3uM0B2bHdZ/+HcVgeTretTKuHcIPNT
	fj2lsnpf+YVG87ipzKlxA355m6UAdKYkqfUOkKh8NWHblwYD6gf2jt8ay1vMfiu9Jl9mvuVT2p4Cr
	Pc885B9PnVMQKXZC7ePQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdyTG-0001mn-El; Wed, 27 May 2020 15:59:58 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyJ3-0005zd-NL; Wed, 27 May 2020 15:49:27 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 13057581FF5;
 Wed, 27 May 2020 11:49:25 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:49:25 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=2w0cp3nEr88sP
 +MV7TWqwyUO3pJl2Co6QHKEM/4+4iE=; b=bTaDTZfO2yJJtiqXcRHGrmv4ObHUi
 nxQ/Ber7Wo/rx3ZyRxdn6bd2cFcZBURuwgnCT0gBE3myvLMmNZn4Hu5zvMARvrxk
 xQdoQzMS73gwcNAQ/j6yKifliopCVh6/dttCj+1TCZKw6QS5crdrAubDj8NX3aa/
 /J56xy1Q6QcWwEcTNT6o1jOW9FmPGDXUWd8sBJBUyOP8eZiXpSTrTqro7nyiqpG6
 PxLhdEtUIBVB0hCSXOcl/xMbLMIekwZi+xT1TEHVWxJ3imdWhKdVIlWomX6qfN9T
 b/gpb6EhY+wGJChaWJxAl+C8XHrSlX79/SFdOj9+39IK7MSSPQtk6GB3g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=2w0cp3nEr88sP+MV7TWqwyUO3pJl2Co6QHKEM/4+4iE=; b=wRjzrm+W
 9IIV6Wx5rB5Gq2jACDT5UADtSUFRXICNSeEV3cWJ1hOP5y/7L1JsQwbGNixVsZ2A
 YaIbOajko8zM6AShQxUrBv1784CgBzcnk7jjfbT6B/ZEScCDmJGfEgATGJ/NuD58
 5bscC37zWt6lIdrtZKEBoT9lrAcVSoYa8qp5sOF3U2LllDNLA9RluxyJoEe1Sxz9
 SI7PKBwKat7G9mtJi45nJhU4eac353NYtcfyfDDfOVNMowi4ejbeUCpeyIY96QLx
 jg1heZ+7occlg8FIDzA8bRtC3hDHrUxpXDEzUXgLmaaZRZ91BWyoOjlWTFFCpIug
 jIXeeVFGwCkziA==
X-ME-Sender: <xms:BIzOXmwVDlmXtXYfgpu_MIhIsKFOjvlBbAkJrmLYzG3i-Sk0kI2Wtg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepvdeine
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:BIzOXiRDxEF-IbM53d_WQRQ4A51_CtJgLQCcBBV0aWIsRQGlZ1GkEA>
 <xmx:BIzOXoVGc2l3Mbtox6dNyKEYqTOEp1A1OVS9XnRwKZxSbau9ZroNjA>
 <xmx:BIzOXsjw7xQZRDSyaNIOM9nQ0JgZtkC4UqZFer2dG04-adKcXjFDxQ>
 <xmx:BYzOXmDeFBqmDtZgZfBwVqpnD5svAscM1HnHZls-eZetrR3MRSPrvA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id A60AA30618B7;
 Wed, 27 May 2020 11:49:24 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 005/105] ARM: dts: bcm2711: Add HDMI DVP
Date: Wed, 27 May 2020 17:47:35 +0200
Message-Id: <0c9279fb2e12645fe9f1d10a8ce8a8bcae51dc2d.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_084925_922077_42FC155D 
X-CRM114-Status: UNSURE (   8.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
