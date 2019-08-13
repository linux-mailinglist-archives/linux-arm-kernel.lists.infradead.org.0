Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B78AC8BCB0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 17:11:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cWT6Vcu36dt/w8VB7EfBzWuRO+TvDXKdi3y2YDzt+a8=; b=rvEvx4NnvFTBjwqxy4exnLs0Fq
	sGkYGWWaRLnds+wkfdag5iLGcl78JOmnkB3k8Im+qzH919lIe001wSUJt3nwDbU2CtcmaqyyfRoPn
	KE+PC5kjyJH+oWlWB3Y/yaBM6vyXBa8ykwmgDFb3ih1sA7qRD0CAaFUZGeiEwZ89jP2xAySmsf+RT
	r9fsBFbI4tdqw164b4MSNqt4OygeLYOK9OSNLWHOfnwsZfF31xO+DtsuZcGELeDnJUgVTxp2+kAy2
	xE907elkOn0poCGEs5rBAEwJBmnCBu/uiKKwniqUYAkyT1xy06qVps7S4p35ZrcV3Eh8MtajDhGQ+
	TmbuVozw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxYSI-00062W-7T; Tue, 13 Aug 2019 15:11:22 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxYQ2-0003F0-99
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 15:09:03 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190813150900euoutp01bacce43f8bd28d9a6926c556a234ff30~6g-yAvKc22748627486euoutp01M
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 15:09:00 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190813150900euoutp01bacce43f8bd28d9a6926c556a234ff30~6g-yAvKc22748627486euoutp01M
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1565708941;
 bh=/st2sHUtSHpK29wSDV5RRbNy6rWv74hdtmw8g6Da7HY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=XQolAFrA2f3cwI00Q/yHpgRR0xCAhIPbkBdjKXoF4kMzCjmwpMuhxgLeuZ3dYB51/
 GAz0/4u1vZEZrJag1Z0JmV/AM+YOD+pHx2MMs+SUfeZHl4iTqFbTTPjxM++M3mhrpQ
 XdX064zu5KNHBNNrk+HvFjjxaxzCiEqHFd7Qe+Gg=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190813150900eucas1p12e83a6eefb29866d72ec0af88e75109b~6g-xdvcZI2544225442eucas1p1J;
 Tue, 13 Aug 2019 15:09:00 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id A6.5B.04469.C82D25D5; Tue, 13
 Aug 2019 16:09:00 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190813150859eucas1p13b02bf38750c2fff277f316900c9393c~6g-wqv2En2554325543eucas1p1J;
 Tue, 13 Aug 2019 15:08:59 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190813150859eusmtrp210a690ca54a83b68b470872e12861bda~6g-wbL6W82922129221eusmtrp2x;
 Tue, 13 Aug 2019 15:08:59 +0000 (GMT)
X-AuditID: cbfec7f2-54fff70000001175-b6-5d52d28cfe85
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id C6.23.04117.B82D25D5; Tue, 13
 Aug 2019 16:08:59 +0100 (BST)
