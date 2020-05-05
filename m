Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 728AA1C5825
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 16:07:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NRYfErnj+6e0GEtFD/S+zJZjAEqSvJxvQidgs+lgO2U=; b=pSMSA9dOQhl/b8
	c9vmhhJTkxPGTyRsmO73rYOorQw7lrZH97UukTatYCwapAWWRt9XQwG8XL2Z9xTPKjFhVDCZF2Bzt
	54cCD8oHvJfqSwgk1SwytsoZ+S4gSmWhjf8p9A8K/66BI8Y92bugHJwB8ma+FFlnK30GMmnpHYOYF
	dGObRxes41sRCQf8x0ZP7nUfTw8BRcHhbLD5InweDtjwbKol/d6Gt0TjzjPUDMOeUAyvrCJSZuXh7
	0VKZIuQ9EY7LMMNHsZpVUEUBfoj9Y67M+rl3RM4AvPfDUvM7DdGGkeI7DvfXHZWYlb7eX4qnNMCkZ
	Dmxo1ErKavBeKozY9vmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVyDx-0008N2-UY; Tue, 05 May 2020 14:07:05 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVyAU-0002Qc-6j
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 14:03:31 +0000
Received: by mail-wm1-x344.google.com with SMTP id k12so2429074wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 07:03:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KiLRpfO6b7G+PZFXWrA65hqZV6E46x1U4Qg5U0775pc=;
 b=lSlyl4mOElbeeStRAJ4CWke7R4swrfRTDDvLBAB45QOvM4+7cfviB8IS+q8YjTZ9ER
 J/ERsLiOQHNV1mTXN3jPp9K18esFG4ne5yM9GcYpMm01CSVnE/W734lRVikO4BAQNJfp
 NIJ0jLuZD/AMpS3Co94mCUYYzA7Mbr3GSRHF0qswguqdE/7M72H1HNornTVQfgBDvMBf
 J2lJdqjGdfJQJZaUMRQJG+LjJd44f4bKZ6cbr2NR816aGdFW5ioRRvqPprprQr5Q4qDe
 0CAUeW3L2CkjgSaKgHc1XyVKlBJjesE4lOuflOL1uJe3/07Mw43PRohiyBdxf3FGLcgj
 LT/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KiLRpfO6b7G+PZFXWrA65hqZV6E46x1U4Qg5U0775pc=;
 b=rTeymZ2SMSX/DGzqt88RDc/J50p3LYKg96bo9K7AKqgsrefrlvbdhcWtIBZpXxc45y
 6GP/33kefAQ4kxbXxa7Jzr1Rc+PNSYkJykEjoXm8EUie1SWUIgM89e35SmJlChvrt6Fj
 mtusTBmC1p8QjwWvca4zV/FVzSP23+49KQa5ja3vzc9YrjVPpt5H7KRBvWF1l5eFIcuJ
 W+6DlY2wm3zzR1s4ZneosYb7AdfzuBfOpRKG9W9DoehFXK6sXBschi/RItV1DM/mHviH
 6gf6Y/qQATopSNbNIFyqOUzkBfw8XVgRNw5LQM8Cnf79q8ksO+Ab0CxEI6VyJbSkfLL4
 xUWQ==
X-Gm-Message-State: AGi0PuY1ktMWEmGA+e9C3wByAtdcuA6OoAK3kJaK5alOMxF8O6BC9euZ
 E5en5cLEsT5HQ5gcmECthtryLw==
X-Google-Smtp-Source: APiQypKwmZMdeEmUAzcUU4K0jiEpe5kHCS1F6NfZ1/9dSidf/8PeL2h2zvcjETlSxePjjPJCHSUbNA==
X-Received: by 2002:a1c:9c0a:: with SMTP id f10mr3689658wme.139.1588687398732; 
 Tue, 05 May 2020 07:03:18 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id c190sm4075755wme.4.2020.05.05.07.03.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 07:03:18 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, Felix Fietkau <nbd@openwrt.org>,
 John Crispin <john@phrozen.org>, Sean Wang <sean.wang@mediatek.com>,
 Mark Lee <Mark-MC.Lee@mediatek.com>, Jakub Kicinski <kuba@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Fabien Parent <fparent@baylibre.com>
Subject: [PATCH 10/11] ARM64: dts: mediatek: add ethernet pins for pumpkin
 boards
Date: Tue,  5 May 2020 16:02:30 +0200
Message-Id: <20200505140231.16600-11-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200505140231.16600-1-brgl@bgdev.pl>
References: <20200505140231.16600-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_070330_282095_EC433A3B 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

Setup the pin control for the Ethernet MAC.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi b/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi
index 97d9b000c37e..4b1d5f69aba6 100644
--- a/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi
+++ b/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi
@@ -219,4 +219,19 @@ gpio_mux_int_n_pin {
 			bias-pull-up;
 		};
 	};
+
+	ethernet_pins_default: ethernet {
+		pins_ethernet {
+			pinmux = <MT8516_PIN_0_EINT0__FUNC_EXT_TXD0>,
+				 <MT8516_PIN_1_EINT1__FUNC_EXT_TXD1>,
+				 <MT8516_PIN_5_EINT5__FUNC_EXT_RXER>,
+				 <MT8516_PIN_6_EINT6__FUNC_EXT_RXC>,
+				 <MT8516_PIN_7_EINT7__FUNC_EXT_RXDV>,
+				 <MT8516_PIN_8_EINT8__FUNC_EXT_RXD0>,
+				 <MT8516_PIN_9_EINT9__FUNC_EXT_RXD1>,
+				 <MT8516_PIN_12_EINT12__FUNC_EXT_TXEN>,
+				 <MT8516_PIN_38_MRG_DI__FUNC_EXT_MDIO>,
+				 <MT8516_PIN_39_MRG_DO__FUNC_EXT_MDC>;
+		};
+	};
 };
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
