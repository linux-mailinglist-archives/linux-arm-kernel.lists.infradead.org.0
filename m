Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C45C768A07
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 14:55:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XqX+csMllvUS7HGmbq+9WYZqA4JRMO6mAVK4POfQsdI=; b=MFcPiJK5CcR7sLGkybZZ7w179y
	evj51wZFDSzxRKk/eUf2BYL/vRUuUoxWxRsaw/PYx6v/gkzlg1KVRHsaeyFS/p6MtxW+eQtdnufHA
	0ZHDHX2PQ9yJUnW4G4XgWCRXdDI+oJgsscuLYJI+DopbyrZqgdks/KCMrT2Ha8SDSqdthQkE7ixJW
	Sazv+ojTDF8ks9jbAsWtH+/sKD+DrtOQ1M2Cqnzo8p2GvLnk1OugYyEjdB6NjVLzH2g+93zYCjjqh
	sZG9mnctrcFonyTUG0GYMkoFz3RnLzl47LDTskwPx/TKOe2LsOtmTT2y2iS9DH/iSd4tkKf5chkhM
	3VBuXBDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn0VQ-0005UZ-KY; Mon, 15 Jul 2019 12:55:00 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn0Lm-0003xh-E9
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 12:45:05 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190715124501euoutp02ebb9b4f9fcea85c042020d3e4a2e9386~xlUxlHB2W0722707227euoutp02e
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 12:45:01 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190715124501euoutp02ebb9b4f9fcea85c042020d3e4a2e9386~xlUxlHB2W0722707227euoutp02e
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563194701;
 bh=v5/Vyl30iwbBm0PUVMVAlvF6RXT28v4DXfcx78H2Kr0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=anbVR87UcoqS2nMkrrjm3mB+HgSzBu8iaGZEeb+J3qpVNmHmn1oqAmZwVwPSHgvj2
 ZXjQNVGjbEK7TuMaZmn0joWKDGRrJtMeo7wEiyrPLT88UlrZFJLCPDolvdEByZgh9O
 X/TgAmR0uw0DKEwD/J9iorJZypt82581Rib7mois=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190715124500eucas1p2052a36585d1e0b9da796ad5f58b9d083~xlUxAyOaE1849318493eucas1p2F;
 Mon, 15 Jul 2019 12:45:00 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 40.35.04298.C457C2D5; Mon, 15
 Jul 2019 13:45:00 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124459eucas1p2a1d8795e57a82704ff221567a8810485~xlUwNhcFj2439124391eucas1p2g;
 Mon, 15 Jul 2019 12:44:59 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190715124459eusmtrp134ba2a8ab3e870b6e2bb6b40db1d048c~xlUv-Z_EB0488104881eusmtrp1u;
 Mon, 15 Jul 2019 12:44:59 +0000 (GMT)
X-AuditID: cbfec7f2-f13ff700000010ca-d9-5d2c754cd082
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id B3.17.04140.B457C2D5; Mon, 15
 Jul 2019 13:44:59 +0100 (BST)
