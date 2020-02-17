Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D9EB160B27
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 07:53:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nB7Iisrrg7rPfATqPi9pyqaWKrhX4NG/sYrHFPYZ2Es=; b=Sj2A4PjZVRII26
	G0GDIad9/aEUgPf2RbbcnHaJ8BYzCGIPlFuZ6By/lfDijejNjoHP92tWYDkkVZQxCkdh9Hp6f/xb+
	vTxxJHrm55re1dd+cnK+KQoIYTHamoEYP0knokggzVdgyAnUTHdUwlx+NhGn0C4hIN1VGddrb6peN
	GW6kMc91VPs6z9sjBI8KBjXas1t28MUvoGxi50XjBVuPkai+2AMO6lZ8OZc3Do5ZKztMXpMiKqnma
	Jyg/MuBDyzl41Xoo+qTXWwInc4Tw0ruJne8J48qsxDQQ1bbW4uxaRhngpRrnzk5Z7ABWKn5n8Hxyt
	/5eCKz2GimmCPyWqNMFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3aHb-0005Tm-5o; Mon, 17 Feb 2020 06:53:31 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3a7b-0003uc-Jz
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 06:43:17 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 51C465765;
 Mon, 17 Feb 2020 01:43:10 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Mon, 17 Feb 2020 01:43:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=ZF8SAW4rQvPZn
 izR7+Q+SkTY2Egxs+9JoHdYrQXsQ1U=; b=QUKM6AOjP/Twe7eoBHAQKS5dTNskk
 Zln3Evb6nyQxsbumN3xyqRalHaEM4qH60NvMudMQA04tPizlqy6ksUBmxhSvoBT3
 W8OlgZm2ZkheD/xwWGYyXoNFyRNYppDn/VYNM6qw2Wb1mNbV0f1ee1TBVZiVZbku
 uIT4kexaLomLlC8C0YbnyEfcntIubz94LyNuAEPHoNOCYx7dfDOrVjpuy2oeduv1
 RSc8bpHdsjJxZ/zS1/7VUNapzrZiibj7gFjuaQXLJ8QKLqbxUUaz8Qc4WFmV6mUn
 HV4zbU6q4VP8i2QRePZJa6R24VH7/AcFBult/ypSVAt1N4LWuer+SUCBg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=ZF8SAW4rQvPZnizR7+Q+SkTY2Egxs+9JoHdYrQXsQ1U=; b=AQ68Ly7p
 zAl6vsx52jkKL75gSioyGZtz9ePntnRpVp71wzX54WBZCfB4x1sgINRDiYwHslH7
 Nky05f/DUiewyUZ87HIylinlEUp5gXAvhk43LPoLep4S85UlA5f+0xz7BkEcNLc1
 i5xTKPSLa5D/ubLvlFk5lw03Kup7j+4qnN5LQ4XGzJVZUoOCw0C9kibbTOEzAgwd
 8eCDDyXd0px1YNMMrFJ/UFZfh/0/Ftum6fWE1GLHbBRr+Gr14vcTmuAeMudpFmsr
 /qrZ9OrG/wC5F5/FFWJE89qyqQn0hZ7UEALGbOsY81aIFuhwIkfue3himru0Y2FR
 QV6GN2XqFfHhMg==
X-ME-Sender: <xms:_jVKXvuBp_mEd46PUReiDRDWv3BCTJLZ6df6k-hmkrPexB2msLrwMg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjeehgdelkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghl
 ucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppe
 ejtddrudefhedrudegkedrudehudenucevlhhushhtvghrufhiiigvpedvjeenucfrrghr
 rghmpehmrghilhhfrhhomhepshgrmhhuvghlsehshhholhhlrghnugdrohhrgh
X-ME-Proxy: <xmx:_jVKXqFdycQ-KgwWZbfRNzMXzBWDeVNx_0H65Si0_6tswTB_IwIt-g>
 <xmx:_jVKXmPrrM5qaogaLnV3QJW2huXuxTawYzj5Rd7-wtBeOW0iCfBDBw>
 <xmx:_jVKXlELZ6JsKbYaeqYVkIDTkfUpMPhdyIpqSo4pPcHiBa-5ocvU9Q>
 <xmx:_jVKXsH5kwqYZ9fXkyUWTY9NZlrV4f8SEdMvjk147YD7l02FnPW32g>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 9370F3280059;
 Mon, 17 Feb 2020 01:43:09 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>,
 =?UTF-8?q?Myl=C3=A8ne=20Josserand?= <mylene.josserand@free-electrons.com>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Subject: [RFC PATCH 31/34] ARM: dts: sun8i-a33: Allow using multiple codec DAIs
Date: Mon, 17 Feb 2020 00:42:47 -0600
Message-Id: <20200217064250.15516-32-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200217064250.15516-1-samuel@sholland.org>
References: <20200217064250.15516-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_224311_851918_43F79186 
X-CRM114-Status: UNSURE (   9.68  )
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

The generic ASoC OF code supports a sound-dai-cells value of 0 or 1 with
no impact to the driver. Bump sound-dai-cells to 1 to allow using the
secondary DAIs in the codec.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 arch/arm/boot/dts/sun8i-a33.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/sun8i-a33.dtsi b/arch/arm/boot/dts/sun8i-a33.dtsi
index 40b903fa73da..a16c2ca11131 100644
--- a/arch/arm/boot/dts/sun8i-a33.dtsi
+++ b/arch/arm/boot/dts/sun8i-a33.dtsi
@@ -200,7 +200,7 @@ simple-audio-card,cpu {
 		};
 
 		link_codec: simple-audio-card,codec {
-			sound-dai = <&codec>;
+			sound-dai = <&codec 0>;
 		};
 	};
 
@@ -240,7 +240,7 @@ dai: dai@1c22c00 {
 		};
 
 		codec: codec@1c22e00 {
-			#sound-dai-cells = <0>;
+			#sound-dai-cells = <1>;
 			compatible = "allwinner,sun8i-a33-codec";
 			reg = <0x01c22e00 0x400>;
 			interrupts = <GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
