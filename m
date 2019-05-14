Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B75E51CC70
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 18:03:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:List-Owner; bh=It/fAzMZVR7aB9l2hqKZwlN4f94lY92oApApEQEJYEI=; b=Id
	TvcXUQ+9Xfgi+NGHDBQPiWKCsCTLKePYnoPXyoHu1HLD4g4GwVDucQJ3YcxF2LL9caeRp7EDmk8MU
	LDAg+R2ra/oWyKW4+aNe0uyVqsKWuv4Jmrdnqld18qr1hLCG59szKNKGXWIOjiz4ToqN2jL3hr5yf
	KmcbAx13m4GxgLP4FuMjXA12x4/Nn8g2Dtbm7BkL454UeiXge5Wmsm0eEGqkvGdE9aRALk6d0UlJm
	cDXJOvCb2ryy+7mu4hmTwCdONJybs29b53EZ7WjGFRCdmzx1GMKo8iBwAXrsku4djKxh+qwMelKDf
	XNckGMEAfINEwKcBsDpxgw7V1Y5aWpaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQZte-00017Z-Ge; Tue, 14 May 2019 16:03:18 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQZtJ-0000m2-5K
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 16:02:58 +0000
Received: by newverein.lst.de (Postfix, from userid 2005)
 id 7787D68C65; Tue, 14 May 2019 18:02:36 +0200 (CEST)
From: Torsten Duwe <duwe@lst.de>
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Archit Taneja <architt@codeaurora.org>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Icenowy Zheng <icenowy@aosc.io>, Sean Paul <seanpaul@chromium.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>, Harald Geyer <harald@ccbib.org>
Subject: [PATCH 3/4] arm64: DTS: allwinner: a64: Enable audio on Teres-I
References: <20190514155911.6C0AC68B05@newverein.lst.de>
Message-Id: <20190514160236.7787D68C65@newverein.lst.de>
Date: Tue, 14 May 2019 18:02:36 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_090257_450480_0E685060 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Harald Geyer <harald@ccbib.org>

The TERES-I has internal speakers (left, right), internal microphone
and a headset combo jack (headphones + mic).

The headphone lines are multiplexed with the debug console.
The headphone and mic detect lines of the A64 are connected properly,
but AFAIK currently unsupported by the driver.

Signed-off-by: Harald Geyer <harald@ccbib.org>
Signed-off-by: Torsten Duwe <duwe@suse.de>
---

originally: patchwork.kernel.org/patch/10792589

Removed the questionable issues, leaving the unchallenged parts.

---
 .../boot/dts/allwinner/sun50i-a64-teres-i.dts | 53 +++++++++++++++++++
 1 file changed, 53 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
index f9eede0a8bd3..d57049fbdaca 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
@@ -70,6 +70,25 @@
 		compatible = "mmc-pwrseq-simple";
 		reset-gpios = <&r_pio 0 2 GPIO_ACTIVE_LOW>; /* PL2 */
 	};
+
+	speaker_amp: audio-amplifier {
+		compatible = "simple-audio-amplifier";
+		enable-gpios = <&r_pio 0 12 GPIO_ACTIVE_HIGH>; /* PL12 */
+		sound-name-prefix = "Speaker Amp";
+	};
+};
+
+&codec {
+	status = "okay";
+};
+
+&codec_analog {
+	cpvdd-supply = <&reg_eldo1>;
+	status = "okay";
+};
+
+&dai {
+	status = "okay";
 };
 
 &ehci1 {
@@ -258,6 +286,29 @@
 	vcc-hdmi-supply = <&reg_dldo1>;
 };
 
+&sound {
+	simple-audio-card,aux-devs = <&codec_analog>, <&speaker_amp>;
+	simple-audio-card,widgets = "Headphone", "Headphone Jack",
+				    "Microphone", "Headset Microphone",
+				    "Microphone", "Internal Microphone",
+				    "Speaker", "Internal Speaker";
+	simple-audio-card,routing =
+			"Left DAC", "AIF1 Slot 0 Left",
+			"Right DAC", "AIF1 Slot 0 Right",
+			"AIF1 Slot 0 Left ADC", "Left ADC",
+			"AIF1 Slot 0 Right ADC", "Right ADC",
+			"Headphone Jack", "HP",
+			"Speaker Amp INL", "LINEOUT",
+			"Speaker Amp INR", "LINEOUT",
+			"Internal Speaker", "Speaker Amp OUTL",
+			"Internal Speaker", "Speaker Amp OUTR",
+			"Internal Microphone", "MBIAS",
+			"MIC1", "Internal Microphone",
+			"Headset Microphone", "HBIAS",
+			"MIC2", "Headset Microphone";
+	status = "okay";
+};
+
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_pb_pins>;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
