Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0250FDA850
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 11:30:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:List-Owner; bh=x8ClxS6FIlLA1Smx5bv058Zevmmq+oKxTKX1L99gtrE=; b=gY
	sd3UoKIFjTYq0+sx4/+liBaj22xyVEyWFC8qZji9tV6yexOwD1rJdz33hGrPoGeGXVJxSSVXsTXBj
	ex4ub4HNE7c1SQRA2jlk3Yie6E+DNMyqLaY8rNrVkjgXXpsXjya1ue6McsUJloQxKLIRBKX6LNZRf
	k5Eg50qEh4o1Sdzr4+iiatfi+ib1BPfDuS/qxqRnSz6TzhDscxg/hvbdOLOZw78veS/blv1olN2Xe
	djhLYomnuE8lAS0n7c/CJ9W5O6Gzn9rECidjeyV2PM5zhWv8gK/oFqeQmSDf6DAFmZsvAFCTdWFDA
	M1yMFn4cAyCVdX06UMTYZ3jBvYcpvFXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL26n-0002ll-QW; Thu, 17 Oct 2019 09:30:13 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL26W-0002kk-E4
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 09:29:58 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20191017092954euoutp02a33034061e5b6eaaf7f76c73b56172ae~OZTQWvFNp1001010010euoutp02U
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 17 Oct 2019 09:29:54 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20191017092954euoutp02a33034061e5b6eaaf7f76c73b56172ae~OZTQWvFNp1001010010euoutp02U
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1571304594;
 bh=AZdVAI8mpGcBE9pPmmB/AtQ4Fwrc9hnMXEZrXafSrJk=;
 h=From:To:Cc:Subject:Date:References:From;
 b=h0ogVYM70aSf7Tp0Rz6S8W67pcy/l8B+nVbg7z0v1OkG5HSfIrF9oES6MYlF2xke/
 Zv84X7rKYodU1VxBAdS2MnNtwQNUDNslRigi3/OoXSiLBwylMw/ZeYGJ5X9mI5nNdr
 aXmDlUba/uG+vUFiPAt8X8jMABFtMe+iULH/Cp3E=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20191017092954eucas1p140e423338f18e841fd670ec99aca6734~OZTQBxuxI2126021260eucas1p1V;
 Thu, 17 Oct 2019 09:29:54 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id A0.96.04469.19438AD5; Thu, 17
 Oct 2019 10:29:53 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191017092953eucas1p259c1e03eb2cb4d19aa48eaa2e3cca2dc~OZTPtAhJM0648306483eucas1p2e;
 Thu, 17 Oct 2019 09:29:53 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191017092953eusmtrp17f62f839f61fa99d9025415421ea344e~OZTPsTIIP1633216332eusmtrp1K;
 Thu, 17 Oct 2019 09:29:53 +0000 (GMT)
X-AuditID: cbfec7f2-54fff70000001175-50-5da83491a45c
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 48.BD.04166.19438AD5; Thu, 17
 Oct 2019 10:29:53 +0100 (BST)
