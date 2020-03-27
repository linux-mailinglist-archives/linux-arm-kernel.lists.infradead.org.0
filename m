Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD9F195C36
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 18:15:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Fvc9d7nEfYfqSTPKRANErDNKzYSjGfa9usYxvIyvIFk=; b=DtayoE6dKHD5q/JGKHgQAMP7TG
	Np6RCpMQLvcPi5l9ya4o1ZV6SFdM5N5Srnfstk45eroJQwS7dXSokeB1H8FZG3I2aiOWUWgGYhkur
	dl4n8HU2gpRE0PTuQzTEci9ixSJE+Nfpx7hQtzM0vZ9pfJyqh2NpMs5/T79Ezd42acXcheIRDaLkL
	P0h+vQ6vfERh2Y+aS5/Wo+/06ZAV3TMj/mV0M8f03VR22NxvfguY2JKBf6Lnm+GVrB/gZQQFBVwu4
	LBt/zgihZDgAti3TMkoQrkd8cCDVe7n0FeX39E/jej8GzZEWOchiEDNI3XxQV9P3vDMzL1jhahH0P
	o+yF8WcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHsZk-0005uc-7Y; Fri, 27 Mar 2020 17:15:20 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHsYp-0005Os-Cg
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 17:14:25 +0000
Received: from epcas5p1.samsung.com (unknown [182.195.41.39])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20200327171416epoutp033148719ec77ac4efe36033e1539c04e7~AOI8pNEvn1864018640epoutp03W
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 17:14:16 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20200327171416epoutp033148719ec77ac4efe36033e1539c04e7~AOI8pNEvn1864018640epoutp03W
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1585329256;
 bh=G+bJdfvd6kOYBesnk4XVdLnpcJ9D0gjHXd2SLb+hx3s=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=uXqwKSVSpa63zsXdGuTWVEJbafRdAo2dM2eFH4p2s600NbFoFzaW50TJU2b9sAgNI
 BMJCcHQOvcCTzcKiwPvA5Jo3Ryf2iRt3Lrpd18IG2AdloSfdc7FoZ5DCaJMD9TDmUZ
 1MJelTyjxt56zdPyzb8jYGO8jAeMtbMipUUdommY=
Received: from epsmges5p2new.samsung.com (unknown [182.195.42.74]) by
 epcas5p1.samsung.com (KnoxPortal) with ESMTP id
 20200327171414epcas5p135d6bd57553d45cf82b2babca7de2c52~AOI7YNPu43139031390epcas5p1u;
 Fri, 27 Mar 2020 17:14:14 +0000 (GMT)
Received: from epcas5p2.samsung.com ( [182.195.41.40]) by
 epsmges5p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 87.4F.04778.6643E7E5; Sat, 28 Mar 2020 02:14:14 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas5p1.samsung.com (KnoxPortal) with ESMTPA id
 20200327171414epcas5p1460e932c0bc98f31ebdd115218b4fd49~AOI6eUazR1776717767epcas5p16;
 Fri, 27 Mar 2020 17:14:14 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200327171414epsmtrp114cb342331b6004c55d273d851668daa~AOI6djuHf0124901249epsmtrp1K;
 Fri, 27 Mar 2020 17:14:14 +0000 (GMT)
X-AuditID: b6c32a4a-33bff700000012aa-b9-5e7e34661c7c
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 DE.3E.04158.5643E7E5; Sat, 28 Mar 2020 02:14:13 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200327171411epsmtip17f03debf6e403c79bf6c7fbebaa89ec5~AOI4lYqO93081730817epsmtip1D;
 Fri, 27 Mar 2020 17:14:11 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh+dt@kernel.org, devicetree@vger.kernel.org, linux-scsi@vger.kernel.org
