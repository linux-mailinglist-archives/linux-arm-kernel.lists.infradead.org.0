Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8FD650587
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 11:19:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q377KQdCWUxaNcsmaCkmm/hW+I4ZygPWc5gRTlQ/NjA=; b=kH8ubpp6/AGKou
	eDgtfDUDvg+Q2Ju0zpzmrGdNTN7Nr9jye3QKuHpJmzChYqSx7hNf5s9OTBQJ5bABZCFqrQe8MEORn
	1n/Y6XVmwK6p6PEmgcKHxRj9vrhrtZVH9x6AF4IGBpBNIZNP+YEXWlZWcRAZmtFGwIStey4C0kGAF
	McKmDqYru+E7byw/RrghzkhkUUHjXRqd/EyLp+MvJ7l23ROnRUVC6LJgjS/RrzhXO3zLcML6lGRas
	2xHTgB1ytAjATS8zNTNqxxJMWyQ6F0lxwCR//mZ9iREaaG7+9lyOsSzwPO1xmlsVX37HVn6W9WdtY
	f70sa1sO+QdeEj8Q6qeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfL8K-000496-Ob; Mon, 24 Jun 2019 09:19:28 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfL5W-0002HY-2A
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 09:16:36 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d1094ef0000>; Mon, 24 Jun 2019 02:16:31 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Mon, 24 Jun 2019 02:16:33 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Mon, 24 Jun 2019 02:16:33 -0700
Received: from HQMAIL106.nvidia.com (172.18.146.12) by HQMAIL104.nvidia.com
 (172.18.146.11) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 24 Jun
 2019 09:16:32 +0000
Received: from hqnvemgw02.nvidia.com (172.16.227.111) by HQMAIL106.nvidia.com
 (172.18.146.12) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via
 Frontend Transport; Mon, 24 Jun 2019 09:16:32 +0000
Received: from vidyas-desktop.nvidia.com (Not Verified[10.24.37.38]) by
 hqnvemgw02.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5d1094eb0003>; Mon, 24 Jun 2019 02:16:32 -0700
From: Vidya Sagar <vidyas@nvidia.com>
To: <lorenzo.pieralisi@arm.com>, <bhelgaas@google.com>, <robh+dt@kernel.org>, 
 <mark.rutland@arm.com>, <thierry.reding@gmail.com>, <jonathanh@nvidia.com>,
 <kishon@ti.com>, <catalin.marinas@arm.com>, <will.deacon@arm.com>,
 <jingoohan1@gmail.com>, <gustavo.pimentel@synopsys.com>
Subject: [PATCH V11 10/12] dt-bindings: PHY: P2U: Add Tegra194 P2U block
Date: Mon, 24 Jun 2019 14:45:03 +0530
Message-ID: <20190624091505.1711-11-vidyas@nvidia.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190624091505.1711-1-vidyas@nvidia.com>
References: <20190624091505.1711-1-vidyas@nvidia.com>
X-NVConfidentiality: public
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1561367791; bh=wuFsFVfMM/mNrb7/b72Ub4GkoU6SdrFRT8hSKXnC0xA=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 In-Reply-To:References:X-NVConfidentiality:MIME-Version:
 Content-Type;
 b=g4eeYDTNsBMex3Fve1/lgCWksciL/4URlhn9gGJKV8ktKDk54v6QsY3w5J5+bgjR/
 +pqXgIg1Vk+Po0KkR4r8+6EPZHQXqyHQfs2fK7Jx7BJZzYrS2MqbSo4QvbULt1J28s
 tKkyzSLK3aO1Mlguu3yn192L8eUgZxvaowu5yHAP9OHmImY+yr0umFCEztahXVRgfh
 qm+3k/mNcHrk7x2CS76btYDlmT4n5aBAw84n0ByxENSqJrwJ7bPNhspEnPTlZzxP+S
 CtrJVaN19P6Xj6a+HKsaXfugWcdXMEys3DeX9KQxxTE9uTpnkol+32OnXADXe/gVN3
 Qcza+l8gxSb3g==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_021634_236820_20A0A0BB 
X-CRM114-Status: GOOD (  10.12  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Changes since [v10]:
* None

Changes since [v9]:
* None

Changes since [v8]:
* None

Changes since [v7]:
* None

Changes since [v6]:
* None

Changes since [v5]:
* Added Sob
* Changed node name from "p2u@xxxxxxxx" to "phy@xxxxxxxx"

Changes since [v4]:
* None

Changes since [v3]:
* None

Changes since [v2]:
* Changed node label to reflect new format that includes either 'hsio' or
  'nvhs' in its name to reflect which UPHY brick they belong to

Changes since [v1]:
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