Received: from AMDC3061.DIGITAL.local (unknown [106.120.51.75]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190813150858eusmtip25fa9a38e315f3dfab90780985ad2aeb6~6g-vzjz4E1086510865eusmtip2G;
 Tue, 13 Aug 2019 15:08:58 +0000 (GMT)
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
To: krzk@kernel.org
Subject: [PATCH v3 8/9] ARM: dts: Add "syscon" compatible string to chipid node
Date: Tue, 13 Aug 2019 17:08:26 +0200
Message-Id: <20190813150827.31972-9-s.nawrocki@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190813150827.31972-1-s.nawrocki@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprCKsWRmVeSWpSXmKPExsWy7djP87o9l4JiDba/Y7HYOGM9q8X8I+dY
 Lfofv2a2OH9+A7vFpsfXWC0u75rDZvG59wijxYzz+5gs1h65y26xaOsXdovWvUfYLQ6/aWe1
 2PzgGJsDr8emVZ1sHpuX1Hv0bVnF6PF5k1wASxSXTUpqTmZZapG+XQJXxrmNy1kLtrJX/Hoz
 g7mBsZWti5GTQ0LAROLMx2esXYxcHEICKxglrtx/BOV8YZTYvaSNDcL5zCixqPM5cxcjB1jL
 nrXyIN1CAssZJa5/N4BrONi1lh0kwSZgKNF7tI8RxBYREJa4t3Q5O0gRs8A9JonTT88ygSSE
 BQIlfm3ZwQJiswioSrQ+us8MYvMKWEtMbz4KdZ+8xOoNB8DinAI2Ejunvwc7T0JgMrvE4c/z
 WCGKXCQeTt/PDGELS7w6voUdwpaR+L9zPhNEQzOjRM/u2+wQzgRGifvHFzBCVFlLHD5+kRXk
 N2YBTYn1u/Qhwo4Si0/cZ4R4mU/ixltBkDAzkDlp23RoSPBKdLQJQVSrSPxeNZ0JwpaS6H7y
 nwXC9pCYtfIpNBT7GSW2T3zFPoFRfhbCsgWMjKsYxVNLi3PTU4sN81LL9YoTc4tL89L1kvNz
 NzEC08rpf8c/7WD8einpEKMAB6MSD2/AlqBYIdbEsuLK3EOMEhzMSiK8Ey4ChXhTEiurUovy
 44tKc1KLDzFKc7AoifNWMzyIFhJITyxJzU5NLUgtgskycXBKNTAmT2wWyZLOCW1TcS/UXPnA
 Ls4ogqvlZY7+3ISNeZfNHyyc7q4pX3Mt/mvMEePzDvlWvx4bPY6+3b9gsUf+VKEj717ESPzf
 UWxjXpC4TLp0ndN/vxd/ZhmW/9xvvrTqyqUjrQ/yMz+ZNJ2pNT628Hpqg8qGa7/e7m9bWLFb
 zkHr+JR3TxS+LeRTYinOSDTUYi4qTgQADLu5picDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrCLMWRmVeSWpSXmKPExsVy+t/xe7rdl4JiDV5f5rXYOGM9q8X8I+dY
 Lfofv2a2OH9+A7vFpsfXWC0u75rDZvG59wijxYzz+5gs1h65y26xaOsXdovWvUfYLQ6/aWe1
 2PzgGJsDr8emVZ1sHpuX1Hv0bVnF6PF5k1wAS5SeTVF+aUmqQkZ+cYmtUrShhZGeoaWFnpGJ
 pZ6hsXmslZGpkr6dTUpqTmZZapG+XYJexrmNy1kLtrJX/Hozg7mBsZWti5GDQ0LARGLPWvku
 Ri4OIYGljBItzWcYIeJSEvNblLoYOYFMYYk/17rYIGo+MUr8mTOBBSTBJmAo0Xu0jxHEFgEq
 urd0OTtIEbPAKyaJ2/P+M4EkhAX8JQ596ARrYBFQlWh9dJ8ZxOYVsJaY3nyUDWKDvMTqDQfA
 4pwCNhI7p79nBbGFgGqevlvPPIGRbwEjwypGkdTS4tz03GIjveLE3OLSvHS95PzcTYzAEN92
 7OeWHYxd74IPMQpwMCrx8AZsCYoVYk0sK67MPcQowcGsJMI74SJQiDclsbIqtSg/vqg0J7X4
 EKMp0FETmaVEk/OB8ZdXEm9oamhuYWlobmxubGahJM7bIXAwRkggPbEkNTs1tSC1CKaPiYNT
 qoEx7aBew58OX8Wp3JvsXfpP6Xy4skbspP3J3aIrzhmxfP3Pn+8/cU5nbdbPItZk7a1fdzmf
 zTw/P3Nzk7Jm77TK9PttfGzx8xX2XdoWxCx1n51H7/KV/g0uPxVyYyaLM848Kxqh8pQ50vHe
 k8cT8439/kwWvbnxCNuTd9skbXoyTIo33q0vbJ2uxFKckWioxVxUnAgAubFNa4cCAAA=
X-CMS-MailID: 20190813150859eucas1p13b02bf38750c2fff277f316900c9393c
X-Msg-Generator: CA
X-RootMTR: 20190813150859eucas1p13b02bf38750c2fff277f316900c9393c
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190813150859eucas1p13b02bf38750c2fff277f316900c9393c
References: <20190813150827.31972-1-s.nawrocki@samsung.com>
 <CGME20190813150859eucas1p13b02bf38750c2fff277f316900c9393c@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_080902_477905_7455C96D 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, pankaj.dubey@samsung.com, b.zolnierkie@samsung.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, kgene@kernel.org,
 Sylwester Nawrocki <s.nawrocki@samsung.com>, vireshk@kernel.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The CHIP ID block in addition to exact chip revision information
contains data and control registers for ASV (Adaptive Supply Voltage)
and ABB (Adaptive Body Bias). Add "syscon" compatible so the CHIPID
block can be shared by respective drivers.

Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
---
Changes since v2:
 - none

Changes since v1 (RFC):
 - new patch
---
 arch/arm/boot/dts/exynos5.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/exynos5.dtsi b/arch/arm/boot/dts/exynos5.dtsi
index 67f9b4504a42..4801ca759feb 100644
--- a/arch/arm/boot/dts/exynos5.dtsi
+++ b/arch/arm/boot/dts/exynos5.dtsi
@@ -35,8 +35,8 @@
 		#size-cells = <1>;
 		ranges;
 
-		chipid@10000000 {
-			compatible = "samsung,exynos4210-chipid";
+		chipid: chipid@10000000 {
+			compatible = "samsung,exynos4210-chipid", "syscon";
 			reg = <0x10000000 0x100>;
 		};
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