Received: from AMDC3778.DIGITAL.local (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124458eusmtip2d770f1aa2bf9b413aa2efcf87f6b1ae2~xlUvMWjpX0573605736eusmtip2N;
 Mon, 15 Jul 2019 12:44:58 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: [PATCH v1 31/50] ARM: dts: exynos: align lowest OPP in bus_jpeg in
 Exynos5420
Date: Mon, 15 Jul 2019 14:43:58 +0200
Message-Id: <20190715124417.4787-32-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190715124417.4787-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSe0hTcRTud+/u7tWc3abpD4uMQWBpUyvoV5kVVFxEKKjohdRsFxXntF1n
 aZHrtWouy2dRWrmKyTIfa4iKmfmEpOYc+FhPWpiYKaYSI6h2vav++853vu87h8OhcGkrEUal
 qbNZjVqhkon9RY09HvuaRG1UUkzlDIVcta8J1HCrjkBDs18IdK/LW153f8WR3V5PolfnJ0jk
 0i1DVvcggaaN7wnkbKkQo1v2Ngw96XpHokdDDgw5Xu5Eb85Vi9GlZ10k6py4TKBfgw2ibUFM
 zd0awEwNXyIZq+WqmHn6MJ95MdmKMYU2C2BmrMv3kIf945SsKi2H1UTHH/NPddfOgaw24lRZ
 W7dYBxpFBkBRkF4Pf45EGIAfJaWrAfxZdcgA/L14FkBb9SQhFDMAjo0aAa/iDY/qC30NM4DP
 XAbsn6XYNUHysWJaDpssJ3hDMP0QwC5PMq/B6REMtn5uJvhGEH0QeqyX57GIXgnflz6enyCh
 t0K9tZ0QpoXDx/XtOI/9vLynvF/MB0F6gITP24dIQbQDDnnKfOsFwfFem49fBvtKjCIBc1B3
 rcqnOQPd1yt9ms2ws9dB8Evj9CpY1xIt0Nuhy9YnFk4UCIe/LeZp3AuLG2/iAi2BV/RSQR0B
 bcZ+TMAh0FxT7gtn4PhHIy6cpxhAc90n4gYIv/1/2H0ALCCU1XIZKSwXq2ZPyjlFBqdVp8iP
 Z2ZYgfen+n71fm8CcwPJHYCmgCxAsk0ZmSQlFDlcbkYHgBQuC5ZsmfNSEqUiN4/VZB7VaFUs
 1wGWUiJZqOT0go9HpHSKIptNZ9ksVvO3i1F+YTpgMXTkxGk1K9yxm9CGqYknURtN0E9eUBTd
 d/j59xvx9Ji+qKypNK+wJ8HpNMmPjt45wFzYZYs0JWAPAhf+Np0NeJrG7W8s7S7nSqqcsnxJ
 c7zq7YeDuY6KytrhvTeXwOwCs2ntu94oxyKnMmQgMqYmXa+42L97X+K66ZSFPz6YZSIuVRG7
 Gtdwij9lJYjKTwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprPIsWRmVeSWpSXmKPExsVy+t/xe7repTqxBj0nBSxurTvHarFxxnpW
 i+tfnrNazD8C5PY/fs1scf78BnaLs01v2C1uNchYbHp8jdXiY889VovLu+awWcw4v4/JYu2R
 u+wWS69fZLK4eMrV4nbjCjaL1r1H2C0Ov2lntfh3bSOLg7DHmnlrGD3e32hl99i0qpPNY/OS
 eo+D7/YwefRtWcXo8XmTXAB7lJ5NUX5pSapCRn5xia1StKGFkZ6hpYWekYmlnqGxeayVkamS
 vp1NSmpOZllqkb5dgl7G43VfGQv2sVZM3XeUrYFxG0sXIyeHhICJxNINfaxdjFwcQgJLGSXO
 r5vLBpEQk5i0bzs7hC0s8edaFxtE0SdGiQ+z7gMlODjYBPQkdqwqBKkREVjBKDH5hDdIDbPA
 ayaJI0ffsYLUCAuESVz4bAZSwyKgKnFvympGEJtXwF6ibdMBVoj58hKrNxxgBrE5geI/p10A
 u0FIwE5i8dGfTBMY+RYwMqxiFEktLc5Nzy020itOzC0uzUvXS87P3cQIjJxtx35u2cHY9S74
 EKMAB6MSD69DinasEGtiWXFl7iFGCQ5mJRFe269AId6UxMqq1KL8+KLSnNTiQ4ymQEdNZJYS
 Tc4HRnVeSbyhqaG5haWhubG5sZmFkjhvh8DBGCGB9MSS1OzU1ILUIpg+Jg5OqQbG3ds5ay4f
 iM0/ZCZ1WurV4grGHcY3wsodJzR5fT3bVlLasUhI5G77qrV17146zdi2VLHr7J6QFoVk5/NZ
 nEnLLkY2Of57/ltmhef2ibGvb6xwUv3qprs98vXU82fj5CRrhc/vOOAZtkxZUCRqSunqZY2u
 5kdK93eetw+9oqzazVD699/uu9OWKbEUZyQaajEXFScCADVPWvyyAgAA
X-CMS-MailID: 20190715124459eucas1p2a1d8795e57a82704ff221567a8810485
X-Msg-Generator: CA
X-RootMTR: 20190715124459eucas1p2a1d8795e57a82704ff221567a8810485
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715124459eucas1p2a1d8795e57a82704ff221567a8810485
References: <20190715124417.4787-1-l.luba@partner.samsung.com>
 <CGME20190715124459eucas1p2a1d8795e57a82704ff221567a8810485@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_054503_084019_81C860BA 
X-CRM114-Status: GOOD (  13.01  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, cw00.choi@samsung.com, b.zolnierkie@samsung.com,
 sboyd@kernel.org, mturquette@baylibre.com, krzk@kernel.org,
 Lukasz Luba <l.luba@partner.samsung.com>, a.hajda@samsung.com,
 robh+dt@kernel.org, kyungmin.park@samsung.com, kgene@kernel.org,
 myungjoo.ham@samsung.com, s.nawrocki@samsung.com, m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Make the lowest OPP frequency possible to set using a clock divider keeping
in mind the master clock rate.

Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
---
 arch/arm/boot/dts/exynos5420.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/exynos5420.dtsi b/arch/arm/boot/dts/exynos5420.dtsi
index f2e2e77a86d6..0be799f843dc 100644
--- a/arch/arm/boot/dts/exynos5420.dtsi
+++ b/arch/arm/boot/dts/exynos5420.dtsi
@@ -1250,7 +1250,7 @@
 			compatible = "operating-points-v2";
 
 			opp00 {
-				opp-hz = /bits/ 64 <75000000>;
+				opp-hz = /bits/ 64 <100000000>;
 			};
 			opp01 {
 				opp-hz = /bits/ 64 <150000000>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
