Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A54B716BB89
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 09:10:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HePYJuQ0a4VQg7b0hhjwmsDh9zaYff0a5MtLK0vmYSw=; b=mnJf4BwmZKH580
	nxhoZG59dtcsV1VANXJOMqMOyVodxYMk/PvuVAhs7KzA3JJJN0SXvPs8icHrXbLdzfHR47t21vRLi
	qGm/HA34jBh4pjZAfrwirtVfPO0rKXSNIc9R+dDiddmYm0Rd4ylGBIR0ABgn3jnNxL/3We/Rgg2MI
	kuJK6QhPUMhVNdIbJEISb23Rz+RDjlsIBeiPZ1nqWdslaP/D1kYd/PM0xyU43kuVoV99sYSe6fHkg
	m16EbwTP5nKIFkyZyeVPLK6Iz7pfjac6RfR3JQiCHkizJp+W+g5na8gfl9imD/Wd84/0U6poxK6ww
	vXghhrnEG9mrgWlzyGww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6VHz-00073E-Bu; Tue, 25 Feb 2020 08:09:59 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6VHn-00071z-5O
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 08:09:51 +0000
Received: by mail-pj1-x1042.google.com with SMTP id q39so941993pjc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 00:09:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8GMndQt2LnEzHjp6exHJ3T1kYTJRoFEg9wZ1HqA6gkQ=;
 b=SekV8AVX6D+Htv0APvQ/2D+MFX2epnEwFRcP84WiMctH3PKMmMv3J7li3o6RdTIYQy
 7G+7xHWlBDJYSHCbl0SaHksode9OJULFyaTJvq+71L4aY4H8UIyLkxaNqd1w0I2huZIg
 Ghr6tkjBcWxetOGM/b7t2weEV1nrXLOgV+SQ0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8GMndQt2LnEzHjp6exHJ3T1kYTJRoFEg9wZ1HqA6gkQ=;
 b=hP6wfJJA2IL6Zu5LshT3MyTCyssm2OSKXS+nyYn+geWPQkTEbkAyRGDN15L+Jm5a3N
 Bvpo/R9+LP6EUV3jdEcKKscegGybEhojKFlVXMiTblIi5q64crAAN1sI4y5VibCImRWs
 zHs/tKwIBN1JCqgiXPwInpU6jn/7n9kHsbsGBLKdesiOSonxNKKHabsX8Y0617UCwiyQ
 13swoLbkaTX72tkdJTi4IBQ8xAllJ4I+eVRijvvaTP/q4nGShhoX3ptmlZZWL8p0ok79
 54PLWZ2v5vOwzTcdBEx3rmgLqAprA4XplFziYGrJeBLBgzEHsqiHsZD8RsUtB8IJYtp9
 a18A==
X-Gm-Message-State: APjAAAUKMCkj/or1jZXeEpPay/TOgDeGV0kWNy1DjUL91PvizHN669Gf
 ok9la1oprrgfcKhv41pzHlfI7Q==
X-Google-Smtp-Source: APXvYqyHkDcXeUanCiEXGA0ZJYMMwDV4rYcjrFNFdPbqYec8VEXM5eZDYZphfwlSJ62fbCzN6dUrFg==
X-Received: by 2002:a17:90a:5d97:: with SMTP id
 t23mr3732775pji.61.1582618186124; 
 Tue, 25 Feb 2020 00:09:46 -0800 (PST)
Received: from ikjn-p920.tpe.corp.google.com
 ([2401:fa00:1:10:254e:2b40:ef8:ee17])
 by smtp.gmail.com with ESMTPSA id c26sm16071506pfj.8.2020.02.25.00.09.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Feb 2020 00:09:45 -0800 (PST)
From: Ikjoon Jang <ikjn@chromium.org>
To: linux-mediatek@lists.infradead.org, James Liao <jamesjj.liao@mediatek.com>
Subject: [PATCH] arm64: dts: mt8183: adjust cpuidle target residency
Date: Tue, 25 Feb 2020 16:07:53 +0800
Message-Id: <20200225080752.200952-1-ikjn@chromium.org>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_000947_235983_5B09EF6C 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, drinkcat@chromium.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 hsinyi@chromium.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Ikjoon Jang <ikjn@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Split a cluster level cpuidle state into two, so mt8183 variant
boards can adjust parameters for each cluster, and reduce cluster0's
default target residency to 1000us as power measurements showed that
its minimum residency is slightly less than cluster1's 1300us.

Signed-off-by: Ikjoon Jang <ikjn@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 26 ++++++++++++++++--------
 1 file changed, 17 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index f1381e77918b..5c7dd262eaf3 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -74,7 +74,7 @@ cpu0: cpu@0 {
 			reg = <0x000>;
 			enable-method = "psci";
 			capacity-dmips-mhz = <741>;
-			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
+			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP0>;
 		};
 
 		cpu1: cpu@1 {
@@ -83,7 +83,7 @@ cpu1: cpu@1 {
 			reg = <0x001>;
 			enable-method = "psci";
 			capacity-dmips-mhz = <741>;
-			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
+			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP0>;
 		};
 
 		cpu2: cpu@2 {
@@ -92,7 +92,7 @@ cpu2: cpu@2 {
 			reg = <0x002>;
 			enable-method = "psci";
 			capacity-dmips-mhz = <741>;
-			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
+			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP0>;
 		};
 
 		cpu3: cpu@3 {
@@ -101,7 +101,7 @@ cpu3: cpu@3 {
 			reg = <0x003>;
 			enable-method = "psci";
 			capacity-dmips-mhz = <741>;
-			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
+			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP0>;
 		};
 
 		cpu4: cpu@100 {
@@ -110,7 +110,7 @@ cpu4: cpu@100 {
 			reg = <0x100>;
 			enable-method = "psci";
 			capacity-dmips-mhz = <1024>;
-			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
+			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP1>;
 		};
 
 		cpu5: cpu@101 {
@@ -119,7 +119,7 @@ cpu5: cpu@101 {
 			reg = <0x101>;
 			enable-method = "psci";
 			capacity-dmips-mhz = <1024>;
-			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
+			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP1>;
 		};
 
 		cpu6: cpu@102 {
@@ -128,7 +128,7 @@ cpu6: cpu@102 {
 			reg = <0x102>;
 			enable-method = "psci";
 			capacity-dmips-mhz = <1024>;
-			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
+			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP1>;
 		};
 
 		cpu7: cpu@103 {
@@ -137,7 +137,7 @@ cpu7: cpu@103 {
 			reg = <0x103>;
 			enable-method = "psci";
 			capacity-dmips-mhz = <1024>;
-			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
+			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP1>;
 		};
 
 		idle-states {
@@ -152,7 +152,15 @@ CPU_SLEEP: cpu-sleep {
 				min-residency-us = <800>;
 			};
 
-			CLUSTER_SLEEP: cluster-sleep {
+			CLUSTER_SLEEP0: cluster-sleep@0 {
+				compatible = "arm,idle-state";
+				local-timer-stop;
+				arm,psci-suspend-param = <0x01010001>;
+				entry-latency-us = <250>;
+				exit-latency-us = <400>;
+				min-residency-us = <1000>;
+			};
+			CLUSTER_SLEEP1: cluster-sleep@1 {
 				compatible = "arm,idle-state";
 				local-timer-stop;
 				arm,psci-suspend-param = <0x01010001>;
-- 
2.25.0.265.gbab2e86ba0-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
