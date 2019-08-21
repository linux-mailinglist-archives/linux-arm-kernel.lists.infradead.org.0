Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2E0C97F17
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 17:40:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=l/khoYsyBcAe/q5gw3Mm2n5MweGqeRBgfhPSV78oheI=; b=Wd2e1AC28xAqpnhypLIuEI54oK
	9C0SrIWlIdweFo8e8E5ErOyXaQzojUdEMbkBqQuORyXQwJ0INwWKkPV/2DZFCsZwERhoTfhpF6uE8
	Cy1+BAEv17fcYX4FtppM+6zsYWRbYLPZ/EsgRIrmPyxFn09zDOD5BonlZWuu8Yi171BPXDJaTH+Xd
	mLBH2NPNvggHfHKa3CRlGPiu2nRktT9XkJ2te2BIRUuQk1KNYlF32Pvc+9DeDJ7yWmOEsYPAEAIiw
	Wb+GxUJcrgBcMgXTs+Bd5rIxkjjKebdMwWCbgqBvsrRIufDaaBbOOYrm2o49OPMZSbdrzaZfO1KO0
	05hrYknA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0SiN-0001xi-0j; Wed, 21 Aug 2019 15:39:59 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Si5-0001lv-1X
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 15:39:42 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190821153937euoutp02c647bd1c851aaeadf551f4e104a1eb50~8_ky4kxYa0741607416euoutp023
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 15:39:37 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190821153937euoutp02c647bd1c851aaeadf551f4e104a1eb50~8_ky4kxYa0741607416euoutp023
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1566401977;
 bh=vl9eeLzvbk1o5YyBvdLkkw/r624gziAnAOA5EeDC/C8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=OJBz3zUn3JTFvtdIi98ThEJuc2009ab28/ZnAeMjOZi9IdpI31cr6PyduT5VNW8N8
 f00FYwFCIlfC19albLJhtZFJDgjX0T6ub1iT409k1gVOScX5zXc20o7AqnyLv6QtWt
 0hWhIxQnrNHYSTE9H1/qhFsGyYrptc3hb3tMa+iQ=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190821153937eucas1p16714ac390b5c31100b9dff2a51b476cf~8_kyKcICu1998619986eucas1p1p;
 Wed, 21 Aug 2019 15:39:37 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id E3.50.04469.8B56D5D5; Wed, 21
 Aug 2019 16:39:36 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190821153936eucas1p22cd1a6105806cb5ad7b43252852fec05~8_kxSIdoF2217422174eucas1p2e;
 Wed, 21 Aug 2019 15:39:36 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190821153935eusmtrp23caa3591e86f9cb41173542d1d732cee~8_kxEBkA31715517155eusmtrp2H;
 Wed, 21 Aug 2019 15:39:35 +0000 (GMT)
X-AuditID: cbfec7f2-54fff70000001175-a2-5d5d65b87058
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id A3.2B.04166.7B56D5D5; Wed, 21
 Aug 2019 16:39:35 +0100 (BST)
