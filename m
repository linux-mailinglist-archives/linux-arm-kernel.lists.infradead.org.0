Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD2D6AEA91
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 14:38:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=f7ZeCeIFhSyfORwNu/23tOEj6iumVDmlnu7E6Y2WEWE=; b=tS9aVRNDCobE51txdWLepe5kPP
	HMeyhGRafPZeMRGN83gsS3AmxspSDDbls7bLQ4bNtdhTue0EeKhBfvWhq+AAQbFsu4GsU+dNb96L0
	tGmzoEBeZf60Br02XBXP4ddSmdVGm97SYeweUypYAPdW4JCjlSmQH1vREcwiJpwJj13gRRh/0GtU7
	IXmQEjv4wX3vvbuIqyaTM2Mhpm1uLZPeTz3yYwc4uY5Ix0zLfU+y7jC0gcPSwaBUrMceQHQtyok6E
	2zBs6MdTYF23YDSbazJGhoxBt/peZsmB7tnIbgE58/wO6cmZk857u0jumN/737AS7vkHFThYfal7y
	5TBwfuwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7fPL-0004w3-3L; Tue, 10 Sep 2019 12:38:07 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7fO1-0003xG-TI
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 12:36:47 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190910123644euoutp02549ece34b665ee041de80ce0b3c7933a~DE_0sE0EZ2684026840euoutp02S
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 12:36:44 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190910123644euoutp02549ece34b665ee041de80ce0b3c7933a~DE_0sE0EZ2684026840euoutp02S
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1568119004;
 bh=8YP4+xlfEaAfg5XUJ7zuT9F9MelFu1bjKK5ChWjCJ0Y=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=I8cPsGK0bpbY5gYXlpqskhDkQWoSqePqRbZh7vl82qAlaip1lKHps8lcnXYTuPZUF
 BR0sG3tsyuBsQIbVfVPSSfCmQd69Z264CoydEgPDl658l5F79SfZQPxYTE+4ZPJ0d1
 viKpHDncxdLLPjjFyiKOlkwmJaBiEjGNXedS4qMs=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190910123643eucas1p13159f926fb492df74da85d64d1e23acc~DE_0EZqW03111931119eucas1p12;
 Tue, 10 Sep 2019 12:36:43 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 6A.8B.04374.BD8977D5; Tue, 10
 Sep 2019 13:36:43 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190910123643eucas1p2666bc55d5b36efbbb02565793a2c1f86~DE_zTyRqX1358613586eucas1p2-;
 Tue, 10 Sep 2019 12:36:43 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190910123642eusmtrp1a759c272203dad370b333da88a91ad0f~DE_zFhrn_2381323813eusmtrp1L;
 Tue, 10 Sep 2019 12:36:42 +0000 (GMT)
X-AuditID: cbfec7f5-4f7ff70000001116-e4-5d7798db73bc
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id DF.EC.04117.AD8977D5; Tue, 10
 Sep 2019 13:36:42 +0100 (BST)
