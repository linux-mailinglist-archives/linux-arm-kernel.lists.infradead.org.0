Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3364897E12
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 17:07:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:List-Owner; bh=mY41u5PkPSUFNOwR5phChbC+f4FSD63O+KY72PXC0qA=; b=gI
	gMHEESH8w02tvSRBkhqKM0engJ3wrJIjSB2qzAjqgj4c32w9JCdCBBQ+RGh/vzzP2OtsRjGS4+Zpp
	8c6H8nXXUA1PBq3wn+5pI+qG+SsMt+Dy08k4GaohSp/3/20e1LyYdvHt0xVw9eunz7Qr0tpeQB/UF
	TYnW5YLTGwsUahNxIG17FcAQsLMeiVv6j6Ac8ajK6asQtmMq3KugXBia7KRHjclOP+2E8PPpJv1Bx
	cQBVvsv4vMfhBxF/qS/Ou5dhafRcRo55jP+hVMBCJVxAgsceRnonMD3jXMhsFBHU1W5eXYya6KSIw
	vuVM4uuwoBvP/LThSw6KVBmNjhPkCcVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0SD4-0002E9-Bi; Wed, 21 Aug 2019 15:07:38 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0SCn-00025M-Tk
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 15:07:23 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190821150720euoutp02bc15e041ccb91c22cc0233693e882f25~8_ImqFjqP2316023160euoutp026
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 15:07:20 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190821150720euoutp02bc15e041ccb91c22cc0233693e882f25~8_ImqFjqP2316023160euoutp026
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1566400040;
 bh=QdKl1h+NYGT1+GJ6+CO55MR1LWqPpwQB2KPUyY1C/kU=;
 h=From:To:Cc:Subject:Date:References:From;
 b=l/HzSh/yn9oWVTBMVtRk+j++sCanPowxZIV5hbXiP1hKYK5YAeFFzqH1CeBDmQx1b
 i/tiz9ve+STqsauAO43+CYpyAUHl8KOVGPDjojELPTOJGW5mDVHEOcCFk9PLjfOTiy
 vQjUPk1FmyH4QcYOBJkU8aGht3a+8rCsprUf6ChE=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190821150720eucas1p1858eff5877d763685a54389a05c73c5a~8_ImOA1rd1286912869eucas1p1w;
 Wed, 21 Aug 2019 15:07:20 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 2C.01.04309.72E5D5D5; Wed, 21
 Aug 2019 16:07:19 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190821150719eucas1p26bddabb16499647860805e61a8b63010~8_IlWAMVn1312913129eucas1p29;
 Wed, 21 Aug 2019 15:07:19 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190821150718eusmtrp2cf8a039e03506e5212b91a78d73bade1~8_IlH3ddu0045700457eusmtrp2k;
 Wed, 21 Aug 2019 15:07:18 +0000 (GMT)
X-AuditID: cbfec7f4-afbff700000010d5-fd-5d5d5e27aad5
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 4E.68.04166.62E5D5D5; Wed, 21
 Aug 2019 16:07:18 +0100 (BST)
