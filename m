Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A42841E5321
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 03:35:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dl6iRDaVexaOMJApOfPiMBklJQXosSVBtBMeedCjTIg=; b=jma55i0DXEOgVmz8PVOqNCIqum
	RNDfM58DpWc7J70OZlo+ld7JqUsjWE3ROSO3uHijHk1frKyBsfK07fNpni1RAi3scrjBy57n/Tnjm
	8w6V7P0r9uT/6ex0fR0C5qt35EKlUxr9IN5elt524Bso/Wz+bN9qlQDHrv6EaRcuIsS3wQWzvahdz
	r+IZQG1zpmPwgABQY+pnN/KKJXPGbMBteuEAgmUf0dAs13fxqyexWelxd7FxcAGrqpZEwYnPl89ib
	VitAiyZ9pNJT3E6OY0drh4Kn2ND7/WUunOsOMFFAczWT8lmz03UyLvMr4iOsxcjwvrfR4cpfpfC1h
	GPmrQs9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je7Ri-0004i8-TQ; Thu, 28 May 2020 01:34:58 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je7PX-0003Ky-Tq
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 01:32:46 +0000
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20200528013241epoutp049bd06098682514a4e64a7f8f348da26f~TDSijmFvc2583925839epoutp04h
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 01:32:41 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20200528013241epoutp049bd06098682514a4e64a7f8f348da26f~TDSijmFvc2583925839epoutp04h
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1590629561;
 bh=tic87tYGoP0wf8PhTKj7y0fX/KpDctpqswklLi69jbQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=I7HuNFrc9lU1WrmK7s+waTTyfxgdfRfiygKnf9erQ1rU8ykAJYzfWbr7tdEkZdBA9
 srFYY5Kn447Lg7n4o23ehRFVyaed+OL0sPb/u+QGxoFcPHh7ouIgJoRTU4MkJCBreq
 F7O6phqcXh4pjCnvW9r0EVP7PympT4t0i7E1E7CY=