Subject: [PATCH v4 1/5] dt-bindings: phy: Document Samsung UFS PHY bindings
Date: Fri, 27 Mar 2020 22:36:34 +0530
Message-Id: <20200327170638.17670-2-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200327170638.17670-1-alim.akhtar@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprIKsWRmVeSWpSXmKPExsWy7bCmhm6aSV2cwc/V1hYP5m1js3j58yqb
 xaf1y1gt5h85x2px/vwGdoubW46yWGx6fI3V4vKuOWwWM87vY7Lovr6DzWL58X9MFq17j7Bb
 LN16k9GB1+NyXy+Tx6ZVnWwem5fUe7Sc3M/i8fHpLRaPvi2rGD0+b5LzaD/QzRTAEcVlk5Ka
 k1mWWqRvl8CV8XTbUtaCr4IVzeuOsDQwvuDtYuTkkBAwkVh/YSZjFyMXh5DAbkaJD7dXQTmf
 GCXaFl9iB6kSEvjGKNH13B+m48L6TSwQRXsZJb48msEK4bQwSaz62cgMUsUmoC1xd/oWJhBb
 RCBA4tL7g2wgRcwC85gkFj3qAUsIC3hLLHkymwXEZhFQlTjReBdsHa+AjcSlj1OYINbJS6ze
 cABsKKeArcSNndOYQQZJCDxmk/i/ZQ4bRJGLxOTN/xkhbGGJV8e3sEPYUhIv+9uAbA4gO1ui
 Z5cxRLhGYum8YywQtr3EgStzWEBKmAU0Jdbv0gcJMwvwSfT+fsIE0ckr0dEmBFGtKtH87ipU
 p7TExO5uVgjbQ2Jv7wlmSDhMYJT48eMp4wRG2VkIUxcwMq5ilEwtKM5NTy02LTDKSy3XK07M
 LS7NS9dLzs/dxAhOKFpeOxiXnfM5xCjAwajEw7viam2cEGtiWXFl7iFGCQ5mJRHep5E1cUK8
 KYmVValF+fFFpTmpxYcYpTlYlMR5J7FejRESSE8sSc1OTS1ILYLJMnFwSjUwZkmqZ1rULJLt
 f3lffypL59M5MeITziwWO6PlbJOtacC8OVloQWnIej+LTy01czYv37aLXWWudFKkO/fS7xsN
 5nUZGq41v86v4HD0i8OlMie9c6vu7a9lvx+frRc17bCq0oG2e+Xmi7TOrZPfeMiq4Z+QxGMz
 7or/ugqLtKttA+991dmZ5O6mxFKckWioxVxUnAgADyGCfSQDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrILMWRmVeSWpSXmKPExsWy7bCSnG6qSV2cQd9VC4sH87axWbz8eZXN
 4tP6ZawW84+cY7U4f34Du8XNLUdZLDY9vsZqcXnXHDaLGef3MVl0X9/BZrH8+D8mi9a9R9gt
 lm69yejA63G5r5fJY9OqTjaPzUvqPVpO7mfx+Pj0FotH35ZVjB6fN8l5tB/oZgrgiOKySUnN
 ySxLLdK3S+DKeLptKWvBV8GK5nVHWBoYX/B2MXJySAiYSFxYv4mli5GLQ0hgN6NE2483LBAJ
 aYnrGyewQ9jCEiv/PWeHKGpikvh7aCMbSIJNQFvi7vQtTCC2iECQxL01a1lBipgFVjFJdPae
 ZQRJCAt4Syx5MhtsKouAqsSJxrtgU3kFbCQufZzCBLFBXmL1hgPMIDangK3EjZ3TwGwhoJoP
 TQeYJzDyLWBkWMUomVpQnJueW2xYYJSXWq5XnJhbXJqXrpecn7uJERzQWlo7GE+ciD/EKMDB
 qMTDu+JqbZwQa2JZcWXuIUYJDmYlEd6nkTVxQrwpiZVVqUX58UWlOanFhxilOViUxHnl849F
 CgmkJ5akZqemFqQWwWSZODilGhiDxaaazfHeUFx48mbh9mf5WSumHOSfvlNd75/11jOL5+6/
 537m1vUZs183m37buarheMDrLd+XzvqypXqhdYfD05TX87cYHNCKLq63l/vItN1fLcdiw8/9
 UbdOFmmf12u7XM/UwiqtIy0nI2E3Yd3v7ndVx5r+7qoyreS2dVpw2uMaz58NM7zKlViKMxIN
 tZiLihMBUEZ+Y2QCAAA=
X-CMS-MailID: 20200327171414epcas5p1460e932c0bc98f31ebdd115218b4fd49
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200327171414epcas5p1460e932c0bc98f31ebdd115218b4fd49
References: <20200327170638.17670-1-alim.akhtar@samsung.com>
 <CGME20200327171414epcas5p1460e932c0bc98f31ebdd115218b4fd49@epcas5p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_101423_808373_51C44BE3 
X-CRM114-Status: GOOD (  12.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.33 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 .../bindings/phy/samsung,ufs-phy.yaml         | 67 +++++++++++++++++++
 1 file changed, 67 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
new file mode 100644
index 000000000000..41ba481ecc76
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
@@ -0,0 +1,67 @@
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
+  samsung,pmu-syscon:
+    $ref: '/schemas/types.yaml#/definitions/phandle'
+    description: phandle for PMU system controller interface, used to
+                 control pmu registers for power isolation
+
+required:
+  - "#phy-cells"
+  - compatible
+  - reg
+  - reg-names
+  - clocks
+  - clock-names
+  - samsung,pmu-syscon
+
+examples:
+  - |
+    #include <dt-bindings/clock/exynos7-clk.h>
+
+    ufs_phy: ufs-phy@15571800 {
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
+...

base-commit: fb33c6510d5595144d585aa194d377cf74d31911
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
