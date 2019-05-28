Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ED702D1E1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 01:02:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VhP96SAqCrLWyyHebbgBb2MAhY4jmZpb8I1IXBsPDko=; b=uF/XltDETmluoui+U/46tEIZEr
	e4ID36tPppjG9Uz2s+/k8p5i+DhE3KEHLkQLGTLCZRLSiGnC2sqOYp0R8wUTqupGjJmsvmtpFtc6Z
	KyGz16jMxxy3C6gyTbk/Js87XmeXZg+cvOHSpWTkSAyn4aE74HVuARdpv2yOPy5C/WpAyN5ejnu9O
	FEhfEJWNGo0Uvmc1zKIZDoUCKfWpCRDh7pNyy4iiZHiwavZY210ugQhBQElubn5avtB1dfAJK5R7X
	SJlras5ld7sr/24eV1jNHYCbiI74kFY1N+j6YX1pbixc4/kzdGOvKRYkIMgkQ43IwcKVhOL/civPJ
	Y96Ri5zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVl7O-0001I3-Uo; Tue, 28 May 2019 23:02:54 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVl6k-0000ed-Lz
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 23:02:19 +0000
Received: by mail-pg1-x541.google.com with SMTP id t1so112486pgc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 16:02:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=DiNorqXWgoDbfgP/oEKyzpDwUhueYSzO5ddWgL3qZc0=;
 b=tihjiVu6azC/bBIP8aC4nnh34lp68t+9yZ67YgfV+qfTeuSQ0Ug/zIefYv1k8dM+N+
 nwggC0P9xHpGBBDMt4ntfXDQVblOA6KVb9YyZ2aPqZf5Lw9j5SwwbqtDIOsT2iJ2vXBl
 JwXGNyjGF5DJiBSs69UK8iy55ek8cUO3ID333MxJzm8KvUI6S9imRH72NNIU4yfPXwFe
 kPzZOcnuyZ1KHsQeO6tjzNCJOh9540seNX9URpAohk9lW1zNLwNoHWGG8/rvdmA4H3UM
 wLrcRT93as7OwQ8Q66IJJXoQb14EJR8a4tAXDF2Q910WXnPfR59JxM6NOln+sp36zNOJ
 5wMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=DiNorqXWgoDbfgP/oEKyzpDwUhueYSzO5ddWgL3qZc0=;
 b=oFMktj7uhBa5+cjWNBnCUw11G7llHmZRJlF5KmE15B0IbL3Wykop0/O6F2rvJsKTLq
 MOc49ikdSffB0WkR7I583hNdO/1e/DwzhZYDqxCKBszTKH86fHIqZtw507pdBWUJtCPB
 166RbomjuiSM6KQ6ZqxSyPF54txT3yGOd99I0somqWqCtJ0C3Q2ioswevWihCl78cEHF
 Zcg2FAIZC2pyxUl1MuMAc/6l0dOGlLLYFcX9xgVocYB0DmJkZmEQLrwRKMGx1U+fb3I9
 V3E1OrL3BBPL4Lom4bnb3ryoZeketFoUXManp/m1pdKaxv/dTI7j+uq3xaAI5TNcSNc8
 LlWQ==
X-Gm-Message-State: APjAAAVxvaODretzfsxu6PWdDaSfL/8LLpmVgW40hzcJx+3Tvl7VBsH7
 VORyUioTFXEpeqUqB/EEP+drdsvP
X-Google-Smtp-Source: APXvYqwUDmK4KFQKcKJs4ycOJWZOGU/ulR86m3hzfITLJW7LiN1cuKIInu67ZZHWBcCmXpIzoD9c3g==
X-Received: by 2002:a17:90a:37c2:: with SMTP id
 v60mr1569862pjb.24.1559084533477; 
 Tue, 28 May 2019 16:02:13 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id j13sm14369573pfh.13.2019.05.28.16.02.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 May 2019 16:02:12 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/7] ARM: dts: bcm-mobile: Fix most DTC W=1 warnings
