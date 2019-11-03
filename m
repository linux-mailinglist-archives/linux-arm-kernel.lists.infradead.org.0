Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2C04ED339
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 Nov 2019 12:54:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WokAvHpYaPiveeb2CV50mwlWz1KAs2jEi/DzY2RLdQ4=; b=XMxHEsX6XKLg9p
	mxH2Dse1y7iNfKZP43Rt3wxoCoyVgdFqptTXMzF99T3uaCujhRgcybzjl9TtG8jdZMrU2u3jBVNOH
	Znn5YDLC+AAnR8EhRLjxrJCs9VVLB9uXPKxmfcboaOCXEgXMovz0tgw84/Sl9hMhYDWU5GjzSRzGp
	Cvamh45zeWUNbyMGckJQFUUyFPPFc2vaesdyzuuWwu0v+2hMtDIA4p1JgEp94Q7KjFEC0IVUh7BMw
	VU5l0Fq5uJlFlK9j+Ev6ZvXo6h1qfPrt6V46pNrYcfzv9np3wwdgo7iijhjiYz57fqK1J/7GKinhC
	+ozQn2oPdBZsbKLa9Vrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRESs-0002yJ-MW; Sun, 03 Nov 2019 11:54:38 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRESc-0002sK-GW
 for linux-arm-kernel@lists.infradead.org; Sun, 03 Nov 2019 11:54:24 +0000
Received: by mail-wm1-x342.google.com with SMTP id c22so13210680wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 03 Nov 2019 03:54:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Wn+huXjsq7G+a2CTarlM5yhHdSRocSimZhW3JueGs1k=;
 b=KtL0Xw3KY7G2911evW37iUJTbmC5oYZSGbLSDKpTYT26D4K76w1V5W9ndnsA6tC5Qp
 jDwM+aDhuLYG/KeOSPfcZ6VOVVGI2kSBnEf0eN7LVDv1ZH8nK+KU9j/0tkyLsyexgxbS
 hFGDINxrAcQfEaxEs81cfvCwvvtzzxLqZLRSF5STdSL5tKZfLuwtwFJzkFeURUYa25L4
 SsEX9Kl2AoEeHlj9R+EzdUhsc8tGXdbjABlwQ5dOvy1fec5EIP2yaA2ABYi45Qg1RuDY
 yln9ie/Pn1renXZqimLUagRCi56xBTuWaYhKfClyPBxbsypJLYy34eaNbk0ONX+BFbdL
 LtbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Wn+huXjsq7G+a2CTarlM5yhHdSRocSimZhW3JueGs1k=;
 b=s0wE7zuq87k9rgFfmZfzadEsAmhEmuS3PqGGxHcuvYFDlPcO1JgOEsPWBpfPj2IJh6
 YT4rtchCxZ35n74YKq9fKGU4TLZ3gOoVvhy1oAOTNvMbIQg5rh+TBYxNKq/7KltjdHhB
 806Ee9fOWAyC2kOyJWuzDwM36fHN8m7wiz1StR1/3IF2J8WR3QoZSi5W0TdEZGTP0tbn
 4ru662B7EZCgDTMLh2Co+y1YOnHP2Joypjxw2zbyjaWStGqzXd9/jbGbg1d6eTsIbxRw
 jTBIVzLuwRchjLejEUV3inZmxymTqF4m3gypxefVzk+1VeevtYU2yeuoyZuWUuANsNoX
 uVEg==
X-Gm-Message-State: APjAAAUP27/6ySPMptsBcd3sgYykflXgWE4Jlswht05NOBe8CROk/Kxr
 HgZPtJmoMt4YYztyiHUmgkY=
X-Google-Smtp-Source: APXvYqxKoP3ya51zGI9IOezX9GvX4vPsx0jv/KPYe4S/QB3t3VmhvUbEz4FXGdFT5rPzP0RKqgP9QQ==
X-Received: by 2002:a1c:1b0d:: with SMTP id b13mr18848084wmb.120.1572782060642; 
 Sun, 03 Nov 2019 03:54:20 -0800 (PST)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id s10sm13819588wrr.5.2019.11.03.03.54.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 03 Nov 2019 03:54:19 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH v2 2/2] arm64: tegra: Set dma-ranges for memory subsystem
