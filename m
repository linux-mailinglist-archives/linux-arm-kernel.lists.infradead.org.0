Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1585C34EF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 14:55:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6qYKDEliCUVwWWvTN52e5/FGoIdoT/OvELMCaeaZcsY=; b=gDhSjsHAW7/WnK145Zo5j9TA9+
	pjCTjqpv7+iiAwYmMFcURBe1iRbWbWnwK5R36uQJZ2AeUpXDu/vE8vJB1buDd7LS44psKvuMgFHQ0
	2JLvV0Jl9X674QHHw78LaAD4uhVTRVgsoe7//7gQxaDF5CAg+IWW01cybzy32BVwLIiHJXPDGnaM6
	d3gUfDtG2Mzwp8hcMyT5mb4GGINwQCtw5KATL9SZs46ENfmF5yG1ZMjcT8RlbzibVxkZ9CqzDFDB/
	qZ3LigzP8QzcaJoH9NyzzlOrxdsuf/rTZ55bzmgHKPFn9/8uZum9h/qRs7d5438csN2IMTRmjvkAt
	vozfAAYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFHgk-0007wI-Mm; Tue, 01 Oct 2019 12:55:34 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFHg0-0006Fh-CJ
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 12:54:50 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20191001125447euoutp019f8eb619599795a2058081a43f82be49~Jhxkh8sg42384323843euoutp010
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  1 Oct 2019 12:54:47 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20191001125447euoutp019f8eb619599795a2058081a43f82be49~Jhxkh8sg42384323843euoutp010
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1569934487;
 bh=FRZw07xYV/3wwgOKgcBaHkQAtitosvAVLouSIu+mMzQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=nfsJooGMhVFI1KEs0bQRPh7mZEpo7XSCG+O3lTHR1DSJwFtwK0L+KXhljY6OAs/Xu
 Z9h+uhrg9wp7OgQeb3pAprIG6sC9f/lJzwuRBhJgErNVbuWpsPXHzEv6UrdIUcgo0C
 GoYQIukxnaE/ubiiHQDKPbbn3/c4W0Terxk4ts6U=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20191001125446eucas1p1328389253e6441a21e3128788eed3da2~JhxkO-yxo2273722737eucas1p1J;
 Tue,  1 Oct 2019 12:54:46 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id B2.FB.04309.69C439D5; Tue,  1
 Oct 2019 13:54:46 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20191001125446eucas1p1fb2ad4c13feac8dfec8d5eeeeec0a64a~Jhxj569wP0786807868eucas1p1M;
 Tue,  1 Oct 2019 12:54:46 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191001125446eusmtrp159943e5ef6acf48f09bd25ada70b427f~Jhxj5PbHB1469914699eusmtrp1y;
 Tue,  1 Oct 2019 12:54:46 +0000 (GMT)
X-AuditID: cbfec7f4-ae1ff700000010d5-6e-5d934c966cc2
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 47.6D.04166.69C439D5; Tue,  1
 Oct 2019 13:54:46 +0100 (BST)
Received: from AMDC3778.digital.local (unknown [106.120.51.20]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191001125445eusmtip13bcde73093ffe8d4bfc91c2e04f40688~JhxjLfqXw2414524145eusmtip1S;
 Tue,  1 Oct 2019 12:54:45 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 3/4] ARM: dts: exynos: map 0x10000 SFR instead of 0x100
 in DMC Exynos5422
