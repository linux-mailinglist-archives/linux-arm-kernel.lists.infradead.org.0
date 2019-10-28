Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57D13E74F4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 16:21:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sLnB7Y+ML8w2A5oKksVeLkkjBq3GxE0ejUMxBUUrWeI=; b=mqCE0gXaibS/uxU4SRNHjWsWjt
	EnMWu+FR8UDH1i2rbC/c5pN7AYYppR12DLcLl2HP+UZ7EDqFndMknr9dGw+9pgW64ybD6UMRAzbj6
	wIAb8Kw1Qpr4PEtM8UmWIvM8b0r+rwo5cUqvLL74cXzFcg+sH0u2Wt9OGFCdNhuL5nHRs67lXrvKu
	+NWgL1z5FqshES3k3rgF852jlbyL16yi2KTY2OyaG+9ggz1HxaFCzkJGjAckkjc3+0zZixSPGIeGj
	LRoMCkdu9/atjR11mxvyk9SiGqs9XwsGQblpDLDXxjwH+OoHxO7LwWFDgRKAK03iXRtgFP7v9Zzcg
	JH70dbjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP6py-00041c-JM; Mon, 28 Oct 2019 15:21:42 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP6pQ-0003ei-3c
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 15:21:09 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20191028152100euoutp024cc874c1b0326171dff77b7e5f85ad09~R2L87b1Ou2321623216euoutp02g
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 15:21:00 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20191028152100euoutp024cc874c1b0326171dff77b7e5f85ad09~R2L87b1Ou2321623216euoutp02g
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1572276060;
 bh=lXMeZ01ghQeHmCsSwEVMKWRaGGkM3U274LWFnpK7UoY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=BY6kGvBwxoSTaxPjhnMfy/GuNH/Wo/iZUuNM/i7ZIV70vxbP/onreRRSeZj2Xc0E+
 XRhm33cCOXrrLqGzGAFYabhK4e1GTRMSwKvnpzgGecxI01/Nfn7RqYiq1fLIiaj4OM
 dzbU/TSihY1IybVqHIs7sm6RdS5AKrgJVju2oeLU=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20191028152100eucas1p29c77ac596acabc7349198dc04ce7f100~R2L8vQcic3137231372eucas1p2p;
 Mon, 28 Oct 2019 15:21:00 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id C2.A6.04469.C5707BD5; Mon, 28
 Oct 2019 15:21:00 +0000 (GMT)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191028152100eucas1p2ed6bd2d53670c85f6bf550af0631a55a~R2L8aZU_31159211592eucas1p2B;
 Mon, 28 Oct 2019 15:21:00 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191028152100eusmtrp1e1c07902410602e98b5156bf00403e6b~R2L8Zttme1762917629eusmtrp1k;
 Mon, 28 Oct 2019 15:21:00 +0000 (GMT)
X-AuditID: cbfec7f2-569ff70000001175-5e-5db7075cfc84
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 1E.25.04166.C5707BD5; Mon, 28
 Oct 2019 15:21:00 +0000 (GMT)
