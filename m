Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F0B2189A81
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 12:19:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OJoAkVstU09Fh9iXdhIqKeeZMnu6bMvs+oHMib5Qfr4=; b=ampLOjdxIj6A2w1fm1IB6Tena5
	PcaDisBqIpFJyRe2g8FMisll5mtVTCPC9Yw+2OFCmHD1AQL7+rQsoOnny2RRd4pVRASdw6rzBreeo
	vTTgblIVkZIxhdjHnzwbOmrXTzAvYQO2kcYkXVxf+pAN6avtw1BXbFAxgud5hiSi16x/9paOa4F1I
	bL+mRNQJvNWG+SfR2PLPvFn/jMS/vyIW0v2ivjlVrhAAUazElr4pK0TQ92H7z1E+nVMJ67oNOy0s8
	xWUhyWZbPDq2dRvN/S3vAGO4Fbk0M0wDa0bjX5d1RsDN+TFGZAatjkEk3Uybf9q7plqG8VxPkas95
	zKRvfLHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEWjE-0008Q7-NF; Wed, 18 Mar 2020 11:19:16 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEWiG-0007hd-4Q
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 11:18:18 +0000
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20200318111806epoutp0324cb32e220c73dd28f5aff213f7e888e~9YeaJSPhj3163831638epoutp03t
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Mar 2020 11:18:06 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20200318111806epoutp0324cb32e220c73dd28f5aff213f7e888e~9YeaJSPhj3163831638epoutp03t
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1584530286;
 bh=QSwap29dffjiAFMYZwi5uQktsX9rEC0TxACpkot0PIU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=jE/y5/rrhtRzRri2B6KJUMiz9y+UeOyGBGjESBbfg7NKuBnbLelPzoeO/uPBE7vfL
 hg1pJtR07n/MAU6sC6Jj2gCFjwxxv6SzaVrEqmPGaekYSOmbKsBewmVFt2P5Zhd8BE
 YD7yqOvE1vU5jLD0YTDm9yI81/2GCDfOBJ9mGpoQ=
Received: from epsmges5p1new.samsung.com (unknown [182.195.42.73]) by
 epcas5p1.samsung.com (KnoxPortal) with ESMTP id
 20200318111805epcas5p1f6310151d1e5b6fddbda3c901e790e80~9YeZfPmPb3101931019epcas5p1Y;
 Wed, 18 Mar 2020 11:18:05 +0000 (GMT)
Received: from epcas5p4.samsung.com ( [182.195.41.42]) by
 epsmges5p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 84.4C.04782.D63027E5; Wed, 18 Mar 2020 20:18:05 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
 20200318111805epcas5p3e68724d923a07ddd80a45e3316292940~9YeZK2i4_1474914749epcas5p38;
 Wed, 18 Mar 2020 11:18:05 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200318111805epsmtrp26a258907d0da3a0d87085279c4fb4acd~9YeZJ5e7Z3128231282epsmtrp2x;
 Wed, 18 Mar 2020 11:18:05 +0000 (GMT)
X-AuditID: b6c32a49-89bff700000012ae-eb-5e72036d85e8
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 FD.AD.04158.D63027E5; Wed, 18 Mar 2020 20:18:05 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200318111803epsmtip2cf132877222eaf72216367fd9edd656b~9YeXbqW7A0257602576epsmtip2e;
 Wed, 18 Mar 2020 11:18:03 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh+dt@kernel.org, devicetree@vger.kernel.org, linux-scsi@vger.kernel.org