Received: from AMDC3061.DIGITAL.local (unknown [106.120.51.75]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190821150718eusmtip16e52f4973fa0a6ee569f8507ec348494~8_IkpACWr3066430664eusmtip1H;
 Wed, 21 Aug 2019 15:07:18 +0000 (GMT)
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
To: krzk@kernel.org
Subject: [PATCH] soc: samsung: Add missing Kconfig dependencies for
 EXYNOS_CHIPID
Date: Wed, 21 Aug 2019 17:07:11 +0200
Message-Id: <20190821150711.31398-1-s.nawrocki@samsung.com>
X-Mailer: git-send-email 2.17.1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrBIsWRmVeSWpSXmKPExsWy7djP87rqcbGxBrNO6FlsnLGe1aJl1iIW
 i/7Hr5ktzp/fwG6x6fE1VovLu+awWcw4v4/JYu2Ru+wWi7Z+Ybc4/Kad1YHLY9OqTjaPzUvq
 PXqb37F59G1ZxejxeZNcAGsUl01Kak5mWWqRvl0CV8avPzeYCy6xVszvecTawHidpYuRg0NC
 wESif31MFyMXh5DACkaJDw8Ps0I4Xxgl/i1axwbhfGaUaL/xlKmLkROsY8e17+wQieWMEjcv
 L2UDSYC1/GrzBrHZBAwleo/2MYLYIgLCEveWLmcHsZkFJjFJ7OhTB1ktLBAs8fq3JEiYRUBV
 orNjNztImFfAWmL1HF6IVfISqzccYIawX7NJfDiVDmG7SPR8f84GYQtLvDq+hR3ClpH4v3M+
 E8hpEgLNjBI9u2+zQzgTGCXuH1/ACFFlLXH4+EVWkGXMApoS63fpQ4QdJW6/vscICRU+iRtv
 BSEu5pOYtG06M0SYV6KjTQiiWkXi96rp0BCRkuh+8p8FwvaQmPavBWy4kECsxNT7dhMY5WYh
 rFrAyLiKUTy1tDg3PbXYKC+1XK84Mbe4NC9dLzk/dxMjMD2c/nf8yw7GXX+SDjEKcDAq8fBO
 0I2NFWJNLCuuzD3EKMHBrCTCWzEnKlaINyWxsiq1KD++qDQntfgQozQHi5I4bzXDg2ghgfTE
 ktTs1NSC1CKYLBMHp1QD4+JKl9tbZgtw6oj3G0RuydfdVl3cFjNHtetVkbQv65GTxvniXXWx
 ahaRF7YItOrV9HBekjkQtbTpipV194+1lvofsn4yX1i3+Oh6w09bNaofdqS0TXEUnOn0ef2J
 5+wfRc8Zx3+4tfNp96OCOcmxnlFVKpfWTXpquCLuoVyqgbd///227tJHSizFGYmGWsxFxYkA
 UQNzXwsDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrELMWRmVeSWpSXmKPExsVy+t/xu7pqcbGxBrf+mVlsnLGe1aJl1iIW
 i/7Hr5ktzp/fwG6x6fE1VovLu+awWcw4v4/JYu2Ru+wWi7Z+Ybc4/Kad1YHLY9OqTjaPzUvq
 PXqb37F59G1ZxejxeZNcAGuUnk1RfmlJqkJGfnGJrVK0oYWRnqGlhZ6RiaWeobF5rJWRqZK+
 nU1Kak5mWWqRvl2CXsavPzeYCy6xVszvecTawHidpYuRk0NCwERix7Xv7F2MXBxCAksZJQ6t
 vcnWxcgBlJCSmN+iBFEjLPHnWhcbRM0nRonpn9YzgyTYBAwleo/2MYLYIkBF95YuBxvELDCH
 SeJhzySwhLBAoMTc029YQWwWAVWJzo7d7CALeAWsJVbP4YVYIC+xesMB5gmMPAsYGVYxiqSW
 Fuem5xYb6hUn5haX5qXrJefnbmIEhue2Yz8372C8tDH4EKMAB6MSD+8E3dhYIdbEsuLK3EOM
 EhzMSiK8FXOiYoV4UxIrq1KL8uOLSnNSiw8xmgLtnsgsJZqcD4ydvJJ4Q1NDcwtLQ3Njc2Mz
 CyVx3g6BgzFCAumJJanZqakFqUUwfUwcnFINjIvmZeSbHlghVvXAzSJG02K6qlrYOZnI2xtv
 xTC/5fiyrrvvgpbC0ddZfjm7hRhfi35hPnPkZ/13R7kfeR23f3yXLxL7n1HNKZY2vaXC9tik
 2/WXZPY8/+d36debsKlbnlgwfW0yXbgyd8fifx/ZZuvnXK8q5E1l0cw40SflseOcUGLqpw7L
 RUosxRmJhlrMRcWJANvvQXplAgAA
X-CMS-MailID: 20190821150719eucas1p26bddabb16499647860805e61a8b63010
X-Msg-Generator: CA
X-RootMTR: 20190821150719eucas1p26bddabb16499647860805e61a8b63010
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190821150719eucas1p26bddabb16499647860805e61a8b63010
References: <CGME20190821150719eucas1p26bddabb16499647860805e61a8b63010@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_080722_153296_2A578F84 
X-CRM114-Status: GOOD (  12.76  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-samsung-soc@vger.kernel.org, b.zolnierkie@samsung.com,
 pankaj.dubey@samsung.com, linux-kernel@vger.kernel.org, jonathanh@nvidia.com,
 kgene@kernel.org, Sylwester Nawrocki <s.nawrocki@samsung.com>,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The chipid driver uses the regmap and the MFD syscon API
but it was not covered properly in Kconfig.

Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
---
 drivers/soc/samsung/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/soc/samsung/Kconfig b/drivers/soc/samsung/Kconfig
index 2905f5262197..a03f83492716 100644
--- a/drivers/soc/samsung/Kconfig
+++ b/drivers/soc/samsung/Kconfig
@@ -9,7 +9,7 @@ if SOC_SAMSUNG
 
 config EXYNOS_CHIPID
 	bool "Exynos Chipid controller driver" if COMPILE_TEST
-	depends on ARCH_EXYNOS || COMPILE_TEST
+	depends on (ARCH_EXYNOS && REGMAP && MFD_SYSCON) || COMPILE_TEST
 	select SOC_BUS
 
 config EXYNOS_PMU
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
