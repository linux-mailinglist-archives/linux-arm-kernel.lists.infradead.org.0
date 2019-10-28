Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A08FE74C8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 16:16:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7yIlvBumMlab46qfZkoLajmfL13evdwopMeB/9qu5Uc=; b=Bxx8TGoncQSqGAhkRivhGDSF0T
	5urx2j2VmgivkUcaLPFqDCXD7+wk1ZdmHSFs0o+J6gcTCxvYNWlx076xUf/DMYiKjVdSU/YXMbiYf
	j25WBQ0AflKH6wgKTcOo5JxxlSbOBIw0PuJIOkCN/NYl+cB4vWGhRm0MHErfvVhv53st/vGJSiAIx
	tSEH9fyc4b7J2voj5Rn5LJV8nesS+pItqFJegZ0mbO2USegBfgfysDYLbhrI/ReaJJ+84Gtpeny+S
	l/+/KqoZvbP+zVqJ2JRWBx8IePTYxzA8MPRp9NlZRnD/D03hgDrJiqh7XwmBRM3GCNeulyuhONgkQ
	xfkNJ+ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP6ku-0001LZ-Vn; Mon, 28 Oct 2019 15:16:28 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP6kP-00017g-LD
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 15:15:58 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20191028151556euoutp01c3b992b4fd9ea2a9f9feef043357087b~R2HhSZi_r1432114321euoutp01X
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 15:15:56 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20191028151556euoutp01c3b992b4fd9ea2a9f9feef043357087b~R2HhSZi_r1432114321euoutp01X
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1572275756;
 bh=mvXJGAa/sROCmXNX3W9XG8ie5vO3G5aWnbMGSADFAsc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=lhkTuJQImt0auyxv4k+486oHexx2LGfk8DPrZ66hjeuq7jb7ndiPF7X2/5+H8+j4P
 KEQswfKAOcuezSLri/JQTiiuEdIxnV6TYv13ndPdGO98fA4PuVT9cySPEt8X1BOO2b
 YsaXFiy0NwnKrJw/2xmwAda8Dg3tQ0NofgmXxvcg=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20191028151556eucas1p23dc9a5a8bb727bc6e9b7ac2052346f8c~R2HhF6Rf81438414384eucas1p2j;
 Mon, 28 Oct 2019 15:15:56 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 0D.56.04374.B2607BD5; Mon, 28
 Oct 2019 15:15:55 +0000 (GMT)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191028151555eucas1p2178f1a2cfe9e09c5c03c39f0896ab289~R2Hgwqlm70572705727eucas1p2Q;
 Mon, 28 Oct 2019 15:15:55 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191028151555eusmtrp296eab63e507e0ff2ada803bb615535c6~R2HgvbnPh2864428644eusmtrp2Y;
 Mon, 28 Oct 2019 15:15:55 +0000 (GMT)
X-AuditID: cbfec7f5-4f7ff70000001116-7b-5db7062be17b
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id BD.27.04117.B2607BD5; Mon, 28
 Oct 2019 15:15:55 +0000 (GMT)
