Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84B4F160B2E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 07:54:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5RLtB4v9FPF2yrYUv5dt4WMTfKdwuvwE0A09xH0UQOI=; b=lpnznoaMgj+eLI
	Qc5+aeQAA7rpW4YkwlfqNMqHiq7fa7lzJGfTvcw3lYGwCITrOuo9DuyVbuffFxP21kD5hFJbx7OP/
	Wsg9UkQUNsiLe/2YqGhzVpPuLn5M7jHAd7LDw2w2qzod76zSfQKES/BB3nZybi4H3Eu8mSy1NxrkS
	8f25H40EfJ4V3x4Wf0h1UBntxCeGHJTVCR759Rq6XXuWngzca6YOJsgFKYl/rDH81j1FLelhcxZHn
	/6tQfEKJKkaQuWPNWCEu5nv9tHJ9Zw2t90Ckk8xbqYI4JXOJUUnpQjONLvRELJZspuhwxbCR68r7V
	eCedFBMBwIT0wM5Tl7Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3aIh-0006T2-5i; Mon, 17 Feb 2020 06:54:39 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3a7c-0003v3-Gk
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 06:43:18 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id E7C0157AF;
 Mon, 17 Feb 2020 01:43:10 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Mon, 17 Feb 2020 01:43:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=PQjuU/7i+IoL5
 dNdicbT4GMUQyfOGIb+JuDpBZY3tgY=; b=o5RHFFEcGx1gcJVKBXvtEKwBAEgXx
 yjWM+T7B2xxJ8B7KlLbh9WvXHiCj4Vrgh+Agw37Ta9ffLl+jll2d52c3FNh4HKCQ
 1X6y/VX9JNCJcq90HOgED4pzNs+0liSxZVdoVIuCb4xXiTG4rtkwpCdFBLfRyCjT
 PUWNdrq0jYeiwBqrQzRUnGm0ioACzQSBpiq8tYVXmT9jzM86zhUYaTeuZbokiVqN
 F7T00fGur5Ovc0bLF1CEHNd06jUKNj1UNHS/YqyUsjmCZsAJuqeJHV3Bnwuehefj
 9ItOyIvV+FG1TUEVLE4oSLfBu/IKxgkjxFySPkYBslZwpx+3crzG847dw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=PQjuU/7i+IoL5dNdicbT4GMUQyfOGIb+JuDpBZY3tgY=; b=lv+tb6Pw
 0t0VCpmbz4qCBjEuCOmDhPLS3T+7gsXV9eaTreClhGWoXHtiiJRlGdQbIlg6eRth
 fitqIL3oJzbUZ11WS8zZd+TFKY/Fdob1fm/I03d7DtgiLXPy6heZ/NqpNZKd85ef
 u0ITT0pOL/94WLP+/sNvG6cKXBPptd96ch6c60Vf7jbaHCi2KCmAN3WVK2M+4MkF
 6wMh8J2nqLY4ViV7WOteGg2HlvJ9hglRDmEGqVMDpb2tObVoGHZihmFIaPFCDaEU
 WBeHcCC3y5kSLhGgPO3YqAq5/VWCT6M1vv24CZik7XRsqBQfgJmRyvMWPFPR9nal
 pPNT4nIhTCBqxQ==
X-ME-Sender: <xms:_jVKXs9UyIrfMVHxcl5IO8K-CUZQ7p4px4zloF21P9ajCkIXWmtCqw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjeehgdelkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghl
 ucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppe
 ejtddrudefhedrudegkedrudehudenucevlhhushhtvghrufhiiigvpedvjeenucfrrghr
 rghmpehmrghilhhfrhhomhepshgrmhhuvghlsehshhholhhlrghnugdrohhrgh
X-ME-Proxy: <xmx:_jVKXnE8xKc2_Yb_Zh4NIrHdYQmg5sXyjz_RhsPan5g5EyM3NnkKdw>
 <xmx:_jVKXrRDmmz4gUnhLrwzMdp3GZ7RYcf3P9lsYFHRImVHZNEGkYB2lA>
 <xmx:_jVKXvk2M-QZT4c50aNMGDRRZBoH1OQG0yRQcuzDZeoHd4-PgJZlSg>
 <xmx:_jVKXsvBeuXTX8l3BFNPnGiML5GG4lXmzUX6hFTyEVC16XjhXVrdCw>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 337253280062;
 Mon, 17 Feb 2020 01:43:10 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>,
 =?UTF-8?q?Myl=C3=A8ne=20Josserand?= <mylene.josserand@free-electrons.com>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Subject: [RFC PATCH 32/34] arm64: dts: allwinner: a64: Allow using multiple
 codec DAIs
Date: Mon, 17 Feb 2020 00:42:48 -0600
Message-Id: <20200217064250.15516-33-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200217064250.15516-1-samuel@sholland.org>
References: <20200217064250.15516-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_224312_940760_1878EDC8 
X-CRM114-Status: UNSURE (   9.48  )
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
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
index 5b688687a2b2..a7470f2ab975 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
@@ -176,7 +176,7 @@ cpudai: simple-audio-card,cpu {
 		};
 
 		link_codec: simple-audio-card,codec {
-			sound-dai = <&codec>;
+			sound-dai = <&codec 0>;
 		};
 	};
 
@@ -801,7 +801,7 @@ dai: dai@1c22c00 {
 		};
 
 		codec: codec@1c22e00 {
-			#sound-dai-cells = <0>;
+			#sound-dai-cells = <1>;
 			compatible = "allwinner,sun50i-a64-codec";
 			reg = <0x01c22e00 0x600>;
 			interrupts = <GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
