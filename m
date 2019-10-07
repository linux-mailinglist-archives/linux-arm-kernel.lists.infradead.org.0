Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ABF9CE311
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 15:18:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rlP/zpzrDqdYZVh9mMN61CXkq/vLtrrzFrZ/L3S0ZPk=; b=ugxvRDmDolobdW
	WrCIFBRWHSJ4NoQSsEImv8IBJT/gJ1nfMsBTozPr0N5OxMJr9tNZxvdibWlJZeeL0f9mQEETMvlV9
	h8kQL4j+FmN1CeE0eoWkVsyX22v3qVStnySQ+gBAn/t/6ab33XwOMNB/DQRGIq4zSn8cez1oiemIh
	ntrQYy2D6D3GA7Cl1UrG9NDZtSUfSnpDPS8/n1+FXzCvw52xoXzihcrwae5KL+WgQ/8jZKg0LU2wq
	jaLWPoemR5taO/ugAPGLHOz5FH/MDxfNJnH5gcJGcsOgrrWE3XlyrYGLMXygjPK6aw8gtxbKPnWmg
	qaCTFNXXLGvbDBsKgj9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHStt-0002CS-Id; Mon, 07 Oct 2019 13:18:09 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHSt7-0001bl-BR; Mon, 07 Oct 2019 13:17:22 +0000
Received: by mail-pf1-x442.google.com with SMTP id y72so8617451pfb.12;
 Mon, 07 Oct 2019 06:17:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KoaZxzLVm/DwefngcDmoS+KKvyssprZYYbYsX24hxTA=;
 b=fuq8L5e8HT5X5j5AtOK4CFur/2UqrGH8CyIA/PG4EG4QYDarWYNEvGf6D3BzesNav9
 ZgRBRvgF6dkQp5IioSG+FFLw5bWQR2+dFhqrdD09l2NvpGnH3aIY7s5CG2WSU2rZhFtw
 LDArsDCvRAVINmC3xzbXglsRf2yRyMoDOq3uq2w4t3TZXl9iqEqqnWCSzGRPBFvFxiE8
 dqB+UAbnJhwH5osdIri6HrZuROnQk36NSrsebN6r60EvqVetqIx7aRPp+SIWt0c3BJV/
 KVDAFY13Ci5eDCgobHwIN2YnNgUKZkujuk7bViJN2cviZQxgdmvrtlmAwXA1qvbz3O58
 IUrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KoaZxzLVm/DwefngcDmoS+KKvyssprZYYbYsX24hxTA=;
 b=TjHHDi3LF1gyywV5CCoZoYPieldA2WN70cQ/zRdi/FXNU1v9kyxP+s1ScxqdgtmoYF
 iOKMrdx0GcVpvRJNJhnxgtgo3gHvZ12HLvZCw2FtqmWspjh8ge7Fyo94dxMMSfMwZEh7
 /JUyQqJyty+c8hK78HTJDyr1aWPdwP8wrHIg0zIno/YRrpeIgld2whuJT7nvKdSRCsAQ
 83HBcD4APmUItEyfuNHbqtvqnDZsB1MNN2CTinRgMN03gzTrgh8eHlizF3D50ympAzim
 86AcDALaRHijWc4iBTGcPKPn5ccXEWASHxv/i1GRBPksrclSQA3NikQrxIDgdJpwPojQ
 qprQ==
X-Gm-Message-State: APjAAAVF+DGru6KvJP/34cRtdXuVL2jMnzLxdBTWpcpIl1ces+fXlZZB
 wlYyiPjR80PumoImfQX9KmE=
X-Google-Smtp-Source: APXvYqx797i05121y81HVrKKU0fXm5V5dGZoKCAXND16sYYS7D7G9dCUXRYLbrJW45fVkM4bXjS7mQ==
X-Received: by 2002:a17:90a:2687:: with SMTP id
 m7mr32683118pje.25.1570454240627; 
 Mon, 07 Oct 2019 06:17:20 -0700 (PDT)
Received: from localhost.localdomain ([103.51.74.138])
 by smtp.gmail.com with ESMTPSA id r186sm16938650pfr.40.2019.10.07.06.17.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Oct 2019 06:17:20 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [RFCv1 3/5] arm64: dts: meson: Add missing regulator linked to
 VDDAO_3V3 regulator to FLASH_VDD
Date: Mon,  7 Oct 2019 13:16:47 +0000
Message-Id: <20191007131649.1768-4-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191007131649.1768-1-linux.amoon@gmail.com>
References: <20191007131649.1768-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_061721_408836_6A2C218A 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As per schematics add missing VDDAO_3V3 power supply to FLASH_VDD
regulator. Also add TFLASH_VDD_EN signal name to gpio pin.

Fixes: c35f6dc5c377 (arm64: dts: meson: Add minimal support for Odroid-N2)
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: Jerome Brunet <jbrunet@baylibre.com>
Cc: Neil Armstrong <narmstrong@baylibre.com>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
index 66262a6ab3fe..6bd23a1e7e1d 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
@@ -51,9 +51,12 @@
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
 
+		/* TFLASH_VDD_EN */
 		gpio = <&gpio_ao GPIOAO_8 GPIO_ACTIVE_HIGH>;
 		enable-active-high;
 		regulator-always-on;
+		/* U18 FC8731-09VF05NRR */
+		vin-supply = <&vddao_3v3>;
 	};
 
 	tf_io: gpio-regulator-tf_io {
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
