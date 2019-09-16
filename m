Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1EE4B37C6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 12:07:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=H8Qqp9K28LnZMvMt9XaP61ONzh9eTYyo0QnIFZECrGg=; b=kIjS3fB6gfmWvFlIC/1kKhlOgh
	w2maCR+s9tTEOi5aVcucjsH0YX9Bb9WVl6MEmUJpHJsrTjhMwyhgpO7RoY9jA5upJY2oXAwTpzX5q
	KTa9mHdmeYcxR0CUKIFnBhyyObQ+6oTUVBAZDCR/jQChzmo2FWAnp4B+615hsF07E215BknNfv7rl
	L1Ga3ObdsQf94tHzu+4SHKLPhsfmPN959qP49cImMrF/mCpQDjpjKQrKOI/wFuAeGHO4haiwVEylR
	Qv3dhrRY5OXsB+xnC+r4TZR6eunIk4EkZDj/3aWRttM1Z4uEMXohIiMrdvTpp3Em6wBt1RnGn8gJO
	j1VJjZZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9nuz-0003an-5j; Mon, 16 Sep 2019 10:07:37 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9nuk-0003Z4-6M
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 10:07:23 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190916100720euoutp0189d79a2b8fd55458e6adc81cdcf58b5b~E40FkRxJn2557925579euoutp01f
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 10:07:20 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190916100720euoutp0189d79a2b8fd55458e6adc81cdcf58b5b~E40FkRxJn2557925579euoutp01f
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1568628440;
 bh=Uy8PbI8Ay//0lPtuuye0Cr4E/yS+/gJgE62W7KlqB88=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=OU5UqgGjGY6HuGv5V+CorBe0NhspzeUHj22GF68n4ohALSAkrlZkq41jakFiHbAeY
 U5VOwE4zf9MZrLktuDUxOBQhqrgaTNmFqWfkj6tX357GShUd+6aXUd5NijgtEbdafE
 O5c2iMvCXC2rdCsr4h4baLBPr2NREPEYci/3JJZw=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190916100719eucas1p1e84d4fa680983ee4ec5878e476e7022c~E40Ey87c90424904249eucas1p1x;
 Mon, 16 Sep 2019 10:07:19 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 7F.DE.04469.7DE5F7D5; Mon, 16
 Sep 2019 11:07:19 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190916100718eucas1p1efcbabdf9dbe17a062ae83b8c19ac256~E40D-SBI20720607206eucas1p1N;
 Mon, 16 Sep 2019 10:07:18 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190916100718eusmtrp2b28c2b52b5b47de5f999ceecc557c737~E40DxPHpI2883028830eusmtrp25;
 Mon, 16 Sep 2019 10:07:18 +0000 (GMT)
X-AuditID: cbfec7f2-54fff70000001175-ea-5d7f5ed77158
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id DD.48.04117.6DE5F7D5; Mon, 16
 Sep 2019 11:07:18 +0100 (BST)
Received: from AMDC3778.digital.local (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190916100717eusmtip283feedbd6c1b28f23253ea84770886ce~E40DCHngk2339323393eusmtip2X;
 Mon, 16 Sep 2019 10:07:17 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/3] ARM: dts: exynos: fix too long line in memory device
