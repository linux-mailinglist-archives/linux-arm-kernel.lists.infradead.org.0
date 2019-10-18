Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5BCEDD587
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 19 Oct 2019 01:33:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xleg6nkbeH9ZsQcb4vvCvFgsLXMVxwGgrUomKqjceok=; b=Iu5Xyt+hiwBzgE
	Yld9gi9KP6MxyMe0l10VOKnvBM19RIsiv4XGNM4J18/9QUMeubnDrIT9k39Qlsdcd6rRmruX0eqzY
	JZF4SvgDqAd8/mc2jX3RYUqhD4K86zeqNJE5v1JR/RLOZC5ND88kQMEiqtsso7aZ9TP8+XJNMAuVy
	RAweyp0Cody46nclr53uH5UBYBJpqxLuw4ny4MIlXB4VudYjejHu1SUrXi0RP4Dk9btvjC9sNqZHX
	CNeq+cAYZDlNQuAUApHfgEVxWzn24bSPUlCSai2B0Z7mRAu4Nn7bKfHIrqYUGJQeUODxZfgiRuor7
	BzGtNSTlPf0ysqqpzzRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLbkT-0002IM-8n; Fri, 18 Oct 2019 23:33:33 +0000
Received: from hqemgate16.nvidia.com ([216.228.121.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLbiR-0000bL-BB
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 23:31:30 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate16.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5daa4b4e0003>; Fri, 18 Oct 2019 16:31:26 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Fri, 18 Oct 2019 16:31:23 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Fri, 18 Oct 2019 16:31:23 -0700
Received: from HQMAIL109.nvidia.com (172.20.187.15) by HQMAIL101.nvidia.com
 (172.20.187.10) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 18 Oct
 2019 23:31:23 +0000
Received: from hqnvemgw03.nvidia.com (10.124.88.68) by HQMAIL109.nvidia.com
 (172.20.187.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via Frontend
 Transport; Fri, 18 Oct 2019 23:31:23 +0000
Received: from vdumpa-ubuntu.nvidia.com (Not Verified[172.17.173.140]) by
 hqnvemgw03.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5daa4b4a000c>; Fri, 18 Oct 2019 16:31:23 -0700
From: Krishna Reddy <vdumpa@nvidia.com>
To: 
Subject: [PATCH v3 7/7] arm64: tegra: enable SMMU for SDHCI and EQOS on T194
Date: Fri, 18 Oct 2019 16:31:32 -0700
Message-ID: <1571441492-21919-8-git-send-email-vdumpa@nvidia.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1571441492-21919-1-git-send-email-vdumpa@nvidia.com>
References: <1571441492-21919-1-git-send-email-vdumpa@nvidia.com>
X-NVConfidentiality: public
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1571441486; bh=MK4nKTkYCuTB0cE4lZiJ4iSmYMFPWVXgkdIW4z/bGKU=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 In-Reply-To:References:X-NVConfidentiality:MIME-Version:
 Content-Type;
 b=HSkqgqO7zOqP3d9XwA9FV66OIwkU19u2JNMbyOZeFoFE87b8Hsxu4Hgcgy7PVZe3g
 7waCWNVQVegr+ruspdnysIrGafda1ZoXgBYIQVTN2rWvUp20CEUhQJ9M8V83+v8AwE
 +EyIyttojzNgww297qcj2LpVr+9sOgSUkmCgNviQmYUdwqPYEHW3Ek938yboLHcgA1
 GnrQbJ1SQ5o4cP/O3LJw1+SDHkTZGP3Hi8zk3trJ3pBg5wAbrt5HN6ddyMfSSR1ZvT
 3+bd5Woq4EaZNbdLYD6MPJFsmkkauaTGyaLCjFl0l07oyzz0nMLpklwTSe3jlCA5Sn
 WND5g4fMBNAPA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_163127_416115_74C0B7FB 
X-CRM114-Status: UNSURE (   8.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.65 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: snikam@nvidia.com, thomasz@nvidia.com, jtukkinen@nvidia.com,
 mperttunen@nvidia.com, will@kernel.org, joro@8bytes.org,
 linux-kernel@vger.kernel.org, praithatha@nvidia.com, talho@nvidia.com,
 olof@lixom.net, iommu@lists.linux-foundation.org, nicolinc@nvidia.com,
 linux-tegra@vger.kernel.org, yhsu@nvidia.com, treding@nvidia.com,
 robin.murphy@arm.com, avanbrunt@nvidia.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable SMMU translations for SDHCI and EQOS transactions on T194.

Signed-off-by: Krishna Reddy <vdumpa@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra194.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/nvidia/tegra194.dtsi b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
index 6f81e90..bf8ed7a 100644
--- a/arch/arm64/boot/dts/nvidia/tegra194.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
@@ -3,6 +3,7 @@
 #include <dt-bindings/gpio/tegra194-gpio.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/mailbox/tegra186-hsp.h>
+#include <dt-bindings/memory/tegra186-mc.h>
 #include <dt-bindings/pinctrl/pinctrl-tegra.h>
 #include <dt-bindings/power/tegra194-powergate.h>
 #include <dt-bindings/reset/tegra194-reset.h>
@@ -51,6 +52,7 @@
 			clock-names = "master_bus", "slave_bus", "rx", "tx", "ptp_ref";
 			resets = <&bpmp TEGRA194_RESET_EQOS>;
 			reset-names = "eqos";
+			iommus = <&smmu TEGRA186_SID_EQOS>;
 			status = "disabled";
 
 			snps,write-requests = <1>;
@@ -413,6 +415,7 @@
 			clock-names = "sdhci";
 			resets = <&bpmp TEGRA194_RESET_SDMMC1>;
 			reset-names = "sdhci";
+			iommus = <&smmu TEGRA186_SID_SDMMC1>;
 			nvidia,pad-autocal-pull-up-offset-3v3-timeout =
 									<0x07>;
 			nvidia,pad-autocal-pull-down-offset-3v3-timeout =
@@ -435,6 +438,7 @@
 			clock-names = "sdhci";
 			resets = <&bpmp TEGRA194_RESET_SDMMC3>;
 			reset-names = "sdhci";
+			iommus = <&smmu TEGRA186_SID_SDMMC3>;
 			nvidia,pad-autocal-pull-up-offset-1v8 = <0x00>;
 			nvidia,pad-autocal-pull-down-offset-1v8 = <0x7a>;
 			nvidia,pad-autocal-pull-up-offset-3v3-timeout = <0x07>;
@@ -462,6 +466,7 @@
 					  <&bpmp TEGRA194_CLK_PLLC4>;
 			resets = <&bpmp TEGRA194_RESET_SDMMC4>;
 			reset-names = "sdhci";
+			iommus = <&smmu TEGRA186_SID_SDMMC4>;
 			nvidia,pad-autocal-pull-up-offset-hs400 = <0x00>;
 			nvidia,pad-autocal-pull-down-offset-hs400 = <0x00>;
 			nvidia,pad-autocal-pull-up-offset-1v8-timeout = <0x0a>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
