Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A2478BCB6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 17:11:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=f7ZeCeIFhSyfORwNu/23tOEj6iumVDmlnu7E6Y2WEWE=; b=CG+4yEw25yORa0qcaxkXfPlWku
	203/ZBJ4/aTsb1lst6KIjS0LGw66gx3W8nCvnjCe0wMm+Dpd7VvpiXWgnRZcIIJVFvkD61iPSqOfL
	COKZ8A5gruunBFSEx0zedDd/vUszCZizQy37C7sDoMkLBkHgSj73hxSfNRvh01VbQZPZwwifxgPO4
	3nA/+IROEYqA65u/5nrhwnrd3auoUsvOwvCRjeQYhEG1ftgln6PNR2mEFgyMuuAhYHpoSSz+3iYMc
	MO1wB7zizBpcfa6zHdfaKMppbdNG/QuYPZ1yJkVHWCHJh2xNFEzYykfYeTnPOV6qRAgX/sa5QCRJ9
	jwUUTJDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxYSs-0006YJ-07; Tue, 13 Aug 2019 15:11:58 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxYQ5-0003Hy-2q
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 15:09:06 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190813150858euoutp02c976025a70d79e0ab9faed123811e098~6g-v7CD052044020440euoutp02D
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 15:08:58 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190813150858euoutp02c976025a70d79e0ab9faed123811e098~6g-v7CD052044020440euoutp02D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1565708938;
 bh=8YP4+xlfEaAfg5XUJ7zuT9F9MelFu1bjKK5ChWjCJ0Y=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Ji/631l2xU4W34meJ5BTWqRx+B+h1SFYUqvknTIQFT6VJAFXD7l1+zL06YpzcPiCD
 mPWcgkP5ao5i4c2jx7npjSzFfKZovHr5P0McaEx8W9+/HuQdg3edIYAJo3ttmbT6B3
 1miqe79KIrDsdGMfvVBbU8AqSjibRIkwJq9iO71U=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190813150858eucas1p2dad8802c6c4b00c189a69ff8c3794da7~6g-vaQf_z1043710437eucas1p2I;
 Tue, 13 Aug 2019 15:08:58 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 4B.9E.04309.982D25D5; Tue, 13
 Aug 2019 16:08:57 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190813150857eucas1p1387bf381b91d8fc7d0184dec92dcdf5c~6g-uhynAO1534715347eucas1p1_;
 Tue, 13 Aug 2019 15:08:57 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190813150856eusmtrp11a7dfc49a4d6bec599dbb7512db8bd4f~6g-uSE30i1601316013eusmtrp14;
 Tue, 13 Aug 2019 15:08:56 +0000 (GMT)
X-AuditID: cbfec7f4-ae1ff700000010d5-f9-5d52d289f84b
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id EE.C1.04166.882D25D5; Tue, 13
 Aug 2019 16:08:56 +0100 (BST)
