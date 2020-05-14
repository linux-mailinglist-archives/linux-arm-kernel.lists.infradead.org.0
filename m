Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CF551D2457
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 02:55:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XhVU44LKsvB7FUerI3wkEIciZ+pHxL+GHsdSOIeJxQo=; b=Tc8eyZT3h9cYH4FBWv9vLpRRUI
	HdVro2GCQ7QcHurIZHhjbfbrpn09C9lrM48Fp5ML3CcyPwcSOAWpP6QXPfnI7Y5Lgp/b19eFW0h1p
	2bv9Mcx4WZRVpbAC2MjvBEqzz/Ku11VjP+kcC2EXJamkI0ezvGOwEq7H8GwaiZgrasV5+McNjUPeW
	TOvfZAN488wkfhbYuBoHH5Vgf1jxfvWS18K68lCxBObbOuOjd615SSoVhdmTvt0FNcC1/B9UdstTC
	AoflGOQjAopo0yQh1IEyv/omq7fs7kdBrimE8A9YTxh4p6b930JlQDyvvzahO537SkbUyeAMCG/wW
	24MnPPPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ29q-0004wO-E4; Thu, 14 May 2020 00:55:30 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ27e-0000wi-5s
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 00:53:20 +0000
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20200514005310epoutp01045e135247b553cf7ac68d7cc4ae269b~OvuCMWZnu2942129421epoutp01K
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 00:53:10 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20200514005310epoutp01045e135247b553cf7ac68d7cc4ae269b~OvuCMWZnu2942129421epoutp01K
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589417590;
 bh=fsRDJ0h1yMqYOs2pKmhnI3SSBhLPwZ2LmEElFF1iDFE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=hEuX2L7sJ5o+imcGGMpdVEiOG4SBEd7lXJQoMcDAtUxyvB4oaU9AuXWjfdkEokqzA
 ZQ0prrn5oxlZ7C9IndV279cJgJbslh0KRg4B/NuZSShDcI9/3voPrgi7KqzKFJU699
 ISPOV7bp+ky5dMcBUZMVBNZH0efKVMHtb1k8AfAQ=
Received: from epsmges5p2new.samsung.com (unknown [182.195.42.74]) by
 epcas5p2.samsung.com (KnoxPortal) with ESMTP id
 20200514005309epcas5p27113d13454cd01894936bc8f55161f72~OvuB1adoU0273002730epcas5p2e;
 Thu, 14 May 2020 00:53:09 +0000 (GMT)
Received: from epcas5p1.samsung.com ( [182.195.41.39]) by
 epsmges5p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 1F.DC.23569.5769CBE5; Thu, 14 May 2020 09:53:09 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
 20200514005309epcas5p3ccd2b44c1bf20634eea3e232d1c2b62e~OvuBbgG0_1578415784epcas5p3G;
 Thu, 14 May 2020 00:53:09 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200514005309epsmtrp224ed3faf75c752ee13c0017b331eee76~OvuBashdq1517815178epsmtrp2i;
 Thu, 14 May 2020 00:53:09 +0000 (GMT)
X-AuditID: b6c32a4a-3c7ff70000005c11-1a-5ebc96751802
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 E5.D3.18461.5769CBE5; Thu, 14 May 2020 09:53:09 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200514005307epsmtip25acec01adf94242af8a3656d6a121a34~Ovt-lAjNf3258132581epsmtip2x;
 Thu, 14 May 2020 00:53:07 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh@kernel.org
Subject: [PATCH v9 08/10] dt-bindings: ufs: Add DT binding documentation for
 ufs