Received: from AMDC3061.DIGITAL.local (unknown [106.120.51.75]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191028152059eusmtip14f53975fead772ca216a54535ba9d21c~R2L78gDK02140421404eusmtip1n;
 Mon, 28 Oct 2019 15:20:59 +0000 (GMT)
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
To: krzk@kernel.org, robh+dt@kernel.org
Subject: [PATCH 3/3] dt-bindings: arm: samsung: Drop syscon compatible from
 CHIPID binding
Date: Mon, 28 Oct 2019 16:20:50 +0100
Message-Id: <20191028152050.10220-3-s.nawrocki@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191028152050.10220-1-s.nawrocki@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmplleLIzCtJLcpLzFFi42LZduzned0Y9u2xBucfy1psnLGe1WL+kXOs
 FufPb2C32PT4GqvF594jjBYzzu9jslh75C67ReveI+wWh9+0s1psfnCMzYHLY9OqTjaPzUvq
 Pfq2rGL0+LxJLoAlissmJTUnsyy1SN8ugStj9s5VLAWnOStez/7C3sD4iL2LkZNDQsBEYuvq
 hUA2F4eQwApGiUP/1jGBJIQEvjBKLJwbCZH4zCjx6MIDuI6mQz0sEInljBKX5z9jgnCAOi6t
 P8QIUsUmYCjRe7QPzBYRUJfo3jMFbAezwB9GidYtE5hBEsICMRL/Lk4FG8sioCqxfPFTFhCb
 V8Ba4nPHC6h18hKrNxwAq+cUsJFYPLGdFSL+n03i/hk7CNtF4v7xSVBxYYlXx7dA9cpInJ4M
 caqEQDOjRM/u2+wQzgRGoI4FjBBV1hKHj18E6uYAOk9TYv0ufYiwo8TWrx+ZQMISAnwSN94K
 goSZgcxJ26YzQ4R5JTrahCCqVSR+r5rOBGFLSXQ/+c8CYXtIbL62FRpA/YwSO6ZOYpvAKD8L
 YdkCRsZVjOKppcW56anFhnmp5XrFibnFpXnpesn5uZsYgYnj9L/jn3Ywfr2UdIhRgINRiYd3
 wuVtsUKsiWXFlbmHGCU4mJVEeC+eAQrxpiRWVqUW5ccXleakFh9ilOZgURLnrWZ4EC0kkJ5Y
 kpqdmlqQWgSTZeLglGpgXPc2Mf911a6NN0snned7Wp82c2/0UpU7rK1/H3QkGbctiJo4szEt
 yrY6PF/D5dbZOMUgq76cKj3fzSmzKic1XVrvOPPPXcmbX+eEqrXohj0z3XNxYvSEz0Vf/C8d
 OtaUE2FjarjloXES29rUnKsH9FmW7GlceJCDQXZ9JdfERi5bGd9jHdxXlViKMxINtZiLihMB
 JIi3nBgDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrMLMWRmVeSWpSXmKPExsVy+t/xu7ox7NtjDY6c47TYOGM9q8X8I+dY
 Lc6f38BusenxNVaLz71HGC1mnN/HZLH2yF12i9a9R9gtDr9pZ7XY/OAYmwOXx6ZVnWwem5fU
 e/RtWcXo8XmTXABLlJ5NUX5pSapCRn5xia1StKGFkZ6hpYWekYmlnqGxeayVkamSvp1NSmpO
 Zllqkb5dgl7G7J2rWApOc1a8nv2FvYHxEXsXIyeHhICJRNOhHpYuRi4OIYGljBKXTrcwdzFy
 ACWkJOa3KEHUCEv8udbFBmILCXxilHjyvR7EZhMwlOg92scIUi4ioClxbqEZSJhZoIVJYt1R
 RxBbWCBK4sPRhSwgNouAqsTyxU/BbF4Ba4nPHS+gTpCXWL3hADOIzSlgI7F4YjsrxCprie8X
 FrBMYORbwMiwilEktbQ4Nz232FCvODG3uDQvXS85P3cTIzCAtx37uXkH46WNwYcYBTgYlXh4
 J1zeFivEmlhWXJl7iFGCg1lJhPfiGaAQb0piZVVqUX58UWlOavEhRlOgoyYyS4km5wOjK68k
 3tDU0NzC0tDc2NzYzEJJnLdD4GCMkEB6YklqdmpqQWoRTB8TB6dUA6O1ad7n/z4nfvO+3De9
 IvuSUMmGT928DaZvmTuupTj8mHiz+u6BuHsHZi69xfmZ4dqB7Iv8/959yZyr16Q2+/ayIyuk
 X366qMb3kePCVdZbe9+rCNUfZ+JZm3//yLxQh4dZG9e7Ttq+6EVwQoSOWORPrjcmReZSSv7i
 02cl7T6gvTN4xqprb185KrEUZyQaajEXFScCAI7cKDF2AgAA
X-CMS-MailID: 20191028152100eucas1p2ed6bd2d53670c85f6bf550af0631a55a
X-Msg-Generator: CA
X-RootMTR: 20191028152100eucas1p2ed6bd2d53670c85f6bf550af0631a55a
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191028152100eucas1p2ed6bd2d53670c85f6bf550af0631a55a
References: <20191028152050.10220-1-s.nawrocki@samsung.com>
 <CGME20191028152100eucas1p2ed6bd2d53670c85f6bf550af0631a55a@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_082108_329991_822EABCC 
X-CRM114-Status: GOOD (  13.20  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 b.zolnierkie@samsung.com, vireshk@kernel.org, linux-pm@vger.kernel.org,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The "syscon" compatible string was introduced mainly to allow sharing
of the CHIPID IO region between multiple drivers. However, such sharing
can be also done without an additional compatible so remove "syscon".

Suggested-by: Krzysztof Kozlowski <krzk@kernel.org>
Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
---
 .../devicetree/bindings/arm/samsung/exynos-chipid.yaml         | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.yaml b/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.yaml
index 53c29d567789..afcd70803c12 100644
--- a/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.yaml
+++ b/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.yaml
@@ -13,7 +13,6 @@ properties:
   compatible:
     items:
       - const: samsung,exynos4210-chipid
-      - const: syscon
 
   reg:
     maxItems: 1
@@ -34,7 +33,7 @@ required:
 examples:
   - |
     chipid@10000000 {
-        compatible = "samsung,exynos4210-chipid", "syscon";
+        compatible = "samsung,exynos4210-chipid";
         reg = <0x10000000 0x100>;
         samsung,asv-bin = <2>;
     };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
