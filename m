Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A46E5656D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 11:12:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MJ0m24vkUR4mRR7tukJD93eNnAMJQ5xeXDxbAtdpvCY=; b=CPPoXrm1VrHtrb
	WXx6saVguPqghJtYCo53GluX2BDp3lxvkioD2tZ/0wDMnGnEVimRMfFwte8MmWKDOuRqxvDRwRpWH
	zCgRN7hoGXlWTCQk3020aPw7enRSEwYM7x13L7n6aXe3yjvi3qJl5brbz0QwD+ctDx5zaEQgPj6C/
	YTyCtLkRIwe+x+Ftqq+Bbz5KaOUzNJ2im9fiMG6f6GZfhVmEg6DZDxfWLENQFfW/TSdBAqY0Jx0v1
	iBeQETEtrFrfZ1MR1j7WZgeuk0IBLrDxNom4UIhVM95res9PwPPZuHLK8KYTaDYd6d0y6Y6d8Ur9P
	j/GQqNspd8CUJgawUCmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg3yL-0007Sn-4y; Wed, 26 Jun 2019 09:12:09 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg3tC-0002gY-8J
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 09:06:54 +0000
Received: by mail-wr1-x432.google.com with SMTP id n4so1740682wrw.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 02:06:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ilVEeuyiLJqEM//7LRcyaeEvGW66sRMbkqNNEOmiSkI=;
 b=cwwWP69NVx6TY/Gz7Z5p/lOUqhwSvirq/vUFxmAFk6SolV3fKhmbczvggqjW5Mlk3A
 pDSxzCm/JDvZOz1aoNw1hlKwtY+LoadFpo84hRAKUUFzkK6cUwfWKJJMFJV9AYtbzWCr
 /KJsASkXrd6fkobkgaqua+oCVzf5D5X0pyHOpksG9HOx40Gg4BLd/oZQ7RM0r/mjWd6L
 B7GDAvIbXTTDRJi6PQI8gLJDWi1eUBjM7aQTRV9fPVaijB8D8Bo/oNMaOpXO8yR3P8J7
 gDWR309Auoj3m0VarJzHvrCdAdsnrv0hV+7Qj8GrjPkvyrWiJ8LTzyR94NiLZsMrIiGk
 HuUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ilVEeuyiLJqEM//7LRcyaeEvGW66sRMbkqNNEOmiSkI=;
 b=bfZDLev96cEbVDno1OmMUcDSa0gUNBYOhBeHWI0+c1S9OT9WMk5+FqWVHHawoEZq3l
 Vx+wHqzkS7sMW6a538+IGpZsBpZG2VyDf4u/OMNLPnR+MJ5PgSbOyCFxTKocTaxlpR/Q
 NQ26ryM2OiN3J1e1BIIr88MoMkG5BwCu+b+f4uUVFjaxU97SuRiqFHLSudL8DV+KIk5m
 8ofFqBpM+5qLxRgqUED3UGi3U46XSR1BHyrPuZ4bt16phsMum9q9hX85mtVX9/kXrz6s
 oxziap7bU/XVT41BYfG6SVKL7bXpHBW4t4w+nSzvWUhPHKrAxL3LmBHI2BK0BgFYmH4M
 Jb0g==
X-Gm-Message-State: APjAAAWuWFH0InQkOSce6tFNa/vb8rwUYPmPCgYZWuvxv/3Vad2r3pWA
 m8E/uBI3BRbR5exgp2/m3aDn2w==
X-Google-Smtp-Source: APXvYqzb1BGQn5vh83E/EV9iV7LTP4OmIHphpQesTpBpBMUvyLfTVQWwspLS+svQzdCN9waUUwRJIQ==
X-Received: by 2002:a5d:518f:: with SMTP id k15mr2642212wrv.321.1561540008423; 
 Wed, 26 Jun 2019 02:06:48 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id o6sm1925797wmc.46.2019.06.26.02.06.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 26 Jun 2019 02:06:47 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: jbrunet@baylibre.com,
	khilman@baylibre.com
Subject: [RFC/RFT v2 11/14] arm64: dts: meson-g12a: add cpus OPP table
Date: Wed, 26 Jun 2019 11:06:29 +0200
Message-Id: <20190626090632.7540-12-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190626090632.7540-1-narmstrong@baylibre.com>
References: <20190626090632.7540-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_020650_343825_37D4DFCD 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:432 listed in]
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 martin.blumenstingl@googlemail.com, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the OPP table taken from the vendor u200 and u211 DTS.

The Amlogic G12A SoC seems to available in 3 types :
- low-speed: up to 1,8GHz
- mid-speed: up to 1,908GHz
- high-speed: up to 2.1GHz

And the S905X2 opp voltages are slightly higher than the S905D2
OPP voltages for the low-speed table.

This adds the conservative OPP table with the S905X2 higher voltages
and the maximum low-speed OPP frequency.

The values were tested to be stable on an Amlogic U200 Reference Board,
SeiRobotics SEI510 and X96 Max Set-Top-Boxes running the arm64 cpuburn
at [1] and cycling between all the possible cpufreq translations and
checking the final frequency using the clock-measurer, script at [2].

[1] https://github.com/ssvb/cpuburn-arm/blob/master/cpuburn-a53.S
[2] https://gist.github.com/superna9999/d4de964dbc0f84b7d527e1df2ddea25f

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi | 60 +++++++++++++++++++++
 1 file changed, 60 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
index ac15967bb7fa..733a9d46fc4b 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
@@ -48,6 +48,66 @@
 			compatible = "cache";
 		};
 	};
+
+	cpu_opp_table: opp-table {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp-100000000 {
+			opp-hz = /bits/ 64 <100000000>;
+			opp-microvolt = <731000>;
+		};
+
+		opp-250000000 {
+			opp-hz = /bits/ 64 <250000000>;
+			opp-microvolt = <731000>;
+		};
+
+		opp-500000000 {
+			opp-hz = /bits/ 64 <500000000>;
+			opp-microvolt = <731000>;
+		};
+
+		opp-667000000 {
+			opp-hz = /bits/ 64 <666666666>;
+			opp-microvolt = <731000>;
+		};
+
+		opp-1000000000 {
+			opp-hz = /bits/ 64 <1000000000>;
+			opp-microvolt = <731000>;
+		};
+
+		opp-1200000000 {
+			opp-hz = /bits/ 64 <1200000000>;
+			opp-microvolt = <731000>;
+		};
+
+		opp-1398000000 {
+			opp-hz = /bits/ 64 <1398000000>;
+			opp-microvolt = <761000>;
+		};
+
+		opp-1512000000 {
+			opp-hz = /bits/ 64 <1512000000>;
+			opp-microvolt = <791000>;
+		};
+
+		opp-1608000000 {
+			opp-hz = /bits/ 64 <1608000000>;
+			opp-microvolt = <831000>;
+		};
+
+		opp-1704000000 {
+			opp-hz = /bits/ 64 <1704000000>;
+			opp-microvolt = <861000>;
+		};
+
+		opp-1800000000 {
+			opp-hz = /bits/ 64 <1800000000>;
+			opp-microvolt = <981000>;
+		};
+	};
 };
 
 &sd_emmc_a {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
