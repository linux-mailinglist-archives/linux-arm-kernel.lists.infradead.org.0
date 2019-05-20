Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3243C2416B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 21:45:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=inE/ev5H0jx3zsflSQBZskA6Ccn4zdPf+z7llQj8C/0=; b=Szn6Z8tPROKdbv
	sVV8Qv0rZonqqKdO5gaiXq67IUeGIIOP4BSPlKetHPJvGffUBqq6EbWn5odKtHIL4JMBGI1uKbEMw
	AQk3D1jbdwSxR2a8fdzOicOyEMiJ+Jqk/85VmteBppYMICbRZGJik26oGLXXQWCPT3a2kvcboMCnw
	1YK7dCNWkX4jNPt8ldsC2dI71T0YnqeSuY2VitA8EPE1nL8ZSVsXq3b+V9xTShVLQrw5imPdFQ2ZQ
	Y6SBmzRQFiCPRuKqr9JGSz51Eq75381otDkve5xex7RCywX8R7H6weqL3eU3IORsY+JL7cCQ5n1oB
	heG4zeiTZQu5vhii4jog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSoDn-00021Z-C0; Mon, 20 May 2019 19:45:19 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSoCf-0000mV-ST; Mon, 20 May 2019 19:44:13 +0000
Received: by mail-wm1-x343.google.com with SMTP id i3so538445wml.4;
 Mon, 20 May 2019 12:44:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IYg36bJkUAGqrs6RcoppkW6uHqR+c6iAwwtmm+SF24A=;
 b=MQp1WuNCFJvfPVgPWAa/hBKKkjPR1lPrea/FUxe7vACI/kWv437nXBEHZv/6UJellY
 1Eq6OKYDbWKX/7jp048kyCjTrQrLssBZg/BTe1w5ggjePsCh/9ytffWIwyOlhmG/dnMZ
 fY1i41SLm3XVeJlCsN6TsWS0jbepJ7biSuwXvuBSOF/3BymHyafaXopDkQZ8cUd8TapM
 3Nb7RUS1hV/ArkTGVQ6MXocKAGALtMqWT+XJnyAIHoWoaM/B2i2NKU/A0h4kod5WHA5/
 1Z9RzW6jqYXUZJXG0s/s0Ah61TFsHeKjEEDsDxidKGeaFy2OighIX13Eufp+mAGOPa+G
 7xqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IYg36bJkUAGqrs6RcoppkW6uHqR+c6iAwwtmm+SF24A=;
 b=ku0Ixm4KXc0vwcBvCo7d2ciw0wljp36Y5b2UCdBRb4hZSZwRRYrA9VKJcyk0+PQkEK
 J2y7diVAUA9zfEFVHwh2xUIE+GTH2E2PSikFnqg/JVhIbDj8smruyBzEZm1h9E6WImR/
 2AMt+q7o0KvZiyFwCG96Y+iNlXLFA5FhIPjN4GFnqOvVP1655PHwKpwXwsKiG+EpHsGh
 aG1UpFhe8wawaP4qFbmqqSvSbT2e20+ijWXeiQcnI21zRRwH0QDl1eYJw11bU5KWMCEx
 t5t1lCnk6GFHVYCCoxbPJ3/D6EcGZB1vs/3qEPLwPkziRvA787dcT9B6jAzILJWoKKhh
 I75g==
X-Gm-Message-State: APjAAAVZFadRbMC8aT8FHgfGShybAGoKIdPCMq8NNMdTb2O0hJqM6jqE
 wL+By+VMUQKrXqcduISmo0bvAkTT
X-Google-Smtp-Source: APXvYqyFdBCG8cWHpaN2+KrG1gXeCei6iHoeMF6BgUJTXx01bW/MIbZDAKOJ2UzJT6V/bPMgmzethQ==
X-Received: by 2002:a1c:1f95:: with SMTP id f143mr627183wmf.16.1558381448175; 
 Mon, 20 May 2019 12:44:08 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133EE71009C356FA1F0E19AF9.dip0.t-ipconnect.de.
 [2003:f1:33ee:7100:9c35:6fa1:f0e1:9af9])
 by smtp.googlemail.com with ESMTPSA id p8sm9135352wro.0.2019.05.20.12.44.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 12:44:07 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, khilman@baylibre.com,
 mjourdan@baylibre.com, robh+dt@kernel.org, mark.rutland@arm.com,
 devicetree@vger.kernel.org
Subject: [PATCH v2 4/5] ARM: dts: meson8m2: update the offset of the canvas
 module
Date: Mon, 20 May 2019 21:43:52 +0200
Message-Id: <20190520194353.24445-5-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190520194353.24445-1-martin.blumenstingl@googlemail.com>
References: <20190520194353.24445-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_124410_214297_A3B65A1F 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With the Meson8m2 SoC the canvas module was moved from offset 0x20
(Meson8) to offset 0x48 (same as on Meson8b). The offsets inside the
canvas module are identical.

Correct the offset so the driver uses the correct registers.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm/boot/dts/meson8m2.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/meson8m2.dtsi b/arch/arm/boot/dts/meson8m2.dtsi
index bb87b251e16d..5bde7f502007 100644
--- a/arch/arm/boot/dts/meson8m2.dtsi
+++ b/arch/arm/boot/dts/meson8m2.dtsi
@@ -14,6 +14,16 @@
 	compatible = "amlogic,meson8m2-clkc", "amlogic,meson8-clkc";
 };
 
+&dmcbus {
+	/* the offset of the canvas registers has changed compared to Meson8 */
+	/delete-node/ video-lut@20;
+
+	canvas: video-lut@48 {
+		compatible = "amlogic,meson8m2-canvas", "amlogic,canvas";
+		reg = <0x48 0x14>;
+	};
+};
+
 &ethmac {
 	compatible = "amlogic,meson8m2-dwmac", "snps,dwmac";
 	reg = <0xc9410000 0x10000
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
