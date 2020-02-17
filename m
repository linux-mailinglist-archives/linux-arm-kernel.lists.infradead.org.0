Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB25B160B2C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 07:54:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/9PIJNhCC+FXoA9T5fLQvxBBDRtpI0xdxR6eCRpxkZ4=; b=jscCvoYgXsZ3se
	d7I/iFGiUuZ1LrnEbhmZn7Q3C9k5KM3haW4e8/bBxP2I/ymsJ0YIwCp1hzX8iOSma1jeas04VTReZ
	9c1G5U1mwLTVZ9ohLdMCyD8TNc5NX6gelNqp0STSthZ04rvdKE/s5ws0aGvawBZp2gOco3Es3sWHi
	aKZzL8LngzCKoDoTQRTKgNxAcV61CLt7NTnNwfcxS0Jl+bRCvae+1O/vqb/eNc9ufyBKEZOa86zJ2
	TWumKy6mBO0ISliN/up0xed5dsYbE8Q6+L/5RkJRqmuvjFjowdFGr0Nd2bzAgnq85uDoa5dGZHH2P
	Cf9166gZpN/ux6Jw6K+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3aIP-0006Fi-7u; Mon, 17 Feb 2020 06:54:21 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3a7d-0003vp-VH
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 06:43:18 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 26FD9586D;
 Mon, 17 Feb 2020 01:43:12 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Mon, 17 Feb 2020 01:43:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=WMkmsxGWAZAP4
 sWxF/e88HgunxucfP1/cWpmUNmh5DM=; b=KkPIDrxNZh4osC8sxcoD0YDsGt3oq
 /RjE7PpItQWjbLhHMTu3857HawDyzwt5XuMovwHEiO1nTn3Hgd2RvdBkU/3ZNLUw
 znz4TyERmOdQDs74YhXWDFh8B2Lbm8Q7O51flkV+2A5AyL859V/FrmA6E630et3J
 c/2SiHjfTAskw04WkQWlcnpOrgqLYsbjV9ItPlsq2nZeWksKtRBxXCnp7oder1AZ
 xbElMkJ7GJKzBBldygXlyyHcD9W6Bifl7eSYuVErBV+HU9aR9m0ssKXbvU0bzNUe
 LTm00tC596xrRDYlQtET1c5kOsZu76dlLIq2q9iy/C2TWmC0oG8ZrGQ3A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=WMkmsxGWAZAP4sWxF/e88HgunxucfP1/cWpmUNmh5DM=; b=AwV6073b
 vssgZIpuBnh8D8Vau4Kf6hmBmrQvGuk4vlQMRT6DKP4+TscL61EmqX29S1+c3rL9
 ALjTDE/6ke0UJakfYmk47quOtX5QLrpLigt+tt/anFm1dnotyRIj6N+Jz6SmrfLB
 8U3rdPZl3zQk+E+rcs1svZOvSrO/tcu0H9fgTLA/WV7NPdNTMpdyepVqGoqG//nz
 AbWSHaEkpz66Iia0Gz5mIyRPcJqg0ev7zaJDtGxhmzqZmR6PNBzXF00OpBiZN/Oe
 qoqPbT8c/PtLr4fZJrzK4w8cC3UOhqNRWu6PWhufTaFDvFvX46rukNiCLzSGQstS
 hhxejdzcK/sjSA==
X-ME-Sender: <xms:ADZKXo5OmVddj7BEv-6VAgmFPFzSLxOs7GAwM6SVI483Pm2ukR6Ovg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjeehgdelkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghl
 ucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppe
 ejtddrudefhedrudegkedrudehudenucevlhhushhtvghrufhiiigvpedvjeenucfrrghr
 rghmpehmrghilhhfrhhomhepshgrmhhuvghlsehshhholhhlrghnugdrohhrgh
X-ME-Proxy: <xmx:ADZKXuz5Epqh8939N10zNHgP3h0R3QNNnLKnuwG4__k5Jn7OOaq2dQ>
 <xmx:ADZKXlCCWgxpotqBH2iSdRaes-VwQP3HjkCYiC3zPKmesX9yk9_CwA>
 <xmx:ADZKXvMrACIXbY9ZCR1dTSoy5XJImO1Ki0wlkWyHQXLJUPeaLRU7rw>
 <xmx:ADZKXrHrJOSeRSxGMfAZAK40icIVBotqIHPJ_ya6FZqPN0zwPVh2fw>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 660FB3280059;
 Mon, 17 Feb 2020 01:43:11 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>,
 =?UTF-8?q?Myl=C3=A8ne=20Josserand?= <mylene.josserand@free-electrons.com>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Subject: [RFC PATCH 34/34] arm64: dts: allwinner: a64: Add pinmux for AIF2/AIF3
Date: Mon, 17 Feb 2020 00:42:50 -0600
Message-Id: <20200217064250.15516-35-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200217064250.15516-1-samuel@sholland.org>
References: <20200217064250.15516-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_224314_254863_65FAF79A 
X-CRM114-Status: UNSURE (   8.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Samuel Holland <samuel@sholland.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that the codec driver supports AIF2 and AIF3,
boards can use them in DAI links.

Add the pinmux nodes.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
index 78353893c3b9..ee09a2dd6f69 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
@@ -605,6 +605,18 @@ pio: pinctrl@1c20800 {
 			interrupt-controller;
 			#interrupt-cells = <3>;
 
+			/omit-if-no-ref/
+			aif2_pins: aif2-pins {
+				pins = "PB4", "PB5", "PB6", "PB7";
+				function = "aif2";
+			};
+
+			/omit-if-no-ref/
+			aif3_pins: aif3-pins {
+				pins = "PG10", "PG11", "PG12", "PG13";
+				function = "aif3";
+			};
+
 			csi_pins: csi-pins {
 				pins = "PE0", "PE2", "PE3", "PE4", "PE5", "PE6",
 				       "PE7", "PE8", "PE9", "PE10", "PE11";
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
