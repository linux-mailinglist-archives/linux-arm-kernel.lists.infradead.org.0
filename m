Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FDFC1FB36F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:05:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=44lAj4noyTegDFM9CIVu2qYHNUV3D2iyPEAYGa4/NVI=; b=Lmq8GydhaxP2po
	tCB/94Echs90bL3TuQI9gh+lO4n3rw9mtLPkY6P4iYMcq7+9uDR9zDiYv7WB7tKDp9KbJRTXjH4y6
	XtOBOgr0KRqOz5g9Yifq1tgJNLhrqq4ZQHNN/OtWZlFvfhmUiWxXpUbIpsqA4vGYfZR+jGhUHhyoH
	GhgXRaHsqDbmlHpzdVHSl8jCToVvNATqU2PTqWXKgNDr9OZR04qWh4BlEdALtULwblGfpMBZm3ce/
	FhZd8RotNR15/UlkugsNc8snjhglcYol+zOfWp5XIXg3XL8f9sUF0nODiaJlTjXuqWkMZ/SmAm/Ks
	C3XAA6Jhy1KWQESbF5Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCDX-0008NW-Of; Tue, 16 Jun 2020 14:05:35 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC29-0001ll-2v
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:54:08 +0000
Received: by mail-wm1-x342.google.com with SMTP id g10so2965101wmh.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:53:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ys+d+Szy0Wu9DceGrkdFOIGr/5lwAT8dsJXN+17Blvg=;
 b=Em/0auBPAIr1PduK/Y8TkpjOOKlW/y4HJNRySONpfFHyICqkKvn+NneaxXOSPVyjyW
 IcFpZAFiYKTEWmxvJVa3usdR/DUlbpFAEqderyq3xe3XrbPU2vuKMgN+XYGjVRFyPn0x
 UxNsjMXlB908oOLVbYj1tpoeLOJgiq9FZkxu/I/U0nG7tVHNnM2xmhaSFiAhRAxzGAsP
 0qs1BatQQ1tXwdV5zL6WeFd/6tpII/7XSUYQQplclY0fjZaXDMRd+Yv5kbcv42I6uwQq
 7fFY7h63KcfzbGx+QTnAygd4MjGC+4Foa04zddDDeg/8hyyqZWA/IPPXSPdthal8Csbe
 bSRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ys+d+Szy0Wu9DceGrkdFOIGr/5lwAT8dsJXN+17Blvg=;
 b=Hks3+KkBrXIrr9h9kKaojGdi6qL5mx/ZJvmUSQXDy/4oCcb0gUkDEMCz+A2YDWrVwB
 vbkOaUxYsVhSI7PkTHeXhPQJCIAUSRzKX7OrKdUdlOABBC6MJaqHVD2QdiRBOvxufmw1
 KIG8ivbhF6wrTMc9r2TQslUeOaTDnE84BBs/0FweUNLuck/Qzxk9gat2iIyVyGPlEPAT
 lOlsMraJ9sjivbTG1yQkFhw2ud0cddnioF0ClDlbXsulD1Ih69eA3bUZ9MRUAr7jrmy7
 //8s7B0hJ/3Wn85aRnWlTeF5s8w0OyogJH4uZtK/ctevjLVg9BR88o6C4b9Hpyi/Vszh
 DTgQ==
X-Gm-Message-State: AOAM533Mp/2FuJ5EJvxJxR1pwdWztskcmj0FvT2Ok8iQQ98w6J3U+AZi
 QWS93udeGDl8bwjKmxYAO6c=
X-Google-Smtp-Source: ABdhPJzPK0qb9Z12YLtM0T7ulkp76dq1SFIrTVNw2Gt2h5o30KwbgoCEaywvCk88OsCUeDcgH9jEiQ==
X-Received: by 2002:a05:600c:21d3:: with SMTP id
 x19mr3637635wmj.137.1592315626414; 
 Tue, 16 Jun 2020 06:53:46 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id n23sm4012124wmc.0.2020.06.16.06.53.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:53:45 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 25/73] ARM: tegra: Use proper unit-addresses for OPPs
Date: Tue, 16 Jun 2020 15:51:50 +0200
Message-Id: <20200616135238.3001888-26-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065349_540979_6D18B26F 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

Use commas rather than underscores to separate the various parts of the
unit-address in CPU OPPs to make them properly validate under the json-
schema bindings.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 .../boot/dts/tegra20-cpu-opp-microvolt.dtsi   |  98 ++---
 arch/arm/boot/dts/tegra20-cpu-opp.dtsi        |  98 ++---
 .../boot/dts/tegra30-cpu-opp-microvolt.dtsi   | 398 +++++++++---------
 arch/arm/boot/dts/tegra30-cpu-opp.dtsi        | 398 +++++++++---------
 4 files changed, 496 insertions(+), 496 deletions(-)