Date: Sun,  3 Nov 2019 12:54:15 +0100
Message-Id: <20191103115415.6532-2-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191103115415.6532-1-thierry.reding@gmail.com>
References: <20191103115415.6532-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_035422_545828_46F162CC 
X-CRM114-Status: GOOD (  16.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Mikko Perttunen <cyndis@kapsi.fi>,
 Arnd Bergmann <arnd@arndb.de>, Maxime Ripard <mripard@kernel.org>,
 Jon Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
 linux-tegra@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

On Tegra194, all clients of the memory subsystem can generally address
40 bits of system memory. However, bit 39 has special meaning and will
cause the memory controller to reorder sectors for block-linear buffer
formats. This is primarily useful for graphics-related devices.

Use of bit 39 must be controlled on a case-by-case basis. Buffers that
are used with bit 39 set by one device may be used with bit 39 cleared
by other devices.

Care must be taken to allocate buffers at addresses that do not require
bit 39 to be set. This is normally not an issue for system memory since
there are no Tegra-based systems with enough RAM to exhaust the 39-bit
physical address space. However, when a device is behind an IOMMU, such
as the ARM SMMU on Tegra194, the IOMMUs input address space can cause
IOVA allocations to happen in this region. This is for example the case
when an operating system implements a top-down allocation policy for IO
virtual addresses.

To account for this, describe the path that memory accesses take through
the system. Memory clients will send requests to the memory controller,
which forwards bits [38:0] of the address either to the external memory
controller or the SMMU, depending on the stream ID of the access. A good
way to describe this is using the interconnects bindings, see:

	Documentation/devicetree/bindings/interconnect/interconnect.txt

The standard "dma-mem" path is used to describe the path towards system
memory via the memory controller. A dma-ranges property in the memory
controller's device tree node limits the range of DMA addresses that the
memory clients can use to bits [38:0], ensuring that bit 39 is not used.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
Changes in v2:
- use memory client IDs instead of stream IDs (Mikko Perttunen)

 arch/arm64/boot/dts/nvidia/tegra194.dtsi | 55 +++++++++++++++++++++++-
 1 file changed, 54 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/nvidia/tegra194.dtsi b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
index 084abe2e3267..64800ad52e19 100644
--- a/arch/arm64/boot/dts/nvidia/tegra194.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
@@ -53,6 +53,9 @@
 			clock-names = "master_bus", "slave_bus", "rx", "tx", "ptp_ref";
 			resets = <&bpmp TEGRA194_RESET_EQOS>;
 			reset-names = "eqos";
+			interconnects = <&mc TEGRA194_MEMORY_CLIENT_EQOSR>,
+					<&mc TEGRA194_MEMORY_CLIENT_EQOSW>;
+			interconnect-names = "dma-mem";
 			iommus = <&smmu TEGRA194_SID_EQOS>;
 			status = "disabled";
 
@@ -166,10 +169,16 @@
 			};
 		};
 