Date: Mon, 16 Sep 2019 12:07:03 +0200
Message-Id: <20190916100704.26692-3-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190916100704.26692-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSa0hTYRj229nZjqPFcUa+LFFZBSXkDYMPEjPox6B+SESRYTn1pJJbtqOW
 GbkC85Z5qdRE00pTlqJOGVM0vDVNTZ1SimWoIzIvWZtXsIvzrPr3vM/7PN/z8PJRhKSJlFIx
 qnhGrVLEygQivt64MXho7EJKqI9BS+CGojoSjy1/IXFZ9yCJc8zzBB4aqhfit3cWhHhC44p1
 5vckHm0pEWBrdjfCRUOveLi2e1KIK8dMPPzhdrUAp7Z1C3HXQhqJV3tnUJCTvOZJDZI3F08K
 5TpthkDeWJEi7/jWypPfb9IiuVXnFiwMEQVEMrExiYzaOzBMFG1oHyXivgiut318ytOgUTIT
 OVJA+8NiRpogE4koCV2N4Guf0T4sI3j8eZnHDVYEd6atxF/LsqWC5BZVCGZbf/D/WfSbj7b8
 FCWgvcCgvWoz7KKfI1jtCrFhgtbzIHvF1Yad6ZOwMLu03YNP74es3Axkw2L6KNSurAq4MHd4
 Wd++HexIB8F69WvClgW0UQjajVR7o+OQN7SEOOwMcz1NQg67wu/mMh6HWdBkP7VrboI5p9Su
 OQJdPSbS1pmgD0JdizdHH4Ppkk2+jQZ6J4wvOnH1d0K+vpDgaDGk35Vw6gPQdG/YHrQbqmoK
 7I/LYaK3wH7QBwgmlr7zc5F78f+wcoS0yIVJYJVRDOurYq55sQolm6CK8oq4otShrb/U/6vH
 YkArI+GdiKaQbIdYk3orVEIqEtkkZScCipDtEp9NTw6ViCMVSTcY9ZWL6oRYhu1Eeyi+zEWc
 7DB1XkJHKeKZywwTx6j/bnmUo1SD9nlID6+twehMXs6sXwM1GRMwIPV8E9geOlXqkm0YKUr0
 MOqDTk/8nK/s6BUXTlnKgoNGsupU/rFh3ubFF3PPyhs/G/1k0gGHyRO+p/JpT2tawplIXVFf
 /yXTulOvck5SGP7OrM03jfQNN1j81kTjPolu3nvPPVwLif4UYcpRyPhstMLXk1Czij/BbdFd
 RwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprBIsWRmVeSWpSXmKPExsVy+t/xe7rX4upjDbbu47fYOGM9q8X1L89Z
 LeYfOcdq0f/4NbPF+fMb2C3ONr1ht7jVIGOx6fE1VovLu+awWXzuPcJoMeP8PiaLtUfuslss
 vX6RyeJ24wo2i9a9R9gtDr9pZ7X4duIRo4Ogx5p5axg9ds66y+6xaVUnm8fmJfUeB9/tYfLo
 27KK0ePzJrkA9ig9m6L80pJUhYz84hJbpWhDCyM9Q0sLPSMTSz1DY/NYKyNTJX07m5TUnMyy
 1CJ9uwS9jB0HLjMXPGer2HtnIVMD42XWLkZODgkBE4kvn5YA2VwcQgJLGSUabu1mh0iISUza
 tx3KFpb4c62LDaLoE6PE4ZVngTo4ONgE9CR2rCoEiYsILGeUOLbqLTOIwyxwhEmif9c8sBXC
 Aj4Sb168B7NZBFQluid0MoLYvAL2Emu/fmOD2CAvsXrDAWYQm1PAQeLHiqNgthBQzZTrPxgn
 MPItYGRYxSiSWlqcm55bbKRXnJhbXJqXrpecn7uJERgr24793LKDsetd8CFGAQ5GJR7ehta6
 WCHWxLLiytxDjBIczEoivOEd1bFCvCmJlVWpRfnxRaU5qcWHGE2BjprILCWanA+M47ySeENT
 Q3MLS0NzY3NjMwslcd4OgYMxQgLpiSWp2ampBalFMH1MHJxSDYwH9L5YTJk44/mTVPsTzLZb
 FTSdWCZvOProktQGvWmuNw/1i2uyOM24MuEKb1+oe53qdhHVGr7Fa0qeqAv5rLA87jOBO2f3
 qve2PYaSK6X8erg9laauWbRhzp5ZSs/ubYmW7DsT92aJ5Bwvp09X5h79djbx1kNP0Z0asaXv
 WA57vro+5dDOD/KzlFiKMxINtZiLihMBMglGiasCAAA=
X-CMS-MailID: 20190916100718eucas1p1efcbabdf9dbe17a062ae83b8c19ac256
X-Msg-Generator: CA
X-RootMTR: 20190916100718eucas1p1efcbabdf9dbe17a062ae83b8c19ac256
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190916100718eucas1p1efcbabdf9dbe17a062ae83b8c19ac256
References: <20190916100704.26692-1-l.luba@partner.samsung.com>
 <CGME20190916100718eucas1p1efcbabdf9dbe17a062ae83b8c19ac256@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_030722_437786_137E939B 
X-CRM114-Status: GOOD (  13.13  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, willy.mh.wolff.ml@gmail.com, b.zolnierkie@samsung.com,
 krzk@kernel.org, Lukasz Luba <l.luba@partner.samsung.com>,
 cw00.choi@samsung.com, kyungmin.park@samsung.com, robh+dt@kernel.org,
 kgene@kernel.org, s.nawrocki@samsung.com, myungjoo.ham@samsung.com,
 m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Small fix moving the comment to line above making sure the lines do not
exceed 80 characters.

Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
---
 arch/arm/boot/dts/exynos5422-odroid-core.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/exynos5422-odroid-core.dtsi b/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
index fe885ca969af..059fa32d1a8f 100644
--- a/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
+++ b/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
@@ -103,7 +103,8 @@
 
 		timings_samsung_K3QF2F20DB_800mhz: lpddr3-timings@800000000 {
 			compatible	= "jedec,lpddr3-timings";
-			reg		= <800000000>; /* workaround: it shows max-freq */
+			/* workaround: 'reg' shows max-freq */
+			reg		= <800000000>;
 			min-freq	= <100000000>;
 			tRFC		= <65000>;
 			tRRD		= <6000>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