Date: Tue, 28 May 2019 16:01:30 -0700
Message-Id: <20190528230134.27007-4-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190528230134.27007-1-f.fainelli@gmail.com>
References: <20190528230134.27007-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_160214_963813_B0B32DCC 
X-CRM114-Status: GOOD (  15.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>,
 open list <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM IPROC ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>, Gregory Fong <gregory.0xf0@gmail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Brian Norris <computersforpeace@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix the bulk of the unit_address_vs_reg warnings and unnecessary
\#address-cells/#size-cells without "ranges" or child "reg" property

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 arch/arm/boot/dts/bcm11351.dtsi        | 12 ++++++------
 arch/arm/boot/dts/bcm21664-garnet.dts  |  2 +-
 arch/arm/boot/dts/bcm21664.dtsi        | 10 +++++-----
 arch/arm/boot/dts/bcm23550-sparrow.dts |  2 +-
 arch/arm/boot/dts/bcm23550.dtsi        |  8 ++++----
 arch/arm/boot/dts/bcm28155-ap.dts      |  2 +-
 6 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/arch/arm/boot/dts/bcm11351.dtsi b/arch/arm/boot/dts/bcm11351.dtsi
index b99c2e579622..6197e7d80e3b 100644
--- a/arch/arm/boot/dts/bcm11351.dtsi
+++ b/arch/arm/boot/dts/bcm11351.dtsi
@@ -100,7 +100,7 @@
 		reg-io-width = <4>;
 	};
 
