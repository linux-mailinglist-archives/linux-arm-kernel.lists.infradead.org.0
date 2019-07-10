Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 172A764158
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 08:26:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U4zNJ7ogkAKjxJpaIrMMEE24zXxW5wcibvTFK8BMQTs=; b=UWTlD5VRJ1wGhe
	1Q66D1fFPAlA4f+/3Sn14wL7yNBnxsx+VVvrX1zcjHJ2SlS0YhwFCm+FNnEchEo9zBRK2fpRAGSig
	Fg+VQ/zwglSIkQ/s4rc3a7MDUZ2bp0LkoLZDGrf5NuYox5cql3mDoCx+QVszXmHrsX73qpy2gccyM
	77y4l7Eo1jmGqiKL7keGWmk7lluVG3Hlj6gWfBGW3eB3YQp7p9gPejIzD+MCSBu3+eaQIJ0VzxiNn
	BXyvd9OrZ6fkn87dkUDFQDDOCgsfyWubR4Zk307Vdspk9DAcj4iPwp6rMVYyt8TTFTlxew9jVUbR+
	F9wBtNrfqA+/AWQpu9SA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl63I-0006hb-Gm; Wed, 10 Jul 2019 06:26:04 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl61e-0004QZ-LW
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 06:24:24 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d2584910000>; Tue, 09 Jul 2019 23:24:17 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Tue, 09 Jul 2019 23:24:22 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Tue, 09 Jul 2019 23:24:22 -0700
Received: from HQMAIL111.nvidia.com (172.20.187.18) by HQMAIL106.nvidia.com
 (172.18.146.12) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 10 Jul
 2019 06:24:22 +0000
Received: from HQMAIL104.nvidia.com (172.18.146.11) by HQMAIL111.nvidia.com
 (172.20.187.18) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 10 Jul
 2019 06:24:21 +0000
Received: from hqnvemgw02.nvidia.com (172.16.227.111) by HQMAIL104.nvidia.com
 (172.18.146.11) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via
 Frontend Transport; Wed, 10 Jul 2019 06:24:21 +0000
Received: from vidyas-desktop.nvidia.com (Not Verified[10.24.37.38]) by
 hqnvemgw02.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5d2584900000>; Tue, 09 Jul 2019 23:24:21 -0700
From: Vidya Sagar <vidyas@nvidia.com>
To: <lorenzo.pieralisi@arm.com>, <bhelgaas@google.com>, <robh+dt@kernel.org>, 
 <mark.rutland@arm.com>, <thierry.reding@gmail.com>, <jonathanh@nvidia.com>,
 <kishon@ti.com>, <catalin.marinas@arm.com>, <will.deacon@arm.com>,
 <jingoohan1@gmail.com>, <gustavo.pimentel@synopsys.com>
Subject: [PATCH V13 10/12] dt-bindings: PHY: P2U: Add Tegra194 P2U block
Date: Wed, 10 Jul 2019 11:52:10 +0530
Message-ID: <20190710062212.1745-11-vidyas@nvidia.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190710062212.1745-1-vidyas@nvidia.com>
References: <20190710062212.1745-1-vidyas@nvidia.com>
X-NVConfidentiality: public
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1562739857; bh=dywpvl7IO+l773kPWfHi2XZgVs31BhWTwqSrwo/wJEw=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 In-Reply-To:References:X-NVConfidentiality:MIME-Version:
 Content-Type;
 b=Dt/ChCzkES66cEayHgVeG6hiLsZL5FQYU9gH49nEs1UoZpSoA8wOWqoWD0m0E49C3
 OmaKWOtzNCSmGd+T498cf9PDeQ58Dmuf3VVOUhHL31IQ4A3ljiYvp1P3J4KkhOMFWB
 mnlGj401ga6fF+Wj+q8jlxeX3YTpaBiwczTBWVIUbto9rqzN5AxUtEDfhUITzN5nTx
 V56Ajfd4ZRLkKSnZF83g1jXuIa7TY7o9LS5OVsf4qK33o7Pz5VhY7jrcIkNxdAkaoL
 J5FMUMFqDGcp6dA/BLF7STAKS4bExi946fji5kWs3luUAoCpkwfaH9ULRIjcBEnKmp
 aV1ke07O0jvzA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_232422_801001_274A08E4 
X-CRM114-Status: GOOD (  11.13  )
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
Cc: devicetree@vger.kernel.org, mmaddireddy@nvidia.com, kthota@nvidia.com,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, mperttunen@nvidia.com,
 linux-tegra@vger.kernel.org, digetx@gmail.com, vidyas@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for Tegra194 P2U (PIPE to UPHY) module block which is a glue
module instantiated one for each PCIe lane between Synopsys DesignWare core
based PCIe IP and Universal PHY block.

Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Acked-by: Thierry Reding <treding@nvidia.com>
Acked-by: Kishon Vijay Abraham I <kishon@ti.com>
---
V13:
* None

V12:
* None

V11:
* None

V10:
* None

V9:
* None

V8:
* None

V7:
* None

V6:
* Added Sob
* Changed node name from "p2u@xxxxxxxx" to "phy@xxxxxxxx"

V5:
* None

V4:
* None

V3:
* Changed node label to reflect new format that includes either 'hsio' or
  'nvhs' in its name to reflect which UPHY brick they belong to

V2:
* This is a new patch in v2 series

 .../bindings/phy/phy-tegra194-p2u.txt         | 28 +++++++++++++++++++
 1 file changed, 28 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/phy-tegra194-p2u.txt

diff --git a/Documentation/devicetree/bindings/phy/phy-tegra194-p2u.txt b/Documentation/devicetree/bindings/phy/phy-tegra194-p2u.txt
new file mode 100644
index 000000000000..d23ff90baad5
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/phy-tegra194-p2u.txt
@@ -0,0 +1,28 @@
+NVIDIA Tegra194 P2U binding
+
+Tegra194 has two PHY bricks namely HSIO (High Speed IO) and NVHS (NVIDIA High
+Speed) each interfacing with 12 and 8 P2U instances respectively.
+A P2U instance is a glue logic between Synopsys DesignWare Core PCIe IP's PIPE
+interface and PHY of HSIO/NVHS bricks. Each P2U instance represents one PCIe
+lane.
+
+Required properties:
+- compatible: For Tegra19x, must contain "nvidia,tegra194-p2u".
+- reg: Should be the physical address space and length of respective each P2U
+       instance.
+- reg-names: Must include the entry "ctl".
+
+Required properties for PHY port node:
+- #phy-cells: Defined by generic PHY bindings.  Must be 0.
+
+Refer to phy/phy-bindings.txt for the generic PHY binding properties.
+
+Example:
+
+p2u_hsio_0: phy@3e10000 {
+	compatible = "nvidia,tegra194-p2u";
+	reg = <0x03e10000 0x10000>;
+	reg-names = "ctl";
+
+	#phy-cells = <0>;
+};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