-		memory-controller@2c00000 {
+		mc: memory-controller@2c00000 {
 			compatible = "nvidia,tegra194-mc";
 			reg = <0x02c00000 0xb0000>;
+			#interconnect-cells = <1>;
 			status = "disabled";
+
+			#address-cells = <2>;
+			#size-cells = <2>;
+
+			dma-ranges = <0x0 0x0 0x0 0x80 0x0>;
 		};
 
 		uarta: serial@3100000 {
@@ -416,6 +425,9 @@
 			clock-names = "sdhci";
 			resets = <&bpmp TEGRA194_RESET_SDMMC1>;
 			reset-names = "sdhci";
+			interconnects = <&mc TEGRA194_MEMORY_CLIENT_SDMMCRA>,
+					<&mc TEGRA194_MEMORY_CLIENT_SDMMCWA>;
+			interconnect-names = "dma-mem";
 			iommus = <&smmu TEGRA194_SID_SDMMC1>;
 			nvidia,pad-autocal-pull-up-offset-3v3-timeout =
 									<0x07>;
@@ -439,6 +451,9 @@
 			clock-names = "sdhci";
 			resets = <&bpmp TEGRA194_RESET_SDMMC3>;
 			reset-names = "sdhci";
+			interconnects = <&mc TEGRA194_MEMORY_CLIENT_SDMMCR>,
+					<&mc TEGRA194_MEMORY_CLIENT_SDMMCW>;
+			interconnect-names = "dma-mem";
 			iommus = <&smmu TEGRA194_SID_SDMMC3>;
 			nvidia,pad-autocal-pull-up-offset-1v8 = <0x00>;
 			nvidia,pad-autocal-pull-down-offset-1v8 = <0x7a>;
@@ -467,6 +482,9 @@
 					  <&bpmp TEGRA194_CLK_PLLC4>;
 			resets = <&bpmp TEGRA194_RESET_SDMMC4>;
 			reset-names = "sdhci";
+			interconnects = <&mc TEGRA194_MEMORY_CLIENT_SDMMCRAB>,
+					<&mc TEGRA194_MEMORY_CLIENT_SDMMCWAB>;
+			interconnect-names = "dma-mem";
 			iommus = <&smmu TEGRA194_SID_SDMMC4>;
 			nvidia,pad-autocal-pull-up-offset-hs400 = <0x00>;
 			nvidia,pad-autocal-pull-down-offset-hs400 = <0x00>;
@@ -496,6 +514,9 @@
 				 <&bpmp TEGRA194_RESET_HDA2HDMICODEC>;
 			reset-names = "hda", "hda2codec_2x", "hda2hdmi";
 			power-domains = <&bpmp TEGRA194_POWER_DOMAIN_DISP>;
+			interconnects = <&mc TEGRA194_MEMORY_CLIENT_HDAR>,
+					<&mc TEGRA194_MEMORY_CLIENT_HDAW>;
+			interconnect-names = "dma-mem";
 			iommus = <&smmu TEGRA194_SID_HDA>;
 			status = "disabled";
 		};
@@ -831,6 +852,8 @@
 			#size-cells = <1>;
 
 			ranges = <0x15000000 0x15000000 0x01000000>;
+			interconnects = <&mc TEGRA194_MEMORY_CLIENT_HOST1XDMAR>;
+			interconnect-names = "dma-mem";
 			iommus = <&smmu TEGRA194_SID_HOST1X>;
 
 			display-hub@15200000 {
@@ -867,6 +890,9 @@
 					reset-names = "dc";
 
 					power-domains = <&bpmp TEGRA194_POWER_DOMAIN_DISP>;
+					interconnects = <&mc TEGRA194_MEMORY_CLIENT_NVDISPLAYR>,
+							<&mc TEGRA194_MEMORY_CLIENT_NVDISPLAYR1>;
+					interconnect-names = "dma-mem";
 					iommus = <&smmu TEGRA194_SID_NVDISPLAY>;
 
 					nvidia,outputs = <&sor0 &sor1 &sor2 &sor3>;
@@ -883,6 +909,9 @@
 					reset-names = "dc";
 
 					power-domains = <&bpmp TEGRA194_POWER_DOMAIN_DISPB>;
+					interconnects = <&mc TEGRA194_MEMORY_CLIENT_NVDISPLAYR>,
+							<&mc TEGRA194_MEMORY_CLIENT_NVDISPLAYR1>;
+					interconnect-names = "dma-mem";
 					iommus = <&smmu TEGRA194_SID_NVDISPLAY>;
 
 					nvidia,outputs = <&sor0 &sor1 &sor2 &sor3>;
@@ -899,6 +928,9 @@
 					reset-names = "dc";
 
 					power-domains = <&bpmp TEGRA194_POWER_DOMAIN_DISPC>;
+					interconnects = <&mc TEGRA194_MEMORY_CLIENT_NVDISPLAYR>,
+							<&mc TEGRA194_MEMORY_CLIENT_NVDISPLAYR1>;
+					interconnect-names = "dma-mem";
 					iommus = <&smmu TEGRA194_SID_NVDISPLAY>;
 
 					nvidia,outputs = <&sor0 &sor1 &sor2 &sor3>;
@@ -915,6 +947,9 @@
 					reset-names = "dc";
 
 					power-domains = <&bpmp TEGRA194_POWER_DOMAIN_DISPC>;
+					interconnects = <&mc TEGRA194_MEMORY_CLIENT_NVDISPLAYR>,
+							<&mc TEGRA194_MEMORY_CLIENT_NVDISPLAYR1>;
+					interconnect-names = "dma-mem";
 					iommus = <&smmu TEGRA194_SID_NVDISPLAY>;
 
 					nvidia,outputs = <&sor0 &sor1 &sor2 &sor3>;
@@ -1182,6 +1217,19 @@
 			status = "disabled";
 
 			power-domains = <&bpmp TEGRA194_POWER_DOMAIN_GPU>;
+			interconnects = <&mc TEGRA194_MEMORY_CLIENT_NVL1R>,
+					<&mc TEGRA194_MEMORY_CLIENT_NVL1RHP>,
+					<&mc TEGRA194_MEMORY_CLIENT_NVL1W>,
+					<&mc TEGRA194_MEMORY_CLIENT_NVL2R>,
+					<&mc TEGRA194_MEMORY_CLIENT_NVL2RHP>,
+					<&mc TEGRA194_MEMORY_CLIENT_NVL2W>,
+					<&mc TEGRA194_MEMORY_CLIENT_NVL3R>,
+					<&mc TEGRA194_MEMORY_CLIENT_NVL3RHP>,
+					<&mc TEGRA194_MEMORY_CLIENT_NVL3W>,
+					<&mc TEGRA194_MEMORY_CLIENT_NVL4R>,
+					<&mc TEGRA194_MEMORY_CLIENT_NVL4RHP>,
+					<&mc TEGRA194_MEMORY_CLIENT_NVL4W>;
+			interconnect-names = "dma-mem";
 			iommus = <&smmu TEGRA194_SID_GPU>;
 		};
 	};
@@ -1567,6 +1615,11 @@
 		#clock-cells = <1>;
 		#reset-cells = <1>;
 		#power-domain-cells = <1>;
+		interconnects = <&mc TEGRA194_MEMORY_CLIENT_BPMPR>,
+				<&mc TEGRA194_MEMORY_CLIENT_BPMPW>,
+				<&mc TEGRA194_MEMORY_CLIENT_BPMPDMAR>,
+				<&mc TEGRA194_MEMORY_CLIENT_BPMPDMAW>;
+		interconnect-names = "dma-mem";
 		iommus = <&smmu TEGRA194_SID_BPMP>;
 
 		bpmp_i2c: i2c {
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
