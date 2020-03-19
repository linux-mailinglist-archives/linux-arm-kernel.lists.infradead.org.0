Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92A7D18BA65
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 16:07:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xEdq54WSL69lY3JRe3ACIptrL+VjVsAh4zYZBFRKuHU=; b=ZFgh9HvlD9V4PbLPAIdba68/cq
	3uXKzddOIe6c7YzoUolqZ0PUfXALJ1XCl0Sl8KTW5FqSJMNlzXzdtx2bwJw28IlsFQfXphC+u2qYv
	KiePgGFxFvQxnlkz2xOvpnJpaSipiIri+MTbt3mBL+pHh/6Cy91lJZSp86odlRBxfS2OKQWdUgWBV
	LRxFlMY7Fi/lKJfX3ONn2BceY67X7kU1lFS964NWyXEhO2laZ0QLxn3D9Krs0dyC4H7c9JJro3t7a
	2V9Emm6ohthFdUBwaMj1+iSggZLmBBXhhWBJwx0+m+xGKxAkbEJ2EpvGTberygI7qnt8aBsa0O7+B
	Q2a+D1XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEwls-00012Z-QJ; Thu, 19 Mar 2020 15:07:44 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEwlI-0000mL-4d
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 15:07:10 +0000
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20200319150705epoutp01c67173299f569776037c5864c456913b~9vPnfDU3z2796827968epoutp01w
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Mar 2020 15:07:05 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20200319150705epoutp01c67173299f569776037c5864c456913b~9vPnfDU3z2796827968epoutp01w
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1584630425;
 bh=5qDUTijKcFAre6lcv86TSthFVvifGYP26ZX+SiiMELQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=fWPlbnMxvxvwC36TRsY3VPzUtEqJDl9MobIV+Xl9TbXtlexLh3DRGR6lyBktjieeF
 tqsWADgInEZrx3EUtnWeznwUCs+KQ8m8hnRelEFpXzSbhV0P2ilv3BTcPPCkwtB3LC
 a49153CRe2648D7WYLKd0g5uruHr+ZZ9w3l+SLZc=
Received: from epsmges5p1new.samsung.com (unknown [182.195.42.73]) by
 epcas5p4.samsung.com (KnoxPortal) with ESMTP id
 20200319150704epcas5p4641617feed8159a6916b81240c0fb2b3~9vPmUi4oJ0491704917epcas5p4d;
 Thu, 19 Mar 2020 15:07:04 +0000 (GMT)
Received: from epcas5p1.samsung.com ( [182.195.41.39]) by
 epsmges5p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 79.78.04782.79A837E5; Fri, 20 Mar 2020 00:07:03 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
 20200319150703epcas5p2d917898f6f1e0554cb978a70a34ee507~9vPlhPKFB0318203182epcas5p2D;
 Thu, 19 Mar 2020 15:07:03 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200319150703epsmtrp2f81c05237b5626a37b2833aa1e846dc5~9vPlgaxh41476414764epsmtrp2S;
 Thu, 19 Mar 2020 15:07:03 +0000 (GMT)
X-AuditID: b6c32a49-8b3ff700000012ae-ab-5e738a97c43a
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 74.C7.04158.79A837E5; Fri, 20 Mar 2020 00:07:03 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200319150701epsmtip29c57472630a1383081538127fc2ee78c~9vPjyxKYS0556705567epsmtip2W;
 Thu, 19 Mar 2020 15:07:01 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh+dt@kernel.org, devicetree@vger.kernel.org, linux-scsi@vger.kernel.org
