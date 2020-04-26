Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56F1E1B9265
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 19:44:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UU72Ww+nfKfcFvmB51/3xi3urF7xbGmB1vg8a9Tinsw=; b=Hb4OeR+eFqq0FEm9Vgmw/e1kZf
	LBUVtSEJT1sxV94cu15Oz4UzUt1QQK6TDBOc/t1jJV9Ww0WaQeNFR1/sctNs64F96mhjMBi1/qu4s
	0CESnBVpBs7VKxl8cjvf7OKZbP7MRiT9LTOER/uFF/H6I8PtUr/uijujw3OcUsyYJLyY0owHPtkds
	bh0Q1XpOjcaB6+yDqNb/j+iX4iAFweBOiokXQFlWu1WNVNzga3No7NTfmJJeWkaCeAS9Yliv/UvD3
	Noz0o/XPIyrC7y66rNlz3mNpeRIxo7Ua2PqCIg1+4Q41F5oDavgDuinePpVC6GppJF/QbX5MLWoKB
	JBMHbKpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSlKH-0003Xr-G8; Sun, 26 Apr 2020 17:44:21 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSlIN-0001sR-GC
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 17:42:26 +0000
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20200426174221epoutp011eea1bbcbaf3844084bd2ab6a12fcf40~Jb4CLYkdI0140101401epoutp01d
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Apr 2020 17:42:21 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20200426174221epoutp011eea1bbcbaf3844084bd2ab6a12fcf40~Jb4CLYkdI0140101401epoutp01d
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1587922941;
 bh=HisTscgOdzzOb+y3T3lOdgunVqX2gCoBzsP3vUe7Hys=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Ru3QAE3lmGGCnMZYD41WHQ1Y4naRSK9k/t8JlGJIQA6DHlwciMw6LoXgvVU7/YWi5
 sk99DnPLIWb5f2/XkV/fMpxgdLvhq9NyXBaDssjWcWOWU7+RY/aFLKNQYezAzNIMK5
 9ogPD8zdhHocoYBo7YXSMIEcAfdUuC1+CrBjJfXE=
Received: from epsmges5p3new.samsung.com (unknown [182.195.42.75]) by
 epcas5p2.samsung.com (KnoxPortal) with ESMTP id
 20200426174221epcas5p221417f320fa986ff7388a5e0c62ab720~Jb4BvxTwX0053600536epcas5p2j;
 Sun, 26 Apr 2020 17:42:21 +0000 (GMT)
Received: from epcas5p2.samsung.com ( [182.195.41.40]) by
 epsmges5p3new.samsung.com (Symantec Messaging Gateway) with SMTP id
 0C.DE.04736.CF7C5AE5; Mon, 27 Apr 2020 02:42:20 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas5p4.samsung.com (KnoxPortal) with ESMTPA id
 20200426174219epcas5p460c8637629afd930313ae0fa936593cd~Jb4ApSQta2671526715epcas5p4f;
 Sun, 26 Apr 2020 17:42:19 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200426174219epsmtrp163c11c8803367755f7cdd9cb28e4b503~Jb4AofeF40798907989epsmtrp1Y;
 Sun, 26 Apr 2020 17:42:19 +0000 (GMT)
X-AuditID: b6c32a4b-acbff70000001280-0a-5ea5c7fc0736
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 1E.FF.18461.BF7C5AE5; Mon, 27 Apr 2020 02:42:19 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200426174217epsmtip1fad4b19c55f05919c9010c10af56539c~Jb3_x6_JI0513305133epsmtip1F;
 Sun, 26 Apr 2020 17:42:17 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh@kernel.org
Subject: [PATCH v7 08/10] dt-bindings: ufs: Add DT binding documentation for
 ufs
