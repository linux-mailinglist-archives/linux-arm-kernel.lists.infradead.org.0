Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E2891DB1BA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 13:29:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZEDa469J8NqiLpAkZooC0NaOJCY8pAvcUwBi+q7OMnY=; b=cDoL6AUll3lR+r
	S+zt+DosQiPjZ0px8Y25AEnMLFBRbnya1c5lxGj2wvJAJSjXL9U5QGEXgP/GcrOnASj9EwX9WjHIx
	QY9/7a0GiUw8iIH0zx95TidY6oDjkkpmEktJKOq5hSxyaH71whFFwcQXoe8UTgVr8UIH9UmKgaOed
	OUZ4R4irmkHXl2I4uYL7RXsmNGo5HwLzo7U70wgoV99DtkOWUXqEMHyeRBUyF5RIVs0MrvLn7DnY7
	DKc1lFHce7Iflo8kNQG15rxta/qMKZYSSd3T7+eI2OzYo/Pl/NDSFzIiVfM9nZZITHQ3w+8EDRzm7
	lBdPwY8MaZhYK5QaLLTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbMuF-00017R-EY; Wed, 20 May 2020 11:29:03 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbMr3-00072M-6p
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 11:25:52 +0000
Received: by mail-wr1-x443.google.com with SMTP id l18so2757487wrn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 04:25:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cLB08H4ZIlTMzvj5hInDPm3tTNq7mk/XtYoMNSk6v2w=;
 b=DdsJMtoqD2XEe5pqI+7G1yIhCDJBpTVeqCCKfVUu9GfPyImPik8Xq5o3U5HJwOACo8
 VWicYw4xbBqY4JRDT15bYRlQtEa9idFjml9PKxfc1KOPVYBrehTeDtfV7xR4uWrq0RwR
 1iOZS4oIUEVFcgABFOUhiz64uD3cYjHVLDkIsBT9FyWb2CFLTlcm1JIskeVmIExaQI96
 LvEfFDjUugzJCn5oqI6+tXVc3sm2FQ+nrAFJAlGSaV9hNP1XedyZqGy+5ij+S9sC5o31
 8xOcTFLGbqcqq4S+14hx7O/aecbVf8cluflwtMquahckiUUAXdMjFYXVhVWaAfC+SRi4
 m5Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cLB08H4ZIlTMzvj5hInDPm3tTNq7mk/XtYoMNSk6v2w=;
 b=syGZCzFinPWDkkK9cdt21pMOdWWkf1FV2AJkPv87YLDX/8QYrmOjraXxs+2zX+R0f2
 XSm+fmoeX9NnXPsUZc4iMiB8ND2cs9xOF/qF4hw+9+Pwl06TZp8Pn3Yoss1ZwfpJIgSs
 SqlbCYr5m1M01khdE8T8cWENHMTdddCJh9oyb1EEPGajjGlIpcJlGtK6v6B7uiZMbF1g
 l9yd9NqOVUo5shy/D1VmrdsdUlPGpCAp14pACG4c4oUF15O8K7HG0zwRZvFEezkZjFxg
 ZXvkXg5oQa3Wdvd+K2O74ioMwWNPAGp7uR7Ny8ZbPF7kT2OrAwyJHxh/QTHHTRTaAjga
 oNGQ==
X-Gm-Message-State: AOAM531GJuhegf4wiK5aDSUmXkgnCqKHjy2+0IMLYdQh5rgygkqpQamM
 cnL2RqB+WaqtJnEFRsDsLtfAYw==
X-Google-Smtp-Source: ABdhPJwwJBc3w2VmTMgfqTJSthEm43N5ws6r6wVEpUxxUeDaTlLFPSxSxxtCGl4iIm9ZRdTzPJlx+g==
X-Received: by 2002:a05:6000:1c5:: with SMTP id
 t5mr4071173wrx.229.1589973943577; 
 Wed, 20 May 2020 04:25:43 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id v22sm2729265wml.21.2020.05.20.04.25.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 04:25:43 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v4 08/11] ARM64: dts: mediatek: add the ethernet node to
 mt8516.dtsi
Date: Wed, 20 May 2020 13:25:20 +0200
Message-Id: <20200520112523.30995-9-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200520112523.30995-1-brgl@bgdev.pl>
References: <20200520112523.30995-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_042545_359577_1D5367F8 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org,
 Stephane Le Provost <stephane.leprovost@mediatek.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-mediatek@lists.infradead.org,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

Add the Ethernet MAC node to mt8516.dtsi. This defines parameters common
to all the boards based on this SoC.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/mt8516.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8516.dtsi b/arch/arm64/boot/dts/mediatek/mt8516.dtsi
index 8cedaf74ae86..89af661e7f63 100644
--- a/arch/arm64/boot/dts/mediatek/mt8516.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8516.dtsi
@@ -406,6 +406,18 @@ mmc2: mmc@11170000 {
 			status = "disabled";
 		};
 
+		ethernet: ethernet@11180000 {
+			compatible = "mediatek,mt8516-eth";
+			reg = <0 0x11180000 0 0x1000>;
+			mediatek,pericfg = <&pericfg>;
+			interrupts = <GIC_SPI 111 IRQ_TYPE_LEVEL_LOW>;
+			clocks = <&topckgen CLK_TOP_RG_ETH>,
+				 <&topckgen CLK_TOP_66M_ETH>,
+				 <&topckgen CLK_TOP_133M_ETH>;
+			clock-names = "core", "reg", "trans";
+			status = "disabled";
+		};
+
 		rng: rng@1020c000 {
 			compatible = "mediatek,mt8516-rng",
 				     "mediatek,mt7623-rng";
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
