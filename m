Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B11897C9B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 16:22:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V/zogNuwl7cCqF1ceu999ZBNMgDlhAAk3K/QxODaJVM=; b=ItRbH/DQJGe6ML
	FQLb6zMQtbqa4Oz33SzP8rIlrjFJgAXnr0CYIWCfX+7qBGDryqcETf4g7Z0epaUrxasDsNtlSjYPC
	bp3ucV7UrjcxKtyRANvStYJ/GUUvWYFZc2skSnF443o3OqvyIZjUl5op5XOY4FTQqQqB8M1X+lAPS
	kAzLrZs39tsKgYfeyq1uo8ORwxfXXXAngjE1iNQ1w/0kGoPb+07k5Xkn5CAfuG9dRcHIoOjHvYUe/
	uQg1hE0z4CuZrcFERxKI/IJtaXJvoLtOIDJGpRhWh03PhvqDylo0ACNObmg3nTqvUnvz4tKXSMLbZ
	7gVpA3ipwMArUsRLQIPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0RVS-00088a-Di; Wed, 21 Aug 2019 14:22:34 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0RTu-0006hs-I0
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 14:21:00 +0000
Received: by mail-wm1-x342.google.com with SMTP id p74so2319152wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 07:20:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zGF5jUzlLHUnpyLwcU0i8JE40DhyIcPvkvE+Vwkjv+o=;
 b=06ddO7CxS5O0YGXLovcrz6ShwhrUNh32lhm+fF4sdfT11snt54gRQTEkde2KNoHgW2
 VN+pbM/Ob/Yz8tb0A1vrQBmhDK9TgBzPRMMtuSJa2Cljse+5o87tcbUpdAy+V6t3dCDy
 uv3XaX7I9jSEobPiLPbDXqS57w0ULNezpjHDYWCiPvmES6DZDzpFUnJj2KwIB1p6+UX/
 GLusvZ1HQxwffMQgnNfhnH7ONfRDlrKvJHVlzn6WA1Ph2DE7S8IV/XD9aGRXt7RYpu9b
 Kn2P9n5OX+/ZMEAgA8pC0lLb+dlIfJINmbCK58erbgGo0LcL2uSsn1Ae61PN3XhfvS07
 Z6+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zGF5jUzlLHUnpyLwcU0i8JE40DhyIcPvkvE+Vwkjv+o=;
 b=BTYSsErILQwTKNf1uGjreBV4EFSuFIYLAcgsI3S4tJEdmiqO2ZOdNZMK3gktd7ly32
 W94WUbZGSKPJ8LBSD0RDKjYebTI4pU/YK3Z0JEIss8WkG0Rp8MhApWOQ6UW6bQIsk1VR
 69FHzM/3Ca1QvdGUBiN73v/7sxsmpkENSLV40dy/FSoLQusT9ahPaRUySsunEGmOwrFc
 IEScTckv/3fkV1CDRsTzg9HxyB4uo+FK5vZMwc4Wxo5/T45RSqaOt/UohzE3A9swaSfa
 6Lw866E/VOpYlThQ8L17VNFzpDDF3/Nd42JBQ8rquj+WrCCXOacdfy0/izKaHXvZC+S3
 9xyA==
X-Gm-Message-State: APjAAAXDjaRV9JuRz1JBjQTaJV2jCgIHdcgN8ioNg+FhIQStoCrl/QW/
 TQMlIUaVMxRqJMU/gsgna8rI/A==
X-Google-Smtp-Source: APXvYqxO0x8vMs0kU/VpvxdkH1TDg/46izp4XAK/663X31Vn4UFZsfKpt4KBDqQ1dNWeNPRLTcr4yw==
X-Received: by 2002:a7b:c241:: with SMTP id b1mr270320wmj.165.1566397257177;
 Wed, 21 Aug 2019 07:20:57 -0700 (PDT)
Received: from bender.baylibre.local
 (wal59-h01-176-150-251-154.dsl.sta.abo.bbox.fr. [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id o9sm33418939wrm.88.2019.08.21.07.20.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 07:20:56 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH v2 04/14] arm64: dts: meson-gx: fix spifc compatible
Date: Wed, 21 Aug 2019 16:20:33 +0200
Message-Id: <20190821142043.14649-5-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190821142043.14649-1-narmstrong@baylibre.com>
References: <20190821142043.14649-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_072058_631349_986ADC9F 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This fixes the following DT schemas check errors:
meson-gxl-s805x-libretech-ac.dt.yaml: spi@8c80: compatible:0: 'amlogic,meson-gx-spifc' is not one of ['amlogic,meson6-spifc', 'amlogic,meson-gxbb-spifc']

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
index 5b3dfd03c3d3..e2cdc9fce21c 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
@@ -317,7 +317,7 @@
 			};
 
 			spifc: spi@8c80 {
-				compatible = "amlogic,meson-gx-spifc", "amlogic,meson-gxbb-spifc";
+				compatible = "amlogic,meson-gxbb-spifc";
 				reg = <0x0 0x08c80 0x0 0x80>;
 				#address-cells = <1>;
 				#size-cells = <0>;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
