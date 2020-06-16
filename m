Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B56AF1FB393
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:08:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xhPUnC49NweMG1GaKzvElWAgpUU4dpKfvOqXZA6S/Qk=; b=G9OU+k5dkyO/Rl
	cb3Wc1EW5PAkvhFyd2bvntEmsRB7Elo6jvQL5xvSBm+AZCTlFWBpg31OctpmvLJ8wPpxcQdO3WK3y
	ce14NDRCCx2N8VqgnZFNu3uyXmItZFO4rf/W1mYN1hojv0KfUHDXxlBnc9klk8UdaLC9iIxW1YrfY
	II8gkafNlOaCA4I9EJo/eyF+BQu/FjflWTo0YJ69RJMcFC5LpgmRN5FzfBgvr8oebWsBbj8Spc17Y
	6OptakaTFllSR+htPWrMxj2YlnIMwNVwTf2BJEGFZez+cANkJ1xQ4/Ez1DMnTGZh6ZEgsG89oQr+G
	ApuRwFR82Zo7MET8v/zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCGT-0002SG-VJ; Tue, 16 Jun 2020 14:08:37 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC2o-0002CE-4o
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:54:33 +0000
Received: by mail-wm1-x342.google.com with SMTP id g10so2967338wmh.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:54:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NajKTc6UZOTHnwj5kpcLG8k3G28EX0CiI1WOh7BPcjk=;
 b=oSU1Gn+pbp9o1iK3I7SEIX8fCZyNAffmG6vqNybg5ljXloOhLOEEBtBOmSDmUHq+bB
 XyeKywLBlsfttIRULnzoB3atY6T5p9U9j0pr2p/vF275QPPdNLjczbDdegpjMkYL1FBQ
 n80RV3Wdy5iVMEv4T5vZgW/i0uO9t7gAVa8yl/kzMnZVBhL8W7DJzjsXxU1O9hFBrIzn
 ts86pXGVBdRPpI+3vTkBqv94rrNrZSM4ZouLDDhD77EIQRfLbnw+VZYU/Fim18FYu7wX
 rYf9it4uRAifCVAtss1Hbm8DYtST6gESVAFJHWeEfO7DGbfMoUYW+4KUbD7r6Fg9qwPv
 RGew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NajKTc6UZOTHnwj5kpcLG8k3G28EX0CiI1WOh7BPcjk=;
 b=bHVXeg/rWbxDTIIiBp2R0O3p8xtdrG6WXmdH4u34oIqdNUTRNQvgBJu+l0CF8XUkZm
 xK1k8nWR/scaOAflUFyuTnKXNwJE91KM9V7N94sHF1X/QBBmkHGcSBY0YK2B/jWDIswh
 iabcVIDwwF2sashnCdyV0AKC8MH1bJl4ezbx+3vgj/VwkXhC7GA+RASzLvBUM7jdQXeG
 Uhw0TgetZL87N8AB179Gn6CZGv5+6LM//67cJLFHb2WvWIvvfgH4wyKtLtcCm121Ptxi
 jQBgwLQpGdREQ24MaSaCctgkS6YisL/ZzUQvkPMXf56Fs1naYl00ZmAhpdK/r7VTBbKg
 2FTA==
X-Gm-Message-State: AOAM530Y9FxdP7gK9p8EbKBeNWUtfxOY09SEfRMuNZqC7YBIMmbaIju/
 G0emobfuZT3+qCKSeHDI0pa5QiQn
X-Google-Smtp-Source: ABdhPJwGlGGK6yGXM8vzFU8qyBieQkZ+SAi5b6vNa5TDJcIKVjUb1QkNtZa8tUqIEMDm91/KfJJtyg==
X-Received: by 2002:a1c:808d:: with SMTP id b135mr3281540wmd.94.1592315668713; 
 Tue, 16 Jun 2020 06:54:28 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id d5sm31607980wrb.14.2020.06.16.06.54.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:54:27 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 41/73] arm64: tegra: Describe interconnect paths on Tegra186
