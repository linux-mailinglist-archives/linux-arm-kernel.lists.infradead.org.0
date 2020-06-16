Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A38511FB325
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:00:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R3zE/yqcf84omqQQ+PacV6xiMTAlbG6FkjbgYvmnUl4=; b=T+B9L9VOvRKN55
	v14KQ95i2+KqbR+tC0p2WWuz2l/NyS5drBPejX7qViemlx8bpdyzCFl9PI22Pw+q9RYBCfXCXxLK6
	F52xX3w19aKsmCefU+ybK1eKvF7yBVFkc4v29KvNnR7MXcQX2+s0GB1n2KCtKSUHJHH3jA86BqfqJ
	HfI9QMR6tO3fQq4d/CVWk9CIpCTJ0T4hEDyAkmuKZ5SctaC00cGaYrHiwTZ/TBL+IAtbNrMje1hmZ
	QhH4B+DF+iu8RI3V6SdruloEozFvFrZv3qB7i9je5dTsLLLWE80iYuwIMhxwY7F8DHx3rP9DEUAtx
	6f3zWLdcAWuh2bGGJa4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlC8L-0007wG-5Y; Tue, 16 Jun 2020 14:00:13 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC1k-0001Ua-N3
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:53:28 +0000
Received: by mail-wr1-x430.google.com with SMTP id j10so20860004wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:53:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sJr39yyI9C/ZJvW0g3qtF5zBH+JRNLr/9lqcD3hVnn4=;
 b=ge76C2STL0f+4pHYCR/B/zivH9wngVFJZySJe0vcYGTFXSEoJ8xYJ+3WqCGaVNI7f4
 Y/bVY0QaNLbAyvXip/dx0zWuaTtfUC1evAAtLHVehtCIUdzgOJoGNiohXmWvsPhssCQj
 Ig1qiw8vYOJJNXah/u2fTKkfGbkpe/b74HAcCRTRxEC9isCKYLuDy+O3PgJSu3WhnOGD
 F2148SvgkCvrKdcCB6QE1gdgEKdewPEFcpYWgeV975q0k0WXJCQc15J32KbW+mc61d3s
 +411O26aFDGS83qywohAvz+mBEgKGDx2SGHxNrewXe5TVrty9DzA4WcYLTNQc/8XoD6v
 6PlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sJr39yyI9C/ZJvW0g3qtF5zBH+JRNLr/9lqcD3hVnn4=;
 b=SAvPpKCQZcTnaGnXOCNmagw0y4ln9oXVw9KSKBiTdmGVD8tGtZ8xEW/kXR0+wrEYJd
 PQnyX/lPKXssDK5EvkEwkLAM9gfAbOKz6PqZd20ws1v2ykRptxCCirI0DSjAYzji/NL1
 umZS7dEW2nTnyhZSUFBVqQTcDyx2evBAOMqW8grgtDT3hUh6sKTyqKYc4CALiZajGvGV
 uba3tyBwPBf5jPoA71RzV3qu/zukNX3VhBQO7Tzm3U9245O3W5Fx3BsdYERzaS9RqAyZ
 RsbaQBpBMopRTRjNb2HdrcZtMmDFWEbwEAZVWtUN66pLrcnkpd5tQ1sWRli037EE9jW3
 QXUQ==
X-Gm-Message-State: AOAM531NORVvldokxkzPWsoiF43I/y+RcfMOSjz9aKmDi9+KedMGEYUt
 grwmpLlpagPG1QhWezB+jAQ6WEJX
X-Google-Smtp-Source: ABdhPJyz6TTLW931mI4EuZycjFe/csNpCf2t8SIsQf8tt0+UuVUzftCJ0kkDFugJicecoimo3nNIAA==
X-Received: by 2002:a05:6000:1289:: with SMTP id
 f9mr3276316wrx.5.1592315603164; 
 Tue, 16 Jun 2020 06:53:23 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id d5sm31603598wrb.14.2020.06.16.06.53.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:53:22 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 16/73] ARM: tegra: Add missing #sound-dai-cells property to
 codecs
Date: Tue, 16 Jun 2020 15:51:41 +0200
Message-Id: <20200616135238.3001888-17-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065324_791489_5D62B7F9 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:430 listed in]
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

Audio codecs need a #sound-dai-cells property, so add one to the audio
codecs on various Tegra-based boards that don't have one.