Received: from AMDC3061.DIGITAL.local (unknown [106.120.51.75]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190821153935eusmtip222d51bebca59adb50083fb20061c5e17~8_kwh5lPE0822808228eusmtip2Q;
 Wed, 21 Aug 2019 15:39:35 +0000 (GMT)
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
To: krzk@kernel.org
Subject: [PATCH v2] soc: samsung: Select missing dependency for EXYNOS_CHIPID
Date: Wed, 21 Aug 2019 17:39:26 +0200
Message-Id: <20190821153926.12297-1-s.nawrocki@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190821150711.31398-1-s.nawrocki@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpgleLIzCtJLcpLzFFi42LZduznOd0dqbGxBksm6FtsnLGe1aL/8Wtm
 i/PnN7BbbHp8jdXi8q45bBYzzu9jslh75C67xaKtX9gtDr9pZ3Xg9Ni0qpPNY/OSeo++LasY
 PT5vkgtgieKySUnNySxLLdK3S+DKeLC0n62gmbXi1sVulgbGaSxdjJwcEgImEjMfHmHqYuTi
 EBJYwShx8OVdRgjnC6PEm13PmCGcz4wS06bsgWtpn3ufHSKxnFFiwamt7HAtK5deYAOpYhMw
 lOg92scIYosICEvcW7ocrIhZ4A+jRPO9vawgCWEBf4njB68xgdgsAqoSZ96cBGvgFbCW6D/Z
 wwyxTl5i9YYDYDangI3Euy1roM74zCbx/4IChO0isfDaaah6YYlXx7ewQ9gyEv93zgf7TkKg
 mVGiZ/dtdghnAqPE/eMLGCGqrCUOH78IdBEH0HmaEut36UOEHSXO7v8NFpYQ4JO48VYQJMwM
 ZE7aNp0ZIswr0dEmBFGtIvF71XQmCFtKovvJfxaIEg+Jw794IOHTzyjxdvpspgmM8rMQdi1g
 ZFzFKJ5aWpybnlpsmJdarlecmFtcmpeul5yfu4kRmC5O/zv+aQfj10tJhxgFOBiVeHgn6MbG
 CrEmlhVX5h5ilOBgVhLhrZgTFSvEm5JYWZValB9fVJqTWnyIUZqDRUmct5rhQbSQQHpiSWp2
 ampBahFMlomDU6qBcavysy3Rtxviezr/2bvycFcLZJ16sEfnn1xHrI7Ej4IpbjdnrRNdHun0
 YVGayoW83x53VSI9ZUOzr9zlVekMWVwqn8Q7R0e+51iIu0aVa/cSSbWDP+7JzrquvPp7VbDb
 b8WrC41m1sTd1vHfMOXnBGu5hsNiLm99z0q5fixyb4oIVPmxzGenEktxRqKhFnNRcSIAn4Cg
 zRMDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrILMWRmVeSWpSXmKPExsVy+t/xe7rbU2NjDR6/MLLYOGM9q0X/49fM
 FufPb2C32PT4GqvF5V1z2CxmnN/HZLH2yF12i0Vbv7BbHH7TzurA6bFpVSebx+Yl9R59W1Yx
 enzeJBfAEqVnU5RfWpKqkJFfXGKrFG1oYaRnaGmhZ2RiqWdobB5rZWSqpG9nk5Kak1mWWqRv
 l6CX8WBpP1tBM2vFrYvdLA2M01i6GDk5JARMJNrn3mfvYuTiEBJYyihxY8sVIIcDKCElMb9F
 CaJGWOLPtS42iJpPjBIbp69gBEmwCRhK9B7tA7NFgIruLV0ONohZoIVJYuWvJWwgCWEBX4lz
 p94xg9gsAqoSZ96cBGvgFbCW6D/ZwwyxQV5i9YYDYDangI3Euy1rwK4TAqq5/uoh2wRGvgWM
 DKsYRVJLi3PTc4sN9YoTc4tL89L1kvNzNzECg3fbsZ+bdzBe2hh8iFGAg1GJh3eCbmysEGti
 WXFl7iFGCQ5mJRHeijlRsUK8KYmVValF+fFFpTmpxYcYTYGOmsgsJZqcD4ysvJJ4Q1NDcwtL
 Q3Njc2MzCyVx3g6BgzFCAumJJanZqakFqUUwfUwcnFINjM139qxlvCBh9/FozOzCjZVTViyP
 DL3fXhj+dFZPRrWbg83SJmdd+e6nj2zE7eteML3u42dRNbpx5Wd6zz9ZLcHAvYLvVVKP3NQ0
 en3r0JTwp+f3PWd/YzvllUPi4etnlgQvC+T8ktW+/oqaQ2HA1FM3pxhMPSjg8LZhrmJNeNy0
 FQw+qtdNxZRYijMSDbWYi4oTAf7DBVx0AgAA
X-CMS-MailID: 20190821153936eucas1p22cd1a6105806cb5ad7b43252852fec05
X-Msg-Generator: CA
X-RootMTR: 20190821153936eucas1p22cd1a6105806cb5ad7b43252852fec05
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190821153936eucas1p22cd1a6105806cb5ad7b43252852fec05
References: <20190821150711.31398-1-s.nawrocki@samsung.com>
 <CGME20190821153936eucas1p22cd1a6105806cb5ad7b43252852fec05@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_083941_342911_129EC88E 
X-CRM114-Status: GOOD (  10.82  )
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
 pankaj.dubey@samsung.com, linux-kernel@vger.kernel.org, kgene@kernel.org,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The chipid driver uses the MFD syscon API but it was not covered
properly in Kconfig.

Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
---
 drivers/soc/samsung/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/soc/samsung/Kconfig b/drivers/soc/samsung/Kconfig
index 2905f5262197..33ad0de2de3c 100644
--- a/drivers/soc/samsung/Kconfig
+++ b/drivers/soc/samsung/Kconfig
@@ -10,6 +10,7 @@ if SOC_SAMSUNG
 config EXYNOS_CHIPID
 	bool "Exynos Chipid controller driver" if COMPILE_TEST
 	depends on ARCH_EXYNOS || COMPILE_TEST
+	select MFD_SYSCON
 	select SOC_BUS
 
 config EXYNOS_PMU
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
