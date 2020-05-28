Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04C011E6CD3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 22:49:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rZNt2TdQWYzcUl60IRJ9P5k8dh9iVBwHHzCU9tQLlGc=; b=QxWC+YtRnCSi3K
	SVL+tOQXenb/YZ1GuX1gCj1/LiuH07ronGv8Hn4TmPRWqEzzBivEpd1yzbFuPhAmqn4qqZOFfRjId
	w3XxxDbxRH/+EZ16svbh38l6j9kl7YtMl/urF/6Q7EOLigzU5ReKit/MkrK3nS81HgJx3kj24BONH
	2SfHIR+Us3HdMDXesBzWT9ITEfXIwENAMhJbQBpAwCRjgD1CbHKt9D5CJoFJgbrr+GocaZjCXOssu
	UXVtro8b/spTfD759E9nKdzy1pNkZagwM7RdkdJSGm9ammacHL/HjHyQvjIrOGUrYYWcYKR1qQ42e
	83rOfQ3/UyAAlK03OoUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jePSg-0006l2-1I; Thu, 28 May 2020 20:49:10 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jePSX-0006jk-3G
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 20:49:02 +0000
Received: by mail-wr1-x441.google.com with SMTP id r7so814366wro.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 13:48:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kynetics-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HUiYoi4oRp58+q5ZwZM3ckxVs2ohb6Fr3EU5Rh4Dl0I=;
 b=NqgdwDyljpdh0ZqDu6YHewXyVjxlQvyaoDcVNEhKu3GQyB7A9uq+7b/W1cFKNj6Auo
 mhKwV7wV1isHYxuYqarBvpiX91pHT3Vpg06C2EFiQrntIJzEQyvT2nxTAkGiivbl8QSi
 bZxMZ2vKBo3uptBm8vIzCGaUTT9IxYkHdAfQW1O58OJaSH7wmU5nxeBdmFcpQjfbRq5U
 zovuTjw8NTa9epKpX7BNnRmILXOudZyRWmSiDA3suI/YDdXWZN/ZMA8WnelIjLiUQkBK
 OzJGs/OR7cjo2MG36l32/kvopZ6nlWzQcfHIKXjfOzSmRK590aqWPoi6x17vOUbtFpeH
 sSBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HUiYoi4oRp58+q5ZwZM3ckxVs2ohb6Fr3EU5Rh4Dl0I=;
 b=eePIsyeEe0Ev6S2uxi5lhMr6kRHT0hq9bdEwWm7zmAIyM1VbR4b8LkIcOdHqe1pSUv
 CdvZz49OkRB8RFbpbNrd70ARvv5fMXLaHg6AC1piMjTLYNFF+bEIA1gbNy0td/Qitksy
 I7jeRs6Wbb7T/WxR/3FPcUcKu5vpQIWygkwudRtWD7RXWTdTse8iiGjmhapdP884aPqK
 KKBRUHENkGQfXPrq4IzYMJ3RYnMZ+cpZd4/bpORQJ9BfCc2aW9dlSfx077tmlhk738Xz
 I2jpISFBSf8PdnaKY4MjK4HQaNvdN+rZRYqnASbu+rsFQmFifw/mxtvVoCDLTn6qvttT
 iBjw==
X-Gm-Message-State: AOAM531ZOx86ZW36T+1mXu4vSfjmVjXzcWKP1PIwX46xjt3vw/LL6Duv
 Ss2VTtWqfHa5w6L0eSSsV+S/QA==
X-Google-Smtp-Source: ABdhPJzwOzuB9A1HKWNt34Uu6DxWwtaF4OkTIOet4cseL0Mea2TRDauwS/pcfa5XsGFhl7VbI8VA1w==
X-Received: by 2002:a5d:4cc4:: with SMTP id c4mr5108720wrt.159.1590698937914; 
 Thu, 28 May 2020 13:48:57 -0700 (PDT)
Received: from localhost.lan (mob-2-41-210-190.net.vodafone.it. [2.41.210.190])
 by smtp.gmail.com with ESMTPSA id a15sm7632782wra.86.2020.05.28.13.48.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 13:48:57 -0700 (PDT)
From: Diego Rondini <diego.rondini@kynetics.com>
To: Maxime Ripard <mripard@kernel.org>
Subject: [PATCH 1/2] ARM: dts: orange-pi-zero-plus2: enable USB OTG port
Date: Thu, 28 May 2020 22:47:11 +0200
Message-Id: <20200528204712.552964-1-diego.rondini@kynetics.com>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_134901_205248_6A242A34 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, Diego Rondini <diego.rondini@kynetics.com>,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable support for USB OTG port on Orange Pi Zero Plus 2 (both H3 and H5
variants). As, according to the board schematics, the USB OTG port cannot
provide power to external devices, we set dr_mode to peripheral.

Signed-off-by: Diego Rondini <diego.rondini@kynetics.com>
---
 .../boot/dts/sun8i-h3-orangepi-zero-plus2.dts | 23 +++++++++++++++++++
 .../sun50i-h5-orangepi-zero-plus2.dts         | 23 +++++++++++++++++++
 2 files changed, 46 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-h3-orangepi-zero-plus2.dts b/arch/arm/boot/dts/sun8i-h3-orangepi-zero-plus2.dts
index b8f46e2802fd3..4376767699a47 100644
--- a/arch/arm/boot/dts/sun8i-h3-orangepi-zero-plus2.dts
+++ b/arch/arm/boot/dts/sun8i-h3-orangepi-zero-plus2.dts
@@ -137,3 +137,26 @@ &uart0 {
 	pinctrl-0 = <&uart0_pa_pins>;
 	status = "okay";
 };
+
+&usbphy {
+	status = "okay";
+};
+
+&usb_otg {
+	/*
+	 * According to schematics CN1 MicroUSB port can be used to take
+	 * external 5V to power up the board VBUS. On the contrary CN1 MicroUSB
+	 * port cannot provide power externally even if the board is powered
+	 * via GPIO pins. It thus makes sense to force peripheral mode.
+	 */
+	dr_mode = "peripheral";
+	status = "okay";
+};
+
+&ehci0 {
+	status = "okay";
+};
+
+&ohci0 {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-zero-plus2.dts b/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-zero-plus2.dts
index c95a68541309c..d8192a7483e9e 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-zero-plus2.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-zero-plus2.dts
@@ -103,3 +103,26 @@ &uart1 {
 	pinctrl-0 = <&uart1_pins>, <&uart1_rts_cts_pins>;
 	status = "okay";
 };
+
+&usbphy {
+	status = "okay";
+};
+
+&usb_otg {
+	/*
+	 * According to schematics CN1 MicroUSB port can be used to take
+	 * external 5V to power up the board VBUS. On the contrary CN1 MicroUSB
+	 * port cannot provide power externally even if the board is powered
+	 * via GPIO pins. It thus makes sense to force peripheral mode.
+	 */
+	dr_mode = "peripheral";
+	status = "okay";
+};
+
+&ehci0 {
+	status = "okay";
+};
+
+&ohci0 {
+	status = "okay";
+};
-- 
2.25.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