Received: from AMDC3061.DIGITAL.local (unknown [106.120.51.75]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190910123642eusmtip1bf306ff4d31bb286429f739389964b05~DE_ye0b5w0745507455eusmtip1O;
 Tue, 10 Sep 2019 12:36:42 +0000 (GMT)
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
To: krzk@kernel.org, vireshk@kernel.org
Subject: [PATCH v4 4/6] ARM: EXYNOS: Enable exynos-asv driver for ARCH_EXYNOS
Date: Tue, 10 Sep 2019 14:36:16 +0200
Message-Id: <20190910123618.27985-5-s.nawrocki@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190910123618.27985-1-s.nawrocki@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupjleLIzCtJLcpLzFFi42LZduznOd3bM8pjDdY+1rTYOGM9q8X8I+dY
 Lfofv2a2OH9+A7vFpsfXWC0u75rDZvG59wijxYzz+5gs1h65y27RuvcIu8XhN+2sFpsfHGNz
 4PHYtKqTzWPzknqPvi2rGD0+b5ILYInisklJzcksSy3St0vgyjjZspC54CtLxZ1H+5gaGLtZ
 uhg5OSQETCQ2ddxn6mLk4hASWMEoMXXrFkYI5wujxMGzc9ghnM+MEpu/fmXuYuQAa7l40Bci
 vpxRYt+Zm0xwHWdfrWAGmcsmYCjRe7SPEcQWEVCXeHXqPzNIEbPAOiaJZbOWMYJMEhbwl/g6
 RRfEZBFQlbh0MQWknFfAWmLmi4lMEOfJS6zecABsJKeAjcSp3bvAdkkIdLNLvHl9GuoHF4l1
 D/ZBNQhLvDq+hR3ClpE4PbmHBaKhmVGiZ/dtdghnAqPE/eMLGCGqrCUOH7/ICnIFs4CmxPpd
 +hBhR4l5j36xQHzMJ3HjrSBImBnInLRtOjQgeCU62oQgqlUkfq+aDnWClET3k/9Qp3lIPLh6
 iQ0SPv2MEk0/P7JPYJSfhbBsASPjKkbx1NLi3PTUYuO81HK94sTc4tK8dL3k/NxNjMBUcvrf
 8a87GPf9STrEKMDBqMTD29FSHivEmlhWXJl7iFGCg1lJhPd6X2msEG9KYmVValF+fFFpTmrx
 IUZpDhYlcd5qhgfRQgLpiSWp2ampBalFMFkmDk6pBsZg1ouLo0pWP/Ga+4mXi8FQwo+T8c28
 sumBX+PYzzoe+vjrwOSpDrOSU5Pa/pSzKGxNv3a0alHYGs3Mh1Wztv73eZGp5CRePPGk/vNv
 juJ71rTe/GffeX8t+9HXC2aKy8UeXPFK64vPscTCd+eu7vJtmHDtf+JG/rQ3ju7To/lbXz/b
 o9Hy+YK6EktxRqKhFnNRcSIAlxlyOSEDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrLLMWRmVeSWpSXmKPExsVy+t/xu7q3ZpTHGmy/b2ixccZ6Vov5R86x
 WvQ/fs1scf78BnaLTY+vsVpc3jWHzeJz7xFGixnn9zFZrD1yl92ide8RdovDb9pZLTY/OMbm
 wOOxaVUnm8fmJfUefVtWMXp83iQXwBKlZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqlnaGwe
 a2VkqqRvZ5OSmpNZllqkb5egl3GyZSFzwVeWijuP9jE1MHazdDFycEgImEhcPOjbxcjFISSw
 lFHi8K43jBBxKYn5LUpdjJxAprDEn2tdbBA1nxglZrz+xwqSYBMwlOg92gdWLyKgKbF3HVgN
 s8AOJom9z/6ygdQIC/hK3P0ykxmkhkVAVeLSxRSQMK+AtcTMFxOZIObLS6zecIAZxOYUsJE4
 tXsXWFwIqOb1xymsExj5FjAyrGIUSS0tzk3PLTbSK07MLS7NS9dLzs/dxAgM6m3Hfm7Zwdj1
 LvgQowAHoxIPb0dLeawQa2JZcWXuIUYJDmYlEd7rfaWxQrwpiZVVqUX58UWlOanFhxhNgW6a
 yCwlmpwPjLi8knhDU0NzC0tDc2NzYzMLJXHeDoGDMUIC6YklqdmpqQWpRTB9TBycUg2Mzg5d
 G7LXvwtUWLrij7l0szPHmXf2n2SYhdYqLIqSTg+Qfrxmlm6ftcXWfBcxx6Yp2j63hfulk2XM
 C7Jitr5XeO/wfALbPfsdT5PYTxoclC6r9BWJXe8XfqTmf9Re69/dHyIsa3S6Ba0+fTgx03xK
 4/e+f7KnK/NOvJ96Nite6C+jteAdFTclluKMREMt5qLiRADt9B+9gAIAAA==
X-CMS-MailID: 20190910123643eucas1p2666bc55d5b36efbbb02565793a2c1f86
X-Msg-Generator: CA
X-RootMTR: 20190910123643eucas1p2666bc55d5b36efbbb02565793a2c1f86
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190910123643eucas1p2666bc55d5b36efbbb02565793a2c1f86
References: <20190910123618.27985-1-s.nawrocki@samsung.com>
 <CGME20190910123643eucas1p2666bc55d5b36efbbb02565793a2c1f86@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_053646_167484_E382DD45 
X-CRM114-Status: GOOD (  10.39  )
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, b.zolnierkie@samsung.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, kgene@kernel.org,
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
