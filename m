Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 170E3D9499
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 16:59:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=n0KcRrZYxJA5Wd8eKwymtWLuePgFjwZk+AL/54Ypows=; b=m4xhu1Hs+3XFRhDXIEhjgVAhXA
	Wq37wLOs2CZu2BPBrxVxDBKk1M7VegrgzHvqaV50Njmrrn68PRgssPcY2YoZS5oGwPkjmvGb9VbJH
	CbLaywa+jqUxeYFR0JhJy6AuXR6Z2TWnayq49qTiSD9yGk2EwN7Cr6ainBtuigisn8gqRJKnrnK06
	94a/bphAQOl0Lby5m2+UW/lk/aAts9N3RTxZNtzTDyTjGDBUj+YBEOho6icKYaBSa2kW6Py0yiohD
	z8pywElDVRsPZ+MfmNYbBD2DoaEMvAa1VGjHUonW+TwU3x3M17GW/Drg2DJ/zdLKb2i1/cUinSVKM
	LWw0WgOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKklT-0005lI-Vu; Wed, 16 Oct 2019 14:59:04 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKkkh-0005Gw-9H
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 14:58:17 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20191016145813euoutp0188d876ba1118224896d4bbf71550c9de~OKIn5mJ-l2340723407euoutp01I
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 14:58:13 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20191016145813euoutp0188d876ba1118224896d4bbf71550c9de~OKIn5mJ-l2340723407euoutp01I
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1571237893;
 bh=/lmboXBif44w8soXz2PYKntg4bqqo8IswmwIF0l+O7I=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=qkAN5K9lodhTEqatyx8/Q6XQXKuvanRYKYWnpsUmDp6mZi7Jf7+gH8PdB4sfXEcFU
 MTIGqZ5JaRoVGnMtx/TpxFIuAoUfPDVtUeWh0AJEj+OGuSb6pKLk1hLDPKc7Ulc+x1
 b6aNBWjJEf433xxv1mezYCkAI6p1THTrrPgGADVI=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20191016145812eucas1p2783c28881140e6e264faeb43a9b54b47~OKIne0rtG0057200572eucas1p2w;
 Wed, 16 Oct 2019 14:58:12 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id A4.30.04374.40037AD5; Wed, 16
 Oct 2019 15:58:12 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20191016145812eucas1p1a3cf3f44a2cff4c32a2270334630c4a2~OKInMomkn0394803948eucas1p1D;
 Wed, 16 Oct 2019 14:58:12 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191016145812eusmtrp2a0970f171d49158c89fdea7a50b3b9f6~OKInL6oeR2395523955eusmtrp2f;
 Wed, 16 Oct 2019 14:58:12 +0000 (GMT)
X-AuditID: cbfec7f5-4f7ff70000001116-4c-5da73004b284
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 6A.30.04117.40037AD5; Wed, 16
 Oct 2019 15:58:12 +0100 (BST)