Date: Thu, 14 May 2020 06:09:12 +0530
Message-Id: <20200514003914.26052-9-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200514003914.26052-1-alim.akhtar@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrPIsWRmVeSWpSXmKPExsWy7bCmum7ptD1xBnu3qlk8mLeNzeLlz6ts
 Fp/WL2O1mH/kHKvF+fMb2C1ubjnKYrHp8TVWi8u75rBZzDi/j8mi+/oONovlx/8xWfzfs4Pd
 YunWm4wOvB6X+3qZPDat6mTz2Lyk3qPl5H4Wj49Pb7F49G1ZxejxeZOcR/uBbqYAjigum5TU
 nMyy1CJ9uwSujOYvyxkL9olVTPn/nKmBsV+wi5GDQ0LAROLJJp4uRi4OIYHdjBJ//39jh3A+
 MUrsWb2OGcL5xiixpPMFWxcjJ1jHpZfX2EFsIYG9jBLPD6dC2C1MEo8v6oLYbALaEnenb2EC
 sUUEhCWOfGtjBLGZBW4wSTxY6QJiCwsESXS1bWIDuYJFQFVi+01xkDCvgI3E/0PfGSFWyUus
 3nCAGcTmFLCV2PLlGCtEvJND4lRzOYTtIrFu/TaoemGJV8e3sEPYUhKf3+1lg3gyW6JnlzFE
 uEZi6bxjLBC2vcSBK3NYQEqYBTQl1u/ShziST6L39xMmiE5eiY42IYhqVYnmd1ehOqUlJnZ3
 Qx3jIbFtz0QWSEBNYJT4cf0F6wRG2VkIUxcwMq5ilEwtKM5NTy02LTDKSy3XK07MLS7NS9dL
 zs/dxAhOI1peOxgfPvigd4iRiYPxEKMEB7OSCK/f+t1xQrwpiZVVqUX58UWlOanFhxilOViU
 xHmTGrfECQmkJ5akZqemFqQWwWSZODilGpgK17HdF/7V4DHRR+bM5PsXQhe2Z92NdZ5fLM9w
 vvbG4h6Wo2uMy3bPiOmQajgue+FHnfUsQ8E5gRevPniZLXp7dZR3RoiU1OMDP9n5jW6f3fFg
 K+eJvy80wg6XLWUIklj2zWT/x4ZrOx9OOanzTHq+odqBl6k6tbusA9NWzes12Kb5vjPr+p+6
 axE+Dwu1nkipVkZPvzflW9k7cemo6aeep6y4fLDylXiqt43sK+2VEw5fyhASnZ/EvihCUeLz
 36eBWXefeogdebu9vDJ4Zqf4nJboc7NFJS8/e1qgbqNgta5j17/e1StKP2qcOW/DZXvATvv9
 Y7GuZ5oVN/kCH5cyLH1T9L9/SvTTOQoz51x/osRSnJFoqMVcVJwIAIml5TmSAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrELMWRmVeSWpSXmKPExsWy7bCSvG7ptD1xBtPXClg8mLeNzeLlz6ts
 Fp/WL2O1mH/kHKvF+fMb2C1ubjnKYrHp8TVWi8u75rBZzDi/j8mi+/oONovlx/8xWfzfs4Pd
 YunWm4wOvB6X+3qZPDat6mTz2Lyk3qPl5H4Wj49Pb7F49G1ZxejxeZOcR/uBbqYAjigum5TU
 nMyy1CJ9uwSujOYvyxkL9olVTPn/nKmBsV+wi5GTQ0LAROLSy2vsXYxcHEICuxklNvzuYINI
 SEtc3ziBHcIWllj57zlUUROTxIpN05hBEmwC2hJ3p29hArFFgIqOfGtjBLGZBZ4xSZx6WApi
 CwsESJzo/c3SxcjBwSKgKrH9pjhImFfARuL/oe+MEPPlJVZvOAA2klPAVmLLl2OsILYQUM2y
 NcsYJzDyLWBkWMUomVpQnJueW2xYYJiXWq5XnJhbXJqXrpecn7uJERzMWpo7GLev+qB3iJGJ
 g/EQowQHs5IIr9/63XFCvCmJlVWpRfnxRaU5qcWHGKU5WJTEeW8ULowTEkhPLEnNTk0tSC2C
 yTJxcEo1MKWUiumY3VjLGc8zv+/z95v9b6cIGIuZzlQ+VmjUkD/vheTWR8dKZ00ybZVh9f5a
 E7Ryo98C7cOcyXsaVmant73edbfMXVmIiXvNSv4j/5gFtd9qXsmoPat1een3rKhA72ru6q1G
 /kvTUz4Lijoe0zX5dN760eQ/kW5Nb7jvrxHePe9cpjy3Sov6l0XpdfMfLty81ynimHPy2Vnr
 fjUET57XUO3e+feJs+XL27/YRTKM7fI3t6+N4X+wtPj/oWkXelNmHE5uyPvOpV7A6J4tIvbV
 x7y6rCHw2oI7U2U68zL+SDz4o9T/+Ooh8exy3wQOGw6G53uuv3j+f8u1bcWbbb5bz/XN76vZ
 tas15MrP+UosxRmJhlrMRcWJAFpRpVTVAgAA
X-CMS-MailID: 20200514005309epcas5p3ccd2b44c1bf20634eea3e232d1c2b62e
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200514005309epcas5p3ccd2b44c1bf20634eea3e232d1c2b62e
References: <20200514003914.26052-1-alim.akhtar@samsung.com>
 <CGME20200514005309epcas5p3ccd2b44c1bf20634eea3e232d1c2b62e@epcas5p3.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_175314_426754_B1A739B0 
X-CRM114-Status: GOOD (  16.55  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.24 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 .../bindings/ufs/samsung,exynos-ufs.yaml      | 91 +++++++++++++++++++
 1 file changed, 91 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml

diff --git a/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml b/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
new file mode 100644
index 000000000000..eaa64cc32d52
--- /dev/null
+++ b/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
@@ -0,0 +1,91 @@
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
+    maxItems: 1
+
+  phys:
+    maxItems: 1
+
+  phy-names:
+    maxItems: 1
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
+additionalProperties: false
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