Date: Sun, 26 Apr 2020 23:00:22 +0530
Message-Id: <20200426173024.63069-9-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200426173024.63069-1-alim.akhtar@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupnleLIzCtJLcpLzFFi42LZdlhTQ/fP8aVxBp9/W1g8mLeNzeLlz6ts
 Fp/WL2O1mH/kHKvF+fMb2C1ubjnKYrHp8TVWi8u75rBZzDi/j8mi+/oONovlx/8xWfzfs4Pd
 YunWm4wOvB6X+3qZPDat6mTz2Lyk3qPl5H4Wj49Pb7F49G1ZxejxeZOcR/uBbqYAjigum5TU
 nMyy1CJ9uwSujJbPexgLzohXTLu2jrmB8bNgFyMnh4SAicStDQvZuhi5OIQEdjNKTG+7xALh
 fGKUmHnxKFTmG6PEh7YTTDAtrbteMYLYQgJ7GSV231OFKGphknj4qZ0ZJMEmoC1xd/oWsAYR
 AWGJI9/awBqYBW4wSTxY6QJiCwsESby8+wOshkVAVaLx4Q4wm1fARuLOhM8sEMvkJVZvOAA2
 k1PAVuLUjF1MIMskBDo5JC59uAA0lAPIcZFY88cRol5Y4tXxLewQtpTEy/42doiSbImeXcYQ
 4RqJpfOOQY23lzhwZQ4LSAmzgKbE+l36EFfySfT+fsIE0ckr0dEmBFGtKtH87ipUp7TExO5u
 VgjbQ2L9hhdMkFCYwCgxZ+oclgmMsrMQpi5gZFzFKJlaUJybnlpsWmCcl1quV5yYW1yal66X
 nJ+7iRGcTLS8dzBuOudziFGAg1GJh5dj+9I4IdbEsuLK3EOMEhzMSiK8MSWL4oR4UxIrq1KL
 8uOLSnNSiw8xSnOwKInzTmK9GiMkkJ5YkpqdmlqQWgSTZeLglGpgLG+8l2ynlad6YmXGtoKE
 f3u9dpW0bLZV/Cb87PSy3u/Lj6fm67yoC9PNe//S0qhVxffatUKxhSkvG088+ODs4O2/tfnO
 Qc0Zk7VjioM5j916tGTW5DkJXZ/3lsQvS57h2mJ92239RIvJyRvKJlofk20ozf+3+F13W5fQ
 ZEvPlW/1/zwWeJkwQ4mlOCPRUIu5qDgRAKN5poIiAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrELMWRmVeSWpSXmKPExsWy7bCSnO7v40vjDHbd07d4MG8bm8XLn1fZ
 LD6tX8ZqMf/IOVaL8+c3sFvc3HKUxWLT42usFpd3zWGzmHF+H5NF9/UdbBbLj/9jsvi/Zwe7
 xdKtNxkdeD0u9/UyeWxa1cnmsXlJvUfLyf0sHh+f3mLx6NuyitHj8yY5j/YD3UwBHFFcNimp
 OZllqUX6dglcGS2f9zAWnBGvmHZtHXMD42fBLkZODgkBE4nWXa8Yuxi5OIQEdjNKNB78zgaR
 kJa4vnECO4QtLLHy33N2iKImJomrS08xgyTYBLQl7k7fwgRiiwAVHfnWxghiMws8Y5I49bAU
 xBYWCJD40XaWFcRmEVCVaHy4A6yeV8BG4s6EzywQC+QlVm84ADaTU8BW4tSMXUA1HEDLbCSm
 r/efwMi3gJFhFaNkakFxbnpusWGBYV5quV5xYm5xaV66XnJ+7iZGcDBrae5g3L7qg94hRiYO
 xkOMEhzMSiK8MSWL4oR4UxIrq1KL8uOLSnNSiw8xSnOwKInz3ihcGCckkJ5YkpqdmlqQWgST
 ZeLglGpgWpF5X+ZB8uLj/g2vNa+8j5/94NAuw4TDm2yF/zB83KQ2q8P/i/S8eT3ZlT9aQmYe
 t5/WzSC7dtv1chsjc4Epp2wqZ7j8n5+n0ui+84KLqWdWhVd02Mc29h1CHvfqL05S4fXe4Px6
 3pXbmSKT/3NpVKgeO/Sw9uwFzqKoJqMkkeVsIsua1v9dz5g+ea5x2Jx3O2fW3Fo6Ydv/l78r
 EtuW+n72EHNft2JO8pSa14oFHfuc38yWPmikmMPAef5gBENToExNXtZ1a4k2idtdJla858U3
 LqqZVPT6+q3ajyZr3+o/Nsk6q3F5opaAXdtk34WNfhe0Xee4tkUEVuUf8azzXVOxbcLn7lqO
 B9MS7lu7K7EUZyQaajEXFScCAF2myyDVAgAA
X-CMS-MailID: 20200426174219epcas5p460c8637629afd930313ae0fa936593cd
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200426174219epcas5p460c8637629afd930313ae0fa936593cd
References: <20200426173024.63069-1-alim.akhtar@samsung.com>
 <CGME20200426174219epcas5p460c8637629afd930313ae0fa936593cd@epcas5p4.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_104224_205460_A3A25635 
X-CRM114-Status: GOOD (  16.68  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.24 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
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
