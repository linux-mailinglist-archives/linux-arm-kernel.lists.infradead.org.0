Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 554A89CD55
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 12:32:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=buktSF45i0HGbbtFeagBTyN/3QldL68oNiDHgeJIm0I=; b=Q416EKi8bCirp5J/WifmPL7ySp
	gTVck5LEnHmqZCjBW3UanJBbCkbGgcn+KpOA8UzHxHzP2nbHLVvaEjN55t1U0TMO+fvxb2/DGT+Oe
	sLTHX0bVW4Wrex2qyXLIwyr09nTTigV2Uww/CA/+2kFyopGuhA3UW6ZJAWoaRkMIDDS/i/0sVWcUH
	yPLz+H31ZX5yqvFnAwnOyNEzoc/glNV/HAehadfQ0JwbfRudG9xieV/E7xIF8sB7iRnkctd5+RZyW
	ljeMl/DysAdCR3iENBF10Y5SdB0L+xGb+f/sMWGx1TkYw9uDqjIyMTrLChi7YbZtjonOW0RM5mKQQ
	N6DHcw5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2CIg-0005Uh-Rt; Mon, 26 Aug 2019 10:32:38 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2CID-00058B-UW
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 10:32:11 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190826103204euoutp01f78c0a72a5784c088efd9fcefdb6da1d~_cmsUAOiU2308723087euoutp01g
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 10:32:04 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190826103204euoutp01f78c0a72a5784c088efd9fcefdb6da1d~_cmsUAOiU2308723087euoutp01g
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1566815524;
 bh=Ip+6fltHztJReMlz2T2VDcULtxKY9cslS3Sg66M7syQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=qTHrARphzpFDDjCFLr2OMcgDO9mrtkasQCA1dYSdjdHzkcIFhFfCaeDgBs28rZz/Z
 WcZkNh8T0M4GLlpcg+Q/6RKlhqY/ghSSToL3v3VR8166WGjpkyyX7GIl3jVfvd7D80
 eIIyaGXTBzkHgs7CB/waot33pqYKHMeNU2XSIwfU=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190826103204eucas1p2823fac6836c8ef1735d94e92f4cd59cb~_cmr1jt_n2547125471eucas1p2R;
 Mon, 26 Aug 2019 10:32:04 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id D1.1C.04309.325B36D5; Mon, 26
 Aug 2019 11:32:03 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190826103203eucas1p2d67b0ef44758eb06252b340f7751701a~_cmq-EDne2893828938eucas1p2i;
 Mon, 26 Aug 2019 10:32:03 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190826103202eusmtrp2a62a27e9ae1e3ee315e38b06a5ad69ea~_cmqw9sHO1574315743eusmtrp2s;
 Mon, 26 Aug 2019 10:32:02 +0000 (GMT)
X-AuditID: cbfec7f4-ae1ff700000010d5-fe-5d63b523cc81
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 5A.63.04117.225B36D5; Mon, 26
 Aug 2019 11:32:02 +0100 (BST)
Received: from AMDC2765.DIGITAL.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190826103202eusmtip266c0211cac19abf51a585a59911f35a2~_cmqTNKKp0324503245eusmtip21;
 Mon, 26 Aug 2019 10:32:02 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/2] ARM: exynos: Enable support for ARM architected timers
