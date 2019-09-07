Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F266AC798
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 18:16:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NI4FPU77RLXG23uPziCz3pU9FlyYdKpcEjaZaGFKh1k=; b=L5FlQos+ogHM+Z
	iA00QjEIrdtgdHCik2laGdzJK9OXJ+T6oqibTKmcW44yHfUJM0p0BNRfiTXiuu73NQQb9iWEwcLFd
	puJoM2DxIUkDyNoYidIFBuv5e8/WBoI2xi9BiHVNbmjqdrS5EqBtOr2R+cTz1oxN4d4CLak5gKlO7
	ZeOKxnJF0hUnTqz465Jht+1W4vh0adFTanJivmWS1G+B4pms2L6r8F0ikvehFLyWn+DX0ej0KWE4a
	7yJWPHENAXWsG8HJvOzjtuU/8FxOmU4eK2N9/xM01Ce+cjhJnifK9JB19AD4AXmczw4xWBy08x7c3
	0B/4mLhGQTyZJNG3ReFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6dOS-00028q-8b; Sat, 07 Sep 2019 16:16:57 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6dOE-00028N-1B
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Sep 2019 16:16:43 +0000
Received: by mail-wr1-x444.google.com with SMTP id y19so9534988wrd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 07 Sep 2019 09:16:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bYrOf9RTBwmZf5L0GW4BktLvAbpDYWcNsfWnV6+h4U8=;
 b=vK0U3Jz66s82RuowVHKEmY++wZPKSWyjMesPIgCXgV3Mh1+z30ApdX2rj94pOOPa/s
 K0Dzcph947gpzxWQ3zj+Bi6tBYIORc2VnoN5ungGxO/m0ucjOptyonaCDGL3hsh652QW
 GEPOukJuf/LesB3cbkpKVTP8bpG8aR4FA2Dy7oqio6p844l+T4RbLYy69Kem/qeYrxuq
 /OehV1uF83Rk9vK4ZuQl+h9QfHLHz3zbhgg4iZeYhV7rXiRXff7BHPilBEQaER9ys8Yo
 d7axXcAvK1fL9kUmHDYlEHmX5DX7zC0kxnOXg2ZiQUh6FaPhpR8MDCKmPAzjDl3wLxXu
 lAzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bYrOf9RTBwmZf5L0GW4BktLvAbpDYWcNsfWnV6+h4U8=;
 b=BU8aHP3m5/mgOlgXVdOhDonwsfhUHVGYp32O4twMCwVl3bOFl3xH4G3aD/pdp4SMMd
 aZ7HNfhwQxmFwW0UT58qwM0V5Nab98s3BdRKZESH3yzyD1LDDOeVoPLoK8kn6DX6QBbu
 3NBOci6IwLMKgVe7730IoTYNSIEHkgnO/+H4JLV7jRKkIHCO0g8pY6GhtVeuZenmi8lS
 bknq/qsIH7i5ErL7HzWae8+OSgSvXivUJSQ4Sk9IiJbKcy4lnmuqSL9pN5hnMwbQnqpd
 CmQVbHVt9wYJZtrfX5Sg4iPaanVk0mxKDRu3OtnNga+INyhzL9pg8dv6iMP1YSeda/uQ
 dirg==
X-Gm-Message-State: APjAAAUKgbwgLHOxkFVfydYeMNHUpJvauFmnPY65CAPuhBUF5dwc1b4e
 zwdubdZ7lnsbZaeMXQ5wdczqK3U8
X-Google-Smtp-Source: APXvYqzQvWzM1P6EtR2ZVrYWJfWDLqA/kHDqNXWmxi1Tb4O71b0x+R9R4roPPEsa4zgsKrNtHZgZLg==
X-Received: by 2002:a5d:570e:: with SMTP id a14mr11690472wrv.39.1567872999604; 
 Sat, 07 Sep 2019 09:16:39 -0700 (PDT)
Received: from desktop.lan (ip-86-49-35-8.net.upcbroadband.cz. [86.49.35.8])
 by smtp.gmail.com with ESMTPSA id d9sm14847713wrc.44.2019.09.07.09.16.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 07 Sep 2019 09:16:38 -0700 (PDT)
From: marek.vasut@gmail.com
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: dts: renesas: Add /soc dma-ranges
Date: Sat,  7 Sep 2019 18:16:34 +0200
Message-Id: <20190907161634.27378-1-marek.vasut@gmail.com>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_091642_079451_EDADD6C9 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marek.vasut[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
 Wolfram Sang <wsa@the-dreams.de>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Marek Vasut <marek.vasut+renesas@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marek Vasut <marek.vasut+renesas@gmail.com>

Add dma-ranges property into /soc node to describe the DMA capabilities
of the bus. This is currently needed to translate PCI DMA ranges, which
are limited to 32bit addresses.

Signed-off-by: Marek Vasut <marek.vasut+renesas@gmail.com>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Wolfram Sang <wsa@the-dreams.de>
Cc: devicetree@vger.kernel.org
Cc: linux-renesas-soc@vger.kernel.org
To: linux-arm-kernel@lists.infradead.org
---
NOTE: This is needed for the following patches to work correctly:
      https://patchwork.ozlabs.org/patch/1144870/
      https://patchwork.ozlabs.org/patch/1144871/
---
 arch/arm64/boot/dts/renesas/r8a7795.dtsi  | 1 +
 arch/arm64/boot/dts/renesas/r8a7796.dtsi  | 1 +
 arch/arm64/boot/dts/renesas/r8a77965.dtsi | 1 +
 3 files changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r8a7795.dtsi b/arch/arm64/boot/dts/renesas/r8a7795.dtsi
index 95deff66eeb6..2102140a6723 100644
--- a/arch/arm64/boot/dts/renesas/r8a7795.dtsi
+++ b/arch/arm64/boot/dts/renesas/r8a7795.dtsi
@@ -330,6 +330,7 @@
 		#address-cells = <2>;
 		#size-cells = <2>;
 		ranges;
+		dma-ranges = <0 0x40000000 0 0x40000000 0 0xc0000000>;
 
 		rwdt: watchdog@e6020000 {
 			compatible = "renesas,r8a7795-wdt", "renesas,rcar-gen3-wdt";
diff --git a/arch/arm64/boot/dts/renesas/r8a7796.dtsi b/arch/arm64/boot/dts/renesas/r8a7796.dtsi
index 3dc9d73f589a..d115ff34d0db 100644
--- a/arch/arm64/boot/dts/renesas/r8a7796.dtsi
+++ b/arch/arm64/boot/dts/renesas/r8a7796.dtsi
@@ -300,6 +300,7 @@
 		#address-cells = <2>;
 		#size-cells = <2>;
 		ranges;
+		dma-ranges = <0 0x40000000 0 0x40000000 0 0xc0000000>;
 
 		rwdt: watchdog@e6020000 {
 			compatible = "renesas,r8a7796-wdt",
diff --git a/arch/arm64/boot/dts/renesas/r8a77965.dtsi b/arch/arm64/boot/dts/renesas/r8a77965.dtsi
index 4ae163220f60..74d934cfe44e 100644
--- a/arch/arm64/boot/dts/renesas/r8a77965.dtsi
+++ b/arch/arm64/boot/dts/renesas/r8a77965.dtsi
@@ -183,6 +183,7 @@
 		#address-cells = <2>;
 		#size-cells = <2>;
 		ranges;
+		dma-ranges = <0 0x40000000 0 0x40000000 0 0xc0000000>;
 
 		rwdt: watchdog@e6020000 {
 			compatible = "renesas,r8a77965-wdt",
-- 
2.23.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
