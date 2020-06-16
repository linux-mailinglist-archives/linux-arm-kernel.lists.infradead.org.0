Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0906E1FB336
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:01:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L1DHYlh7viAMcLCGspZEJSqwkrIVzGA1VWLcDapnoRs=; b=QIuhqTwTTL6Faq
	hXKEqCLlXSw9B+RXqmSZfIfva4SmNkPKM3QXy8Tt7SJ1ZHXx31mN0iqSPY/ENJQj1Z9VDbWuW7miG
	CzqfGKB2DXeQA+LEv11G9YDDVZqgA5F3MIZhqLzJWAIH7TgAjn5VosaihB6ujrWjRurbBA9Q8yExo
	ztkuV4e6ouir5WIlwof6wRM+zGp3Donl3ckL4BEpiVsfOtQBa+jfMh1f+mFpYOkj2wiVAXIPC6a2p
	j9+dV+yXRp+VI/I1LgxME1AvBMSbRnSjlE4vDpheeDYqfQVYlp+Di8V0kQAp51SYshgXdxhf/ILJC
	YkFmmxrQD9cBRy0qrgsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlC9I-0002SL-AC; Tue, 16 Jun 2020 14:01:12 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC1n-0001WD-04
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:53:32 +0000
Received: by mail-wr1-x434.google.com with SMTP id e1so20904716wrt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:53:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VM2Uwlxmoyqxqf++qM2jVkcD2n9DPZyWR9dCi4gsAdw=;
 b=QAn1YfzVPxQVb/ExSyLi53MVIDGtqXBgkOsCVDPNyK4aZa0lWfgewDZjsGJGdrks6x
 8psTIlK8eleaX6r8kKePDhjcQmsogwxs/i3H0rZDQbWOZjOF0dCF49LUQpWL5d+rstzL
 rxvGHnc1pm6Vy6adAIMaToXZ/gEkBGT1K4JLxjkD0tyqOEF5RMITJmzC1ByW2xgJEJLO
 5w0ft88PlnqlQKh9+MJTJ87YRQ89WDioM4brucOEau3UnfS5Ce8bcpidhAPLQ3t7lTXE
 Mq6m9QGz+hUf9LLrdJDniHzhYMQAKDfftu+TKlg1jvKokjh/UP3ITkoZ8Vw5ueExPHJn
 VVXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VM2Uwlxmoyqxqf++qM2jVkcD2n9DPZyWR9dCi4gsAdw=;
 b=hkeir6OIBL16iJPcoJjpGrTx5IA9JiQp7p1ffBpf7oVzhusdot+YkPkJlofmRUvJMn
 kBBcEkhcTTgc+Lr8TW63lvuaL04EXdFjA0JlN/XLhgzUuTxw9DEaLyhg5dkcz+huoe6v
 V7IDtIQciBqXvMqBO6O4Ne46AuqhyJXb1anuH6/YRg1AFvWxBSO/UwlNKs+92pzzeZ7O
 f/iY36ByiFfx1KA2nQEL9PkthBrjXBkmCTBamgi9Xw2i7AGAIKGlMi3c46ciisML3uVC
 tSrxGxtpUTBN3mkM+3PPtcONBNtx1oyIZLlH/Ne4puL3eLLO3HOMXR73X6T9YBr5InLt
 IM/Q==
X-Gm-Message-State: AOAM530rMza6z2cn/9xh7OrmLw4Ljb4q7HYJtyv3BjtepNERaD9JOThK
 8I10CfAUf/aRPfxaJfUtUhk=
X-Google-Smtp-Source: ABdhPJxkd5boKMHlXcRPjf4VcFJelnMCq2KbESn2B6zNccuUzABz46iN6hBbkFS3L2rweq1Pl0jF0w==
X-Received: by 2002:adf:ea11:: with SMTP id q17mr3119598wrm.75.1592315605195; 
 Tue, 16 Jun 2020 06:53:25 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id l2sm28735784wru.58.2020.06.16.06.53.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:53:24 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 17/73] ARM: tegra: Name GPIO hog nodes consistently
Date: Tue, 16 Jun 2020 15:51:42 +0200
Message-Id: <20200616135238.3001888-18-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065327_187827_1C46C9AF 
X-CRM114-Status: GOOD (  10.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:434 listed in]
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
Cc: linux-tegra@vger.kernel.org, Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