Received: from epsmges5p3new.samsung.com (unknown [182.195.42.75]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTP id
 20200528013241epcas5p30be469cab73e2e648a32c533c0efb223~TDSiOyknR1669616696epcas5p3H;
 Thu, 28 May 2020 01:32:41 +0000 (GMT)
Received: from epcas5p1.samsung.com ( [182.195.41.39]) by
 epsmges5p3new.samsung.com (Symantec Messaging Gateway) with SMTP id
 DB.B2.09475.9B41FCE5; Thu, 28 May 2020 10:32:41 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
 20200528013240epcas5p38d53c6e320065b40bda434c49efad57a~TDShzl6bs1669616696epcas5p3G;
 Thu, 28 May 2020 01:32:40 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200528013240epsmtrp1237bf07c979619eabc8b4920344b08bb~TDShy2_sM0638506385epsmtrp1o;
 Thu, 28 May 2020 01:32:40 +0000 (GMT)
X-AuditID: b6c32a4b-39fff70000002503-59-5ecf14b98927
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 40.F7.08382.8B41FCE5; Thu, 28 May 2020 10:32:40 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200528013238epsmtip1c90958696256eb20def2426af912ec96~TDSf8n0mu1652016520epsmtip1k;
 Thu, 28 May 2020 01:32:38 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh@kernel.org
Subject: [PATCH v10 08/10] dt-bindings: ufs: Add bindings for Samsung ufs host
Date: Thu, 28 May 2020 06:46:56 +0530
Message-Id: <20200528011658.71590-9-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200528011658.71590-1-alim.akhtar@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSe0xSURzHO5cLXCnaDayOOrPhXFMX2qrtNu05q9vasq3Wqj80yiu6gBjX
 QqstK8JUEq00a05tYg9LU0MUjCQ0ynxQafaaxrIXVK6g7J2F19Z/n9/v9/me39nZwViCg+xg
 LF2RQakUEpmIw0NN7ZFz5poDnUmxluHJhKvcxCHc3x5wCO+Vc2yioqOXTTid9VzisfEmSjQO
 D7CJPksZhyh1XkeI/IctHOL8rd8IMXathUtUNz0Gy/hkX8ExhGysyeWQVw0HSE1nG0p+fPkE
 JQuMNYD0Nc4ic2z5yHpsKy8+hZKl76FUMUu28dIun+4EyjszMntKh0E2MEzLAwEYxBfA+i9m
 dh7gYQK8FcBSQy2LKbwA9l96NTEZBdB1XYv8i+g0OpQZWAFsHy3jMIUGgXUOK9dvcfBoOHjK
 OJ4IxIWwY1QL/MzCHyHQdTHBz0J8Pey1nRz3UTwCaurusvzMx+Nh0a8jLGZbGLxUb/vLGBaA
 L4bWwmVMOxeDNc/mMJwA23x2lGEh9NwychkOhm69luuPQnwn1FnmM+39sLrcMaEvhbb+MtSv
 sPBIeMUSw1xyKjz24wXCJPnwqFbA2BHw8MiDiWQILMrPZzMKCZuzw5k3KASw+qCZXQhCz/w/
 tBKAGhBEKWm5lKIXKucrKLWYlsjp3QqpeMcueSMY/yVRa1vAc9cHsR0gGLADiLFEgfwVPV1J
 An6KJGsvpdqVrNoto2g7CMFQ0Uy+6Gt3kgCXSjKonRSlpFT/pggWEJyNTFp331AcGGNd/Ob1
 In3owIzO960Xj6e+Wx1xfNDn/W7quqc/UfuzlsgZKC5JH9leEZ/VBT6X6J+2JU923WgI71a7
 85odyXHJKGYKjpruVVqr61cuTC0bCp0SFhQr/qad3XQnM6rKG7Mu7+NmZdWZITHmUfLG6I2r
 plbRHpV5KKug/1PAFt9Re4Mlul0hTpfe3ljXbAxZrrsbck1G+yJbZM5DRboU9gUPanPIK4XR
 avmb1x2JCZbWs5lxhhxzJ7lVX1Ip3LBvNdolHVXvGDMFadYqM2I3TekfSR30hg2Hx6UVP7rs
 MU16uarK8dXnnq1+m/sl0d2QuKa3qRl+7xOhdJpkXhRLRUv+AMLZRYmUAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrELMWRmVeSWpSXmKPExsWy7bCSnO4OkfNxBrNXaFo8mLeNzeLlz6ts
 Fp/WL2O1mH/kHKvF+fMb2C1ubjnKYrHp8TVWi8u75rBZzDi/j8mi+/oONovlx/8xWfzfs4Pd
 YunWm4wOvB6X+3qZPDat6mTz2Lyk3qPl5H4Wj49Pb7F49G1ZxejxeZOcR/uBbqYAjigum5TU
 nMyy1CJ9uwSujDUzTzIWnBKrODvjMWMD4xLBLkZODgkBE4melh6WLkYuDiGB3YwS7bsa2CAS
 0hLXN05gh7CFJVb+e84OUdTEJLHmSDMzSIJNQFvi7vQtTCC2CFDRkW9tjCA2s8AzJolTD0tB
 bGEBP4nDc86wgNgsAqoSLesugPXyCthITPzbygyxQF5i9YYDQDYHB6eArcTeCQ4gYSGgkgmr
 9jJOYORbwMiwilEytaA4Nz232LDAMC+1XK84Mbe4NC9dLzk/dxMjOJi1NHcwbl/1Qe8QIxMH
 4yFGCQ5mJRFep7On44R4UxIrq1KL8uOLSnNSiw8xSnOwKInz3ihcGCckkJ5YkpqdmlqQWgST
 ZeLglGpgmh4W+ftRNfPZQ6v+iVftedrLsDj5ht8Mr+/MbZn2s3+qPDBT5FrN7XdITFV6/bJK
 07X/oibzCmd0C9UqXb2p2ZMvu7R7XYNRb2pz7XV1q/L3papaNfaN2+J4Xjvtam1QUOqWFt0+
 LTvrrt9bpX+P/mxsETgSuPiD0pWKZxZz5yr1Hi0O3z6bLfndoQ0vnnvEMG85MnnCg+K7az6z
 ThD+J3+g5cwH44qXN7dIiyclyy0SrLTwbpQ8/NymKs3voNY+jwnfvybe+tiy80CbYsJU1Ytz
 fJIfs25+y8pRJ2h4IuxY/oeNkv9LHB6ceLO7cvmXq9vfbzv1i/+O/FKJs5/3TLR249U53nRo
 h8LMY95MZkosxRmJhlrMRcWJAIAiLSXVAgAA
X-CMS-MailID: 20200528013240epcas5p38d53c6e320065b40bda434c49efad57a
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200528013240epcas5p38d53c6e320065b40bda434c49efad57a
References: <20200528011658.71590-1-alim.akhtar@samsung.com>
 <CGME20200528013240epcas5p38d53c6e320065b40bda434c49efad57a@epcas5p3.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_183244_336350_73CCAB14 
X-CRM114-Status: GOOD (  14.34  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.34 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

This patch adds DT bindings for Samsung ufs hci

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
---
 .../bindings/ufs/samsung,exynos-ufs.yaml      | 89 +++++++++++++++++++
 1 file changed, 89 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml

diff --git a/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml b/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
new file mode 100644
index 000000000000..38193975c9f1
--- /dev/null
+++ b/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
@@ -0,0 +1,89 @@
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
+    items:
+      - description: ufs link core clock
+      - description: unipro main clock
+
+  clock-names:
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
+    const: ufs-phy
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
