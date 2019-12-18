Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6985E123E78
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 05:23:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yl1eVk+1/BjR9rq3rL7OiykPB4HRfa8ixNvy8FbDzPM=; b=uwsRu6H67DkD6K
	uX09yAVsSt7IiO+l+otB4mJyI90W39ZSIymUPKUce/g31clfYykyRYLPQVGjxCBE7jZs+C8KyBBKH
	LO3jWmmng5e541eHXolxFXWQoVHoUPZ/B1gjyBqR0JthGksPJqxszCuVscvBTyC/Lc/mPUv8w9P/+
	olonuCdGr93iUOyxff1eT8tZkJIKoT0Q/aTAYNpbRurAIbKFkZDQpsY0wI3CoRp8AEn1tKahRLzjn
	2cDsDOklS0uIwxy3lSvf2sH48OScydA9gXPvYuHZqsLuO85J9U9LmrDOVobgVggtTuLCIxk3Vy26V
	p7YXBUNOJINYt63e4I2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihQrd-0001tj-HY; Wed, 18 Dec 2019 04:23:09 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihQq5-0000gD-KA
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 04:21:35 +0000
Received: by mail-pl1-x641.google.com with SMTP id d15so382412pll.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 20:21:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5JoZyySS78BiNU1aODtc8vpSYvJMQn2ITDVR9fgmYmY=;
 b=mrg17tqFWEI9echCXToFXJOHp77UK2JA5GbsZqzLwqAR9vCr05p/FJRVWY9OwE6y3N
 HWGuB1pME0LUdbMAydBMZM/sHwBJCuL3Avx6yPr3LDqgDVD6PPg16aH5QPVJbGZ4NGVv
 G/AXM21EGT1glWaaUNt00qP8k2WjbPjiSLJqsrkOXEK9NdMU6iR7EeNDjXoEbNeEsEu3
 f8CNijAHCI+itYbDnIcycmbkBIG4AHbyc4YHGOqmjCpYt1ZNm5v4Yi5rmHY7m5hAyLh/
 yVpIyHyiRlAn8ABaEv0kZoKmCGTul/w4bXFjV7KWrlL1JsGRBVHMoTq9rhqCkDyd0SRa
 mDCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5JoZyySS78BiNU1aODtc8vpSYvJMQn2ITDVR9fgmYmY=;
 b=qsalIyfaNweOIR4F5bcPfxckL8zMtJ43sIruA7wtrzwbGzvGrW++RzCD6q6haOH+/E
 9jtRJfbcsJJ6+weuOtInfR8w32PCCwa5jDtwrnLnOE/kAXM+5e0prNgMYrPQtFmNhFew
 FR22IvoOTptcjvxLLZxU/JQSfPNbLvsYgnhxbNPOeWhNMOrQcDaWXhUrfyi9gY6Ooouj
 plkd3MGGsT/6efFV6SJvdQYUZWHd1SZa67lg1U3LoYYq5Ihlzjo0UAYpRNY1Zrf3ydCq
 ejl8Mw5m2lVNjQSXBJHpTuPRytN2Oxst/LOT//xOYxTAm+tMBT5njJGmw9S3xXyJ73bu
 9nsQ==
X-Gm-Message-State: APjAAAVPldm3RU2Ckg64wN43GLaPg4kIg6ruInbMp9dT/zKAGpHMfLIX
 8AdviUVCfaji+SZRVqXlMlE=
X-Google-Smtp-Source: APXvYqwkHZDDMPW+eIbPKCNS8iHXIe0g9IqSkmFDGFTAYkookNiFDEI9gFJvmiTBJUJtxJ4Fzg2tjA==
X-Received: by 2002:a17:902:9a49:: with SMTP id
 x9mr261739plv.331.1576642892784; 
 Tue, 17 Dec 2019 20:21:32 -0800 (PST)
Received: from anarsoul-thinkpad.lan (216-71-213-236.dyn.novuscom.net.
 [216.71.213.236])
 by smtp.gmail.com with ESMTPSA id g17sm775380pfb.180.2019.12.17.20.21.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Dec 2019 20:21:32 -0800 (PST)
From: Vasily Khoruzhick <anarsoul@gmail.com>
To: Yangtao Li <tiny.windzz@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 =?UTF-8?q?Ond=C5=99ej=20Jirman?= <megous@megous.com>,
 linux-kernel@vger.kernel.org
Subject: [PATCH v7 5/7] arm64: dts: allwinner: h5: Add thermal sensor and
 thermal zones
Date: Tue, 17 Dec 2019 20:21:19 -0800
Message-Id: <20191218042121.1471954-6-anarsoul@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191218042121.1471954-1-anarsoul@gmail.com>
References: <20191218042121.1471954-1-anarsoul@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_202133_705737_767D9A74 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ondrej Jirman <megous@megous.com>

There are two sensors, one for CPU, one for GPU.

Signed-off-by: Ondrej Jirman <megous@megous.com>
Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi | 26 ++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi
index e92c4de5bf3b..f9df95b2d542 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi
@@ -176,6 +176,32 @@ mali: gpu@1e80000 {
 			assigned-clocks = <&ccu CLK_GPU>;
 			assigned-clock-rates = <384000000>;
 		};
+
+		ths: thermal-sensor@1c25000 {
+			compatible = "allwinner,sun50i-h5-ths";
+			reg = <0x01c25000 0x400>;
+			interrupts = <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>;
+			resets = <&ccu RST_BUS_THS>;
+			clocks = <&ccu CLK_BUS_THS>, <&ccu CLK_THS>;
+			clock-names = "bus", "mod";
+			nvmem-cells = <&ths_calibration>;
+			nvmem-cell-names = "calibration";
+			#thermal-sensor-cells = <1>;
+		};
+	};
+
+	thermal-zones {
+		cpu_thermal: cpu-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&ths 0>;
+		};
+
+		gpu_thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&ths 1>;
+		};
 	};
 };
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
