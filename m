Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64D76141F15
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Jan 2020 17:33:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yvRuLmnV4xx7ejYmPB5tiC8i/xGm8Y/33COsWd71HgQ=; b=h/GgEGIqX2y9tf
	lAJe0564NKgWd/ibCMr+/X4Ntvyc0CEmuN+HuBWDA4hQXcyeqxtZg2gv160V3CMQsH8RzAgJCbrrb
	uIaop9ckx+3bP50wS+fdAG0FyDdyh5moppYd6kJErgQH6uob2DYFSSKLCKymPvW+EQCDAngT3mGgW
	ott7jzR+SbRmcpy8XVO06BExRO7UR+z3VBiPeRnSfkhPW/018GAB+VK2sYNCB303zbaTbIIH8jEdy
	r+sDmu3iB81xd1XA/UM9p1uFL9xtiAjlExxm53QZzfyec0yOYQ42VbKdrBe3I+E4IoNMh2h5zUjTh
	hnUG5JhDecIjn0EmilDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itDVo-0006ji-Ba; Sun, 19 Jan 2020 16:33:20 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itDTp-000574-QH
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Jan 2020 16:31:20 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id DCE0821340;
 Sun, 19 Jan 2020 11:31:07 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Sun, 19 Jan 2020 11:31:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=eogqFitYBM+yu
 0GWe5rWoHs4iLU9w3W4k8bbjQ3IwDE=; b=TfGI2ExBS3+aOPp2AJqFojNUmiEe4
 5/g0WKFp/IxGhatVnxC165fmUlk0iHpnR8VxzDAqSU/ddY2hxTaGudAOpuIOMxVT
 irZ9N0y5mWc/iEv0KHSdCB84Ll9XpSlrW6qW36bPE9oFPHC8Tsnm1ZIdXmtf+NIo
 CIwlo6nNFM1H+Dbj6MAyIE2WMzIS2pB/qx1AAex+Ftg118WduYgi+1pLNA+J4HTq
 cNdIsTga0LWeOYHa97i0b72sjGDGbJDq5kBHZaog4g9EP3N43kJv4w8Xb4bHgR5c
 /8H5CW6zAnF+iha5I+uXvJ5u6ua666qWkcaFETQnzdJD541k/gnJY3yPg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=eogqFitYBM+yu0GWe5rWoHs4iLU9w3W4k8bbjQ3IwDE=; b=xsx7hi2s
 XsPk8Qf83SdnCARcIjre0PbFqVyCsE57z05he9RmkIqmsFtUFSvr+woIM/dEd6d8
 /+zkZXq6OG1zqHWkooRgz+0EQnU0fa41AY0gQRpD7ezQzvKfjEqj6OoQjOlhe1UK
 OuuvNddVI5pMKzVH8uD1hCEbZf3Vu0f70K9ASZqFzNWbop/wSrMOV6xlj5v2lKWf
 ORQwLM4ApyWZ5/qb3iSI0RBgDAukIOr07znZNyDEIHnC87TVNevehZUAzQcOiNwT
 yDtALcAT+0SPVu0HogkEipl0uelzu/jJAPex0tiM2ssBV5AlvOyK1MJkGmr6PpAh
 HGij/+RQUlAWsw==
X-ME-Sender: <xms:S4QkXq6ymCxJo8EyVJl8ah0I2ssDqDzxOoHgCrPxOdjR_0tSw2_BJw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrudefgdekkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghl
 ucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppe
 ejtddrudefhedrudegkedrudehudenucfrrghrrghmpehmrghilhhfrhhomhepshgrmhhu
 vghlsehshhholhhlrghnugdrohhrghenucevlhhushhtvghrufhiiigvpedu
X-ME-Proxy: <xmx:S4QkXhlPCNOA7DqdniZZ7zYwwM0Uz2WoFrqBerygje6miVFf-SX9fQ>
 <xmx:S4QkXrMNGT6JmYrHjzBl9ZV9yVaWMzhkxY3VP1zvVucbYmiBmvhWxw>
 <xmx:S4QkXjpgaUn0QQn2vMM2LfrF6cDgiaZ9_nCZzMT6ZMGcclNgVMLApw>
 <xmx:S4QkXgfpSKDTB3ShK4kr6J36mV9xxBMLDXWMygCypDOmlBppkLfjhw>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 5C3438005B;
 Sun, 19 Jan 2020 11:31:07 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Maxime Ripard <mripard@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH 7/9] arm64: dts: allwinner: pinebook: Add GPIO port regulators
Date: Sun, 19 Jan 2020 10:31:02 -0600
Message-Id: <20200119163104.13274-7-samuel@sholland.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200119163104.13274-1-samuel@sholland.org>
References: <20200119163104.13274-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_083118_000647_310B8BCE 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Samuel Holland <samuel@sholland.org>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Allwinner A64 SoC has separate supplies for PC, PD, PE, PG and PL.

VCC-PC and VCC-PG are supplied by ELDO1 at 1.8v.
VCC-PD is supplied by DCDC1 (VCC-IO) at 3.3v.
VCC-PE is supplied by ALDO1, and is unused.

VCC-PL creates a circular dependency, so it is omitted for now.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 .../boot/dts/allwinner/sun50i-a64-pinebook.dts  | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
index 7c6a3d204dba..3e762f93671a 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
@@ -162,6 +162,13 @@
 	status = "okay";
 };
 
+&pio {
+	vcc-pc-supply = <&reg_eldo1>;
+	vcc-pd-supply = <&reg_dcdc1>;
+	vcc-pe-supply = <&reg_aldo1>;
+	vcc-pg-supply = <&reg_eldo1>;
+};
+
 &pwm {
 	status = "okay";
 };
@@ -174,6 +181,16 @@
 	status = "okay";
 };
 
+&r_pio {
+	/*
+	 * FIXME: We can't add that supply for now since it would
+	 * create a circular dependency between pinctrl, the regulator
+	 * and the RSB Bus.
+	 *
+	 * vcc-pl-supply = <&reg_aldo2>;
+	 */
+};
+
 &r_rsb {
 	status = "okay";
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