Date: Tue, 16 Jun 2020 15:52:06 +0200
Message-Id: <20200616135238.3001888-42-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065430_346470_40154224 
X-CRM114-Status: GOOD (  10.47  )
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

The interface used by clients of the memory controller can be configured
in a number of different ways. Describe this path using the interconnect
bindings to enable the configuration of these parameters.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra186.dtsi | 54 ++++++++++++++++++++++++
 1 file changed, 54 insertions(+)

diff --git a/arch/arm64/boot/dts/nvidia/tegra186.dtsi b/arch/arm64/boot/dts/nvidia/tegra186.dtsi
index 50b56168fc97..decf8de3bbe5 100644
--- a/arch/arm64/boot/dts/nvidia/tegra186.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra186.dtsi
@@ -60,6 +60,9 @@ ethernet@2490000 {
 		clock-names = "master_bus", "slave_bus", "rx", "tx", "ptp_ref";
 		resets = <&bpmp TEGRA186_RESET_EQOS>;
 		reset-names = "eqos";
+		interconnects = <&mc TEGRA186_MEMORY_CLIENT_EQOSR &emc>,
+				<&mc TEGRA186_MEMORY_CLIENT_EQOSW &emc>;
+		interconnect-names = "dma-mem", "write";
 		iommus = <&smmu TEGRA186_SID_EQOS>;
 		status = "disabled";
 
@@ -145,6 +148,7 @@ memory-controller@2c00000 {
 		interrupts = <GIC_SPI 223 IRQ_TYPE_LEVEL_HIGH>;
 		status = "disabled";
 
+		#interconnect-cells = <1>;
 		#address-cells = <2>;
 		#size-cells = <2>;
 
@@ -163,6 +167,8 @@ emc: external-memory-controller@2c60000 {
 			clocks = <&bpmp TEGRA186_CLK_EMC>;
 			clock-names = "emc";
 
+			#interconnect-cells = <0>;
+
 			nvidia,bpmp = <&bpmp>;
 		};
 	};
@@ -335,6 +341,9 @@ sdmmc1: sdhci@3400000 {
 		clock-names = "sdhci";
 		resets = <&bpmp TEGRA186_RESET_SDMMC1>;
 		reset-names = "sdhci";
+		interconnects = <&mc TEGRA186_MEMORY_CLIENT_SDMMCRA &emc>,
+				<&mc TEGRA186_MEMORY_CLIENT_SDMMCWA &emc>;
+		interconnect-names = "dma-mem", "write";
 		iommus = <&smmu TEGRA186_SID_SDMMC1>;
 		pinctrl-names = "sdmmc-3v3", "sdmmc-1v8";
 		pinctrl-0 = <&sdmmc1_3v3>;
@@ -361,6 +370,9 @@ sdmmc2: sdhci@3420000 {
 		clock-names = "sdhci";
 		resets = <&bpmp TEGRA186_RESET_SDMMC2>;
 		reset-names = "sdhci";
+		interconnects = <&mc TEGRA186_MEMORY_CLIENT_SDMMCRAA &emc>,
+				<&mc TEGRA186_MEMORY_CLIENT_SDMMCWAA &emc>;
+		interconnect-names = "dma-mem", "write";
 		iommus = <&smmu TEGRA186_SID_SDMMC2>;
 		pinctrl-names = "sdmmc-3v3", "sdmmc-1v8";
 		pinctrl-0 = <&sdmmc2_3v3>;
@@ -382,6 +394,9 @@ sdmmc3: sdhci@3440000 {
 		clock-names = "sdhci";
 		resets = <&bpmp TEGRA186_RESET_SDMMC3>;
 		reset-names = "sdhci";
+		interconnects = <&mc TEGRA186_MEMORY_CLIENT_SDMMCR &emc>,
+				<&mc TEGRA186_MEMORY_CLIENT_SDMMCW &emc>;
+		interconnect-names = "dma-mem", "write";
 		iommus = <&smmu TEGRA186_SID_SDMMC3>;
 		pinctrl-names = "sdmmc-3v3", "sdmmc-1v8";
 		pinctrl-0 = <&sdmmc3_3v3>;
@@ -408,6 +423,9 @@ sdmmc4: sdhci@3460000 {
 		assigned-clock-parents = <&bpmp TEGRA186_CLK_PLLC4_VCO>;
 		resets = <&bpmp TEGRA186_RESET_SDMMC4>;
 		reset-names = "sdhci";
+		interconnects = <&mc TEGRA186_MEMORY_CLIENT_SDMMCRAB &emc>,
+				<&mc TEGRA186_MEMORY_CLIENT_SDMMCWAB &emc>;
+		interconnect-names = "dma-mem", "write";
 		iommus = <&smmu TEGRA186_SID_SDMMC4>;
 		nvidia,pad-autocal-pull-up-offset-hs400 = <0x05>;
 		nvidia,pad-autocal-pull-down-offset-hs400 = <0x05>;
@@ -436,6 +454,9 @@ hda@3510000 {
 			 <&bpmp TEGRA186_RESET_HDA2CODEC_2X>;
 		reset-names = "hda", "hda2hdmi", "hda2codec_2x";
 		power-domains = <&bpmp TEGRA186_POWER_DOMAIN_DISP>;
+		interconnects = <&mc TEGRA186_MEMORY_CLIENT_HDAR &emc>,
+				<&mc TEGRA186_MEMORY_CLIENT_HDAW &emc>;
+		interconnect-names = "dma-mem", "write";
 		iommus = <&smmu TEGRA186_SID_HDA>;
 		status = "disabled";
 	};
@@ -564,6 +585,9 @@ usb@3530000 {
 		power-domains = <&bpmp TEGRA186_POWER_DOMAIN_XUSBC>,
 				<&bpmp TEGRA186_POWER_DOMAIN_XUSBA>;
 		power-domain-names = "xusb_host", "xusb_ss";
+		interconnects = <&mc TEGRA186_MEMORY_CLIENT_XUSB_HOSTR &emc>,
+				<&mc TEGRA186_MEMORY_CLIENT_XUSB_HOSTW &emc>;
+		interconnect-names = "dma-mem", "write";
 		iommus = <&smmu TEGRA186_SID_XUSB_HOST>;
 		#address-cells = <1>;
 		#size-cells = <0>;
@@ -786,6 +810,10 @@ pcie@10003000 {
 			 <&bpmp TEGRA186_RESET_PCIEXCLK>;
 		reset-names = "afi", "pex", "pcie_x";
 
+		interconnects = <&mc TEGRA186_MEMORY_CLIENT_AFIR &emc>,
+				<&mc TEGRA186_MEMORY_CLIENT_AFIW &emc>;
+		interconnect-names = "dma-mem", "write";
+
 		iommus = <&smmu TEGRA186_SID_AFI>;
 		iommu-map = <0x0 &smmu TEGRA186_SID_AFI 0x1000>;
 		iommu-map-mask = <0x0>;
@@ -921,6 +949,10 @@ host1x@13e00000 {
 		#size-cells = <1>;
 
 		ranges = <0x15000000 0x0 0x15000000 0x01000000>;
+
+		interconnects = <&mc TEGRA186_MEMORY_CLIENT_HOST1XDMAR &emc>;
+		interconnect-names = "dma-mem";
+
 		iommus = <&smmu TEGRA186_SID_HOST1X>;
 
 		dpaux1: dpaux@15040000 {
@@ -992,6 +1024,9 @@ display@15200000 {
 				reset-names = "dc";
 
 				power-domains = <&bpmp TEGRA186_POWER_DOMAIN_DISP>;
+				interconnects = <&mc TEGRA186_MEMORY_CLIENT_NVDISPLAYR &emc>,
+						<&mc TEGRA186_MEMORY_CLIENT_NVDISPLAYR1 &emc>;
+				interconnect-names = "dma-mem", "read-1";
 				iommus = <&smmu TEGRA186_SID_NVDISPLAY>;
 
 				nvidia,outputs = <&dsia &dsib &sor0 &sor1>;
@@ -1008,6 +1043,9 @@ display@15210000 {
 				reset-names = "dc";
 
 				power-domains = <&bpmp TEGRA186_POWER_DOMAIN_DISPB>;
+				interconnects = <&mc TEGRA186_MEMORY_CLIENT_NVDISPLAYR &emc>,
+						<&mc TEGRA186_MEMORY_CLIENT_NVDISPLAYR1 &emc>;
+				interconnect-names = "dma-mem", "read-1";
 				iommus = <&smmu TEGRA186_SID_NVDISPLAY>;
 
 				nvidia,outputs = <&dsia &dsib &sor0 &sor1>;
@@ -1024,6 +1062,9 @@ display@15220000 {
 				reset-names = "dc";
 
 				power-domains = <&bpmp TEGRA186_POWER_DOMAIN_DISPC>;
+				interconnects = <&mc TEGRA186_MEMORY_CLIENT_NVDISPLAYR &emc>,
+						<&mc TEGRA186_MEMORY_CLIENT_NVDISPLAYR1 &emc>;
+				interconnect-names = "dma-mem", "read-1";
 				iommus = <&smmu TEGRA186_SID_NVDISPLAY>;
 
 				nvidia,outputs = <&sor0 &sor1>;
@@ -1056,6 +1097,9 @@ vic@15340000 {
 			reset-names = "vic";
 
 			power-domains = <&bpmp TEGRA186_POWER_DOMAIN_VIC>;
+			interconnects = <&mc TEGRA186_MEMORY_CLIENT_VICSRD &emc>,
+					<&mc TEGRA186_MEMORY_CLIENT_VICSWR &emc>;
+			interconnect-names = "dma-mem", "write";
 			iommus = <&smmu TEGRA186_SID_VIC>;
 		};
 
@@ -1211,6 +1255,11 @@ gpu@17000000 {
 		status = "disabled";
 
 		power-domains = <&bpmp TEGRA186_POWER_DOMAIN_GPU>;
+		interconnects = <&mc TEGRA186_MEMORY_CLIENT_GPUSRD &emc>,
+				<&mc TEGRA186_MEMORY_CLIENT_GPUSWR &emc>,
+				<&mc TEGRA186_MEMORY_CLIENT_GPUSRD2 &emc>,
+				<&mc TEGRA186_MEMORY_CLIENT_GPUSWR2 &emc>;
+		interconnect-names = "dma-mem", "write-0", "read-1", "write-1";
 	};
 
 	sysram@30000000 {
@@ -1237,6 +1286,11 @@ cpu_bpmp_rx: shmem@4f000 {
 
 	bpmp: bpmp {
 		compatible = "nvidia,tegra186-bpmp";
+		interconnects = <&mc TEGRA186_MEMORY_CLIENT_BPMPR &emc>,
+				<&mc TEGRA186_MEMORY_CLIENT_BPMPW &emc>,
+				<&mc TEGRA186_MEMORY_CLIENT_BPMPDMAR &emc>,
+				<&mc TEGRA186_MEMORY_CLIENT_BPMPDMAW &emc>;
+		interconnect-names = "read", "write", "dma-mem", "dma-write";
 		iommus = <&smmu TEGRA186_SID_BPMP>;
 		mboxes = <&hsp_top0 TEGRA_HSP_MBOX_TYPE_DB
 				    TEGRA_HSP_DB_MASTER_BPMP>;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