Use the common gpios- prefix for GPIO hog node names to make it clear
that they are all hogs. This helps with json-schema based validation.

Cc: Marcel Ziswiler <marcel.ziswiler@toradex.com>
Cc: Philippe Schenker <philippe.schenker@toradex.com>
Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm/boot/dts/tegra124-apalis-eval.dts      | 2 +-
 arch/arm/boot/dts/tegra124-apalis-v1.2-eval.dts | 2 +-
 arch/arm/boot/dts/tegra124-apalis-v1.2.dtsi     | 4 ++--
 arch/arm/boot/dts/tegra124-apalis.dtsi          | 4 ++--
 arch/arm/boot/dts/tegra20-colibri.dtsi          | 6 +++---
 arch/arm/boot/dts/tegra30-apalis-eval.dts       | 2 +-
 arch/arm/boot/dts/tegra30-apalis-v1.1-eval.dts  | 2 +-
 arch/arm/boot/dts/tegra30-colibri.dtsi          | 2 +-
 8 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/arch/arm/boot/dts/tegra124-apalis-eval.dts b/arch/arm/boot/dts/tegra124-apalis-eval.dts
index 28c29b6813a7..89fafa39aa2a 100644
--- a/arch/arm/boot/dts/tegra124-apalis-eval.dts
+++ b/arch/arm/boot/dts/tegra124-apalis-eval.dts
@@ -246,7 +246,7 @@ reg_usbh_vbus: regulator-usbh-vbus {
 
 &gpio {
 	/* Apalis GPIO7 MXM3 pin 15 PLX PEX 8605 PCIe Switch Reset */
-	pex-perst-n {
+	gpios-pex-perst-n {
 		gpio-hog;
 		gpios = <TEGRA_GPIO(DD, 1) GPIO_ACTIVE_HIGH>;
 		output-high;
diff --git a/arch/arm/boot/dts/tegra124-apalis-v1.2-eval.dts b/arch/arm/boot/dts/tegra124-apalis-v1.2-eval.dts
index f3afde410615..441a244ef6c1 100644
--- a/arch/arm/boot/dts/tegra124-apalis-v1.2-eval.dts
+++ b/arch/arm/boot/dts/tegra124-apalis-v1.2-eval.dts
@@ -248,7 +248,7 @@ reg_usbh_vbus: regulator-usbh-vbus {
 
 &gpio {
 	/* Apalis GPIO7 MXM3 pin 15 PLX PEX 8605 PCIe Switch Reset */
-	pex-perst-n {
+	gpios-pex-perst-n {
 		gpio-hog;
 		gpios = <TEGRA_GPIO(DD, 1) GPIO_ACTIVE_HIGH>;
 		output-high;
diff --git a/arch/arm/boot/dts/tegra124-apalis-v1.2.dtsi b/arch/arm/boot/dts/tegra124-apalis-v1.2.dtsi
index 0d6890af457e..eb5f4ad0fe71 100644
--- a/arch/arm/boot/dts/tegra124-apalis-v1.2.dtsi
+++ b/arch/arm/boot/dts/tegra124-apalis-v1.2.dtsi
@@ -2048,7 +2048,7 @@ gpu-shutdown-trip {
 
 &gpio {
 	/* I210 Gigabit Ethernet Controller Reset */
-	lan-reset-n {
+	gpios-lan-reset-n {
 		gpio-hog;
 		gpios = <TEGRA_GPIO(S, 2) GPIO_ACTIVE_HIGH>;
 		output-high;
@@ -2056,7 +2056,7 @@ lan-reset-n {
 	};
 
 	/* Control MXM3 pin 26 Reset Module Output Carrier Input */
-	reset-moci-ctrl {
+	gpios-reset-moci-ctrl {
 		gpio-hog;
 		gpios = <TEGRA_GPIO(U, 4) GPIO_ACTIVE_HIGH>;
 		output-high;
diff --git a/arch/arm/boot/dts/tegra124-apalis.dtsi b/arch/arm/boot/dts/tegra124-apalis.dtsi
index 8857a11332c2..64a18b525378 100644
--- a/arch/arm/boot/dts/tegra124-apalis.dtsi
+++ b/arch/arm/boot/dts/tegra124-apalis.dtsi
@@ -2040,7 +2040,7 @@ gpu-shutdown-trip {
 
 &gpio {
 	/* I210 Gigabit Ethernet Controller Reset */
-	lan-reset-n {
+	gpios-lan-reset-n {
 		gpio-hog;
 		gpios = <TEGRA_GPIO(S, 2) GPIO_ACTIVE_HIGH>;
 		output-high;
@@ -2048,7 +2048,7 @@ lan-reset-n {
 	};
 
 	/* Control MXM3 pin 26 Reset Module Output Carrier Input */
-	reset-moci-ctrl {
+	gpios-reset-moci-ctrl {
 		gpio-hog;
 		gpios = <TEGRA_GPIO(U, 4) GPIO_ACTIVE_HIGH>;
 		output-high;
diff --git a/arch/arm/boot/dts/tegra20-colibri.dtsi b/arch/arm/boot/dts/tegra20-colibri.dtsi
index 6162d193e12c..90f317117298 100644
--- a/arch/arm/boot/dts/tegra20-colibri.dtsi
+++ b/arch/arm/boot/dts/tegra20-colibri.dtsi
@@ -743,7 +743,7 @@ sound {
 };
 
 &gpio {
-	lan-reset-n {
+	gpios-lan-reset-n {
 		gpio-hog;
 		gpios = <TEGRA_GPIO(V, 4) GPIO_ACTIVE_HIGH>;
 		output-high;
@@ -751,7 +751,7 @@ lan-reset-n {
 	};
 
 	/* Tri-stating GMI_WR_N on SODIMM pin 99 nPWE */
-	npwe {
+	gpios-npwe {
 		gpio-hog;
 		gpios = <TEGRA_GPIO(T, 5) GPIO_ACTIVE_HIGH>;
 		output-high;
@@ -759,7 +759,7 @@ npwe {
 	};
 
 	/* Not tri-stating GMI_WR_N on SODIMM pin 93 RDnWR */
-	rdnwr {
+	gpios-rdnwr {
 		gpio-hog;
 		gpios = <TEGRA_GPIO(T, 6) GPIO_ACTIVE_HIGH>;
 		output-low;
diff --git a/arch/arm/boot/dts/tegra30-apalis-eval.dts b/arch/arm/boot/dts/tegra30-apalis-eval.dts
index 9f653ef41da4..01b2a9db77c8 100644
--- a/arch/arm/boot/dts/tegra30-apalis-eval.dts
+++ b/arch/arm/boot/dts/tegra30-apalis-eval.dts
@@ -239,7 +239,7 @@ reg_usbh_vbus: regulator-usbh-vbus {
 
 &gpio {
 	/* Apalis GPIO7 MXM3 pin 15 PLX PEX 8605 PCIe Switch Reset */
-	pex-perst-n {
+	gpios-pex-perst-n {
 		gpio-hog;
 		gpios = <TEGRA_GPIO(S, 7) GPIO_ACTIVE_HIGH>;
 		output-high;
diff --git a/arch/arm/boot/dts/tegra30-apalis-v1.1-eval.dts b/arch/arm/boot/dts/tegra30-apalis-v1.1-eval.dts
index dc633e529822..d5a244351137 100644
--- a/arch/arm/boot/dts/tegra30-apalis-v1.1-eval.dts
+++ b/arch/arm/boot/dts/tegra30-apalis-v1.1-eval.dts
@@ -257,7 +257,7 @@ reg_vddio_sdmmc3: regulator-vddio-sdmmc3 {
 
 &gpio {
 	/* Apalis GPIO7 MXM3 pin 15 PLX PEX 8605 PCIe Switch Reset */
-	pex-perst-n {
+	gpios-pex-perst-n {
 		gpio-hog;
 		gpios = <TEGRA_GPIO(S, 7) GPIO_ACTIVE_HIGH>;
 		output-high;
diff --git a/arch/arm/boot/dts/tegra30-colibri.dtsi b/arch/arm/boot/dts/tegra30-colibri.dtsi
index 933087ee45a8..c209020e13fd 100644
--- a/arch/arm/boot/dts/tegra30-colibri.dtsi
+++ b/arch/arm/boot/dts/tegra30-colibri.dtsi
@@ -1043,7 +1043,7 @@ sound {
 };
 
 &gpio {
-	lan-reset-n {
+	gpios-lan-reset-n {
 		gpio-hog;
 		gpios = <TEGRA_GPIO(DD, 0) GPIO_ACTIVE_HIGH>;
 		output-high;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