diff --git a/arch/arm/boot/dts/tegra20-cpu-opp-microvolt.dtsi b/arch/arm/boot/dts/tegra20-cpu-opp-microvolt.dtsi
index e85ffdbef876..dce85d39480d 100644
--- a/arch/arm/boot/dts/tegra20-cpu-opp-microvolt.dtsi
+++ b/arch/arm/boot/dts/tegra20-cpu-opp-microvolt.dtsi
@@ -2,199 +2,199 @@
 
 / {
 	cpu0_opp_table: cpu_opp_table0 {
-		opp@216000000_750 {
+		opp@216000000,750 {
 			opp-microvolt = <750000 750000 1125000>;
 		};
 
-		opp@216000000_800 {
+		opp@216000000,800 {
 			opp-microvolt = <800000 800000 1125000>;
 		};
 
-		opp@312000000_750 {
+		opp@312000000,750 {
 			opp-microvolt = <750000 750000 1125000>;
 		};
 
-		opp@312000000_800 {
+		opp@312000000,800 {
 			opp-microvolt = <800000 800000 1125000>;
 		};
 
-		opp@456000000_750 {
+		opp@456000000,750 {
 			opp-microvolt = <750000 750000 1125000>;
 		};
 
-		opp@456000000_800 {
+		opp@456000000,800 {
 			opp-microvolt = <800000 800000 1125000>;
 		};
 
-		opp@456000000_800_2_2 {
+		opp@456000000,800,2,2 {
 			opp-microvolt = <800000 800000 1125000>;
 		};
 
-		opp@456000000_800_3_2 {
+		opp@456000000,800,3,2 {
 			opp-microvolt = <800000 800000 1125000>;
 		};
 
-		opp@456000000_825 {
+		opp@456000000,825 {
 			opp-microvolt = <825000 825000 1125000>;
 		};
 
-		opp@608000000_750 {
+		opp@608000000,750 {
 			opp-microvolt = <750000 750000 1125000>;
 		};
 
-		opp@608000000_800 {
+		opp@608000000,800 {
 			opp-microvolt = <800000 800000 1125000>;
 		};
 
-		opp@608000000_800_3_2 {
+		opp@608000000,800,3,2 {
 			opp-microvolt = <800000 800000 1125000>;
 		};
 
-		opp@608000000_825 {
+		opp@608000000,825 {
 			opp-microvolt = <825000 825000 1125000>;
 		};
 
-		opp@608000000_850 {
+		opp@608000000,850 {
 			opp-microvolt = <850000 850000 1125000>;
 		};
 
-		opp@608000000_900 {
+		opp@608000000,900 {
 			opp-microvolt = <900000 900000 1125000>;
 		};
 
-		opp@760000000_775 {
+		opp@760000000,775 {
 			opp-microvolt = <775000 775000 1125000>;
 		};
 
-		opp@760000000_800 {
+		opp@760000000,800 {
 			opp-microvolt = <800000 800000 1125000>;
 		};
 
-		opp@760000000_850 {
+		opp@760000000,850 {
 			opp-microvolt = <850000 850000 1125000>;
 		};
 
-		opp@760000000_875 {
+		opp@760000000,875 {
 			opp-microvolt = <875000 875000 1125000>;
 		};
 
-		opp@760000000_875_1_1 {
+		opp@760000000,875,1,1 {
 			opp-microvolt = <875000 875000 1125000>;
 		};
 
-		opp@760000000_875_0_2 {
+		opp@760000000,875,0,2 {
 			opp-microvolt = <875000 875000 1125000>;
 		};
 
-		opp@760000000_875_1_2 {
+		opp@760000000,875,1,2 {
 			opp-microvolt = <875000 875000 1125000>;
 		};
 
-		opp@760000000_900 {
+		opp@760000000,900 {
 			opp-microvolt = <900000 900000 1125000>;
 		};
 
-		opp@760000000_975 {
+		opp@760000000,975 {
 			opp-microvolt = <975000 975000 1125000>;
 		};
 
-		opp@816000000_800 {
+		opp@816000000,800 {
 			opp-microvolt = <800000 800000 1125000>;
 		};
 
-		opp@816000000_850 {
+		opp@816000000,850 {
 			opp-microvolt = <850000 850000 1125000>;
 		};
 
-		opp@816000000_875 {
+		opp@816000000,875 {
 			opp-microvolt = <875000 875000 1125000>;
 		};
 
-		opp@816000000_950 {
+		opp@816000000,950 {
 			opp-microvolt = <950000 950000 1125000>;
 		};
 
-		opp@816000000_1000 {
+		opp@816000000,1000 {
 			opp-microvolt = <1000000 1000000 1125000>;
 		};
 
-		opp@912000000_850 {
+		opp@912000000,850 {
 			opp-microvolt = <850000 850000 1125000>;
 		};
 
-		opp@912000000_900 {
+		opp@912000000,900 {
 			opp-microvolt = <900000 900000 1125000>;
 		};
 
-		opp@912000000_925 {
+		opp@912000000,925 {
 			opp-microvolt = <925000 925000 1125000>;
 		};
 
-		opp@912000000_950 {
+		opp@912000000,950 {
 			opp-microvolt = <950000 950000 1125000>;
 		};
 
-		opp@912000000_950_0_2 {
+		opp@912000000,950,0,2 {
 			opp-microvolt = <950000 950000 1125000>;
 		};
 
-		opp@912000000_950_2_2 {
+		opp@912000000,950,2,2 {
 			opp-microvolt = <950000 950000 1125000>;
 		};
 
-		opp@912000000_1000 {
+		opp@912000000,1000 {
 			opp-microvolt = <1000000 1000000 1125000>;
 		};
 
-		opp@912000000_1050 {
+		opp@912000000,1050 {
 			opp-microvolt = <1050000 1050000 1125000>;
 		};
 
-		opp@1000000000_875 {
+		opp@1000000000,875 {
 			opp-microvolt = <875000 875000 1125000>;
 		};
 
-		opp@1000000000_900 {
+		opp@1000000000,900 {
 			opp-microvolt = <900000 900000 1125000>;
 		};
 
-		opp@1000000000_950 {
+		opp@1000000000,950 {
 			opp-microvolt = <950000 950000 1125000>;
 		};
 
-		opp@1000000000_975 {
+		opp@1000000000,975 {
 			opp-microvolt = <975000 975000 1125000>;
 		};
 
-		opp@1000000000_1000 {
+		opp@1000000000,1000 {
 			opp-microvolt = <1000000 1000000 1125000>;
 		};
 
-		opp@1000000000_1000_0_2 {
+		opp@1000000000,1000,0,2 {
 			opp-microvolt = <1000000 1000000 1125000>;
 		};
 
-		opp@1000000000_1025 {
+		opp@1000000000,1025 {
 			opp-microvolt = <1025000 1025000 1125000>;
 		};
 
-		opp@1000000000_1100 {
+		opp@1000000000,1100 {
 			opp-microvolt = <1100000 1100000 1125000>;
 		};
 
-		opp@1200000000_1000 {
+		opp@1200000000,1000 {
 			opp-microvolt = <1000000 1000000 1125000>;
 		};
 
-		opp@1200000000_1050 {
+		opp@1200000000,1050 {
 			opp-microvolt = <1050000 1050000 1125000>;
 		};
 
-		opp@1200000000_1100 {
+		opp@1200000000,1100 {
 			opp-microvolt = <1100000 1100000 1125000>;
 		};
 
-		opp@1200000000_1125 {
+		opp@1200000000,1125 {
 			opp-microvolt = <1125000 1125000 1125000>;
 		};
 	};
diff --git a/arch/arm/boot/dts/tegra20-cpu-opp.dtsi b/arch/arm/boot/dts/tegra20-cpu-opp.dtsi
index c878f4231791..9b8fedb57a1b 100644
--- a/arch/arm/boot/dts/tegra20-cpu-opp.dtsi
+++ b/arch/arm/boot/dts/tegra20-cpu-opp.dtsi
@@ -5,295 +5,295 @@ cpu0_opp_table: cpu_opp_table0 {
 		compatible = "operating-points-v2";
 		opp-shared;
 
-		opp@216000000_750 {
+		opp@216000000,750 {
 			clock-latency-ns = <400000>;
 			opp-supported-hw = <0x0F 0x0003>;
 			opp-hz = /bits/ 64 <216000000>;
 		};
 
-		opp@216000000_800 {
+		opp@216000000,800 {
 			clock-latency-ns = <400000>;
 			opp-supported-hw = <0x0F 0x0004>;
 			opp-hz = /bits/ 64 <216000000>;
 		};
 
-		opp@312000000_750 {
+		opp@312000000,750 {
 			clock-latency-ns = <400000>;
 			opp-supported-hw = <0x0F 0x0003>;
 			opp-hz = /bits/ 64 <312000000>;
 		};
 
-		opp@312000000_800 {
+		opp@312000000,800 {
 			clock-latency-ns = <400000>;
 			opp-supported-hw = <0x0F 0x0004>;
 			opp-hz = /bits/ 64 <312000000>;
 		};
 
-		opp@456000000_750 {
+		opp@456000000,750 {
 			clock-latency-ns = <400000>;
 			opp-supported-hw = <0x0C 0x0003>;
 			opp-hz = /bits/ 64 <456000000>;
 		};
 
-		opp@456000000_800 {
+		opp@456000000,800 {
 			clock-latency-ns = <400000>;
 			opp-supported-hw = <0x03 0x0006>;
 			opp-hz = /bits/ 64 <456000000>;
 		};
 
-		opp@456000000_800_2_2 {
+		opp@456000000,800,2,2 {
 			clock-latency-ns = <400000>;
 			opp-supported-hw = <0x04 0x0004>;
 			opp-hz = /bits/ 64 <456000000>;
 		};
 
-		opp@456000000_800_3_2 {
+		opp@456000000,800,3,2 {
 			clock-latency-ns = <400000>;
 			opp-supported-hw = <0x08 0x0004>;
 			opp-hz = /bits/ 64 <456000000>;
 		};
 
-		opp@456000000_825 {
+		opp@456000000,825 {
 			clock-latency-ns = <400000>;
 			opp-supported-hw = <0x03 0x0001>;
 			opp-hz = /bits/ 64 <456000000>;
 		};
 
-		opp@608000000_750 {
+		opp@608000000,750 {
 			clock-latency-ns = <400000>;
 			opp-supported-hw = <0x08 0x0003>;
 			opp-hz = /bits/ 64 <608000000>;
 		};
 
-		opp@608000000_800 {
+		opp@608000000,800 {
 			clock-latency-ns = <400000>;
 			opp-supported-hw = <0x04 0x0006>;
 			opp-hz = /bits/ 64 <608000000>;
 		};
 
-		opp@608000000_800_3_2 {
+		opp@608000000,800,3,2 {
 			clock-latency-ns = <400000>;
 			opp-supported-hw = <0x08 0x0004>;
 			opp-hz = /bits/ 64 <608000000>;
 		};
 
-		opp@608000000_825 {
+		opp@608000000,825 {
 			clock-latency-ns = <400000>;
 			opp-supported-hw = <0x04 0x0001>;
 			opp-hz = /bits/ 64 <608000000>;
 		};
 
-		opp@608000000_850 {
+		opp@608000000,850 {
 			clock-latency-ns = <400000>;
 			opp-supported-hw = <0x03 0x0006>;
 			opp-hz = /bits/ 64 <608000000>;
 		};
 
-		opp@608000000_900 {
+		opp@608000000,900 {
 			clock-latency-ns = <400000>;
 			opp-supported-hw = <0x03 0x0001>;
 			opp-hz = /bits/ 64 <608000000>;
 		};
 
-		opp@760000000_775 {
+		opp@760000000,775 {
 			clock-latency-ns = <400000>;
 			opp-supported-hw = <0x08 0x0003>;
 			opp-hz = /bits/ 64 <760000000>;
 		};
 
-		opp@760000000_800 {
+		opp@760000000,800 {
 			clock-latency-ns = <400000>;
 			opp-supported-hw = <0x08 0x0004>;
 			opp-hz = /bits/ 64 <760000000>;
 		};
 
-		opp@760000000_850 {
+		opp@760000000,850 {
 			clock-latency-ns = <400000>;
 			opp-supported-hw = <0x04 0x0006>;
 			opp-hz = /bits/ 64 <760000000>;
 		};
 
-		opp@760000000_875 {
+		opp@760000000,875 {
 			clock-latency-ns = <400000>;
 			opp-supported-hw = <0x04 0x0001>;
 			opp-hz = /bits/ 64 <760000000>;
 		};
 
-		opp@760000000_875_1_1 {
+		opp@760000000,875,1,1 {
 			clock-latency-ns = <400000>;
 			opp-supported-hw = <0x02 0x0002>;
 			opp-hz = /bits/ 64 <760000000>;
 		};
 
-		opp@760000000_875_0_2 {
+		opp@760000000,875,0,2 {
 			clock-latency-ns = <400000>;
 			opp-supported-hw = <0x01 0x0004>;
 			opp-hz = /bits/ 64 <760000000>;
 		};
 
-		opp@760000000_875_1_2 {
+		opp@760000000,875,1,2 {
 			clock-latency-ns = <400000>;
 			opp-supported-hw = <0x02 0x0004>;
 			opp-hz = /bits/ 64 <760000000>;
 		};
 
-		opp@760000000_900 {
+		opp@760000000,900 {
 			clock-latency-ns = <400000>;
 			opp-supported-hw = <0x01 0x0002>;
 			opp-hz = /bits/ 64 <760000000>;
 		};
 
-		opp@760000000_975 {
+		opp@760000000,975 {
 			clock-latency-ns = <400000>;
 			opp-supported-hw = <0x03 0x0001>;
 			opp-hz = /bits/ 64 <760000000>;
 		};
 
-		opp@816000000_800 {
+		opp@816000000,800 {
 			clock-latency-ns = <400000>;
 			opp-supported-hw = <0x08 0x0007>;
 			opp-hz = /bits/ 64 <816000000>;
 		};
 
-		opp@816000000_850 {
+		opp@816000000,850 {
 			clock-latency-ns = <400000>;
 			opp-supported-hw = <0x04 0x0002>;
 			opp-hz = /bits/ 64 <816000000>;
 		};
 
-		opp@816000000_875 {
+		opp@816000000,875 {
 			clock-latency-ns = <400000>;
 			opp-supported-hw = <0x04 0x0005>;
 			opp-hz = /bits/ 64 <816000000>;
 		};
 
-		opp@816000000_950 {
+		opp@816000000,950 {
 			clock-latency-ns = <400000>;
 			opp-supported-hw = <0x03 0x0006>;
 			opp-hz = /bits/ 64 <816000000>;
 		};
 
-		opp@816000000_1000 {
+		opp@816000000,1000 {
 			clock-latency-ns = <400000>;
 			opp-supported-hw = <0x03 0x0001>;
 			opp-hz = /bits/ 64 <816000000>;
 		};
 
-		opp@912000000_850 {
+		opp@912000000,850 {
 			clock-latency-ns = <400000>;
 			opp-supported-hw = <0x08 0x0007>;
 			opp-hz = /bits/ 64 <912000000>;
 		};
 
-		opp@912000000_900 {
+		opp@912000000,900 {
 			clock-latency-ns = <400000>;
 			opp-supported-hw = <0x04 0x0002>;
 			opp-hz = /bits/ 64 <912000000>;
 		};
 
-		opp@912000000_925 {
+		opp@912000000,925 {
 			clock-latency-ns = <400000>;
 			opp-supported-hw = <0x04 0x0001>;
 			opp-hz = /bits/ 64 <912000000>;
 		};
 
-		opp@912000000_950 {
+		opp@912000000,950 {
 			clock-latency-ns = <400000>;
 			opp-supported-hw = <0x02 0x0006>;
 			opp-hz = /bits/ 64 <912000000>;
 		};
 
-		opp@912000000_950_0_2 {
+		opp@912000000,950,0,2 {
 			clock-latency-ns = <400000>;
 			opp-supported-hw = <0x01 0x0004>;
 			opp-hz = /bits/ 64 <912000000>;
 		};
 
-		opp@912000000_950_2_2 {
+		opp@912000000,950,2,2 {
 			clock-latency-ns = <400000>;
 			opp-supported-hw = <0x04 0x0004>;
 			opp-hz = /bits/ 64 <912000000>;
 		};
 
-		opp@912000000_1000 {
+		opp@912000000,1000 {
 			clock-latency-ns = <400000>;
 			opp-supported-hw = <0x01 0x0002>;
 			opp-hz = /bits/ 64 <912000000>;
 		};
 
-		opp@912000000_1050 {
+		opp@912000000,1050 {
 			clock-latency-ns = <400000>;
 			opp-supported-hw = <0x03 0x0001>;
 			opp-hz = /bits/ 64 <912000000>;
 		};
 
-		opp@1000000000_875 {
+		opp@1000000000,875 {
 			clock-latency-ns = <400000>;
 			opp-supported-hw = <0x08 0x0007>;
 			opp-hz = /bits/ 64 <1000000000>;
 		};
 
-		opp@1000000000_900 {
+		opp@1000000000,900 {
 			clock-latency-ns = <400000>;
 			opp-supported-hw = <0x04 0x0002>;
 			opp-hz = /bits/ 64 <1000000000>;
 		};
 
-		opp@1000000000_950 {
+		opp@1000000000,950 {
 			clock-latency-ns = <400000>;
 			opp-supported-hw = <0x04 0x0004>;
 			opp-hz = /bits/ 64 <1000000000>;
 		};
 
-		opp@1000000000_975 {
+		opp@1000000000,975 {
 			clock-latency-ns = <400000>;
 			opp-supported-hw = <0x04 0x0001>;
 			opp-hz = /bits/ 64 <1000000000>;
 		};
 
-		opp@1000000000_1000 {
+		opp@1000000000,1000 {
 			clock-latency-ns = <400000>;
 			opp-supported-hw = <0x02 0x0006>;
 			opp-hz = /bits/ 64 <1000000000>;
 		};
 
-		opp@1000000000_1000_0_2 {
+		opp@1000000000,1000,0,2 {
 			clock-latency-ns = <400000>;
 			opp-supported-hw = <0x01 0x0004>;
 			opp-hz = /bits/ 64 <1000000000>;
 		};
 
-		opp@1000000000_1025 {
+		opp@1000000000,1025 {
 			clock-latency-ns = <400000>;
 			opp-supported-hw = <0x01 0x0002>;
 			opp-hz = /bits/ 64 <1000000000>;
 		};
 
-		opp@1000000000_1100 {
+		opp@1000000000,1100 {
 			clock-latency-ns = <400000>;
 			opp-supported-hw = <0x03 0x0001>;
 			opp-hz = /bits/ 64 <1000000000>;
 		};
 
-		opp@1200000000_1000 {
+		opp@1200000000,1000 {
 			clock-latency-ns = <400000>;
 			opp-supported-hw = <0x08 0x0004>;
 			opp-hz = /bits/ 64 <1200000000>;
 		};
 
-		opp@1200000000_1050 {
+		opp@1200000000,1050 {
 			clock-latency-ns = <400000>;
 			opp-supported-hw = <0x04 0x0004>;
 			opp-hz = /bits/ 64 <1200000000>;
 		};
 
-		opp@1200000000_1100 {
+		opp@1200000000,1100 {
 			clock-latency-ns = <400000>;
 			opp-supported-hw = <0x02 0x0004>;
 			opp-hz = /bits/ 64 <1200000000>;
 		};
 
-		opp@1200000000_1125 {
+		opp@1200000000,1125 {
 			clock-latency-ns = <400000>;
 			opp-supported-hw = <0x01 0x0004>;
 			opp-hz = /bits/ 64 <1200000000>;
diff --git a/arch/arm/boot/dts/tegra30-cpu-opp-microvolt.dtsi b/arch/arm/boot/dts/tegra30-cpu-opp-microvolt.dtsi
index 5c40ef49894f..d682f7437146 100644
--- a/arch/arm/boot/dts/tegra30-cpu-opp-microvolt.dtsi
+++ b/arch/arm/boot/dts/tegra30-cpu-opp-microvolt.dtsi
@@ -2,799 +2,799 @@
 
 / {
 	cpu0_opp_table: cpu_opp_table0 {
-		opp@51000000_800 {
+		opp@51000000,800 {
 			opp-microvolt = <800000 800000 1250000>;
 		};
 
-		opp@51000000_850 {
+		opp@51000000,850 {
 			opp-microvolt = <850000 850000 1250000>;
 		};
 
-		opp@51000000_912 {
+		opp@51000000,912 {
 			opp-microvolt = <912000 912000 1250000>;
 		};
 
-		opp@102000000_800 {
+		opp@102000000,800 {
 			opp-microvolt = <800000 800000 1250000>;
 		};
 
-		opp@102000000_850 {
+		opp@102000000,850 {
 			opp-microvolt = <850000 850000 1250000>;
 		};
 
-		opp@102000000_912 {
+		opp@102000000,912 {
 			opp-microvolt = <912000 912000 1250000>;
 		};
 
-		opp@204000000_800 {
+		opp@204000000,800 {
 			opp-microvolt = <800000 800000 1250000>;
 		};
 
-		opp@204000000_850 {
+		opp@204000000,850 {
 			opp-microvolt = <850000 850000 1250000>;
 		};
 
-		opp@204000000_912 {
+		opp@204000000,912 {
 			opp-microvolt = <912000 912000 1250000>;
 		};
 
-		opp@312000000_850 {
+		opp@312000000,850 {
 			opp-microvolt = <850000 850000 1250000>;
 		};
 
-		opp@312000000_912 {
+		opp@312000000,912 {
 			opp-microvolt = <912000 912000 1250000>;
 		};
 
-		opp@340000000_800 {
+		opp@340000000,800 {
 			opp-microvolt = <800000 800000 1250000>;
 		};
 
-		opp@340000000_850 {
+		opp@340000000,850 {
 			opp-microvolt = <850000 850000 1250000>;
 		};
 
-		opp@370000000_800 {
+		opp@370000000,800 {
 			opp-microvolt = <800000 800000 1250000>;
 		};
 
-		opp@456000000_850 {
+		opp@456000000,850 {
 			opp-microvolt = <850000 850000 1250000>;
 		};
 
-		opp@456000000_912 {
+		opp@456000000,912 {
 			opp-microvolt = <912000 912000 1250000>;
 		};
 
-		opp@475000000_800 {
+		opp@475000000,800 {
 			opp-microvolt = <800000 800000 1250000>;
 		};
 
-		opp@475000000_850 {
+		opp@475000000,850 {
 			opp-microvolt = <850000 850000 1250000>;
 		};
 
-		opp@475000000_850_0_1 {
+		opp@475000000,850,0,1 {
 			opp-microvolt = <850000 850000 1250000>;
 		};
 
-		opp@475000000_850_0_4 {
+		opp@475000000,850,0,4 {
 			opp-microvolt = <850000 850000 1250000>;
 		};
 
-		opp@475000000_850_0_7 {
+		opp@475000000,850,0,7 {
 			opp-microvolt = <850000 850000 1250000>;
 		};
 
-		opp@475000000_850_0_8 {
+		opp@475000000,850,0,8 {
 			opp-microvolt = <850000 850000 1250000>;
 		};
 
-		opp@608000000_850 {
+		opp@608000000,850 {
 			opp-microvolt = <850000 850000 1250000>;
 		};
 
-		opp@608000000_912 {
+		opp@608000000,912 {
 			opp-microvolt = <912000 912000 1250000>;
 		};
 
-		opp@620000000_850 {
+		opp@620000000,850 {
 			opp-microvolt = <850000 850000 1250000>;
 		};
 
-		opp@640000000_850 {
+		opp@640000000,850 {
 			opp-microvolt = <850000 850000 1250000>;
 		};
 
-		opp@640000000_850_1_1 {
+		opp@640000000,850,1,1 {
 			opp-microvolt = <850000 850000 1250000>;
 		};
 
-		opp@640000000_850_2_1 {
+		opp@640000000,850,2,1 {
 			opp-microvolt = <850000 850000 1250000>;
 		};
 
-		opp@640000000_850_3_1 {
+		opp@640000000,850,3,1 {
 			opp-microvolt = <850000 850000 1250000>;
 		};
 
-		opp@640000000_850_1_4 {
+		opp@640000000,850,1,4 {
 			opp-microvolt = <850000 850000 1250000>;
 		};
 
-		opp@640000000_850_2_4 {
+		opp@640000000,850,2,4 {
 			opp-microvolt = <850000 850000 1250000>;
 		};
 
-		opp@640000000_850_3_4 {
+		opp@640000000,850,3,4 {
 			opp-microvolt = <850000 850000 1250000>;
 		};
 
-		opp@640000000_850_1_7 {
+		opp@640000000,850,1,7 {
 			opp-microvolt = <850000 850000 1250000>;
 		};
 
-		opp@640000000_850_2_7 {
+		opp@640000000,850,2,7 {
 			opp-microvolt = <850000 850000 1250000>;
 		};
 
-		opp@640000000_850_3_7 {
+		opp@640000000,850,3,7 {
 			opp-microvolt = <850000 850000 1250000>;
 		};
 
-		opp@640000000_850_4_7 {
+		opp@640000000,850,4,7 {
 			opp-microvolt = <850000 850000 1250000>;
 		};
 
-		opp@640000000_850_1_8 {
+		opp@640000000,850,1,8 {
 			opp-microvolt = <850000 850000 1250000>;
 		};
 
-		opp@640000000_850_2_8 {
+		opp@640000000,850,2,8 {
 			opp-microvolt = <850000 850000 1250000>;
 		};
 
-		opp@640000000_850_3_8 {
+		opp@640000000,850,3,8 {
 			opp-microvolt = <850000 850000 1250000>;
 		};
 
-		opp@640000000_850_4_8 {
+		opp@640000000,850,4,8 {
 			opp-microvolt = <850000 850000 1250000>;
 		};
 
-		opp@640000000_900 {
+		opp@640000000,900 {
 			opp-microvolt = <900000 900000 1250000>;
 		};
 
-		opp@760000000_850 {
+		opp@760000000,850 {
 			opp-microvolt = <850000 850000 1250000>;
 		};
 
-		opp@760000000_850_3_1 {
+		opp@760000000,850,3,1 {
 			opp-microvolt = <850000 850000 1250000>;
 		};
 
-		opp@760000000_850_3_2 {
+		opp@760000000,850,3,2 {
 			opp-microvolt = <850000 850000 1250000>;
 		};
 
-		opp@760000000_850_3_3 {
+		opp@760000000,850,3,3 {
 			opp-microvolt = <850000 850000 1250000>;
 		};
 
-		opp@760000000_850_3_4 {
+		opp@760000000,850,3,4 {
 			opp-microvolt = <850000 850000 1250000>;
 		};
 
-		opp@760000000_850_3_7 {
+		opp@760000000,850,3,7 {
 			opp-microvolt = <850000 850000 1250000>;
 		};
 
-		opp@760000000_850_4_7 {
+		opp@760000000,850,4,7 {
 			opp-microvolt = <850000 850000 1250000>;
 		};
 
-		opp@760000000_850_3_8 {
+		opp@760000000,850,3,8 {
 			opp-microvolt = <850000 850000 1250000>;
 		};
 
-		opp@760000000_850_4_8 {
+		opp@760000000,850,4,8 {
 			opp-microvolt = <850000 850000 1250000>;
 		};
 
-		opp@760000000_850_0_10 {
+		opp@760000000,850,0,10 {
 			opp-microvolt = <850000 850000 1250000>;
 		};
 
-		opp@760000000_900 {
+		opp@760000000,900 {
 			opp-microvolt = <900000 900000 1250000>;
 		};
 
-		opp@760000000_900_1_1 {
+		opp@760000000,900,1,1 {
 			opp-microvolt = <900000 900000 1250000>;
 		};
 
-		opp@760000000_900_2_1 {
+		opp@760000000,900,2,1 {
 			opp-microvolt = <900000 900000 1250000>;
 		};
 
-		opp@760000000_900_1_2 {
+		opp@760000000,900,1,2 {
 			opp-microvolt = <900000 900000 1250000>;
 		};
 
-		opp@760000000_900_2_2 {
+		opp@760000000,900,2,2 {
 			opp-microvolt = <900000 900000 1250000>;
 		};
 
-		opp@760000000_900_1_3 {
+		opp@760000000,900,1,3 {
 			opp-microvolt = <900000 900000 1250000>;
 		};
 
-		opp@760000000_900_2_3 {
+		opp@760000000,900,2,3 {
 			opp-microvolt = <900000 900000 1250000>;
 		};
 
-		opp@760000000_900_1_4 {
+		opp@760000000,900,1,4 {
 			opp-microvolt = <900000 900000 1250000>;
 		};
 
-		opp@760000000_900_2_4 {
+		opp@760000000,900,2,4 {
 			opp-microvolt = <900000 900000 1250000>;
 		};
 
-		opp@760000000_900_1_7 {
+		opp@760000000,900,1,7 {
 			opp-microvolt = <900000 900000 1250000>;
 		};
 
-		opp@760000000_900_2_7 {
+		opp@760000000,900,2,7 {
 			opp-microvolt = <900000 900000 1250000>;
 		};
 
-		opp@760000000_900_1_8 {
+		opp@760000000,900,1,8 {
 			opp-microvolt = <900000 900000 1250000>;
 		};
 
-		opp@760000000_900_2_8 {
+		opp@760000000,900,2,8 {
 			opp-microvolt = <900000 900000 1250000>;
 		};
 
-		opp@760000000_912 {
+		opp@760000000,912 {
 			opp-microvolt = <912000 912000 1250000>;
 		};
 
-		opp@760000000_975 {
+		opp@760000000,975 {
 			opp-microvolt = <975000 975000 1250000>;
 		};
 
-		opp@816000000_850 {
+		opp@816000000,850 {
 			opp-microvolt = <850000 850000 1250000>;
 		};
 
-		opp@816000000_912 {
+		opp@816000000,912 {
 			opp-microvolt = <912000 912000 1250000>;
 		};
 
-		opp@860000000_850 {
+		opp@860000000,850 {
 			opp-microvolt = <850000 850000 1250000>;
 		};
 
-		opp@860000000_900 {
+		opp@860000000,900 {
 			opp-microvolt = <900000 900000 1250000>;
 		};
 
-		opp@860000000_900_2_1 {
+		opp@860000000,900,2,1 {
 			opp-microvolt = <900000 900000 1250000>;
 		};
 
-		opp@860000000_900_3_1 {
+		opp@860000000,900,3,1 {
 			opp-microvolt = <900000 900000 1250000>;
 		};
 
-		opp@860000000_900_2_2 {
+		opp@860000000,900,2,2 {
 			opp-microvolt = <900000 900000 1250000>;
 		};
 
-		opp@860000000_900_3_2 {
+		opp@860000000,900,3,2 {
 			opp-microvolt = <900000 900000 1250000>;
 		};
 
-		opp@860000000_900_2_3 {
+		opp@860000000,900,2,3 {
 			opp-microvolt = <900000 900000 1250000>;
 		};
 
-		opp@860000000_900_3_3 {
+		opp@860000000,900,3,3 {
 			opp-microvolt = <900000 900000 1250000>;
 		};
 
-		opp@860000000_900_2_4 {
+		opp@860000000,900,2,4 {
 			opp-microvolt = <900000 900000 1250000>;
 		};
 
-		opp@860000000_900_3_4 {
+		opp@860000000,900,3,4 {
 			opp-microvolt = <900000 900000 1250000>;
 		};
 
-		opp@860000000_900_2_7 {
+		opp@860000000,900,2,7 {
 			opp-microvolt = <900000 900000 1250000>;
 		};
 
-		opp@860000000_900_3_7 {
+		opp@860000000,900,3,7 {
 			opp-microvolt = <900000 900000 1250000>;
 		};
 
-		opp@860000000_900_4_7 {
+		opp@860000000,900,4,7 {
 			opp-microvolt = <900000 900000 1250000>;
 		};
 
-		opp@860000000_900_2_8 {
+		opp@860000000,900,2,8 {
 			opp-microvolt = <900000 900000 1250000>;
 		};
 
-		opp@860000000_900_3_8 {
+		opp@860000000,900,3,8 {
 			opp-microvolt = <900000 900000 1250000>;
 		};
 
-		opp@860000000_900_4_8 {
+		opp@860000000,900,4,8 {
 			opp-microvolt = <900000 900000 1250000>;
 		};
 
-		opp@860000000_975 {
+		opp@860000000,975 {
 			opp-microvolt = <975000 975000 1250000>;
 		};
 
-		opp@860000000_975_1_1 {
+		opp@860000000,975,1,1 {
 			opp-microvolt = <975000 975000 1250000>;
 		};
 
-		opp@860000000_975_1_2 {
+		opp@860000000,975,1,2 {
 			opp-microvolt = <975000 975000 1250000>;
 		};
 
-		opp@860000000_975_1_3 {
+		opp@860000000,975,1,3 {
 			opp-microvolt = <975000 975000 1250000>;
 		};
 
-		opp@860000000_975_1_4 {
+		opp@860000000,975,1,4 {
 			opp-microvolt = <975000 975000 1250000>;
 		};
 
-		opp@860000000_975_1_7 {
+		opp@860000000,975,1,7 {
 			opp-microvolt = <975000 975000 1250000>;
 		};
 
-		opp@860000000_975_1_8 {
+		opp@860000000,975,1,8 {
 			opp-microvolt = <975000 975000 1250000>;
 		};
 
-		opp@860000000_1000 {
+		opp@860000000,1000 {
 			opp-microvolt = <1000000 1000000 1250000>;
 		};
 
-		opp@910000000_900 {
+		opp@910000000,900 {
 			opp-microvolt = <900000 900000 1250000>;
 		};
 
-		opp@1000000000_900 {
+		opp@1000000000,900 {
 			opp-microvolt = <900000 900000 1250000>;
 		};
 
-		opp@1000000000_975 {
+		opp@1000000000,975 {
 			opp-microvolt = <975000 975000 1250000>;
 		};
 
-		opp@1000000000_975_2_1 {
+		opp@1000000000,975,2,1 {
 			opp-microvolt = <975000 975000 1250000>;
 		};
 
-		opp@1000000000_975_3_1 {
+		opp@1000000000,975,3,1 {
 			opp-microvolt = <975000 975000 1250000>;
 		};
 
-		opp@1000000000_975_2_2 {
+		opp@1000000000,975,2,2 {
 			opp-microvolt = <975000 975000 1250000>;
 		};
 
-		opp@1000000000_975_3_2 {
+		opp@1000000000,975,3,2 {
 			opp-microvolt = <975000 975000 1250000>;
 		};
 
-		opp@1000000000_975_2_3 {
+		opp@1000000000,975,2,3 {
 			opp-microvolt = <975000 975000 1250000>;
 		};
 
-		opp@1000000000_975_3_3 {
+		opp@1000000000,975,3,3 {
 			opp-microvolt = <975000 975000 1250000>;
 		};
 
-		opp@1000000000_975_2_4 {
+		opp@1000000000,975,2,4 {
 			opp-microvolt = <975000 975000 1250000>;
 		};
 
-		opp@1000000000_975_3_4 {
+		opp@1000000000,975,3,4 {
 			opp-microvolt = <975000 975000 1250000>;
 		};
 
-		opp@1000000000_975_2_7 {
+		opp@1000000000,975,2,7 {
 			opp-microvolt = <975000 975000 1250000>;
 		};
 
-		opp@1000000000_975_3_7 {
+		opp@1000000000,975,3,7 {
 			opp-microvolt = <975000 975000 1250000>;
 		};
 
-		opp@1000000000_975_4_7 {
+		opp@1000000000,975,4,7 {
 			opp-microvolt = <975000 975000 1250000>;
 		};
 
-		opp@1000000000_975_2_8 {
+		opp@1000000000,975,2,8 {
 			opp-microvolt = <975000 975000 1250000>;
 		};
 
-		opp@1000000000_975_3_8 {
+		opp@1000000000,975,3,8 {
 			opp-microvolt = <975000 975000 1250000>;
 		};
 
-		opp@1000000000_975_4_8 {
+		opp@1000000000,975,4,8 {
 			opp-microvolt = <975000 975000 1250000>;
 		};
 
-		opp@1000000000_1000 {
+		opp@1000000000,1000 {
 			opp-microvolt = <1000000 1000000 1250000>;
 		};
 
-		opp@1000000000_1025 {
+		opp@1000000000,1025 {
 			opp-microvolt = <1025000 1025000 1250000>;
 		};
 
-		opp@1100000000_900 {
+		opp@1100000000,900 {
 			opp-microvolt = <900000 900000 1250000>;
 		};
 
-		opp@1100000000_975 {
+		opp@1100000000,975 {
 			opp-microvolt = <975000 975000 1250000>;
 		};
 
-		opp@1100000000_975_3_1 {
+		opp@1100000000,975,3,1 {
 			opp-microvolt = <975000 975000 1250000>;
 		};
 
-		opp@1100000000_975_3_2 {
+		opp@1100000000,975,3,2 {
 			opp-microvolt = <975000 975000 1250000>;
 		};
 
-		opp@1100000000_975_3_3 {
+		opp@1100000000,975,3,3 {
 			opp-microvolt = <975000 975000 1250000>;
 		};
 
-		opp@1100000000_975_3_4 {
+		opp@1100000000,975,3,4 {
 			opp-microvolt = <975000 975000 1250000>;
 		};
 
-		opp@1100000000_975_3_7 {
+		opp@1100000000,975,3,7 {
 			opp-microvolt = <975000 975000 1250000>;
 		};
 
-		opp@1100000000_975_4_7 {
+		opp@1100000000,975,4,7 {
 			opp-microvolt = <975000 975000 1250000>;
 		};
 
-		opp@1100000000_975_3_8 {
+		opp@1100000000,975,3,8 {
 			opp-microvolt = <975000 975000 1250000>;
 		};
 
-		opp@1100000000_975_4_8 {
+		opp@1100000000,975,4,8 {
 			opp-microvolt = <975000 975000 1250000>;
 		};
 
-		opp@1100000000_1000 {
+		opp@1100000000,1000 {
 			opp-microvolt = <1000000 1000000 1250000>;
 		};
 
-		opp@1100000000_1000_2_1 {
+		opp@1100000000,1000,2,1 {
 			opp-microvolt = <1000000 1000000 1250000>;
 		};
 
-		opp@1100000000_1000_2_2 {
+		opp@1100000000,1000,2,2 {
 			opp-microvolt = <1000000 1000000 1250000>;
 		};
 
-		opp@1100000000_1000_2_3 {
+		opp@1100000000,1000,2,3 {
 			opp-microvolt = <1000000 1000000 1250000>;
 		};
 
-		opp@1100000000_1000_2_4 {
+		opp@1100000000,1000,2,4 {
 			opp-microvolt = <1000000 1000000 1250000>;
 		};
 
-		opp@1100000000_1000_2_7 {
+		opp@1100000000,1000,2,7 {
 			opp-microvolt = <1000000 1000000 1250000>;
 		};
 
-		opp@1100000000_1000_2_8 {
+		opp@1100000000,1000,2,8 {
 			opp-microvolt = <1000000 1000000 1250000>;
 		};
 
-		opp@1100000000_1025 {
+		opp@1100000000,1025 {
 			opp-microvolt = <1025000 1025000 1250000>;
 		};
 
-		opp@1100000000_1075 {
+		opp@1100000000,1075 {
 			opp-microvolt = <1075000 1075000 1250000>;
 		};
 
-		opp@1150000000_975 {
+		opp@1150000000,975 {
 			opp-microvolt = <975000 975000 1250000>;
 		};
 
-		opp@1200000000_975 {
+		opp@1200000000,975 {
 			opp-microvolt = <975000 975000 1250000>;
 		};
 
-		opp@1200000000_1000 {
+		opp@1200000000,1000 {
 			opp-microvolt = <1000000 1000000 1250000>;
 		};
 
-		opp@1200000000_1000_3_1 {
+		opp@1200000000,1000,3,1 {
 			opp-microvolt = <1000000 1000000 1250000>;
 		};
 
-		opp@1200000000_1000_3_2 {
+		opp@1200000000,1000,3,2 {
 			opp-microvolt = <1000000 1000000 1250000>;
 		};
 
-		opp@1200000000_1000_3_3 {
+		opp@1200000000,1000,3,3 {
 			opp-microvolt = <1000000 1000000 1250000>;
 		};
 
-		opp@1200000000_1000_3_4 {
+		opp@1200000000,1000,3,4 {
 			opp-microvolt = <1000000 1000000 1250000>;
 		};
 
-		opp@1200000000_1000_3_7 {
+		opp@1200000000,1000,3,7 {
 			opp-microvolt = <1000000 1000000 1250000>;
 		};
 
-		opp@1200000000_1000_4_7 {
+		opp@1200000000,1000,4,7 {
 			opp-microvolt = <1000000 1000000 1250000>;
 		};
 
-		opp@1200000000_1000_3_8 {
+		opp@1200000000,1000,3,8 {
 			opp-microvolt = <1000000 1000000 1250000>;
 		};
 
-		opp@1200000000_1000_4_8 {
+		opp@1200000000,1000,4,8 {
 			opp-microvolt = <1000000 1000000 1250000>;
 		};
 
-		opp@1200000000_1025 {
+		opp@1200000000,1025 {
 			opp-microvolt = <1025000 1025000 1250000>;
 		};
 
-		opp@1200000000_1025_2_1 {
+		opp@1200000000,1025,2,1 {
 			opp-microvolt = <1025000 1025000 1250000>;
 		};
 
-		opp@1200000000_1025_2_2 {
+		opp@1200000000,1025,2,2 {
 			opp-microvolt = <1025000 1025000 1250000>;
 		};
 
-		opp@1200000000_1025_2_3 {
+		opp@1200000000,1025,2,3 {
 			opp-microvolt = <1025000 1025000 1250000>;
 		};
 
-		opp@1200000000_1025_2_4 {
+		opp@1200000000,1025,2,4 {
 			opp-microvolt = <1025000 1025000 1250000>;
 		};
 
-		opp@1200000000_1025_2_7 {
+		opp@1200000000,1025,2,7 {
 			opp-microvolt = <1025000 1025000 1250000>;
 		};
 
-		opp@1200000000_1025_2_8 {
+		opp@1200000000,1025,2,8 {
 			opp-microvolt = <1025000 1025000 1250000>;
 		};
 
-		opp@1200000000_1050 {
+		opp@1200000000,1050 {
 			opp-microvolt = <1050000 1050000 1250000>;
 		};
 
-		opp@1200000000_1075 {
+		opp@1200000000,1075 {
 			opp-microvolt = <1075000 1075000 1250000>;
 		};
 
-		opp@1200000000_1100 {
+		opp@1200000000,1100 {
 			opp-microvolt = <1100000 1100000 1250000>;
 		};
 
-		opp@1300000000_1000 {
+		opp@1300000000,1000 {
 			opp-microvolt = <1000000 1000000 1250000>;
 		};
 
-		opp@1300000000_1000_4_7 {
+		opp@1300000000,1000,4,7 {
 			opp-microvolt = <1000000 1000000 1250000>;
 		};
 
-		opp@1300000000_1000_4_8 {
+		opp@1300000000,1000,4,8 {
 			opp-microvolt = <1000000 1000000 1250000>;
 		};
 
-		opp@1300000000_1025 {
+		opp@1300000000,1025 {
 			opp-microvolt = <1025000 1025000 1250000>;
 		};
 
-		opp@1300000000_1025_3_1 {
+		opp@1300000000,1025,3,1 {
 			opp-microvolt = <1025000 1025000 1250000>;
 		};
 
-		opp@1300000000_1025_3_7 {
+		opp@1300000000,1025,3,7 {
 			opp-microvolt = <1025000 1025000 1250000>;
 		};
 
-		opp@1300000000_1025_3_8 {
+		opp@1300000000,1025,3,8 {
 			opp-microvolt = <1025000 1025000 1250000>;
 		};
 
-		opp@1300000000_1050 {
+		opp@1300000000,1050 {
 			opp-microvolt = <1050000 1050000 1250000>;
 		};
 
-		opp@1300000000_1050_2_1 {
+		opp@1300000000,1050,2,1 {
 			opp-microvolt = <1050000 1050000 1250000>;
 		};
 
-		opp@1300000000_1050_3_2 {
+		opp@1300000000,1050,3,2 {
 			opp-microvolt = <1050000 1050000 1250000>;
 		};
 
-		opp@1300000000_1050_3_3 {
+		opp@1300000000,1050,3,3 {
 			opp-microvolt = <1050000 1050000 1250000>;
 		};
 
-		opp@1300000000_1050_3_4 {
+		opp@1300000000,1050,3,4 {
 			opp-microvolt = <1050000 1050000 1250000>;
 		};
 
-		opp@1300000000_1050_3_5 {
+		opp@1300000000,1050,3,5 {
 			opp-microvolt = <1050000 1050000 1250000>;
 		};
 
-		opp@1300000000_1050_3_6 {
+		opp@1300000000,1050,3,6 {
 			opp-microvolt = <1050000 1050000 1250000>;
 		};
 
-		opp@1300000000_1050_2_7 {
+		opp@1300000000,1050,2,7 {
 			opp-microvolt = <1050000 1050000 1250000>;
 		};
 
-		opp@1300000000_1050_2_8 {
+		opp@1300000000,1050,2,8 {
 			opp-microvolt = <1050000 1050000 1250000>;
 		};
 
-		opp@1300000000_1050_3_12 {
+		opp@1300000000,1050,3,12 {
 			opp-microvolt = <1050000 1050000 1250000>;
 		};
 
-		opp@1300000000_1050_3_13 {
+		opp@1300000000,1050,3,13 {
 			opp-microvolt = <1050000 1050000 1250000>;
 		};
 
-		opp@1300000000_1075 {
+		opp@1300000000,1075 {
 			opp-microvolt = <1075000 1075000 1250000>;
 		};
 
-		opp@1300000000_1075_2_2 {
+		opp@1300000000,1075,2,2 {
 			opp-microvolt = <1075000 1075000 1250000>;
 		};
 
-		opp@1300000000_1075_2_3 {
+		opp@1300000000,1075,2,3 {
 			opp-microvolt = <1075000 1075000 1250000>;
 		};
 
-		opp@1300000000_1075_2_4 {
+		opp@1300000000,1075,2,4 {
 			opp-microvolt = <1075000 1075000 1250000>;
 		};
 
-		opp@1300000000_1100 {
+		opp@1300000000,1100 {
 			opp-microvolt = <1100000 1100000 1250000>;
 		};
 
-		opp@1300000000_1125 {
+		opp@1300000000,1125 {
 			opp-microvolt = <1125000 1125000 1250000>;
 		};
 
-		opp@1300000000_1150 {
+		opp@1300000000,1150 {
 			opp-microvolt = <1150000 1150000 1250000>;
 		};
 
-		opp@1300000000_1175 {
+		opp@1300000000,1175 {
 			opp-microvolt = <1175000 1175000 1250000>;
 		};
 
-		opp@1400000000_1100 {
+		opp@1400000000,1100 {
 			opp-microvolt = <1100000 1100000 1250000>;
 		};
 
-		opp@1400000000_1125 {
+		opp@1400000000,1125 {
 			opp-microvolt = <1125000 1125000 1250000>;
 		};
 
-		opp@1400000000_1150 {
+		opp@1400000000,1150 {
 			opp-microvolt = <1150000 1150000 1250000>;
 		};
 
-		opp@1400000000_1150_2_4 {
+		opp@1400000000,1150,2,4 {
 			opp-microvolt = <1150000 1150000 1250000>;
 		};
 
-		opp@1400000000_1175 {
+		opp@1400000000,1175 {
 			opp-microvolt = <1175000 1175000 1250000>;
 		};
 
-		opp@1400000000_1237 {
+		opp@1400000000,1237 {
 			opp-microvolt = <1237000 1237000 1250000>;
 		};
 
-		opp@1500000000_1125 {
+		opp@1500000000,1125 {
 			opp-microvolt = <1125000 1125000 1250000>;
 		};
 
-		opp@1500000000_1125_4_5 {
+		opp@1500000000,1125,4,5 {
 			opp-microvolt = <1125000 1125000 1250000>;
 		};
 
-		opp@1500000000_1125_4_6 {
+		opp@1500000000,1125,4,6 {
 			opp-microvolt = <1125000 1125000 1250000>;
 		};
 
-		opp@1500000000_1125_4_12 {
+		opp@1500000000,1125,4,12 {
 			opp-microvolt = <1125000 1125000 1250000>;
 		};
 
-		opp@1500000000_1125_4_13 {
+		opp@1500000000,1125,4,13 {
 			opp-microvolt = <1125000 1125000 1250000>;
 		};
 
-		opp@1500000000_1150 {
+		opp@1500000000,1150 {
 			opp-microvolt = <1150000 1150000 1250000>;
 		};
 
-		opp@1500000000_1150_3_5 {
+		opp@1500000000,1150,3,5 {
 			opp-microvolt = <1150000 1150000 1250000>;
 		};
 
-		opp@1500000000_1150_3_6 {
+		opp@1500000000,1150,3,6 {
 			opp-microvolt = <1150000 1150000 1250000>;
 		};
 
-		opp@1500000000_1150_3_12 {
+		opp@1500000000,1150,3,12 {
 			opp-microvolt = <1150000 1150000 1250000>;
 		};
 
-		opp@1500000000_1150_3_13 {
+		opp@1500000000,1150,3,13 {
 			opp-microvolt = <1150000 1150000 1250000>;
 		};
 
-		opp@1500000000_1200 {
+		opp@1500000000,1200 {
 			opp-microvolt = <1200000 1200000 1250000>;
 		};
 
-		opp@1500000000_1237 {
+		opp@1500000000,1237 {
 			opp-microvolt = <1237000 1237000 1250000>;
 		};
 
-		opp@1600000000_1212 {
+		opp@1600000000,1212 {
 			opp-microvolt = <1212000 1212000 1250000>;
 		};
 
-		opp@1600000000_1237 {
+		opp@1600000000,1237 {
 			opp-microvolt = <1237000 1237000 1250000>;
 		};
 
-		opp@1700000000_1212 {
+		opp@1700000000,1212 {
 			opp-microvolt = <1212000 1212000 1250000>;
 		};
 
-		opp@1700000000_1237 {
+		opp@1700000000,1237 {
 			opp-microvolt = <1237000 1237000 1250000>;
 		};
 	};
diff --git a/arch/arm/boot/dts/tegra30-cpu-opp.dtsi b/arch/arm/boot/dts/tegra30-cpu-opp.dtsi
index d64fc262585e..8e434f6713cd 100644
--- a/arch/arm/boot/dts/tegra30-cpu-opp.dtsi
+++ b/arch/arm/boot/dts/tegra30-cpu-opp.dtsi
@@ -5,1195 +5,1195 @@ cpu0_opp_table: cpu_opp_table0 {
 		compatible = "operating-points-v2";
 		opp-shared;
 
-		opp@51000000_800 {
+		opp@51000000,800 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x1F 0x31FE>;
 			opp-hz = /bits/ 64 <51000000>;
 		};
 
-		opp@51000000_850 {
+		opp@51000000,850 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x1F 0x0C01>;
 			opp-hz = /bits/ 64 <51000000>;
 		};
 
-		opp@51000000_912 {
+		opp@51000000,912 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x1F 0x0200>;
 			opp-hz = /bits/ 64 <51000000>;
 		};
 
-		opp@102000000_800 {
+		opp@102000000,800 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x1F 0x31FE>;
 			opp-hz = /bits/ 64 <102000000>;
 		};
 
-		opp@102000000_850 {
+		opp@102000000,850 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x1F 0x0C01>;
 			opp-hz = /bits/ 64 <102000000>;
 		};
 
-		opp@102000000_912 {
+		opp@102000000,912 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x1F 0x0200>;
 			opp-hz = /bits/ 64 <102000000>;
 		};
 
-		opp@204000000_800 {
+		opp@204000000,800 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x1F 0x31FE>;
 			opp-hz = /bits/ 64 <204000000>;
 		};
 
-		opp@204000000_850 {
+		opp@204000000,850 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x1F 0x0C01>;
 			opp-hz = /bits/ 64 <204000000>;
 		};
 
-		opp@204000000_912 {
+		opp@204000000,912 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x1F 0x0200>;
 			opp-hz = /bits/ 64 <204000000>;
 		};
 
-		opp@312000000_850 {
+		opp@312000000,850 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x1F 0x0C00>;
 			opp-hz = /bits/ 64 <312000000>;
 		};
 
-		opp@312000000_912 {
+		opp@312000000,912 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x1F 0x0200>;
 			opp-hz = /bits/ 64 <312000000>;
 		};
 
-		opp@340000000_800 {
+		opp@340000000,800 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x1F 0x0192>;
 			opp-hz = /bits/ 64 <340000000>;
 		};
 
-		opp@340000000_850 {
+		opp@340000000,850 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x0F 0x0001>;
 			opp-hz = /bits/ 64 <340000000>;
 		};
 
-		opp@370000000_800 {
+		opp@370000000,800 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x1E 0x306C>;
 			opp-hz = /bits/ 64 <370000000>;
 		};
 
-		opp@456000000_850 {
+		opp@456000000,850 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x1F 0x0C00>;
 			opp-hz = /bits/ 64 <456000000>;
 		};
 
-		opp@456000000_912 {
+		opp@456000000,912 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x1F 0x0200>;
 			opp-hz = /bits/ 64 <456000000>;
 		};
 
-		opp@475000000_800 {
+		opp@475000000,800 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x1E 0x31FE>;
 			opp-hz = /bits/ 64 <475000000>;
 		};
 
-		opp@475000000_850 {
+		opp@475000000,850 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x0F 0x0001>;
 			opp-hz = /bits/ 64 <475000000>;
 		};
 
-		opp@475000000_850_0_1 {
+		opp@475000000,850,0,1 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x01 0x0002>;
 			opp-hz = /bits/ 64 <475000000>;
 		};
 
-		opp@475000000_850_0_4 {
+		opp@475000000,850,0,4 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x01 0x0010>;
 			opp-hz = /bits/ 64 <475000000>;
 		};
 
-		opp@475000000_850_0_7 {
+		opp@475000000,850,0,7 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x01 0x0080>;
 			opp-hz = /bits/ 64 <475000000>;
 		};
 
-		opp@475000000_850_0_8 {
+		opp@475000000,850,0,8 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x01 0x0100>;
 			opp-hz = /bits/ 64 <475000000>;
 		};
 
-		opp@608000000_850 {
+		opp@608000000,850 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x1F 0x0400>;
 			opp-hz = /bits/ 64 <608000000>;
 		};
 
-		opp@608000000_912 {
+		opp@608000000,912 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x1F 0x0200>;
 			opp-hz = /bits/ 64 <608000000>;
 		};
 
-		opp@620000000_850 {
+		opp@620000000,850 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x1E 0x306C>;
 			opp-hz = /bits/ 64 <620000000>;
 		};
 
-		opp@640000000_850 {
+		opp@640000000,850 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x0F 0x0001>;
 			opp-hz = /bits/ 64 <640000000>;
 		};
 
-		opp@640000000_850_1_1 {
+		opp@640000000,850,1,1 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x02 0x0002>;
 			opp-hz = /bits/ 64 <640000000>;
 		};
 
-		opp@640000000_850_2_1 {
+		opp@640000000,850,2,1 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x04 0x0002>;
 			opp-hz = /bits/ 64 <640000000>;
 		};
 
-		opp@640000000_850_3_1 {
+		opp@640000000,850,3,1 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x08 0x0002>;
 			opp-hz = /bits/ 64 <640000000>;
 		};
 
-		opp@640000000_850_1_4 {
+		opp@640000000,850,1,4 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x02 0x0010>;
 			opp-hz = /bits/ 64 <640000000>;
 		};
 
-		opp@640000000_850_2_4 {
+		opp@640000000,850,2,4 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x04 0x0010>;
 			opp-hz = /bits/ 64 <640000000>;
 		};
 
-		opp@640000000_850_3_4 {
+		opp@640000000,850,3,4 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x08 0x0010>;
 			opp-hz = /bits/ 64 <640000000>;
 		};
 
-		opp@640000000_850_1_7 {
+		opp@640000000,850,1,7 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x02 0x0080>;
 			opp-hz = /bits/ 64 <640000000>;
 		};
 
-		opp@640000000_850_2_7 {
+		opp@640000000,850,2,7 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x04 0x0080>;
 			opp-hz = /bits/ 64 <640000000>;
 		};
 
-		opp@640000000_850_3_7 {
+		opp@640000000,850,3,7 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x08 0x0080>;
 			opp-hz = /bits/ 64 <640000000>;
 		};
 
-		opp@640000000_850_4_7 {
+		opp@640000000,850,4,7 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x10 0x0080>;
 			opp-hz = /bits/ 64 <640000000>;
 		};
 
-		opp@640000000_850_1_8 {
+		opp@640000000,850,1,8 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x02 0x0100>;
 			opp-hz = /bits/ 64 <640000000>;
 		};
 
-		opp@640000000_850_2_8 {
+		opp@640000000,850,2,8 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x04 0x0100>;
 			opp-hz = /bits/ 64 <640000000>;
 		};
 
-		opp@640000000_850_3_8 {
+		opp@640000000,850,3,8 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x08 0x0100>;
 			opp-hz = /bits/ 64 <640000000>;
 		};
 
-		opp@640000000_850_4_8 {
+		opp@640000000,850,4,8 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x10 0x0100>;
 			opp-hz = /bits/ 64 <640000000>;
 		};
 
-		opp@640000000_900 {
+		opp@640000000,900 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x01 0x0192>;
 			opp-hz = /bits/ 64 <640000000>;
 		};
 
-		opp@760000000_850 {
+		opp@760000000,850 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x1E 0x3461>;
 			opp-hz = /bits/ 64 <760000000>;
 		};
 
-		opp@760000000_850_3_1 {
+		opp@760000000,850,3,1 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x08 0x0002>;
 			opp-hz = /bits/ 64 <760000000>;
 		};
 
-		opp@760000000_850_3_2 {
+		opp@760000000,850,3,2 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x08 0x0004>;
 			opp-hz = /bits/ 64 <760000000>;
 		};
 
-		opp@760000000_850_3_3 {
+		opp@760000000,850,3,3 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x08 0x0008>;
 			opp-hz = /bits/ 64 <760000000>;
 		};
 
-		opp@760000000_850_3_4 {
+		opp@760000000,850,3,4 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x08 0x0010>;
 			opp-hz = /bits/ 64 <760000000>;
 		};
 
-		opp@760000000_850_3_7 {
+		opp@760000000,850,3,7 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x08 0x0080>;
 			opp-hz = /bits/ 64 <760000000>;
 		};
 
-		opp@760000000_850_4_7 {
+		opp@760000000,850,4,7 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x10 0x0080>;
 			opp-hz = /bits/ 64 <760000000>;
 		};
 
-		opp@760000000_850_3_8 {
+		opp@760000000,850,3,8 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x08 0x0100>;
 			opp-hz = /bits/ 64 <760000000>;
 		};
 
-		opp@760000000_850_4_8 {
+		opp@760000000,850,4,8 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x10 0x0100>;
 			opp-hz = /bits/ 64 <760000000>;
 		};
 
-		opp@760000000_850_0_10 {
+		opp@760000000,850,0,10 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x01 0x0400>;
 			opp-hz = /bits/ 64 <760000000>;
 		};
 
-		opp@760000000_900 {
+		opp@760000000,900 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x01 0x0001>;
 			opp-hz = /bits/ 64 <760000000>;
 		};
 
-		opp@760000000_900_1_1 {
+		opp@760000000,900,1,1 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x02 0x0002>;
 			opp-hz = /bits/ 64 <760000000>;
 		};
 
-		opp@760000000_900_2_1 {
+		opp@760000000,900,2,1 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x04 0x0002>;
 			opp-hz = /bits/ 64 <760000000>;
 		};
 
-		opp@760000000_900_1_2 {
+		opp@760000000,900,1,2 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x02 0x0004>;
 			opp-hz = /bits/ 64 <760000000>;
 		};
 
-		opp@760000000_900_2_2 {
+		opp@760000000,900,2,2 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x04 0x0004>;
 			opp-hz = /bits/ 64 <760000000>;
 		};
 
-		opp@760000000_900_1_3 {
+		opp@760000000,900,1,3 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x02 0x0008>;
 			opp-hz = /bits/ 64 <760000000>;
 		};
 
-		opp@760000000_900_2_3 {
+		opp@760000000,900,2,3 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x04 0x0008>;
 			opp-hz = /bits/ 64 <760000000>;
 		};
 
-		opp@760000000_900_1_4 {
+		opp@760000000,900,1,4 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x02 0x0010>;
 			opp-hz = /bits/ 64 <760000000>;
 		};
 
-		opp@760000000_900_2_4 {
+		opp@760000000,900,2,4 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x04 0x0010>;
 			opp-hz = /bits/ 64 <760000000>;
 		};
 
-		opp@760000000_900_1_7 {
+		opp@760000000,900,1,7 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x02 0x0080>;
 			opp-hz = /bits/ 64 <760000000>;
 		};
 
-		opp@760000000_900_2_7 {
+		opp@760000000,900,2,7 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x04 0x0080>;
 			opp-hz = /bits/ 64 <760000000>;
 		};
 
-		opp@760000000_900_1_8 {
+		opp@760000000,900,1,8 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x02 0x0100>;
 			opp-hz = /bits/ 64 <760000000>;
 		};
 
-		opp@760000000_900_2_8 {
+		opp@760000000,900,2,8 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x04 0x0100>;
 			opp-hz = /bits/ 64 <760000000>;
 		};
 
-		opp@760000000_912 {
+		opp@760000000,912 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x1F 0x0200>;
 			opp-hz = /bits/ 64 <760000000>;
 		};
 
-		opp@760000000_975 {
+		opp@760000000,975 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x01 0x0192>;
 			opp-hz = /bits/ 64 <760000000>;
 		};
 
-		opp@816000000_850 {
+		opp@816000000,850 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x1F 0x0400>;
 			opp-hz = /bits/ 64 <816000000>;
 		};
 
-		opp@816000000_912 {
+		opp@816000000,912 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x1F 0x0200>;
 			opp-hz = /bits/ 64 <816000000>;
 		};
 
-		opp@860000000_850 {
+		opp@860000000,850 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x0C 0x0001>;
 			opp-hz = /bits/ 64 <860000000>;
 		};
 
-		opp@860000000_900 {
+		opp@860000000,900 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x02 0x0001>;
 			opp-hz = /bits/ 64 <860000000>;
 		};
 
-		opp@860000000_900_2_1 {
+		opp@860000000,900,2,1 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x04 0x0002>;
 			opp-hz = /bits/ 64 <860000000>;
 		};
 
-		opp@860000000_900_3_1 {
+		opp@860000000,900,3,1 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x08 0x0002>;
 			opp-hz = /bits/ 64 <860000000>;
 		};
 
-		opp@860000000_900_2_2 {
+		opp@860000000,900,2,2 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x04 0x0004>;
 			opp-hz = /bits/ 64 <860000000>;
 		};
 
-		opp@860000000_900_3_2 {
+		opp@860000000,900,3,2 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x08 0x0004>;
 			opp-hz = /bits/ 64 <860000000>;
 		};
 
-		opp@860000000_900_2_3 {
+		opp@860000000,900,2,3 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x04 0x0008>;
 			opp-hz = /bits/ 64 <860000000>;
 		};
 
-		opp@860000000_900_3_3 {
+		opp@860000000,900,3,3 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x08 0x0008>;
 			opp-hz = /bits/ 64 <860000000>;
 		};
 
-		opp@860000000_900_2_4 {
+		opp@860000000,900,2,4 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x04 0x0010>;
 			opp-hz = /bits/ 64 <860000000>;
 		};
 
-		opp@860000000_900_3_4 {
+		opp@860000000,900,3,4 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x08 0x0010>;
 			opp-hz = /bits/ 64 <860000000>;
 		};
 
-		opp@860000000_900_2_7 {
+		opp@860000000,900,2,7 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x04 0x0080>;
 			opp-hz = /bits/ 64 <860000000>;
 		};
 
-		opp@860000000_900_3_7 {
+		opp@860000000,900,3,7 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x08 0x0080>;
 			opp-hz = /bits/ 64 <860000000>;
 		};
 
-		opp@860000000_900_4_7 {
+		opp@860000000,900,4,7 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x10 0x0080>;
 			opp-hz = /bits/ 64 <860000000>;
 		};
 
-		opp@860000000_900_2_8 {
+		opp@860000000,900,2,8 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x04 0x0100>;
 			opp-hz = /bits/ 64 <860000000>;
 		};
 
-		opp@860000000_900_3_8 {
+		opp@860000000,900,3,8 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x08 0x0100>;
 			opp-hz = /bits/ 64 <860000000>;
 		};
 
-		opp@860000000_900_4_8 {
+		opp@860000000,900,4,8 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x10 0x0100>;
 			opp-hz = /bits/ 64 <860000000>;
 		};
 
-		opp@860000000_975 {
+		opp@860000000,975 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x01 0x0001>;
 			opp-hz = /bits/ 64 <860000000>;
 		};
 
-		opp@860000000_975_1_1 {
+		opp@860000000,975,1,1 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x02 0x0002>;
 			opp-hz = /bits/ 64 <860000000>;
 		};
 
-		opp@860000000_975_1_2 {
+		opp@860000000,975,1,2 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x02 0x0004>;
 			opp-hz = /bits/ 64 <860000000>;
 		};
 
-		opp@860000000_975_1_3 {
+		opp@860000000,975,1,3 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x02 0x0008>;
 			opp-hz = /bits/ 64 <860000000>;
 		};
 
-		opp@860000000_975_1_4 {
+		opp@860000000,975,1,4 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x02 0x0010>;
 			opp-hz = /bits/ 64 <860000000>;
 		};
 
-		opp@860000000_975_1_7 {
+		opp@860000000,975,1,7 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x02 0x0080>;
 			opp-hz = /bits/ 64 <860000000>;
 		};
 
-		opp@860000000_975_1_8 {
+		opp@860000000,975,1,8 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x02 0x0100>;
 			opp-hz = /bits/ 64 <860000000>;
 		};
 
-		opp@860000000_1000 {
+		opp@860000000,1000 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x01 0x0192>;
 			opp-hz = /bits/ 64 <860000000>;
 		};
 
-		opp@910000000_900 {
+		opp@910000000,900 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x18 0x3060>;
 			opp-hz = /bits/ 64 <910000000>;
 		};
 
-		opp@1000000000_900 {
+		opp@1000000000,900 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x0C 0x0001>;
 			opp-hz = /bits/ 64 <1000000000>;
 		};
 
-		opp@1000000000_975 {
+		opp@1000000000,975 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x03 0x0001>;
 			opp-hz = /bits/ 64 <1000000000>;
 		};
 
-		opp@1000000000_975_2_1 {
+		opp@1000000000,975,2,1 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x04 0x0002>;
 			opp-hz = /bits/ 64 <1000000000>;
 		};
 
-		opp@1000000000_975_3_1 {
+		opp@1000000000,975,3,1 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x08 0x0002>;
 			opp-hz = /bits/ 64 <1000000000>;
 		};
 
-		opp@1000000000_975_2_2 {
+		opp@1000000000,975,2,2 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x04 0x0004>;
 			opp-hz = /bits/ 64 <1000000000>;
 		};
 
-		opp@1000000000_975_3_2 {
+		opp@1000000000,975,3,2 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x08 0x0004>;
 			opp-hz = /bits/ 64 <1000000000>;
 		};
 
-		opp@1000000000_975_2_3 {
+		opp@1000000000,975,2,3 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x04 0x0008>;
 			opp-hz = /bits/ 64 <1000000000>;
 		};
 
-		opp@1000000000_975_3_3 {
+		opp@1000000000,975,3,3 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x08 0x0008>;
 			opp-hz = /bits/ 64 <1000000000>;
 		};
 
-		opp@1000000000_975_2_4 {
+		opp@1000000000,975,2,4 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x04 0x0010>;
 			opp-hz = /bits/ 64 <1000000000>;
 		};
 
-		opp@1000000000_975_3_4 {
+		opp@1000000000,975,3,4 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x08 0x0010>;
 			opp-hz = /bits/ 64 <1000000000>;
 		};
 
-		opp@1000000000_975_2_7 {
+		opp@1000000000,975,2,7 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x04 0x0080>;
 			opp-hz = /bits/ 64 <1000000000>;
 		};
 
-		opp@1000000000_975_3_7 {
+		opp@1000000000,975,3,7 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x08 0x0080>;
 			opp-hz = /bits/ 64 <1000000000>;
 		};
 
-		opp@1000000000_975_4_7 {
+		opp@1000000000,975,4,7 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x10 0x0080>;
 			opp-hz = /bits/ 64 <1000000000>;
 		};
 
-		opp@1000000000_975_2_8 {
+		opp@1000000000,975,2,8 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x04 0x0100>;
 			opp-hz = /bits/ 64 <1000000000>;
 		};
 
-		opp@1000000000_975_3_8 {
+		opp@1000000000,975,3,8 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x08 0x0100>;
 			opp-hz = /bits/ 64 <1000000000>;
 		};
 
-		opp@1000000000_975_4_8 {
+		opp@1000000000,975,4,8 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x10 0x0100>;
 			opp-hz = /bits/ 64 <1000000000>;
 		};
 
-		opp@1000000000_1000 {
+		opp@1000000000,1000 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x02 0x019E>;
 			opp-hz = /bits/ 64 <1000000000>;
 		};
 
-		opp@1000000000_1025 {
+		opp@1000000000,1025 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x01 0x0192>;
 			opp-hz = /bits/ 64 <1000000000>;
 		};
 
-		opp@1100000000_900 {
+		opp@1100000000,900 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x08 0x0001>;
 			opp-hz = /bits/ 64 <1100000000>;
 		};
 
-		opp@1100000000_975 {
+		opp@1100000000,975 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x06 0x0001>;
 			opp-hz = /bits/ 64 <1100000000>;
 		};
 
-		opp@1100000000_975_3_1 {
+		opp@1100000000,975,3,1 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x08 0x0002>;
 			opp-hz = /bits/ 64 <1100000000>;
 		};
 
-		opp@1100000000_975_3_2 {
+		opp@1100000000,975,3,2 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x08 0x0004>;
 			opp-hz = /bits/ 64 <1100000000>;
 		};
 
-		opp@1100000000_975_3_3 {
+		opp@1100000000,975,3,3 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x08 0x0008>;
 			opp-hz = /bits/ 64 <1100000000>;
 		};
 
-		opp@1100000000_975_3_4 {
+		opp@1100000000,975,3,4 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x08 0x0010>;
 			opp-hz = /bits/ 64 <1100000000>;
 		};
 
-		opp@1100000000_975_3_7 {
+		opp@1100000000,975,3,7 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x08 0x0080>;
 			opp-hz = /bits/ 64 <1100000000>;
 		};
 
-		opp@1100000000_975_4_7 {
+		opp@1100000000,975,4,7 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x10 0x0080>;
 			opp-hz = /bits/ 64 <1100000000>;
 		};
 
-		opp@1100000000_975_3_8 {
+		opp@1100000000,975,3,8 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x08 0x0100>;
 			opp-hz = /bits/ 64 <1100000000>;
 		};
 
-		opp@1100000000_975_4_8 {
+		opp@1100000000,975,4,8 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x10 0x0100>;
 			opp-hz = /bits/ 64 <1100000000>;
 		};
 
-		opp@1100000000_1000 {
+		opp@1100000000,1000 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x01 0x0001>;
 			opp-hz = /bits/ 64 <1100000000>;
 		};
 
-		opp@1100000000_1000_2_1 {
+		opp@1100000000,1000,2,1 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x04 0x0002>;
 			opp-hz = /bits/ 64 <1100000000>;
 		};
 
-		opp@1100000000_1000_2_2 {
+		opp@1100000000,1000,2,2 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x04 0x0004>;
 			opp-hz = /bits/ 64 <1100000000>;
 		};
 
-		opp@1100000000_1000_2_3 {
+		opp@1100000000,1000,2,3 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x04 0x0008>;
 			opp-hz = /bits/ 64 <1100000000>;
 		};
 
-		opp@1100000000_1000_2_4 {
+		opp@1100000000,1000,2,4 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x04 0x0010>;
 			opp-hz = /bits/ 64 <1100000000>;
 		};
 
-		opp@1100000000_1000_2_7 {
+		opp@1100000000,1000,2,7 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x04 0x0080>;
 			opp-hz = /bits/ 64 <1100000000>;
 		};
 
-		opp@1100000000_1000_2_8 {
+		opp@1100000000,1000,2,8 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x04 0x0100>;
 			opp-hz = /bits/ 64 <1100000000>;
 		};
 
-		opp@1100000000_1025 {
+		opp@1100000000,1025 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x02 0x019E>;
 			opp-hz = /bits/ 64 <1100000000>;
 		};
 
-		opp@1100000000_1075 {
+		opp@1100000000,1075 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x01 0x0192>;
 			opp-hz = /bits/ 64 <1100000000>;
 		};
 
-		opp@1150000000_975 {
+		opp@1150000000,975 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x18 0x3060>;
 			opp-hz = /bits/ 64 <1150000000>;
 		};
 
-		opp@1200000000_975 {
+		opp@1200000000,975 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x08 0x0001>;
 			opp-hz = /bits/ 64 <1200000000>;
 		};
 
-		opp@1200000000_1000 {
+		opp@1200000000,1000 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x04 0x0001>;
 			opp-hz = /bits/ 64 <1200000000>;
 		};
 
-		opp@1200000000_1000_3_1 {
+		opp@1200000000,1000,3,1 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x08 0x0002>;
 			opp-hz = /bits/ 64 <1200000000>;
 		};
 
-		opp@1200000000_1000_3_2 {
+		opp@1200000000,1000,3,2 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x08 0x0004>;
 			opp-hz = /bits/ 64 <1200000000>;
 		};
 
-		opp@1200000000_1000_3_3 {
+		opp@1200000000,1000,3,3 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x08 0x0008>;
 			opp-hz = /bits/ 64 <1200000000>;
 		};
 
-		opp@1200000000_1000_3_4 {
+		opp@1200000000,1000,3,4 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x08 0x0010>;
 			opp-hz = /bits/ 64 <1200000000>;
 		};
 
-		opp@1200000000_1000_3_7 {
+		opp@1200000000,1000,3,7 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x08 0x0080>;
 			opp-hz = /bits/ 64 <1200000000>;
 		};
 
-		opp@1200000000_1000_4_7 {
+		opp@1200000000,1000,4,7 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x10 0x0080>;
 			opp-hz = /bits/ 64 <1200000000>;
 		};
 
-		opp@1200000000_1000_3_8 {
+		opp@1200000000,1000,3,8 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x08 0x0100>;
 			opp-hz = /bits/ 64 <1200000000>;
 		};
 
-		opp@1200000000_1000_4_8 {
+		opp@1200000000,1000,4,8 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x10 0x0100>;
 			opp-hz = /bits/ 64 <1200000000>;
 		};
 
-		opp@1200000000_1025 {
+		opp@1200000000,1025 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x02 0x0001>;
 			opp-hz = /bits/ 64 <1200000000>;
 		};
 
-		opp@1200000000_1025_2_1 {
+		opp@1200000000,1025,2,1 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x04 0x0002>;
 			opp-hz = /bits/ 64 <1200000000>;
 		};
 
-		opp@1200000000_1025_2_2 {
+		opp@1200000000,1025,2,2 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x04 0x0004>;
 			opp-hz = /bits/ 64 <1200000000>;
 		};
 
-		opp@1200000000_1025_2_3 {
+		opp@1200000000,1025,2,3 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x04 0x0008>;
 			opp-hz = /bits/ 64 <1200000000>;
 		};
 
-		opp@1200000000_1025_2_4 {
+		opp@1200000000,1025,2,4 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x04 0x0010>;
 			opp-hz = /bits/ 64 <1200000000>;
 		};
 
-		opp@1200000000_1025_2_7 {
+		opp@1200000000,1025,2,7 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x04 0x0080>;
 			opp-hz = /bits/ 64 <1200000000>;
 		};
 
-		opp@1200000000_1025_2_8 {
+		opp@1200000000,1025,2,8 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x04 0x0100>;
 			opp-hz = /bits/ 64 <1200000000>;
 		};
 
-		opp@1200000000_1050 {
+		opp@1200000000,1050 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x02 0x019E>;
 			opp-hz = /bits/ 64 <1200000000>;
 		};
 
-		opp@1200000000_1075 {
+		opp@1200000000,1075 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x01 0x0001>;
 			opp-hz = /bits/ 64 <1200000000>;
 		};
 
-		opp@1200000000_1100 {
+		opp@1200000000,1100 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x01 0x0192>;
 			opp-hz = /bits/ 64 <1200000000>;
 		};
 
-		opp@1300000000_1000 {
+		opp@1300000000,1000 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x08 0x0001>;
 			opp-hz = /bits/ 64 <1300000000>;
 		};
 
-		opp@1300000000_1000_4_7 {
+		opp@1300000000,1000,4,7 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x10 0x0080>;
 			opp-hz = /bits/ 64 <1300000000>;
 		};
 
-		opp@1300000000_1000_4_8 {
+		opp@1300000000,1000,4,8 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x10 0x0100>;
 			opp-hz = /bits/ 64 <1300000000>;
 		};
 
-		opp@1300000000_1025 {
+		opp@1300000000,1025 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x04 0x0001>;
 			opp-hz = /bits/ 64 <1300000000>;
 		};
 
-		opp@1300000000_1025_3_1 {
+		opp@1300000000,1025,3,1 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x08 0x0002>;
 			opp-hz = /bits/ 64 <1300000000>;
 		};
 
-		opp@1300000000_1025_3_7 {
+		opp@1300000000,1025,3,7 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x08 0x0080>;
 			opp-hz = /bits/ 64 <1300000000>;
 		};
 
-		opp@1300000000_1025_3_8 {
+		opp@1300000000,1025,3,8 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x08 0x0100>;
 			opp-hz = /bits/ 64 <1300000000>;
 		};
 
-		opp@1300000000_1050 {
+		opp@1300000000,1050 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x12 0x3061>;
 			opp-hz = /bits/ 64 <1300000000>;
 		};
 
-		opp@1300000000_1050_2_1 {
+		opp@1300000000,1050,2,1 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x04 0x0002>;
 			opp-hz = /bits/ 64 <1300000000>;
 		};
 
-		opp@1300000000_1050_3_2 {
+		opp@1300000000,1050,3,2 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x08 0x0004>;
 			opp-hz = /bits/ 64 <1300000000>;
 		};
 
-		opp@1300000000_1050_3_3 {
+		opp@1300000000,1050,3,3 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x08 0x0008>;
 			opp-hz = /bits/ 64 <1300000000>;
 		};
 
-		opp@1300000000_1050_3_4 {
+		opp@1300000000,1050,3,4 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x08 0x0010>;
 			opp-hz = /bits/ 64 <1300000000>;
 		};
 
-		opp@1300000000_1050_3_5 {
+		opp@1300000000,1050,3,5 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x08 0x0020>;
 			opp-hz = /bits/ 64 <1300000000>;
 		};
 
-		opp@1300000000_1050_3_6 {
+		opp@1300000000,1050,3,6 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x08 0x0040>;
 			opp-hz = /bits/ 64 <1300000000>;
 		};
 
-		opp@1300000000_1050_2_7 {
+		opp@1300000000,1050,2,7 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x04 0x0080>;
 			opp-hz = /bits/ 64 <1300000000>;
 		};
 
-		opp@1300000000_1050_2_8 {
+		opp@1300000000,1050,2,8 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x04 0x0100>;
 			opp-hz = /bits/ 64 <1300000000>;
 		};
 
-		opp@1300000000_1050_3_12 {
+		opp@1300000000,1050,3,12 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x08 0x1000>;
 			opp-hz = /bits/ 64 <1300000000>;
 		};
 
-		opp@1300000000_1050_3_13 {
+		opp@1300000000,1050,3,13 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x08 0x2000>;
 			opp-hz = /bits/ 64 <1300000000>;
 		};
 
-		opp@1300000000_1075 {
+		opp@1300000000,1075 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x02 0x0182>;
 			opp-hz = /bits/ 64 <1300000000>;
 		};
 
-		opp@1300000000_1075_2_2 {
+		opp@1300000000,1075,2,2 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x04 0x0004>;
 			opp-hz = /bits/ 64 <1300000000>;
 		};
 
-		opp@1300000000_1075_2_3 {
+		opp@1300000000,1075,2,3 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x04 0x0008>;
 			opp-hz = /bits/ 64 <1300000000>;
 		};
 
-		opp@1300000000_1075_2_4 {
+		opp@1300000000,1075,2,4 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x04 0x0010>;
 			opp-hz = /bits/ 64 <1300000000>;
 		};
 
-		opp@1300000000_1100 {
+		opp@1300000000,1100 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x02 0x001C>;
 			opp-hz = /bits/ 64 <1300000000>;
 		};
 
-		opp@1300000000_1125 {
+		opp@1300000000,1125 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x01 0x0001>;
 			opp-hz = /bits/ 64 <1300000000>;
 		};
 
-		opp@1300000000_1150 {
+		opp@1300000000,1150 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x01 0x0182>;
 			opp-hz = /bits/ 64 <1300000000>;
 		};
 
-		opp@1300000000_1175 {
+		opp@1300000000,1175 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x01 0x0010>;
 			opp-hz = /bits/ 64 <1300000000>;
 		};
 
-		opp@1400000000_1100 {
+		opp@1400000000,1100 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x18 0x307C>;
 			opp-hz = /bits/ 64 <1400000000>;
 		};
 
-		opp@1400000000_1125 {
+		opp@1400000000,1125 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x04 0x000C>;
 			opp-hz = /bits/ 64 <1400000000>;
 		};
 
-		opp@1400000000_1150 {
+		opp@1400000000,1150 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x02 0x000C>;
 			opp-hz = /bits/ 64 <1400000000>;
 		};
 
-		opp@1400000000_1150_2_4 {
+		opp@1400000000,1150,2,4 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x04 0x0010>;
 			opp-hz = /bits/ 64 <1400000000>;
 		};
 
-		opp@1400000000_1175 {
+		opp@1400000000,1175 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x02 0x0010>;
 			opp-hz = /bits/ 64 <1400000000>;
 		};
 
-		opp@1400000000_1237 {
+		opp@1400000000,1237 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x01 0x0010>;
 			opp-hz = /bits/ 64 <1400000000>;
 		};
 
-		opp@1500000000_1125 {
+		opp@1500000000,1125 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x08 0x0010>;
 			opp-hz = /bits/ 64 <1500000000>;
 		};
 
-		opp@1500000000_1125_4_5 {
+		opp@1500000000,1125,4,5 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x10 0x0020>;
 			opp-hz = /bits/ 64 <1500000000>;
 		};
 
-		opp@1500000000_1125_4_6 {
+		opp@1500000000,1125,4,6 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x10 0x0040>;
 			opp-hz = /bits/ 64 <1500000000>;
 		};
 
-		opp@1500000000_1125_4_12 {
+		opp@1500000000,1125,4,12 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x10 0x1000>;
 			opp-hz = /bits/ 64 <1500000000>;
 		};
 
-		opp@1500000000_1125_4_13 {
+		opp@1500000000,1125,4,13 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x10 0x2000>;
 			opp-hz = /bits/ 64 <1500000000>;
 		};
 
-		opp@1500000000_1150 {
+		opp@1500000000,1150 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x04 0x0010>;
 			opp-hz = /bits/ 64 <1500000000>;
 		};
 
-		opp@1500000000_1150_3_5 {
+		opp@1500000000,1150,3,5 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x08 0x0020>;
 			opp-hz = /bits/ 64 <1500000000>;
 		};
 
-		opp@1500000000_1150_3_6 {
+		opp@1500000000,1150,3,6 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x08 0x0040>;
 			opp-hz = /bits/ 64 <1500000000>;
 		};
 
-		opp@1500000000_1150_3_12 {
+		opp@1500000000,1150,3,12 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x08 0x1000>;
 			opp-hz = /bits/ 64 <1500000000>;
 		};
 
-		opp@1500000000_1150_3_13 {
+		opp@1500000000,1150,3,13 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x08 0x2000>;
 			opp-hz = /bits/ 64 <1500000000>;
 		};
 
-		opp@1500000000_1200 {
+		opp@1500000000,1200 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x02 0x0010>;
 			opp-hz = /bits/ 64 <1500000000>;
 		};
 
-		opp@1500000000_1237 {
+		opp@1500000000,1237 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x01 0x0010>;
 			opp-hz = /bits/ 64 <1500000000>;
 		};
 
-		opp@1600000000_1212 {
+		opp@1600000000,1212 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x10 0x3060>;
 			opp-hz = /bits/ 64 <1600000000>;
 		};
 
-		opp@1600000000_1237 {
+		opp@1600000000,1237 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x08 0x3060>;
 			opp-hz = /bits/ 64 <1600000000>;
 		};
 
-		opp@1700000000_1212 {
+		opp@1700000000,1212 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x10 0x3060>;
 			opp-hz = /bits/ 64 <1700000000>;
 		};
 
-		opp@1700000000_1237 {
+		opp@1700000000,1237 {
 			clock-latency-ns = <100000>;
 			opp-supported-hw = <0x08 0x3060>;
 			opp-hz = /bits/ 64 <1700000000>;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
