Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A83CF1A5D4D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Apr 2020 09:43:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UU72Ww+nfKfcFvmB51/3xi3urF7xbGmB1vg8a9Tinsw=; b=o0HKjgj0LmBzYuiCM4qQ/aMhCs
	ZL/FR6w6USRdfMloHdroPl3omUgeAPUROvmi0zIQqmCkdCCVH4VEUBBnHKZVd8Cpt+QEYHTPBhNkb
	ThNpC6tpgBFZMREh1Gc1bHziByzM4jOJAs8qbLlxGZfpjQ6oI9+IPu3UVRDhUGAV4FbhFc1+1yNv2
	r8PTUFE6xbhLNqfZaSc6N6CJ1zvhr3YMocP6IWQ5GYNT0fn5MZ0pn+55EgXzXs3OEyMg2ogwaGAaK
	vV2FW0wlbuX3xhkPjqtGzvJCC1TyWL8zTRB+yUsXb7eMNjM0in2Zpkebqhx6BTtE2P8TMd6fOTYUw
	HGyoPTvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNXGY-0003ZF-0Z; Sun, 12 Apr 2020 07:42:54 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNXFw-0003Cz-Af
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Apr 2020 07:42:18 +0000
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20200412074213epoutp02e98d18cdb6b69af6c9480095e9f18b19~FAqDtTj5M3192331923epoutp02j
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 Apr 2020 07:42:13 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20200412074213epoutp02e98d18cdb6b69af6c9480095e9f18b19~FAqDtTj5M3192331923epoutp02j
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1586677333;
 bh=HisTscgOdzzOb+y3T3lOdgunVqX2gCoBzsP3vUe7Hys=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=RP4i73Cg026si9qy267tXcpfJscbnenNHGF6bqAPLKiesuIAbrbv2wxZ9OhfOMh1o
 n54YljU8omuQI6txQ7ck05Ed3Rurj3FmtPvh8OuMjc+s7Bl4HV3sOeNNKYgshd5caA
 o03RylWBeIYhSBags5P14oZluvGq8J5DJB99bN1c=
Received: from epsmges5p3new.samsung.com (unknown [182.195.42.75]) by
 epcas5p1.samsung.com (KnoxPortal) with ESMTP id
 20200412074212epcas5p157a6c3d573a6977f5c472a7e1cb9792b~FAqCpOw1y1241512415epcas5p17;
 Sun, 12 Apr 2020 07:42:12 +0000 (GMT)
Received: from epcas5p2.samsung.com ( [182.195.41.40]) by
 epsmges5p3new.samsung.com (Symantec Messaging Gateway) with SMTP id
 6B.91.04736.456C29E5; Sun, 12 Apr 2020 16:42:12 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas5p4.samsung.com (KnoxPortal) with ESMTPA id
 20200412074211epcas5p400dd260cd52a8eff831834f24fa2d113~FAqBiWisS2151521515epcas5p4J;
 Sun, 12 Apr 2020 07:42:11 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200412074211epsmtrp16dbf1893f021e29ae40bec90243a5ed0~FAqBhqWsY1966119661epsmtrp12;
 Sun, 12 Apr 2020 07:42:11 +0000 (GMT)
X-AuditID: b6c32a4b-ae3ff70000001280-b2-5e92c654f8de
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 71.2D.04158.356C29E5; Sun, 12 Apr 2020 16:42:11 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200412074209epsmtip1714ac1e01afc681462976f6471d51582~FAp-mONBD0326303263epsmtip1M;
 Sun, 12 Apr 2020 07:42:09 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh@kernel.org, devicetree@vger.kernel.org, linux-scsi@vger.kernel.org