Date: Mon, 26 Aug 2019 12:31:42 +0200
Message-Id: <20190826103142.3477-4-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190826103142.3477-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrPIsWRmVeSWpSXmKPExsWy7djP87rKW5NjDSZf07XYOGM9q8X1L89Z
 Lc6f38BusenxNVaLGef3MVmsPXKX3YHNY9OqTjaPzUvqPfq2rGL0+LxJLoAlissmJTUnsyy1
 SN8ugSvj9J36gk1sFbf+SDUwbmTtYuTkkBAwkbi1cDNjFyMXh5DACkaJXU9+s0E4XxglVt+4
 DpX5zCjx7fF7ZpiWw79mQVUtZ5S4vu0XM1zLopfLWUCq2AQMJbredrGB2CIC3hKTz/xlByli
 FtjGKLGl9wFQBweHsECAxJYHUSA1LAKqEpNWdIAdxStgI/G89w0bxDZ5idUbDoCVcwrYSjxY
 YQgyRkLgNpvE/n1zoWpcJL71r4J6SFji1fEt7BC2jMT/nfOZIBqaGSUenlvLDuH0MEpcbprB
 CFFlLXH4+EVWkA3MApoS63fpQ4QdJTZv7mAHCUsI8EnceCsIEmYGMidtm84MEeaV6GgTgqhW
 k5h1fB3c2oMXLkEDy0Pi9NKz0FCcwChx79E5tgmM8rMQli1gZFzFKJ5aWpybnlpslJdarlec
 mFtcmpeul5yfu4kRmAxO/zv+ZQfjrj9JhxgFOBiVeHgTSpNjhVgTy4orcw8xSnAwK4nw5ugn
 xgrxpiRWVqUW5ccXleakFh9ilOZgURLnrWZ4EC0kkJ5YkpqdmlqQWgSTZeLgBKaDAJ5Z4i/O
 PC9hM/u/955rMPtGK317i43Ss6yVnsp/5BTo6i/mWJOZNdm7JdlGoEhpW1OIfR4bZ9eBAOF/
 HT/1NDYaVq2abKckMM1Fgp9tVrGp8e18V8+X2nfWKiV+X6DLqhTMOFN1h+6Gy5MYLn/afjVn
 XqREykv113b7Hm3oiJfeav9JiE+JpTgj0VCLuag4EQB68HSDAgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrALMWRmVeSWpSXmKPExsVy+t/xe7pKW5NjDWbdNLLYOGM9q8X1L89Z
 Lc6f38BusenxNVaLGef3MVmsPXKX3YHNY9OqTjaPzUvqPfq2rGL0+LxJLoAlSs+mKL+0JFUh
 I7+4xFYp2tDCSM/Q0kLPyMRSz9DYPNbKyFRJ384mJTUnsyy1SN8uQS/j9J36gk1sFbf+SDUw
 bmTtYuTkkBAwkTj8axZbFyMXh5DAUkaJN98Ws0EkZCROTmuAKhKW+HOtC6roE6PE3eO3wIrY
 BAwlut52gdkiAr4Sj9+sZAEpYhbYwSixZcdbsG5hAT+JZ/ffghWxCKhKTFrRARbnFbCReN77
 BmqbvMTqDQeYuxg5ODgFbCUerDAECQsBlfx5NI91AiPfAkaGVYwiqaXFuem5xUZ6xYm5xaV5
 6XrJ+bmbGIGhue3Yzy07GLveBR9iFOBgVOLhTShNjhViTSwrrsw9xCjBwawkwpujnxgrxJuS
 WFmVWpQfX1Sak1p8iNEU6KaJzFKiyfnAuMkriTc0NTS3sDQ0NzY3NrNQEuftEDgYIySQnliS
 mp2aWpBaBNPHxMEJDEQb/sWslhseaW95Ujapn+Hi12V+XFffXdCTOZJ0bebley6xdfU7bLYH
 Liz7fUJwpbmI+Kk1C44/Mj0mPM2C40if3CzFTyse3Vu68Numpv377rP8EFmcuPb/kx0SFtaW
 Ftdl3myRlfRRee/ueOXIbR7O/58YnGbfvGdt1xSRtWtbTE3MiYrsaws/KrEUZyQaajEXFScC
 AAnK575jAgAA
X-CMS-MailID: 20190826103203eucas1p2d67b0ef44758eb06252b340f7751701a
X-Msg-Generator: CA
X-RootMTR: 20190826103203eucas1p2d67b0ef44758eb06252b340f7751701a
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190826103203eucas1p2d67b0ef44758eb06252b340f7751701a
References: <20190826103142.3477-1-m.szyprowski@samsung.com>
 <CGME20190826103203eucas1p2d67b0ef44758eb06252b340f7751701a@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_033210_113612_B8B57A0A 
X-CRM114-Status: GOOD (  11.76  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Chanwoo Choi <cw00.choi@samsung.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ARM architected timer can be used together with Exynos MultiCore Timer
driver, so enable support for it. Support for ARM architected timers is
essential for enabling proper KVM support.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
 arch/arm/mach-exynos/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-exynos/Kconfig b/arch/arm/mach-exynos/Kconfig
index d7422233a130..833ab92516fa 100644
--- a/arch/arm/mach-exynos/Kconfig
+++ b/arch/arm/mach-exynos/Kconfig
@@ -18,6 +18,7 @@ menuconfig ARCH_EXYNOS
 	select EXYNOS_SROM
 	select EXYNOS_PM_DOMAINS if PM_GENERIC_DOMAINS
 	select GPIOLIB
+	select HAVE_ARM_ARCH_TIMER if VIRTUALIZATION
 	select HAVE_ARM_SCU if SMP
 	select HAVE_S3C2410_I2C if I2C
 	select HAVE_S3C2410_WATCHDOG if WATCHDOG
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
