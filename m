Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E105A11A26
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 15:27:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YaqQ28b5MJ7RGkXyzHsqwPOIH/3kviZ2f9nWyUoFjKI=; b=eb0TdNd9mdX+gR
	2Dxk7LGByNqpo9MQQApgvLuIbai6yhXzKdwJR52XlBLux2OFtmQHubdbiX3G6wbob/zC55FMgzFB5
	HsjzR/qc8YyOlY237IugJOF/BKoFxqsYfoA9P5f0+JkoRBqTN4jWiChM56e7rOBsOyUsH6wZLuC89
	NGk9spGRWs5kSl8X8/4L1/zLAebbdjrBVCb+2z6vTNbfxEKXFksciL9zsh87k0a0av2ap/NqyHX9m
	4MYHpRRMGmb0QRclRKpAUGsufspxjx334kk165winTnj0wGaV0zTNzoS5+LNXu5p7N5ZaiXsdCO/4
	M7cymjGEqhRcO5QHxm5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMBkV-00082y-BX; Thu, 02 May 2019 13:27:43 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMBkO-00082V-Tc
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 13:27:38 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5ccaf04e0000>; Thu, 02 May 2019 06:27:42 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Thu, 02 May 2019 06:27:35 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Thu, 02 May 2019 06:27:35 -0700
Received: from HQMAIL112.nvidia.com (172.18.146.18) by HQMAIL106.nvidia.com
 (172.18.146.12) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 2 May
 2019 13:27:35 +0000
Received: from HQMAIL106.nvidia.com (172.18.146.12) by HQMAIL112.nvidia.com
 (172.18.146.18) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 2 May
 2019 13:27:34 +0000
Received: from hqnvemgw01.nvidia.com (172.20.150.20) by HQMAIL106.nvidia.com
 (172.18.146.12) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via Frontend
 Transport; Thu, 2 May 2019 13:27:34 +0000
Received: from moonraker.nvidia.com (Not Verified[10.21.132.148]) by
 hqnvemgw01.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5ccaf0450000>; Thu, 02 May 2019 06:27:34 -0700
From: Jon Hunter <jonathanh@nvidia.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH] arm64: tegra: Fix insecure SMMU users for Tegra186
Date: Thu, 2 May 2019 14:27:21 +0100
Message-ID: <1556803641-22305-1-git-send-email-jonathanh@nvidia.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1556803662; bh=+aH9/Je9oFGA1kQ26AoBccTyj0n7RzynDWAo6IIw0uo=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 MIME-Version:Content-Type;
 b=MrrZGV6GGhCihPEZUmAQEk1/QgOXSU4J37gY/lv0pEz4teBo9ymsaMICxlLujHrxU
 e16YA4xfXy66wofgDPMHnxXkYFDu84JPnPL6Q1EZPKfxMERoV0JJbCKKsIM3NL6fuQ
 Eg7Lme76Txm4gRuzMJDHE9UdRIkm9XqSTPnn3N0N7S8ET2ibSOUdsBuF67qRkKoCI6
 NnWQA/JMCI5wjWhY4/5VMK+uHhDBTnu7P6gcIZylL36uY4nCNiZGs960x5DaHOJGU2
 ZD1D3jCa7VYK1GV0ge5MEfdbTwnEBX+eDOz78SanKQFje8vribhkfe8y3RI4MwNCkx
 CIqeC0Getfp9A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_062736_972379_6EB60837 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Will Deacon <will.deacon@arm.com>, Douglas Anderson <dianders@chromium.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
 linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jonathan Hunter <jonathanh@nvidia.com>

Commit 954a03be033c ("iommu/arm-smmu: Break insecure users by disabling
bypass by default") intentionally breaks all devices using the SMMU in
bypass mode. This is breaking various devices on Tegra186 which include
the ethernet, BPMP and HDA device. Fix this by populating the SMMU node
for these devices with their stream ID.

Fixes: 954a03be033c ("iommu/arm-smmu: Break insecure users by disabling bypass by default")

Signed-off-by: Jonathan Hunter <jonathanh@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra186.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/nvidia/tegra186.dtsi b/arch/arm64/boot/dts/nvidia/tegra186.dtsi
index f0bb6ced4976..3fb60f6f3a93 100644
--- a/arch/arm64/boot/dts/nvidia/tegra186.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra186.dtsi
@@ -60,6 +60,7 @@
 		clock-names = "master_bus", "slave_bus", "rx", "tx", "ptp_ref";
 		resets = <&bpmp TEGRA186_RESET_EQOS>;
 		reset-names = "eqos";
+		iommus = <&smmu TEGRA186_SID_EQOS>;
 		status = "disabled";
 
 		snps,write-requests = <1>;
@@ -338,6 +339,7 @@
 			 <&bpmp TEGRA186_RESET_HDA2CODEC_2X>;
 		reset-names = "hda", "hda2hdmi", "hda2codec_2x";
 		power-domains = <&bpmp TEGRA186_POWER_DOMAIN_DISP>;
+		iommus = <&smmu TEGRA186_SID_HDA>;
 		status = "disabled";
 	};
 
@@ -1158,6 +1160,7 @@
 
 	bpmp: bpmp {
 		compatible = "nvidia,tegra186-bpmp";
+		iommus = <&smmu TEGRA186_SID_BPMP>;
 		mboxes = <&hsp_top0 TEGRA_HSP_MBOX_TYPE_DB
 				    TEGRA_HSP_DB_MASTER_BPMP>;
 		shmem = <&cpu_bpmp_tx &cpu_bpmp_rx>;
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