Subject: [PATCH v5 3/5] dt-bindings: ufs: Add DT binding documentation for ufs
Date: Sun, 12 Apr 2020 13:01:57 +0530
Message-Id: <20200412073159.37747-4-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200412073159.37747-1-alim.akhtar@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprIKsWRmVeSWpSXmKPExsWy7bCmhm7IsUlxBn9OaVk8mLeNzeLlz6ts
 Fp/WL2O1mH/kHKvF+fMb2C1ubjnKYrHp8TVWi8u75rBZzDi/j8mi+/oONovlx/8xWfzfs4Pd
 YunWm4wOvB6X+3qZPDat6mTz2Lyk3qPl5H4Wj49Pb7F49G1ZxejxeZOcR/uBbqYAjigum5TU
 nMyy1CJ9uwSujJbPexgLzohXTLu2jrmB8bNgFyMnh4SAiUTnoS1MXYxcHEICuxklHhy5xQrh
 fGKU6P/+jwXC+cYoMeNFM2MXIwdYy9Z9tRDxvYwST3+dgipqYZJYc3YuI8hcNgFtibvTQeZy
 cogIeEu8P3AebCyzwDwmiUWPesASwgIBEjf/PmAFsVkEVCVOHl0L1swrYCPRteswK8SB8hKr
 NxxgBrE5BWwlFtzpAjtWQuA+m8Ta/ftYIIpcJG5emM0OYQtLvDq+BcqWknjZ38YOcXa2RM8u
 Y4hwjcTSecegWu0lDlyZwwJSwiygKbF+lz5ImFmAT6L39xMmiE5eiY42IYhqVYnmd1ehOqUl
 JnZ3Q13pIXHiwlFmSDhMYJR42HuGaQKj7CyEqQsYGVcxSqYWFOempxabFhjnpZbrFSfmFpfm
 pesl5+duYgQnFC3vHYybzvkcYhTgYFTi4T1wbWKcEGtiWXFl7iFGCQ5mJRHeJ+VAId6UxMqq
 1KL8+KLSnNTiQ4zSHCxK4ryTWK/GCAmkJ5akZqemFqQWwWSZODilGhiDNJivSNR9mPju3m6r
 PycsPY3Cbf7unywzy0Ft5XeVyRySKjpapVNblnaWfRCc73BO8PDTbLG/GUZX8sM3/grq9J7s
 duIb55YJ84VC+ifYKE/u9qxaolpmXH/jWaH3gcov1adqk1idt/lenMofsrXUi+Hl/bP7H6z6
 yTD1tPUeW3/V9S4T1gsqsRRnJBpqMRcVJwIAe8xuRyQDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrPLMWRmVeSWpSXmKPExsWy7bCSnG7wsUlxBi+nyFs8mLeNzeLlz6ts
 Fp/WL2O1mH/kHKvF+fMb2C1ubjnKYrHp8TVWi8u75rBZzDi/j8mi+/oONovlx/8xWfzfs4Pd
 YunWm4wOvB6X+3qZPDat6mTz2Lyk3qPl5H4Wj49Pb7F49G1ZxejxeZOcR/uBbqYAjigum5TU
 nMyy1CJ9uwSujJbPexgLzohXTLu2jrmB8bNgFyMHh4SAicTWfbVdjFwcQgK7GSUOn5zH3sXI
 CRSXlri+cQKULSyx8t9zdoiiJiaJg5MWMIIk2AS0Je5O38IEYosI+Ev8+X4MrIhZYBWTRGfv
 WUaQDcICfhInLweB1LAIqEqcPLoWrJdXwEaia9dhVogF8hKrNxxgBrE5BWwlFtzpApspBFTz
 d8dxxgmMfAsYGVYxSqYWFOem5xYbFhjlpZbrFSfmFpfmpesl5+duYgQHs5bWDsYTJ+IPMQpw
 MCrx8B64NjFOiDWxrLgy9xCjBAezkgjvk3KgEG9KYmVValF+fFFpTmrxIUZpDhYlcV75/GOR
 QgLpiSWp2ampBalFMFkmDk6pBkaRrqcX3IvY26XPHfXa9Cx/tbbazVBuTq1APb2Ypzaz1O9W
 dU+5+1nJZH3YkuIvPcxfPIzt9Deyy8U5XmgJ6HqcKbZiVXHPj8+zDWqOOX5ummP7oM5JQdvR
 U+NDe0XY+rkJaup7/sYZzy0ImZ07c3vyt91WqVFPleofpzw+Z7Jgpf5a4Z4jc5RYijMSDbWY
 i4oTAcVUdkdiAgAA