Received: from AMDC3061.DIGITAL.local (unknown [106.120.51.75]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191016145811eusmtip2127bddca678e583c85bf6a0aee137f25~OKImmf8mH0665906659eusmtip2E;
 Wed, 16 Oct 2019 14:58:11 +0000 (GMT)
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
To: krzk@kernel.org, vireshk@kernel.org, robh+dt@kernel.org
Subject: [PATCH v5 2/4] dt-bindings: arm: samsung: Update the CHIPID binding
 for ASV
Date: Wed, 16 Oct 2019 16:57:54 +0200
Message-Id: <20191016145756.16004-3-s.nawrocki@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191016145756.16004-1-s.nawrocki@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprMKsWRmVeSWpSXmKPExsWy7djPc7osBstjDe68ULLYOGM9q8X8I+dY
 Lc6f38BusenxNVaLz71HGC1mnN/HZLH2yF12i9a9R9gtLj/eyGZx+E07q8W/axtZLDY/OMbm
 wOOxaVUnm8fmJfUeLSf3s3j0bVnF6PF5k1wAaxSXTUpqTmZZapG+XQJXxu1Zz1kKfglWrNhz
 hLWBsYmvi5GTQ0LAROL81kZmEFtIYAWjxIZfxl2MXED2F0aJ9nXfGSGcz4wSn/vvMcN0HF44
 kQkisZxRYlL3O2a4lid/X7OBVLEJGEr0Hu0DaufgEBGwlvh0UgykhllgIpPEi9ld7CA1wgJh
 EjdmvmEEsVkEVCWWLTgNtoEXqH7b27OMENvkJVZvOAAW5xSwkZgxZw0TRHw6u8Tc91IQtovE
 v+cfWSBsYYlXx7ewQ9gyEv93zge7VEKgmVGiZ/dtdghnAqPE/eMLoDZYSxw+fpEV5FJmAU2J
 9bv0IcKOEh++Lgd7QEKAT+LGW0GQMDOQOWnbdGaIMK9ER5sQRLWKxO9V06FOk5LofvIf6hwP
 iU03+9kh4dMPdMLEJuYJjPKzEJYtYGRcxSieWlqcm55abJyXWq5XnJhbXJqXrpecn7uJEZhU
 Tv87/nUH474/SYcYBTgYlXh4JzAujxViTSwrrsw9xCjBwawkwju/ZUmsEG9KYmVValF+fFFp
 TmrxIUZpDhYlcd5qhgfRQgLpiSWp2ampBalFMFkmDk6pBsbT3S+dvzSmnNHWLjjD7tLUt4Wt
 3X31woSwR8Yzw708nGXYp8+dsn/5vKLanA72ormvOr98V2AQnjXtY4LrvJlnjGKX9nV0exa1
 sE5aYnhfpsfsfuQN1xO8SlyZev3W6ickAzJ0t+t1cMUnfDx0a6rZmrzayU9OGwvuWdRWFz17
 hvmjHrlIBiWW4oxEQy3mouJEAAaFQjomAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrCLMWRmVeSWpSXmKPExsVy+t/xe7osBstjDV5P4LHYOGM9q8X8I+dY
 Lc6f38BusenxNVaLz71HGC1mnN/HZLH2yF12i9a9R9gtLj/eyGZx+E07q8W/axtZLDY/OMbm
 wOOxaVUnm8fmJfUeLSf3s3j0bVnF6PF5k1wAa5SeTVF+aUmqQkZ+cYmtUrShhZGeoaWFnpGJ
 pZ6hsXmslZGpkr6dTUpqTmZZapG+XYJexu1Zz1kKfglWrNhzhLWBsYmvi5GTQ0LAROLwwolM
 XYxcHEICSxklOhbsZO9i5ABKSEnMb1GCqBGW+HOtiw2i5hOjxIkVK9hBEmwChhK9R/sYQepF
 BOwltn8TAalhFpjNJHHmVy8rSI2wQIjEwc/T2UBsFgFViWULTjOD2LwC1hLb3p5lhFggL7F6
 wwGwOKeAjcSMOWuYQGwhoJrTl1awTmDkW8DIsIpRJLW0ODc9t9hIrzgxt7g0L10vOT93EyMw
 xLcd+7llB2PXu+BDjAIcjEo8vC+Yl8cKsSaWFVfmHmKU4GBWEuGd37IkVog3JbGyKrUoP76o
 NCe1+BCjKdBRE5mlRJPzgfGXVxJvaGpobmFpaG5sbmxmoSTO2yFwMEZIID2xJDU7NbUgtQim
 j4mDU6qBUadwijDLHvNLcz+1SfU9F10TyMrL+FH3x0rPftPGC/MVXinGMk6ZwH1iyfG2txzv
 77EuZeQLM3n01Gm6FdtVlbvHXfw7fr549DqD6aa9ntmq1XlxoS2Rt83EJ6ka9Qu8TJnTuWh/
 /E7nWH3dtW9Wv3W5urT1Udm/sJf97Jl7dLLT9mwIefhfVYmlOCPRUIu5qDgRAIN+Sk6HAgAA
X-CMS-MailID: 20191016145812eucas1p1a3cf3f44a2cff4c32a2270334630c4a2
X-Msg-Generator: CA
X-RootMTR: 20191016145812eucas1p1a3cf3f44a2cff4c32a2270334630c4a2
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191016145812eucas1p1a3cf3f44a2cff4c32a2270334630c4a2
References: <20191016145756.16004-1-s.nawrocki@samsung.com>
 <CGME20191016145812eucas1p1a3cf3f44a2cff4c32a2270334630c4a2@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_075815_474100_6F73F877 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-pm@vger.kernel.org, sboyd@kernel.org, b.zolnierkie@samsung.com,
 roger.lu@mediatek.com, Sylwester Nawrocki <s.nawrocki@samsung.com>,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds documentation of new optional "samsung,asv-bin"
property in the chipid device node and documents requirement of
"syscon" compatible string.  These additions are needed to support
Exynos ASV (Adaptive Supply Voltage) feature.

Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
---
Depends on patch ("8d0daa4c89c9 dt-bindings: arm: samsung: Convert
Exynos Chipid bindings to json-schema") already applied to Rob's
dt/next.

Changes since v4:
 - converted to YAML

Changes since v3:
 - none

Changes since v2:
 - corrected patch summary line prefix, the patch moved in the
   sequence

Changes since v1 (RFC):
 - new patch

 .../bindings/arm/samsung/exynos-chipid.yaml   | 31 +++++++++++++++++--
 1 file changed, 28 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.yaml b/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.yaml
index 9c573ad7dc7d..df84d9e9f4c2 100644
--- a/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.yaml
+++ b/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.yaml
@@ -9,17 +9,42 @@ title: Samsung Exynos SoC series Chipid driver
 maintainers:
   - Krzysztof Kozlowski <krzk@kernel.org>

+# Custom select to avoid matching all nodes with 'syscon'
+select:
+  properties:
+    compatible:
+      contains:
+        const: samsung,exynos4210-chipid
+  required:
+    - compatible
+
 properties:
   compatible:
-    items:
-      - const: samsung,exynos4210-chipid
+    allOf:
+      - items:
+        - const: samsung,exynos4210-chipid
+        - const: syscon

   reg:
     maxItems: 1

+  samsung,asv-bin:
+    description:
+      Adaptive Supply Voltage bin selection. This can be used
+      to determine the ASV bin of an SoC if respective information
+      is missing in the CHIPID registers or in the OTP memory.
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+      - enum: [ 0, 1, 2, 3 ]
+
+required:
+  - compatible
+  - reg
+
 examples:
   - |
     chipid@10000000 {
-      compatible = "samsung,exynos4210-chipid";
+      compatible = "samsung,exynos4210-chipid", "syscon";
       reg = <0x10000000 0x100>;
+      samsung,asv-bin = <2>;
     };
--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