Received: from AMDC3061.DIGITAL.local (unknown [106.120.51.75]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191028151555eusmtip12aaa466a4bb81671a191183da0e1d773~R2HgRPGLv2147221472eusmtip1z;
 Mon, 28 Oct 2019 15:15:55 +0000 (GMT)
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
To: krzk@kernel.org
Subject: [PATCH v6 2/2] ARM: EXYNOS: Enable exynos-asv driver for ARCH_EXYNOS
Date: Mon, 28 Oct 2019 16:15:34 +0100
Message-Id: <20191028151534.9920-2-s.nawrocki@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191028151534.9920-1-s.nawrocki@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrFIsWRmVeSWpSXmKPExsWy7djPc7rabNtjDY6321hsnLGe1eL8+Q3s
 FpseX2O1+Nx7hNFixvl9TBZrj9xltzj8pp3VYvODY2wOHB6bVnWyeWxeUu/Rt2UVo8fnTXIB
 LFFcNimpOZllqUX6dglcGXMf/2Uv+MhSMffvT9YGxg6WLkZODgkBE4nHv2+wdjFycQgJrGCU
 WHTuBzuE84VR4lXjPUYI5zOjxP5Ld9hgWhbP2McGkVjOKLHyxxIWuJa3H5cyg1SxCRhK9B7t
 YwSxRQSEJe4tXQ42l1ngAaPEjZ0HmUASwgL+Ette3AAbyyKgKnHu6QegIg4OXgErieMnobbJ
 S6zecABsJqeAtcS05VPB5kgIvGeTeL+9jRmiyEXi6pt77BC2sMSr41ugbBmJ/zvnM0E0NDNK
 9Oy+DdU9gVHi/vEFjBBV1hKHj19kBdnMLKApsX6XPkTYUWJe8wqwsIQAn8SNt4IgYWYgc9K2
 6cwQYV6JjjYhiGoVid+rpjNB2FIS3U/+s0CUeEjcvJwJEhYS6GOUWPDabgKj/CyEVQsYGVcx
 iqeWFuempxYb56WW6xUn5haX5qXrJefnbmIEpojT/45/3cG470/SIUYBDkYlHt4Jl7fFCrEm
 lhVX5h5ilOBgVhLhvXgGKMSbklhZlVqUH19UmpNafIhRmoNFSZy3muFBtJBAemJJanZqakFq
 EUyWiYNTqoGxdeUWZZb1iwQee/F53jCZc+LgytsO6m4fd3IsnDNjnd6uqebNqjuTxY0LXa1m
 9bnnntty+n6E8v26Q38D7MoF6xMyEqI32e5mt/+yzHCrzXJrJ7nFWitN9967+DHl2NUS6Zqz
 i5XWatfumvmU/8wbttlPTiT5ak9Lbfm+3Npisr6tfsh/nqjjSizFGYmGWsxFxYkAunl/Lg0D
 AAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrFLMWRmVeSWpSXmKPExsVy+t/xu7rabNtjDQ43qFpsnLGe1eL8+Q3s
 FpseX2O1+Nx7hNFixvl9TBZrj9xltzj8pp3VYvODY2wOHB6bVnWyeWxeUu/Rt2UVo8fnTXIB
 LFF6NkX5pSWpChn5xSW2StGGFkZ6hpYWekYmlnqGxuaxVkamSvp2NimpOZllqUX6dgl6GXMf
 /2Uv+MhSMffvT9YGxg6WLkZODgkBE4nFM/axdTFycQgJLGWU2HB8D1MXIwdQQkpifosSRI2w
 xJ9rXVA1nxglpk9sYAdJsAkYSvQe7WMEsUWAiu4tXc4OUsQs8IxR4vfab2AJYQFfiUfbN7CC
 2CwCqhLnnn5gB1nAK2AlcfwkG8QCeYnVGw4wg9icAtYS05ZPBSsRAir5e5FlAiPfAkaGVYwi
 qaXFuem5xUZ6xYm5xaV56XrJ+bmbGIHhuu3Yzy07GLveBR9iFOBgVOLhfXF1W6wQa2JZcWXu
 IUYJDmYlEd6LZ4BCvCmJlVWpRfnxRaU5qcWHGE2BTprILCWanA+MpbySeENTQ3MLS0NzY3Nj
 Mwslcd4OgYMxQgLpiSWp2ampBalFMH1MHJxSDYyL8/x7Fk/d9jE9mGfeuo668qXWy7f9jll+
 gHP3u1aXeuULzryCG9f8lDjNGy93qzN13bL/V5NKZt5uOdHEw8JauS5phY/T8k3Nni3iUSdd
 HR+1HJy1c/VZQdF7V+88mXY8RfORellJ2FJulaatEsHPz1Y+SM1+M3u3t+uPPO/A7MfCtmVM
 NfJKLMUZiYZazEXFiQDQkFyCbQIAAA==
X-CMS-MailID: 20191028151555eucas1p2178f1a2cfe9e09c5c03c39f0896ab289
X-Msg-Generator: CA
X-RootMTR: 20191028151555eucas1p2178f1a2cfe9e09c5c03c39f0896ab289
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191028151555eucas1p2178f1a2cfe9e09c5c03c39f0896ab289
References: <20191028151534.9920-1-s.nawrocki@samsung.com>
 <CGME20191028151555eucas1p2178f1a2cfe9e09c5c03c39f0896ab289@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_081557_823230_AD002F0F 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-samsung-soc@vger.kernel.org, b.zolnierkie@samsung.com,
 vireshk@kernel.org, linux-pm@vger.kernel.org,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable exynos-asv driver for Exynos 32-bit SoCs.

Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
---
Changes since v1 (RFC):
 - none

 arch/arm/mach-exynos/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-exynos/Kconfig b/arch/arm/mach-exynos/Kconfig
index 9dab1f50a02f..4ef56571145b 100644
--- a/arch/arm/mach-exynos/Kconfig
+++ b/arch/arm/mach-exynos/Kconfig
@@ -13,6 +13,7 @@ menuconfig ARCH_EXYNOS
 	select ARM_AMBA
 	select ARM_GIC
 	select COMMON_CLK_SAMSUNG
+	select EXYNOS_ASV
 	select EXYNOS_CHIPID
 	select EXYNOS_THERMAL
 	select EXYNOS_PMU
--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
