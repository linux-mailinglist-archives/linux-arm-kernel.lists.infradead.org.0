Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FACF160B29
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 07:53:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2tF4+tStHGUtTxNaKNL3j0uzzSYg9mMKflk5EtrETp8=; b=kXPC6MwqIOuDl3
	R1KzAy9LFngjwzckpHjgL/I4rcMKFpMzvWU3+Uhgx0myJhtMPu+jhbVmKCPHUSkh/vuM4HJoBSmGU
	wmLYfwe1TqUrGjH0tK0/+EHET3d6fFA/pExwQA5vfvSn/CGyFyvFckWfBxjaNwZonFXx7qGWjhgEQ
	H+hwAacV4sAGStfM8fhtV7mi5WA2zJTwpPA1rTYZRiHyJVlZUWMF7WYBp/AastI1GXNOjdZxWNFO+
	4+rW0wK6YtJC+ihn1OJ5ZjGCwO2Ym1/95p1wYW8JVMDlKsAW79eB+jpCEdNN5ZlSy2FX0LFzLcosT
	+p8O08t+P8I5IDMplfFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3aHu-0005ma-7B; Mon, 17 Feb 2020 06:53:50 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3a7c-0003vE-IW
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 06:43:18 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 6F00855F6;
 Mon, 17 Feb 2020 01:43:11 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Mon, 17 Feb 2020 01:43:11 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=0bytkBnACm85u
 8GzFKkbz2lEVaNk97YvyRqeDTlzBYk=; b=i99lQeaTghn8OQoAndt3G+dRheaO7
 fZt3V1MIRK2/IhxlsJqfsHIxJwqRnHrntE8g0GyqriW6z4BzwBIfoSCKdK5/XclU
 RzvdzEeutg3uwMBaJSIIh1PLsbK5kR9cTgU4BzGz5wSDgV7GBYPsgOQ5ZuQ9I3Dv
 Av+qMZbFz1cSBE3RYryHNqQuYy8+olMcFULBR4GnIyiCavqnMckYWucCawTlKEGv
 1+tSH/jWJA2VxmNnD9/zZkJzo4XxbH+LWetOv7SHzizp+QtgN2zQg79cPqba4Wfe
 Pbicci++kBkkn9e5I0RvCEOqdwptQnTFgK3KqEC1NgcSK2Llhg4wcU8rw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=0bytkBnACm85u8GzFKkbz2lEVaNk97YvyRqeDTlzBYk=; b=WwBMFoeh
 Qa11XMb5Xd3MWF4wtTHrY5LBbyHxIdYx72jEDDGLK43ViU8IVYTr1zB+6oBPvXsz
 wrFhjDMkBUxyAaO89E14qLbo+PYCdams7gzPLeSmDDy03vpls5az41Xr74Aa8UR+
 9LFMMg+d7IsSFXsbQ2q+Rr0ht2gWGx+k0nBseEw5TS77dmoggdj0S7/wFWd3w+gs
 y7JiV4ihgokvYjKN7Wac7sHyagVIp1fu8PVb5TvYMhC2ci8iqcNW8OTfuH/JHTSx
 ie8akTY3UmsGhbygtNyaISERBoDjKjgbAcij2n39HZXtOLScQWcQiul7d6FxGno3
 BgCPe3MZAl6feg==
X-ME-Sender: <xms:_zVKXtR-TCsBFRD2CKHVBUoiEUqoFf7DNrioFovXvSSRt413WpSkvg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjeehgdelkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghl
 ucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppe
 ejtddrudefhedrudegkedrudehudenucevlhhushhtvghrufhiiigvpedvjeenucfrrghr
 rghmpehmrghilhhfrhhomhepshgrmhhuvghlsehshhholhhlrghnugdrohhrgh
X-ME-Proxy: <xmx:_zVKXsKL33Rk3bUTnQfqwnv908Y5ovArZCAXo5Jr2JQV8LE0LdDZXA>
 <xmx:_zVKXjC0w8iGmhcJ_lyoV1g_mJsGkM1stjHdvaT1zEreH__2akslUQ>
 <xmx:_zVKXlBria6HDsYR_yKYBcJDcjPi3RZb-VRJSZiNAvQK6Cl2Sg-D5A>
 <xmx:_zVKXnxCKNWDF9qTUjnSAR2gYFbOiIDeHMkxE8hSCOUcUHPABn41gg>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id C6EB6328005A;
 Mon, 17 Feb 2020 01:43:10 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>,
 =?UTF-8?q?Myl=C3=A8ne=20Josserand?= <mylene.josserand@free-electrons.com>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Subject: [RFC PATCH 33/34] arm64: dts: allwinner: a64: Allow multiple DAI links
Date: Mon, 17 Feb 2020 00:42:49 -0600
Message-Id: <20200217064250.15516-34-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200217064250.15516-1-samuel@sholland.org>
References: <20200217064250.15516-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_224312_823852_639F15D3 
X-CRM114-Status: UNSURE (   9.89  )
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

simple-audio-card supports either a single DAI link at the top level, or
subnodes with one or more DAI links. To use the secondary AIFs on the
codec, we need to add additional DAI links to the same sound card, so we
need to use the other binding.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 23 +++++++++++--------
 1 file changed, 14 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
index a7470f2ab975..78353893c3b9 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
@@ -157,12 +157,10 @@ psci {
 	};
 
 	sound: sound {
+		#address-cells = <1>;
+		#size-cells = <0>;
 		compatible = "simple-audio-card";
 		simple-audio-card,name = "sun50i-a64-audio";
-		simple-audio-card,format = "i2s";
-		simple-audio-card,frame-master = <&cpudai>;
-		simple-audio-card,bitclock-master = <&cpudai>;
-		simple-audio-card,mclk-fs = <128>;
 		simple-audio-card,aux-devs = <&codec_analog>;
 		simple-audio-card,routing =
 				"Left DAC", "DAC Left",
@@ -171,12 +169,19 @@ sound: sound {
 				"ADC Right", "Right ADC";
 		status = "disabled";
 
-		cpudai: simple-audio-card,cpu {
-			sound-dai = <&dai>;
-		};
+		simple-audio-card,dai-link@0 {
+			format = "i2s";
+			frame-master = <&link0_cpu>;
+			bitclock-master = <&link0_cpu>;
+			mclk-fs = <128>;
 
-		link_codec: simple-audio-card,codec {
-			sound-dai = <&codec 0>;
+			link0_cpu: cpu {
+				sound-dai = <&dai>;
+			};
+
+			link0_codec: codec {
+				sound-dai = <&codec 0>;
+			};
 		};
 	};
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