X-CMS-MailID: 20200412074211epcas5p400dd260cd52a8eff831834f24fa2d113
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200412074211epcas5p400dd260cd52a8eff831834f24fa2d113
References: <20200412073159.37747-1-alim.akhtar@samsung.com>
 <CGME20200412074211epcas5p400dd260cd52a8eff831834f24fa2d113@epcas5p4.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_004216_749349_C3EA58DA 
X-CRM114-Status: GOOD (  14.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
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
Cc: linux-samsung-soc@vger.kernel.org, martin.petersen@oracle.com,
 linux-kernel@vger.kernel.org, krzk@kernel.org, kwmad.kim@samsung.com,
 avri.altman@wdc.com, cang@codeaurora.org,
 Alim Akhtar <alim.akhtar@samsung.com>, stanley.chu@mediatek.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds DT binding for samsung ufs hci

Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
---
 .../bindings/ufs/samsung,exynos-ufs.yaml      | 93 +++++++++++++++++++
 1 file changed, 93 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml

diff --git a/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml b/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
new file mode 100644
index 000000000000..954338b7f37d
--- /dev/null
+++ b/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
@@ -0,0 +1,93 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/ufs/samsung,exynos-ufs.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung SoC series UFS host controller Device Tree Bindings
+
+maintainers:
+  - Alim Akhtar <alim.akhtar@samsung.com>
+
+description: |
+  Each Samsung UFS host controller instance should have its own node.
+  This binding define Samsung specific binding other then what is used
+  in the common ufshcd bindings
+  [1] Documentation/devicetree/bindings/ufs/ufshcd-pltfrm.txt
+
+properties:
+
+  compatible:
+    enum:
+      - samsung,exynos7-ufs
+
+  reg:
+    items:
+     - description: HCI register
+     - description: vendor specific register
+     - description: unipro register
+     - description: UFS protector register
+
+  reg-names:
+    items:
+      - const: hci
+      - const: vs_hci
+      - const: unipro
+      - const: ufsp
+
+  clocks:
+    maxItems: 2
+    items:
+      - description: ufs link core clock
+      - description: unipro main clock
+
+  clock-names:
+    maxItems: 2
+    items:
+      - const: core_clk
+      - const: sclk_unipro_main
+
+  interrupts:
+    items:
+      - description: interrupt signal for various ufshc status
+
+  phys:
+    maxItems: 1
+    description:
+      phandle of the ufs phy node
+
+  phy-names:
+      const: ufs-phy
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - phys
+  - phy-names
+  - clocks
+  - clock-names
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/exynos7-clk.h>
+
+    ufs: ufs@15570000 {
+       compatible = "samsung,exynos7-ufs";
+       reg = <0x15570000 0x100>,
+             <0x15570100 0x100>,
+             <0x15571000 0x200>,
+             <0x15572000 0x300>;
+       reg-names = "hci", "vs_hci", "unipro", "ufsp";
+       interrupts = <GIC_SPI 200 IRQ_TYPE_LEVEL_HIGH>;
+       clocks = <&clock_fsys1 ACLK_UFS20_LINK>,
+                <&clock_fsys1 SCLK_UFSUNIPRO20_USER>;
+       clock-names = "core_clk", "sclk_unipro_main";
+       pinctrl-names = "default";
+       pinctrl-0 = <&ufs_rst_n &ufs_refclk_out>;
+       pclk-freq-avail-range = <70000000 133000000>;
+       phys = <&ufs_phy>;
+       phy-names = "ufs-phy";
+    };
+...
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