Subject: [PATCH v3 1/5] dt-bindings: phy: Document Samsung UFS PHY bindings
Date: Thu, 19 Mar 2020 20:30:27 +0530
Message-Id: <20200319150031.11024-2-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200319150031.11024-1-alim.akhtar@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprEKsWRmVeSWpSXmKPExsWy7bCmuu70ruI4g+ezLC0ezNvGZvHy51U2
 i0/rl7FazD9yjtXi/PkN7BY3txxlsdj0+BqrxeVdc9gsZpzfx2TRfX0Hm8Xy4/+YLFr3HmG3
 WLr1JqMDr8flvl4mj02rOtk8Ni+p92g5uZ/F4+PTWywefVtWMXp83iTn0X6gmymAI4rLJiU1
 J7MstUjfLoEro/NuM0tBl0DF5+O9TA2Mm3m6GDk5JARMJKb/mMfcxcjFISSwm1FiY9NTRgjn
 E6PE1MNvmCCcb4wSt4+uZ4JpOb1pM1TVXkaJjw09UE4Lk8S2Hx1sIFVsAtoSd6dvAesQEQiQ
 uPT+IBtIEbPAPCaJRY96wBLCAt4SB09uZQaxWQRUJY78XA9m8wrYSCyd/pIdYp28xOoNB8Di
 nAK2EnMuXGcBGSQhcJtN4ubKc4wQRS4SM35dgLKFJV4d3wLVLCXx+d1eoM0cQHa2RM8uY4hw
 jcTSecdYIGx7iQNX5rCAlDALaEqs36UPEmYW4JPo/f2ECaKTV6KjTQiiWlWi+d1VqE5piYnd
 3awQtofE0T+/WSDhMIFRYnXHM+YJjLKzEKYuYGRcxSiZWlCcm55abFpgmJdarlecmFtcmpeu
 l5yfu4kRnFK0PHcwzjrnc4hRgINRiYd3RltxnBBrYllxZe4hRgkOZiURXt10oBBvSmJlVWpR
 fnxRaU5q8SFGaQ4WJXHeSaxXY4QE0hNLUrNTUwtSi2CyTBycUg2M4id21epH9c85KHRupuX5
 uyw2Z7ZNWeJ+LXf3z6wTYqUKc+rO5wn0WpRnKHJc+H3/3qeved7VZ7Psd5/g+hysv0ZbRSJ6
 +Zwn7+tW3Jk4f8LmmgM8LwPXJrw5zuPs1L0o5HtRoNnnqiD+08UZlxSUC/Km5js+VyhZNft6
 8fW4lh9Hf0098WL/eyWW4oxEQy3mouJEAJjOcaAlAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrILMWRmVeSWpSXmKPExsWy7bCSvO70ruI4g1m72CwezNvGZvHy51U2
 i0/rl7FazD9yjtXi/PkN7BY3txxlsdj0+BqrxeVdc9gsZpzfx2TRfX0Hm8Xy4/+YLFr3HmG3
 WLr1JqMDr8flvl4mj02rOtk8Ni+p92g5uZ/F4+PTWywefVtWMXp83iTn0X6gmymAI4rLJiU1
 J7MstUjfLoEro/NuM0tBl0DF5+O9TA2Mm3m6GDk5JARMJE5v2szYxcjFISSwm1HiyqrDrBAJ
 aYnrGyewQ9jCEiv/PWeHKGpikjhyqxsswSagLXF3+hYmEFtEIEji3pq1rCBFzAKrmCQ6e88y
 giSEBbwlDp7cygxiswioShz5uR7M5hWwkVg6/SXUBnmJ1RsOgMU5BWwl5ly4zgJiCwHVdL66
 xjaBkW8BI8MqRsnUguLc9NxiwwKjvNRyveLE3OLSvHS95PzcTYzggNbS2sF44kT8IUYBDkYl
 Hl6HluI4IdbEsuLK3EOMEhzMSiK8uulAId6UxMqq1KL8+KLSnNTiQ4zSHCxK4rzy+ccihQTS
 E0tSs1NTC1KLYLJMHJxSDYyMzyW+rcrQur5LaYpWy3vltTumONvtLJ6dITJLMGzDhbZ/N7mk
 NbM2OJTKWPO5bMv4mvV2b4jLMx5XOwaBe11ZvJ3pFX/yN5/lFH99gVnU1VBbSEd+US3z/A3r
 HXTz5ut1HTrWMTdUfu2JEpuY2zP/WybctM/MKSq3vie+7a5L6ZGpfrpJekosxRmJhlrMRcWJ
 AALC1NZkAgAA
X-CMS-MailID: 20200319150703epcas5p2d917898f6f1e0554cb978a70a34ee507
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200319150703epcas5p2d917898f6f1e0554cb978a70a34ee507
References: <20200319150031.11024-1-alim.akhtar@samsung.com>
 <CGME20200319150703epcas5p2d917898f6f1e0554cb978a70a34ee507@epcas5p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_080708_528168_673A42E1 
X-CRM114-Status: GOOD (  16.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.24 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

base-commit: fb33c6510d5595144d585aa194d377cf74d31911
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
