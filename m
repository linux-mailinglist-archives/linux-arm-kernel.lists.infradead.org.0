Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA041AE482
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 20:12:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UU72Ww+nfKfcFvmB51/3xi3urF7xbGmB1vg8a9Tinsw=; b=KTCtxm3BUm0F+r7tQvD6FaztFj
	Tx8cwIX14DD2XkzspDKJPjqXxyG0HCWwHKIBov5WWP1ygbJdrB5bJeYfUn0VWJJipYlfUjBFeL0g/
	TV90H9v3ZQ3oOtvCC12wgZAMegaHYkuRZGHFJOi/eEQBuf8UaRUfk8vDC11wVa/RmWoV2KwlO093U
	E3hz121rBUPr1H+UAZNzp1xGR3PJ+iJjB8GUx3dOVEuMbN1V69NNPiQKQeS4sb15cc/ZZZA8wzcJK
	8dSq2uQEE5Mn7Ov4I80dAdss5vBzh9QVBE2yBm9dtt/HaIJYtSxsa2vjmj+FwaljUpcsZO5VVeopX
	Dxt4iZ4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPVTV-0002e8-8k; Fri, 17 Apr 2020 18:12:25 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPVRa-00016k-E2
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 18:10:28 +0000
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20200417181024epoutp01bee442abe4291455f8da660a88626f83~Grc9FUVnz0600506005epoutp01H
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Apr 2020 18:10:24 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20200417181024epoutp01bee442abe4291455f8da660a88626f83~Grc9FUVnz0600506005epoutp01H
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1587147024;
 bh=HisTscgOdzzOb+y3T3lOdgunVqX2gCoBzsP3vUe7Hys=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ifnIN3QXOYkPNMN5HmL9NDlcJrMb/duVGf+ZTKP7EVOvywaoUeLES6wRPDEjeOrUY
 Qm8czgSp3Q/nPUY+PWqYNtCNpiCKy2xAKR3cbbAGIC/cLhQOA8bAT80/ohZf9npwwA
 C1udri++FVeCJB6SJKOhi1+B57KN88FxIJMze4Gk=
Received: from epsmges5p1new.samsung.com (unknown [182.195.42.73]) by
 epcas5p1.samsung.com (KnoxPortal) with ESMTP id
 20200417181023epcas5p15b3e1a1156ed44f4fa200e6ffd0f91a9~Grc8A0Mi52627826278epcas5p1f;
 Fri, 17 Apr 2020 18:10:23 +0000 (GMT)
Received: from epcas5p3.samsung.com ( [182.195.41.41]) by
 epsmges5p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 E8.58.04782.F01F99E5; Sat, 18 Apr 2020 03:10:23 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas5p1.samsung.com (KnoxPortal) with ESMTPA id
 20200417181022epcas5p1f83138da6e76ff0917de88e913ef8e32~Grc7X14oB2627826278epcas5p1d;
 Fri, 17 Apr 2020 18:10:22 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200417181022epsmtrp17a6c5e8c2d3d1fc3ad072f8e53389709~Grc7XDrSj0669906699epsmtrp1N;
 Fri, 17 Apr 2020 18:10:22 +0000 (GMT)
X-AuditID: b6c32a49-8b3ff700000012ae-fc-5e99f10f622a
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 66.DE.04158.E01F99E5; Sat, 18 Apr 2020 03:10:22 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200417181020epsmtip1d54494acf3cc758048fee28f2558ed14~Grc5mr71N2094920949epsmtip1I;
 Fri, 17 Apr 2020 18:10:20 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh@kernel.org
Subject: [PATCH v6 08/10] dt-bindings: ufs: Add DT binding documentation for
 ufs