Received: from AMDC3061.DIGITAL.local (unknown [106.120.51.75]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191017092953eusmtip2f4ef56add6868611954ec7fd29136e49~OZTPNNBIX2907729077eusmtip2K;
 Thu, 17 Oct 2019 09:29:53 +0000 (GMT)
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
To: robh+dt@kernel.org
Subject: [PATCH v6] dt-bindings: arm: samsung: Update the CHIPID binding for
 ASV
Date: Thu, 17 Oct 2019 11:29:39 +0200
Message-Id: <20191017092939.25899-1-s.nawrocki@samsung.com>
X-Mailer: git-send-email 2.17.1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrAIsWRmVeSWpSXmKPExsWy7djPc7oTTVbEGvRNsrHYOGM9q8X8I+dY
 Lc6f38BusenxNVaLz71HGC1mnN/HZLH2yF12i9a9R9gtDr9pZ3Xg9Ni0qpPNY/OSeo++LasY
 PT5vkgtgieKySUnNySxLLdK3S+DKuDt1E3PBVqGKtat7WBoYD/N1MXJySAiYSOyc283YxcjF
 ISSwglFi+e4HUM4XRokv/WeYIZzPjBL/vj5jhmlZcvMGK0RiOaPE/Ul9YAmwljlbxEBsNgFD
 id6jfUCjODhEBMQk9q4VBQkzC/xklHj0WgLEFhYIktj9fAsjiM0ioCoxb80ZJpByXgFridat
 JhCr5CVWbzgAdoOEwH02iWU397NCJFwkpv/cDWULS7w6voUdwpaROD25hwWioZlRomf3bXYI
 ZwLQoccXMEJUWUscPn6RFWQbs4CmxPpd+hBhR4nl07rBbpYQ4JO48VYQ4mY+iUnbpjNDhHkl
 OtqEIKpVJH6vms4EYUtJdD/5zwJR4iEx4UcyJEBiJW7M/Mk4gVFuFsKqBYyMqxjFU0uLc9NT
 iw3zUsv1ihNzi0vz0vWS83M3MQLTwel/xz/tYPx6KekQowAHoxIP7wTG5bFCrIllxZW5hxgl
 OJiVRHjntyyJFeJNSaysSi3Kjy8qzUktPsQozcGiJM5bzfAgWkggPbEkNTs1tSC1CCbLxMEp
 1cDYP/nZwoasRSo53RzTKtaf5V3RGuCbufXdAq24LPGfslwf6h/F/Gjcurzh9KJ5MoeqFz6O
 CsgI3GPjd+xFmUXg5zXrOs7eKQ57WF8xdXtf763G+W83/ji14+rsTfpfd1xbk/XNjdvSsyrk
 bEJad8udWKXbvr8yfX721BXXP8psusd8k1MrgbtLiaU4I9FQi7moOBEAArexdQMDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrOLMWRmVeSWpSXmKPExsVy+t/xe7oTTVbEGmx8o2KxccZ6Vov5R86x
 Wpw/v4HdYtPja6wWn3uPMFrMOL+PyWLtkbvsFq17j7BbHH7TzurA6bFpVSebx+Yl9R59W1Yx
 enzeJBfAEqVnU5RfWpKqkJFfXGKrFG1oYaRnaGmhZ2RiqWdobB5rZWSqpG9nk5Kak1mWWqRv
 l6CXcXfqJuaCrUIVa1f3sDQwHubrYuTkkBAwkVhy8wZrFyMXh5DAUkaJg71HWLoYOYASUhLz
 W5QgaoQl/lzrYoOo+cQocfzdcUaQBJuAoUTv0T5GkHoRATGJvWtFQWqYBRqZJG5smwVWIywQ
 IPHkHUgzJweLgKrEvDVnmEDqeQWsJVq3mkDMl5dYveEA8wRGngWMDKsYRVJLi3PTc4sN9YoT
 c4tL89L1kvNzNzECA3HbsZ+bdzBe2hh8iFGAg1GJh3cC4/JYIdbEsuLK3EOMEhzMSiK881uW
 xArxpiRWVqUW5ccXleakFh9iNAXaPZFZSjQ5HxgleSXxhqaG5haWhubG5sZmFkrivB0CB2OE
 BNITS1KzU1MLUotg+pg4OKUaGJM38n/oc5+cs2Udp0718TYvnTUZtiFiJl1/KqTb513jeND3
 Z/7VH63Ldye+93h5e/bhCcYvDKOERMvaXR3uPu0R/yt9KTmF337VKn4ft6OHjDzj5Vb1yX1i
 urv8C+NBvkmZa6a1FqYG/XlgvrBP77WS79uon0z5Bd1ZaqtuHlk2OZNdbOWjG0osxRmJhlrM
 RcWJAAP7r5xaAgAA
X-CMS-MailID: 20191017092953eucas1p259c1e03eb2cb4d19aa48eaa2e3cca2dc
X-Msg-Generator: CA
X-RootMTR: 20191017092953eucas1p259c1e03eb2cb4d19aa48eaa2e3cca2dc
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191017092953eucas1p259c1e03eb2cb4d19aa48eaa2e3cca2dc
References: <CGME20191017092953eucas1p259c1e03eb2cb4d19aa48eaa2e3cca2dc@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_022956_673766_6E620677 
X-CRM114-Status: GOOD (  13.36  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 b.zolnierkie@samsung.com, linux-pm@vger.kernel.org, krzk@kernel.org,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
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

Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
---
Depends on patch ("8d0daa4c89c9 dt-bindings: arm: samsung: Convert
Exynos Chipid bindings to json-schema") already applied to Rob's
dt/next.

Changes since v5:
 - removed uneeded allOf from 'compatible' property section

Changes since v4:
 - converted to YAML

Changes since v3:
 - none

Changes since v2:
 - corrected patch summary line prefix, the patch moved in the
   sequence

Changes since v1 (RFC):
 - new patch
---
 .../bindings/arm/samsung/exynos-chipid.yaml   | 26 ++++++++++++++++++-
 1 file changed, 25 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.yaml b/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.yaml
index 9c573ad7dc7d..c7f06aa1963c 100644
--- a/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.yaml
+++ b/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.yaml
@@ -9,17 +9,41 @@ title: Samsung Exynos SoC series Chipid driver
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
     items:
       - const: samsung,exynos4210-chipid
+      - const: syscon

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
