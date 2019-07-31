Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A62067C1D7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 14:43:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TUD29skLB2pbxcr//Gh7a9PLXx1Lf2/f/wvCeSt92AE=; b=BCzflUnf+rWQCd
	9Cw5UunnQ1ydVopHgjJSHLdDJa+QwJOHaPoIRuyUGVbiSXvgbolMiR7a4M2DAxa+l72iC1ZJvn/TX
	oL+alRHnTkJ2TKBEwHA1uOsRvuzZLjDC5fyp+pf29+nOPyOf/8RWx5tA1XdiFJ5TlE0UZz2f0txtM
	Dmqf2fbvILwyZN+oUAl6W7t1gMVGBQfdjHo695MlF3wUQXpVI8Df0VV1rM0fr2hyU42p/6P+6D1E8
	eCdr+2PXjqe/yPej0MrTJ9eAsLA8253XjlSKvD5ksYAS0p4lNncDXGlAeZTM29D+EKuWg5hzpxucG
	MjmNNhXe6kbIcQjyNeqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsnxE-0005HT-D9; Wed, 31 Jul 2019 12:43:40 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsntr-0000Gl-DT
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 12:40:16 +0000
Received: by mail-wr1-x442.google.com with SMTP id n9so69614031wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 05:40:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=U87qbGqOizt6mcWi4ZafXpAVErJ10/2GJDrgCn/BFng=;
 b=zEzqFVja0Fqsg11qypzSTOGn9YUbHxrTCRpomYU2xnSk4RqosdMU3RsLKQ5IHrk01v
 gZa8uGmAP550xts1ob0QR4t+ujj6f6l4TPGUMJBTI1aXnFAHRLDITtONU9DDzGDNd6fH
 b9UA6re8oJh0ZuRd7oJljeKVy1nwM2wt9MzpO1rIUn6rSJcD8SKFHAT+zvtKXc8CrPSL
 Cw4OLEzT9m02WDlPC3JU4Wc9Y+o69mwLzcaIL3DBzErWh8oaqJOcNs1bZjxyGSYXOBNW
 Zs3wlfRxgPz3+Wv+dW7ILng2azVJyENzMtL3tbafMQGYvkRSgsAFFrpNh6hbT/q8W/gN
 0enQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=U87qbGqOizt6mcWi4ZafXpAVErJ10/2GJDrgCn/BFng=;
 b=BtJRfuByEeadwV/i83eLUYN+vz5Ec0mMZypDNfjl+OEUpCoHL3lcIImfXRabkcW9zL
 ZMoDTxf6puchW3zUMNlWDkU4du2Rt2WKSq5tY5x1aJ5C66xudXcTFsYcJjhn+fPhQuEn
 ugI/AYbd0OOveP5yHh5JV7i+7tswVJzXTiVt16I9OSxJjtb9y7YhmKqBtv5jQ3BlcHli
 2YLHkyXNmYtq9rDnkd8x3iLQDJC7Z2Bi9MyJtC2ewDCowIT7V8nlp52aSTMivfJmcC4i
 JIsMAuthx1Ai4/GpRLov41aph0+6OzR+hsCaaTPnRbxwu2DzzPi3jijIWq0fM+z+LaaH
 mUyw==
X-Gm-Message-State: APjAAAXwAvxb/lqNteJfvgwmg4THjpw/SXc3KeMDL4Fe8mdm9G2atNxx
 zW/3DULKRHXrsOkS9PiJzeN8AQ==
X-Google-Smtp-Source: APXvYqwRvaDIRDg5/7CHt0j5vI443O9wSUNUp31+MGhBKdXuOhMOSbWoNqXVYU+B1ah5lM6/dpyi7Q==
X-Received: by 2002:a5d:428a:: with SMTP id k10mr15513765wrq.329.1564576806822; 
 Wed, 31 Jul 2019 05:40:06 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id x185sm62504271wmg.46.2019.07.31.05.40.06
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 31 Jul 2019 05:40:06 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com,
	devicetree@vger.kernel.org
Subject: [PATCH 4/6] dt-bindings: arm: amlogic: add support for the Khadas VIM3
Date: Wed, 31 Jul 2019 14:39:58 +0200
Message-Id: <20190731124000.22072-5-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190731124000.22072-1-narmstrong@baylibre.com>
References: <20190731124000.22072-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_054011_548813_2F15DD58 
X-CRM114-Status: GOOD (  10.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-amlogic@lists.infradead.org,
 Christian Hewitt <christianshewitt@gmail.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Christian Hewitt <christianshewitt@gmail.com>

The Khadas VIM3 uses the Amlogic S922X or A311S SoC, both based on the
Amlogic G12B SoC family, on a board with the same form factor as the
VIM/VIM2 models. It ships in two variants; basic and
pro which differ in RAM and eMMC size:

- 2GB (basic) or 4GB (pro) LPDDR4 RAM
- 16GB (basic) or 32GB (pro) eMMC 5.1 storage
- 16MB SPI flash
- 10/100/1000 Base-T Ethernet
- AP6398S Wireless (802.11 a/b/g/n/ac, BT5.0)
- HDMI 2.1 video
- 1x USB 2.0 + 1x USB 3.0 ports
- 1x USB-C (power) with USB 2.0 OTG
- 3x LED's (1x red, 1x blue, 1x white)
- 3x buttons (power, function, reset)
- IR receiver
- M2 socket with PCIe, USB, ADC & I2C
- 40pin GPIO Header
- 1x micro SD card slot

Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 Documentation/devicetree/bindings/arm/amlogic.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
index efa032d12402..04a2b0ef34c6 100644
--- a/Documentation/devicetree/bindings/arm/amlogic.yaml
+++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
@@ -137,6 +137,8 @@ properties:
 
       - description: Boards with the Amlogic Meson G12B A311D SoC
         items:
+          - enum:
+              - khadas,vim3
           - const: amlogic,a311d
           - const: amlogic,g12b
 
@@ -144,6 +146,7 @@ properties:
         items:
           - enum:
               - hardkernel,odroid-n2
+              - khadas,vim3
           - const: amlogic,s922x
           - const: amlogic,g12b
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