Date: Fri, 17 Apr 2020 23:29:42 +0530
Message-Id: <20200417175944.47189-9-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200417175944.47189-1-alim.akhtar@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprAKsWRmVeSWpSXmKPExsWy7bCmpi7/x5lxBh8mcVk8mLeNzeLlz6ts
 Fp/WL2O1mH/kHKvF+fMb2C1ubjnKYrHp8TVWi8u75rBZzDi/j8mi+/oONovlx/8xWfzfs4Pd
 YunWm4wOvB6X+3qZPDat6mTz2Lyk3qPl5H4Wj49Pb7F49G1ZxejxeZOcR/uBbqYAjigum5TU
 nMyy1CJ9uwSujJbPexgLzohXTLu2jrmB8bNgFyMnh4SAicTr3XNZuxi5OIQEdjNKrJk0lx3C
 +cQocev0XRYI5xujxP3LB4EyHGAtrZ8DIOJ7GSUmn5/FBOG0MElcPdjLCjKXTUBb4u70LUwg
 toiAsMSRb22MIDazwA0miQcrXUBsYYEgiQt777OD2CwCqhLPllxkA7F5BWwkWl7tZoS4T15i
 9YYDzCA2p4CtRFvLUrBlEgL32SSOvl3MAlHkInGxfR0bhC0s8er4FnYIW0riZX8b1NXZEj27
 jCHCNRJL5x2DarWXOHBlDgtICbOApsT6XfoQZ/JJ9P5+wgTRySvR0SYEUa0q0fzuKlSntMTE
 7m5WCNtDYlvTAUZIMExglHh44x/jBEbZWQhTFzAyrmKUTC0ozk1PLTYtMMxLLdcrTswtLs1L
 10vOz93ECE4nWp47GGed8znEKMDBqMTD29E3M06INbGsuDL3EKMEB7OSCO9BN6AQb0piZVVq
 UX58UWlOavEhRmkOFiVx3kmsV2OEBNITS1KzU1MLUotgskwcnFINjEda+bhOv7OPvJaSrv+4
 7rCSztFANl6Whv+TN4u3WyZzaMledfhw2Sjo3cuvPLtSAlNWLvD/Eub6klteY96VVZ91os/r
 yAjoq8nw6m61M9ranZPqvTghQNfvPW+ngU/fbJ3NzX8mXSme+6h77vFi7z8RzxeqPpid5r/H
 aMGPY3s8uB7dkrdgVGIpzkg01GIuKk4EAMcrah0jAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrLLMWRmVeSWpSXmKPExsWy7bCSnC7fx5lxBqfuK1g8mLeNzeLlz6ts
 Fp/WL2O1mH/kHKvF+fMb2C1ubjnKYrHp8TVWi8u75rBZzDi/j8mi+/oONovlx/8xWfzfs4Pd
 YunWm4wOvB6X+3qZPDat6mTz2Lyk3qPl5H4Wj49Pb7F49G1ZxejxeZOcR/uBbqYAjigum5TU
 nMyy1CJ9uwSujJbPexgLzohXTLu2jrmB8bNgFyMHh4SAiUTr54AuRk4OIYHdjBLPm8VAbAkB
 aYnrGyewQ9jCEiv/PQeyuYBqmpgkHv98wwiSYBPQlrg7fQsTiC0CVHTkWxtYnFngGZPEqYel
 ILawQIDEufn/wWpYBFQlni25yAZi8wrYSLS82s0IsUBeYvWGA8wgNqeArURby1ImkNuEgGo2
 PImZwMi3gJFhFaNkakFxbnpusWGBUV5quV5xYm5xaV66XnJ+7iZGcCBrae1gPHEi/hCjAAej
 Eg9vR9/MOCHWxLLiytxDjBIczEoivAfdgEK8KYmVValF+fFFpTmpxYcYpTlYlMR55fOPRQoJ
 pCeWpGanphakFsFkmTg4pRoYUx0DN83S93v72nTV8e1rTP8vvP73acCpOssT58yCbuWrNt01
 3579PztLgLtnf3e5sEHgtiVy9ipGQaJx9RxGF3cFSHNOn770jJaVOcPxxBNZZqqNDvzrGGY6
 nP3qJpEQtIepfdLKNfktERyijiLSrsrT0qacOmefsEK/o5ThTPOh67LftL4osRRnJBpqMRcV
 JwIAg/fxwmACAAA=
X-CMS-MailID: 20200417181022epcas5p1f83138da6e76ff0917de88e913ef8e32
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200417181022epcas5p1f83138da6e76ff0917de88e913ef8e32
References: <20200417175944.47189-1-alim.akhtar@samsung.com>
 <CGME20200417181022epcas5p1f83138da6e76ff0917de88e913ef8e32@epcas5p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_111026_864938_629C8EED 
X-CRM114-Status: GOOD (  16.12  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.24 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