Received: from AMDC3061.DIGITAL.local (unknown [106.120.51.75]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190813150856eusmtip27c3d47ac808954ecfa3bb3ca51af6d5e~6g-trVem41086510865eusmtip2F;
 Tue, 13 Aug 2019 15:08:56 +0000 (GMT)
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
To: krzk@kernel.org
Subject: [PATCH v3 6/9] ARM: EXYNOS: Enable exynos-asv driver for ARCH_EXYNOS
Date: Tue, 13 Aug 2019 17:08:24 +0200
Message-Id: <20190813150827.31972-7-s.nawrocki@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190813150827.31972-1-s.nawrocki@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprCKsWRmVeSWpSXmKPExsWy7djPc7qdl4JiDTY9NbXYOGM9q8X8I+dY
 Lfofv2a2OH9+A7vFpsfXWC0u75rDZvG59wijxYzz+5gs1h65y26xaOsXdovWvUfYLQ6/aWe1
 2PzgGJsDr8emVZ1sHpuX1Hv0bVnF6PF5k1wASxSXTUpqTmZZapG+XQJXxsmWhcwFX1kq7jza
 x9TA2M3SxcjJISFgIvF5yXPGLkYuDiGBFYwSC5/fYYNwvjBKzDn9jQnC+cwo8eLvfEaYli+d
 B6BaljNKnH+3mwkkAdby8HM5iM0mYCjRe7QPrEFEQFji3tLl7CANzAL3mCROPz0L1iAs4C9x
 +Pd3MJtFQFXi44tdrCA2r4C1xNw/16AOlJdYveEAM4jNKWAjsXP6e1aQQRICk9kltm9rBDqW
 A8hxkdg6IQ+iXlji1fEt7BC2jMTpyT0sEPXNjBI9u2+zQzgTGCXuH18A9Y+1xOHjF1lBBjEL
 aEqs36UPEXaUWDFrKSvEfD6JG28FQcLMQOakbdOZIcK8Eh1tQhDVKhK/V01ngrClJLqf/Ic6
 30Ni96pt0CDtZ5Q4uKCPaQKj/CyEZQsYGVcxiqeWFuempxYb5aWW6xUn5haX5qXrJefnbmIE
 ppXT/45/2cG460/SIUYBDkYlHt6ALUGxQqyJZcWVuYcYJTiYlUR4J1wECvGmJFZWpRblxxeV
 5qQWH2KU5mBREuetZngQLSSQnliSmp2aWpBaBJNl4uCUamCsLb4a908k5txxdd7o2dq8805Z
 me81knuUnaW/yTRK835X6s/qKfeWmPb1Pm+9L3H+16kfqy88a1P81PLwuPG1o099Lv7bsfh+
 w7c3LbOSwx4GJy+KMuK5eE9ZZXOA1um3T5q5ql41T+FYE8+8q+h2SdzyKV88PldOv65h7z1d
 S6tFe9L3u+s5lViKMxINtZiLihMBjZNsyScDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrKLMWRmVeSWpSXmKPExsVy+t/xe7odl4JiDbbes7DYOGM9q8X8I+dY
 Lfofv2a2OH9+A7vFpsfXWC0u75rDZvG59wijxYzz+5gs1h65y26xaOsXdovWvUfYLQ6/aWe1
 2PzgGJsDr8emVZ1sHpuX1Hv0bVnF6PF5k1wAS5SeTVF+aUmqQkZ+cYmtUrShhZGeoaWFnpGJ
 pZ6hsXmslZGpkr6dTUpqTmZZapG+XYJexsmWhcwFX1kq7jzax9TA2M3SxcjJISFgIvGl8wBj
 FyMXh5DAUkaJxgNT2boYOYASUhLzW5QgaoQl/lzrYoOo+cQoceREBztIgk3AUKL3aB8jiC0C
 VHRv6XJ2kCJmgVdMErfn/WcCSQgL+Eoc2LQfzGYRUJX4+GIXK4jNK2AtMffPNagr5CVWbzjA
 DGJzCthI7Jz+HqxGCKjm6bv1zBMY+RYwMqxiFEktLc5Nzy021CtOzC0uzUvXS87P3cQIDPJt
 x35u3sF4aWPwIUYBDkYlHt6ALUGxQqyJZcWVuYcYJTiYlUR4J1wECvGmJFZWpRblxxeV5qQW
 H2I0BTpqIrOUaHI+MALzSuINTQ3NLSwNzY3Njc0slMR5OwQOxggJpCeWpGanphakFsH0MXFw
 SjUwdqkE/MreF1pcy1Cusmz1NsncT+/3sjp89tbLurF61Xkvo73vubTmdr14WeL3k/9oqNTj
 5L6UUNOKDK374pK9pbaT/4Sd+KLAIfL4mHLlW4FaY7cW6Y8lv/pvvFt8+9O1mRu+Xf6wdeOx
 WT0fJ85MOfni2IwzV87Py6r4ZnfoVOLVykzbVaZCvUosxRmJhlrMRcWJAJamekOIAgAA
X-CMS-MailID: 20190813150857eucas1p1387bf381b91d8fc7d0184dec92dcdf5c
X-Msg-Generator: CA
X-RootMTR: 20190813150857eucas1p1387bf381b91d8fc7d0184dec92dcdf5c
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190813150857eucas1p1387bf381b91d8fc7d0184dec92dcdf5c
References: <20190813150827.31972-1-s.nawrocki@samsung.com>
 <CGME20190813150857eucas1p1387bf381b91d8fc7d0184dec92dcdf5c@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_080905_380500_A2BB66B9 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
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

Enable exynos-asv driver for Exynos 32-bit SoCs.

Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
---
Changes since v1 (RFC):
 - none
---
 arch/arm/mach-exynos/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-exynos/Kconfig b/arch/arm/mach-exynos/Kconfig
index f83786640f94..bba61354c340 100644
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
