Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F2D12B00E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 10:23:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mL1WIfC+Shzw64sPZ99m94qB3H0x7KFnYsTcvy25tjg=; b=gh3sIfXxQDRXR4
	7wjDxBs6S6rE0UvrrYYsKLpp2DHycLzBjOHueLe2D8O2BDi0ks1nqKc+mD/79D4yCek3HeKrias0i
	XlPllXS5Gyn/YLSsd3guMcoGEsyZYHCwUo6/UlPnLLNgZUUJ+cAyWzbARwa1OARK4jdTQek/mKmNs
	hfl13mVNdkyp9iY8Df5JB3GmAbPuMhtjh4BlrQvntLjz1uHOTX0TdSzF3kDW5fCTIzknttgtXj7CF
	ifZ1Dz12hHbAwQL9jjnVWxehEr1LIS8RzgdXdGZxr/dF+U8n2uQ1ydyeZcBfLfVGgK/Xzq0h1yeQW
	fkbjx1b9ZJQhBaZPJprA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVAuo-0001D3-Uq; Mon, 27 May 2019 08:23:30 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVAuQ-0000sa-NG
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 08:23:08 +0000
Received: by mail-wr1-x441.google.com with SMTP id f8so16005350wrt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 01:23:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=O6d+R1BA43CR6//FSBQc7Q2qw1KEWApHiN8cbRKfTm8=;
 b=U+t0G69tazaJ32d2puFLX2n6t/xlReiVuHNX4sFtUMV9oIyiOxHwLAhcmjzB2AVWaE
 T94F/JIsMwMg/rb4bJVNBZ1Othe430BVUN9UuhhR5hzbmFSVm40NCAHqKy+gftpX/JCn
 sZZDjRjXR4i/kXjf3/hKX7G+o/yxJC5f2Se2UJqw0f5q0nQ8mmbtRWcQ6Sl3ZjkJubLi
 3UpX49E8IeBm/UdoJHMSa4gbHFWMaJv/vHcqwtm1jyE3SelX+BIzzhmQGYvXulP3J5+a
 bNToEtbwYVJo8WDN9DAOnzSUwWxX8qFIzLaUS2/cFCeNNvWPzSdijxLXfJh95qFMM3mu
 5Aaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=O6d+R1BA43CR6//FSBQc7Q2qw1KEWApHiN8cbRKfTm8=;
 b=mbVsN09f/Us0RHemCPbruFyTFZpU/WGK+rnelQbivsQCECuMZXaB6WGudTYDlh8vOC
 9ghguZ6PRhkomJDjhguoR/Jn5vEi3sAMiOj+feQ3uod8bjv3zuaUurtnWZF5etWjYwec
 jp26l/GNuHdSkJ7r2hkUoFQ4nf958pM80MZDcWTx0fs9tERtt1V0/tCs8kRgeVRtY+aF
 9FQGvoopiPg5uhcM/2AGOiZACNXTOaEh1mJkcN/UhEmQ0BbpHmy2XJU0cruFH6zAa80H
 TZLzp/Ek6sqLFdHPoPnYEqD9l88kBPRHI2x84v1tIUfdf/2/DjcrClxyHPgVv5hFgejF
 A69w==
X-Gm-Message-State: APjAAAXy54oe2ovQtZSQDxeisqAYQkm2yCDI3xgDEDJhqJfOO72s9Vlw
 tui4Um3T1heqBhOqEbSU40cPTA==
X-Google-Smtp-Source: APXvYqzl7Ctp82OmJEPm9ozlpt0egzfmyn5NVaZzUenfXA7KGk3WcpuMLjltC4b3IBRcqSYjl87k0A==
X-Received: by 2002:a5d:400b:: with SMTP id n11mr23418939wrp.123.1558945385008; 
 Mon, 27 May 2019 01:23:05 -0700 (PDT)
Received: from localhost.localdomain
 (amontpellier-652-1-281-69.w109-210.abo.wanadoo.fr. [109.210.96.69])
 by smtp.gmail.com with ESMTPSA id n5sm14482754wrj.27.2019.05.27.01.23.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 01:23:04 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, Kevin Hilman <khilman@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 David Lechner <david@lechnology.com>, Adam Ford <aford173@gmail.com>
Subject: [RESEND PATCH v5 1/5] ARM: dts: da850: add cpu node and operating
 points to DT
Date: Mon, 27 May 2019 10:22:55 +0200
Message-Id: <20190527082259.29237-2-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190527082259.29237-1-brgl@bgdev.pl>
References: <20190527082259.29237-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_012306_755773_9B3C81D2 
X-CRM114-Status: GOOD (  13.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: David Lechner <david@lechnology.com>

This adds a cpu node and operating points to the common da850.dtsi file.

All operating points above 300MHz are disabled by default.

Regulators need to be hooked up on a per-board basis.

Signed-off-by: David Lechner <david@lechnology.com>
Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 arch/arm/boot/dts/da850.dtsi | 50 ++++++++++++++++++++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/arch/arm/boot/dts/da850.dtsi b/arch/arm/boot/dts/da850.dtsi
index 559659b399d0..0c9a8e78f748 100644
--- a/arch/arm/boot/dts/da850.dtsi
+++ b/arch/arm/boot/dts/da850.dtsi
@@ -20,6 +20,56 @@
 		reg = <0xc0000000 0x0>;
 	};
 
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		cpu: cpu@0 {
+			compatible = "arm,arm926ej-s";
+			device_type = "cpu";
+			reg = <0>;
+			clocks = <&psc0 14>;
+			operating-points-v2 = <&opp_table>;
+		};
+	};
+
+	opp_table: opp-table {
+		compatible = "operating-points-v2";
+
+		opp_100: opp100-100000000 {
+			opp-hz = /bits/ 64 <100000000>;
+			opp-microvolt = <1000000 950000 1050000>;
+		};
+
+		opp_200: opp110-200000000 {
+			opp-hz = /bits/ 64 <200000000>;
+			opp-microvolt = <1100000 1050000 1160000>;
+		};
+
+		opp_300: opp120-300000000 {
+			opp-hz = /bits/ 64 <300000000>;
+			opp-microvolt = <1200000 1140000 1320000>;
+		};
+
+		/*
+		 * Original silicon was 300MHz max, so higher frequencies
+		 * need to be enabled on a per-board basis if the chip is
+		 * capable.
+		 */
+
+		opp_375: opp120-375000000 {
+			status = "disabled";
+			opp-hz = /bits/ 64 <375000000>;
+			opp-microvolt = <1200000 1140000 1320000>;
+		};
+
+		opp_456: opp130-456000000 {
+			status = "disabled";
+			opp-hz = /bits/ 64 <456000000>;
+			opp-microvolt = <1300000 1250000 1350000>;
+		};
+	};
+
 	arm {
 		#address-cells = <1>;
 		#size-cells = <1>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