Cc: Marcel Ziswiler <marcel.ziswiler@toradex.com>
Cc: Philippe Schenker <philippe.schenker@toradex.com>
Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm/boot/dts/tegra124-apalis-v1.2.dtsi | 1 +
 arch/arm/boot/dts/tegra124-apalis.dtsi      | 1 +
 arch/arm/boot/dts/tegra30-apalis-v1.1.dtsi  | 1 +
 arch/arm/boot/dts/tegra30-apalis.dtsi       | 1 +
 arch/arm/boot/dts/tegra30-colibri.dtsi      | 1 +
 5 files changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/tegra124-apalis-v1.2.dtsi b/arch/arm/boot/dts/tegra124-apalis-v1.2.dtsi
index 3fdc6ff32b0c..0d6890af457e 100644
--- a/arch/arm/boot/dts/tegra124-apalis-v1.2.dtsi
+++ b/arch/arm/boot/dts/tegra124-apalis-v1.2.dtsi
@@ -1559,6 +1559,7 @@ i2c@7000d000 {
 		sgtl5000: codec@a {
 			compatible = "fsl,sgtl5000";
 			reg = <0x0a>;
+			#sound-dai-cells = <0>;
 			VDDA-supply = <&reg_module_3v3_audio>;
 			VDDD-supply = <&reg_1v8_vddio>;
 			VDDIO-supply = <&reg_1v8_vddio>;
diff --git a/arch/arm/boot/dts/tegra124-apalis.dtsi b/arch/arm/boot/dts/tegra124-apalis.dtsi
index 29ceeba1e7b1..8857a11332c2 100644
--- a/arch/arm/boot/dts/tegra124-apalis.dtsi
+++ b/arch/arm/boot/dts/tegra124-apalis.dtsi
@@ -1552,6 +1552,7 @@ i2c@7000d000 {
 		sgtl5000: codec@a {
 			compatible = "fsl,sgtl5000";
 			reg = <0x0a>;
+			#sound-dai-cells = <0>;
 			VDDA-supply = <&reg_module_3v3_audio>;
 			VDDD-supply = <&reg_1v8_vddio>;
 			VDDIO-supply = <&reg_1v8_vddio>;
diff --git a/arch/arm/boot/dts/tegra30-apalis-v1.1.dtsi b/arch/arm/boot/dts/tegra30-apalis-v1.1.dtsi
index 9421063cd86c..fdd3e4e3522b 100644
--- a/arch/arm/boot/dts/tegra30-apalis-v1.1.dtsi
+++ b/arch/arm/boot/dts/tegra30-apalis-v1.1.dtsi
@@ -855,6 +855,7 @@ i2c@7000d000 {
 		sgtl5000: codec@a {
 			compatible = "fsl,sgtl5000";
 			reg = <0x0a>;
+			#sound-dai-cells = <0>;
 			VDDA-supply = <&reg_module_3v3_audio>;
 			VDDD-supply = <&reg_1v8_vio>;
 			VDDIO-supply = <&reg_module_3v3>;
diff --git a/arch/arm/boot/dts/tegra30-apalis.dtsi b/arch/arm/boot/dts/tegra30-apalis.dtsi
index d13f6b0c7c0c..90694d1a3b0c 100644
--- a/arch/arm/boot/dts/tegra30-apalis.dtsi
+++ b/arch/arm/boot/dts/tegra30-apalis.dtsi
@@ -846,6 +846,7 @@ i2c@7000d000 {
 		sgtl5000: codec@a {
 			compatible = "fsl,sgtl5000";
 			reg = <0x0a>;
+			#sound-dai-cells = <0>;
 			VDDA-supply = <&reg_module_3v3_audio>;
 			VDDD-supply = <&reg_1v8_vio>;
 			VDDIO-supply = <&reg_module_3v3>;
diff --git a/arch/arm/boot/dts/tegra30-colibri.dtsi b/arch/arm/boot/dts/tegra30-colibri.dtsi
index a7bfe26f038d..933087ee45a8 100644
--- a/arch/arm/boot/dts/tegra30-colibri.dtsi
+++ b/arch/arm/boot/dts/tegra30-colibri.dtsi
@@ -723,6 +723,7 @@ i2c@7000d000 {
 		sgtl5000: codec@a {
 			compatible = "fsl,sgtl5000";
 			reg = <0x0a>;
+			#sound-dai-cells = <0>;
 			VDDA-supply = <&reg_module_3v3_audio>;
 			VDDD-supply = <&reg_1v8_vio>;
 			VDDIO-supply = <&reg_module_3v3>;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