-	L2: l2-cache {
+	L2: l2-cache@3ff20000 {
 		compatible = "brcm,bcm11351-a2-pl310-cache";
 		reg = <0x3ff20000 0x1000>;
 		cache-unified;
@@ -225,21 +225,21 @@
 		#size-cells = <1>;
 		ranges;
 
-		root_ccu: root_ccu {
+		root_ccu: root_ccu@35001000 {
 			compatible = "brcm,bcm11351-root-ccu";
 			reg = <0x35001000 0x0f00>;
 			#clock-cells = <1>;
 			clock-output-names = "frac_1m";
 		};
 
-		hub_ccu: hub_ccu {
+		hub_ccu: hub_ccu@34000000 {
 			compatible = "brcm,bcm11351-hub-ccu";
 			reg = <0x34000000 0x0f00>;
 			#clock-cells = <1>;
 			clock-output-names = "tmon_1m";
 		};
 
-		aon_ccu: aon_ccu {
+		aon_ccu: aon_ccu@35002000 {
 			compatible = "brcm,bcm11351-aon-ccu";
 			reg = <0x35002000 0x0f00>;
 			#clock-cells = <1>;
@@ -248,7 +248,7 @@
 					     "pmu_bsc_var";
 		};
 
-		master_ccu: master_ccu {
+		master_ccu: master_ccu@3f001000 {
 			compatible = "brcm,bcm11351-master-ccu";
 			reg = <0x3f001000 0x0f00>;
 			#clock-cells = <1>;
@@ -261,7 +261,7 @@
 					     "hsic2_12m";
 		};
 
-		slave_ccu: slave_ccu {
+		slave_ccu: slave_ccu@3e011000 {
 			compatible = "brcm,bcm11351-slave-ccu";
 			reg = <0x3e011000 0x0f00>;
 			#clock-cells = <1>;
diff --git a/arch/arm/boot/dts/bcm21664-garnet.dts b/arch/arm/boot/dts/bcm21664-garnet.dts
index 8b045cfab64b..be468f4adc37 100644
--- a/arch/arm/boot/dts/bcm21664-garnet.dts
+++ b/arch/arm/boot/dts/bcm21664-garnet.dts
@@ -21,7 +21,7 @@
 	model = "BCM21664 Garnet board";
 	compatible = "brcm,bcm21664-garnet", "brcm,bcm21664";
 
-	memory {
+	memory@80000000 {
 		device_type = "memory";
 		reg = <0x80000000 0x40000000>; /* 1 GB */
 	};
diff --git a/arch/arm/boot/dts/bcm21664.dtsi b/arch/arm/boot/dts/bcm21664.dtsi
index 758daa334148..3cf66faf3b56 100644
--- a/arch/arm/boot/dts/bcm21664.dtsi
+++ b/arch/arm/boot/dts/bcm21664.dtsi
@@ -90,7 +90,7 @@
 		reg-io-width = <4>;
 	};
 
-	L2: l2-cache {
+	L2: l2-cache@3ff20000 {
 		compatible = "arm,pl310-cache";
 		reg = <0x3ff20000 0x1000>;
 		cache-unified;
@@ -295,21 +295,21 @@
 			clock-frequency = <156000000>;
 		};
 
-		root_ccu: root_ccu {
+		root_ccu: root_ccu@35001000 {
 			compatible = BCM21664_DT_ROOT_CCU_COMPAT;
 			reg = <0x35001000 0x0f00>;
 			#clock-cells = <1>;
 			clock-output-names = "frac_1m";
 		};
 
-		aon_ccu: aon_ccu {
+		aon_ccu: aon_ccu@35002000 {
 			compatible = BCM21664_DT_AON_CCU_COMPAT;
 			reg = <0x35002000 0x0f00>;
 			#clock-cells = <1>;
 			clock-output-names = "hub_timer";
 		};
 
-		master_ccu: master_ccu {
+		master_ccu: master_ccu@3f001000 {
 			compatible = BCM21664_DT_MASTER_CCU_COMPAT;
 			reg = <0x3f001000 0x0f00>;
 			#clock-cells = <1>;
@@ -323,7 +323,7 @@
 					     "sdio4_sleep";
 		};
 
-		slave_ccu: slave_ccu {
+		slave_ccu: slave_ccu@3e011000 {
 			compatible = BCM21664_DT_SLAVE_CCU_COMPAT;
 			reg = <0x3e011000 0x0f00>;
 			#clock-cells = <1>;
diff --git a/arch/arm/boot/dts/bcm23550-sparrow.dts b/arch/arm/boot/dts/bcm23550-sparrow.dts
index 1c66b15f3013..ace77709f468 100644
--- a/arch/arm/boot/dts/bcm23550-sparrow.dts
+++ b/arch/arm/boot/dts/bcm23550-sparrow.dts
@@ -45,7 +45,7 @@
 		bootargs = "console=ttyS0,115200n8";
 	};
 
-	memory {
+	memory@80000000 {
 		device_type = "memory";
 		reg = <0x80000000 0x20000000>; /* 512 MB */
 	};
diff --git a/arch/arm/boot/dts/bcm23550.dtsi b/arch/arm/boot/dts/bcm23550.dtsi
index 701198f5f498..a36c9b1d23c8 100644
--- a/arch/arm/boot/dts/bcm23550.dtsi
+++ b/arch/arm/boot/dts/bcm23550.dtsi
@@ -371,21 +371,21 @@
 			clock-frequency = <156000000>;
 		};
 
-		root_ccu: root_ccu {
+		root_ccu: root_ccu@35001000 {
 			compatible = BCM21664_DT_ROOT_CCU_COMPAT;
 			reg = <0x35001000 0x0f00>;
 			#clock-cells = <1>;
 			clock-output-names = "frac_1m";
 		};
 
-		aon_ccu: aon_ccu {
+		aon_ccu: aon_ccu@35002000 {
 			compatible = BCM21664_DT_AON_CCU_COMPAT;
 			reg = <0x35002000 0x0f00>;
 			#clock-cells = <1>;
 			clock-output-names = "hub_timer";
 		};
 
-		slave_ccu: slave_ccu {
+		slave_ccu: slave_ccu@3e011000 {
 			compatible = BCM21664_DT_SLAVE_CCU_COMPAT;
 			reg = <0x3e011000 0x0f00>;
 			#clock-cells = <1>;
@@ -398,7 +398,7 @@
 					     "bsc4";
 		};
 
-		master_ccu: master_ccu {
+		master_ccu: master_ccu@3f001000 {
 			compatible = BCM21664_DT_MASTER_CCU_COMPAT;
 			reg = <0x3f001000 0x0f00>;
 			#clock-cells = <1>;
diff --git a/arch/arm/boot/dts/bcm28155-ap.dts b/arch/arm/boot/dts/bcm28155-ap.dts
index fbfca83bd28f..ead6e9804dbf 100644
--- a/arch/arm/boot/dts/bcm28155-ap.dts
+++ b/arch/arm/boot/dts/bcm28155-ap.dts
@@ -21,7 +21,7 @@
 	model = "BCM28155 AP board";
 	compatible = "brcm,bcm28155-ap", "brcm,bcm11351";
 
-	memory {
+	memory@80000000 {
 		device_type = "memory";
 		reg = <0x80000000 0x40000000>; /* 1 GB */
 	};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