Subject: [PATCH v2 1/5] dt-bindings: phy: Document Samsung UFS PHY bindings
Date: Wed, 18 Mar 2020 16:41:40 +0530
Message-Id: <20200318111144.39525-2-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200318111144.39525-1-alim.akhtar@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprIKsWRmVeSWpSXmKPExsWy7bCmlm4uc1GcwZcWU4sH87axWbz8eZXN
 4tP6ZawW84+cY7U4f34Du8XNLUdZLDY9vsZqcXnXHDaLGef3MVl0X9/BZrH8+D8mi9a9R9gt
 lm69yejA63G5r5fJY9OqTjaPzUvqPVpO7mfx+Pj0FotH35ZVjB6fN8l5tB/oZgrgiOKySUnN
 ySxLLdK3S+DKeLRvC3PBRf6KD6svsTQw/ufuYuTkkBAwkVg54RdzFyMXh5DAbkaJTRuOMUE4
 nxglnqycwAJSJSTwjVHi8HVvmI4TN6+zQhTtZZS4cesjO4TTwiTx4O55ZpAqNgFtibvTtzCB
 2CICARKX3h9kAyliFpjHJLHoUQ9YQljAW6J962+wFSwCqhJNfRvAmnkFbCQeHbjDArFOXmL1
 hgNgcU4BW4m/d1sZQQZJCNxnk1j5bw4bRJGLxO0PR5khbGGJV8e3sEPYUhKf3+0FquEAsrMl
 enYZQ4RrJJbOOwY1317iwJU5LCAlzAKaEut36YOEmQX4JHp/P2GC6OSV6GgTgqhWlWh+dxWq
 U1piYnc3K4TtIfHozQFoME5glDi26zT7BEbZWQhTFzAyrmKUTC0ozk1PLTYtMMxLLdcrTswt
 Ls1L10vOz93ECE4oWp47GGed8znEKMDBqMTDy7GhIE6INbGsuDL3EKMEB7OSCO/iwvw4Id6U
 xMqq1KL8+KLSnNTiQ4zSHCxK4ryTWK/GCAmkJ5akZqemFqQWwWSZODilGhgXOPjodTp7ZO8N
 ZeV3k36o1fB9i/6y2m+S/7/dVmPzyXm1g/3xr5cB0e4y5oIWQgpee8462iwzU+5pkJnbsHOu
 TGX8MRu7bU1Tdsha237KmD+74FDw/c45u9l3rTncMD3D+l3woguvPk570clneOH7JG7BBRmp
 UwX4/7T85OBWXbLqz4XQlDtKLMUZiYZazEXFiQBKruV5JAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrILMWRmVeSWpSXmKPExsWy7bCSvG4uc1GcwdYZChYP5m1js3j58yqb
 xaf1y1gt5h85x2px/vwGdoubW46yWGx6fI3V4vKuOWwWM87vY7Lovr6DzWL58X9MFq17j7Bb
 LN16k9GB1+NyXy+Tx6ZVnWwem5fUe7Sc3M/i8fHpLRaPvi2rGD0+b5LzaD/QzRTAEcVlk5Ka
 k1mWWqRvl8CV8WjfFuaCi/wVH1ZfYmlg/M/dxcjJISFgInHi5nXWLkYuDiGB3YwSv89cZINI
 SEtc3ziBHcIWllj57zk7RFETk8TvjmdMIAk2AW2Ju9O3gNkiAkES99asBZvELLCKSaKz9ywj
 SEJYwFuifetvFhCbRUBVoqlvAzOIzStgI/HowB0WiA3yEqs3HACLcwrYSvy92wrWKwRUc2zy
 L5YJjHwLGBlWMUqmFhTnpucWGxYY5aWW6xUn5haX5qXrJefnbmIEB7SW1g7GEyfiDzEKcDAq
 8fAmbCqIE2JNLCuuzD3EKMHBrCTCu7gwP06INyWxsiq1KD++qDQntfgQozQHi5I4r3z+sUgh
 gfTEktTs1NSC1CKYLBMHp1QDY5ewtTB/pe3RnTbbTpQcqHz7k6+7qdinNkbkTcRxjv99mREf
 01z3Hdt3Trp0+aId3d6Fni8ZxPtYF8xn6WG+nzBDrpw3SebSuha5JoO1Jedf3v6SmK36hTNi
 sqDB8g6nvtt/0vb/nRW3SL6354+Ne6aUXUlnZcv8hb6HWPpNpwgdKBR2N+xUYinOSDTUYi4q
 TgQAr9/R/2QCAAA=
X-CMS-MailID: 20200318111805epcas5p3e68724d923a07ddd80a45e3316292940
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200318111805epcas5p3e68724d923a07ddd80a45e3316292940
References: <20200318111144.39525-1-alim.akhtar@samsung.com>
 <CGME20200318111805epcas5p3e68724d923a07ddd80a45e3316292940@epcas5p3.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_041816_599222_A59BFB05 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.33 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

This patch documents Samsung UFS PHY device tree bindings

Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
---
 .../bindings/phy/samsung,ufs-phy.yaml         | 62 +++++++++++++++++++
 1 file changed, 62 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
new file mode 100644
index 000000000000..df54129004e9
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
@@ -0,0 +1,62 @@
+# SPDX-License-Identifier: (GPL-2.0)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/samsung,ufs-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung SoC series UFS PHY Device Tree Bindings
+
+maintainers:
+  - Alim Akhtar <alim.akhtar@samsung.com>
+
+properties:
+  "#phy-cells":
+    const: 0
+
+  compatible:
+    enum:
+      - samsung,exynos7-ufs-phy
+
+  reg:
+    maxItems: 1
+    description: PHY base register address
+
+  reg-names:
+    items:
+      - const: phy-pma
+
+  clocks:
+    items:
+      - description: PLL reference clock
+      - description: Referencec clock parrent
+
+  clock-names:
+    items:
+      - const: ref_clk_parent
+      - const: ref_clk
+
+required:
+  - "#phy-cells"
+  - compatible
+  - reg
+  - reg-names
+  - clocks
+  - clock-names
+
+examples:
+  - |
+    #include <dt-bindings/clock/exynos7-clk.h>
+
+    ufs_phy: ufs-phy@0x15571800 {
+        compatible = "samsung,exynos7-ufs-phy";
+        reg = <0x15571800 0x240>;
+        reg-names = "phy-pma";
+        samsung,pmu-syscon = <&pmu_system_controller>;
+        #phy-cells = <0>;
+        clocks = <&clock_fsys1 MOUT_FSYS1_PHYCLK_SEL1>,
+                 <&clock_top1 CLK_SCLK_PHY_FSYS1_26M>;
+        clock-names = "ref_clk_parent",
+                      "ref_clk";
+    };
+
+...
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