Date: Tue,  1 Oct 2019 14:54:35 +0200
Message-Id: <20191001125436.24086-4-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191001125436.24086-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrCKsWRmVeSWpSXmKPExsWy7djPc7rTfCbHGtw/p2+xccZ6VovrX56z
 Wsw/co7Vov/xa2aL8+c3sFucbXrDbnGrQcZi0+NrrBaXd81hs/jce4TRYsb5fUwWa4/cZbdY
 ev0ik8XtxhVsFq17j7BbHH7Tzmrx7cQjRgdBjzXz1jB67Jx1l91j06pONo/NS+o9Dr7bw+TR
 t2UVo8fnTXIB7FFcNimpOZllqUX6dglcGcfa/7AXPGKv+NS7mbGBcTdbFyMnh4SAiUTXv+vs
 XYxcHEICKxglfn9/wQThfAFybj1khHA+M0ocnvuECablQNdfFojEckaJJSsOMMO1/Jm5GqiK
 g4NNQE9ix6pCkAYRgcWMEt8OR4HUMAtsY5J4sOobK0hCWCBO4s3DXWA2i4CqxJZV28GO4hWw
 lzj+9SAjxDZ5idUbQBZwcnAKOEgsu7SVFWSQhMApdomjcw4yQxS5SCw+sgaqQVji1fEt7BC2
 jMTpyT0sEHaxREPvQqiaGonH/XOhaqwlDh+/yApyNLOApsT6XfoQYUeJL4tWg4UlBPgkbrwV
 BAkzA5mTtk1nhgjzSnS0CUFUa0hs6bkADR8xieVrprFDlHhItH5yg4TOZEaJn3fmskxglJ+F
 sGsBI+MqRvHU0uLc9NRio7zUcr3ixNzi0rx0veT83E2MwLR0+t/xLzsYd/1JOsQowMGoxMM7
 4eXEWCHWxLLiytxDjBIczEoivDZ/JsUK8aYkVlalFuXHF5XmpBYfYpTmYFES561meBAtJJCe
 WJKanZpakFoEk2Xi4JRqYFyucmTKIv07Ks0xq5Uendd71bbrdXxoevxHpa7ggJrtAmutPHhV
 thukL9L4acj6ZMcBuZmsX/prpdymnrz7fw/D5AXd+mbhGq4ZoX3NchbPK455hx4vfZZgyJBd
 e8a3s4DXgMHE6eecwobJTgVH+b2cc1W2vtm8tT2j737yoxcdi25V5YfKK7EUZyQaajEXFScC
 AKc7d31HAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprOIsWRmVeSWpSXmKPExsVy+t/xu7rTfCbHGty/IGmxccZ6VovrX56z
 Wsw/co7Vov/xa2aL8+c3sFucbXrDbnGrQcZi0+NrrBaXd81hs/jce4TRYsb5fUwWa4/cZbdY
 ev0ik8XtxhVsFq17j7BbHH7Tzmrx7cQjRgdBjzXz1jB67Jx1l91j06pONo/NS+o9Dr7bw+TR
 t2UVo8fnTXIB7FF6NkX5pSWpChn5xSW2StGGFkZ6hpYWekYmlnqGxuaxVkamSvp2NimpOZll
 qUX6dgl6Gcfa/7AXPGKv+NS7mbGBcTdbFyMnh4SAicSBrr8sXYxcHEICSxklpra9ZYRIiElM
 2redHcIWlvhzrYsNougTo8Tl+0+AEhwcbAJ6EjtWFYLERQSWM0ocW/WWGcRhFjjCJHF09TVG
 kCJhgRiJ7a0+IINYBFQltqzaDraZV8Be4vjXg1DL5CVWbzjADGJzCjhILLu0lRXEFgKqmbLv
 NeMERr4FjAyrGEVSS4tz03OLDfWKE3OLS/PS9ZLzczcxAiNl27Gfm3cwXtoYfIhRgINRiYd3
 wsuJsUKsiWXFlbmHGCU4mJVEeG3+TIoV4k1JrKxKLcqPLyrNSS0+xGgKdNREZinR5HxgFOeV
 xBuaGppbWBqaG5sbm1koifN2CByMERJITyxJzU5NLUgtgulj4uCUamAMCZl05NWkG6u56w9d
 5U6xOVoXfH+BKs9PuwaP2bM/5bY/vhKcMPPSNrnmRYUTm4OOPZupZxndWzb5dvHVpOXcKTf2
 pHU/7LWd9rPI5ia72eWwOz+iRHWFWhZf3rTAuSUksm5Ckn7Fwqe9UvvXrZNRmmN2Neb2lBP1
 bv++xXfv3Pq7WvdTImePEktxRqKhFnNRcSIA06hgvqoCAAA=
X-CMS-MailID: 20191001125446eucas1p1fb2ad4c13feac8dfec8d5eeeeec0a64a
X-Msg-Generator: CA
X-RootMTR: 20191001125446eucas1p1fb2ad4c13feac8dfec8d5eeeeec0a64a
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191001125446eucas1p1fb2ad4c13feac8dfec8d5eeeeec0a64a
References: <20191001125436.24086-1-l.luba@partner.samsung.com>
 <CGME20191001125446eucas1p1fb2ad4c13feac8dfec8d5eeeeec0a64a@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_055448_552886_4B556565 
X-CRM114-Status: GOOD (  13.04  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, willy.mh.wolff.ml@gmail.com, robh+dt@kernel.org,
 b.zolnierkie@samsung.com, krzk@kernel.org,
 Lukasz Luba <l.luba@partner.samsung.com>, cw00.choi@samsung.com,
 kyungmin.park@samsung.com, kgene@kernel.org, myungjoo.ham@samsung.com,
 s.nawrocki@samsung.com, m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is a need to access registers at address offset near 0x10000.
These registers are private DMC performance counters, which might be used
as interrupt trigger when overflow. Potential usage is to skip polling
in devfreq framework and switch to interrupt managed bandwidth control.

Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
---
 arch/arm/boot/dts/exynos5420.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/exynos5420.dtsi b/arch/arm/boot/dts/exynos5420.dtsi
index 45f63cd82e56..ac6dc44dbe4d 100644
--- a/arch/arm/boot/dts/exynos5420.dtsi
+++ b/arch/arm/boot/dts/exynos5420.dtsi
@@ -239,7 +239,7 @@
 
 		dmc: memory-controller@10c20000 {
 			compatible = "samsung,exynos5422-dmc";
-			reg = <0x10c20000 0x100>, <0x10c30000 0x100>;
+			reg = <0x10c20000 0x10000>, <0x10c30000 0x10000>;
 			interrupt-parent = <&combiner>;
 			interrupts = <16 0>, <16 1>;
 			interrupt-names = "drex_0", "drex_1";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
