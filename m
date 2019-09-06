Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81B1FAB5A0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 12:15:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=H8Qqp9K28LnZMvMt9XaP61ONzh9eTYyo0QnIFZECrGg=; b=S68N1es1HgXtiesTKSSq0vG2Vy
	+XbDpbIoMrpZa6WMi0QBECwOSSM+yXVd4C32bqBmhe18APVOprbS4QWElzHgLQy+lEkHFC6B/mcLI
	Wjmxm8XXFNETmiRh+nJ6QBDUT/Xpk+iqYmOv/3KjRpNTeP8NZcB10nCgjcriGWmVO0F0uNIKzisO5
	1S48+GpbuKhfy1ch762UxEU9uDKpwLvo4YBTjre3JvLC1PfTVLPrqY3BupWjt2tnJIhe23JkEdh7M
	ALOu19qNMrHvW2XaA72q/tt9YDY3Tkd5PD8ftKher3/X6Wo+okowREiqWMDXJRv6mmZfR+bOqDV1x
	+1CK4ypg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6BGe-0006LT-AX; Fri, 06 Sep 2019 10:15:00 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6BFr-0005tF-T8
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 10:14:14 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190906101408euoutp010e8c52e12d494380c76c0c276c1d86f0~B0dLLDjTC0929309293euoutp01F
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  6 Sep 2019 10:14:08 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190906101408euoutp010e8c52e12d494380c76c0c276c1d86f0~B0dLLDjTC0929309293euoutp01F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1567764848;
 bh=Uy8PbI8Ay//0lPtuuye0Cr4E/yS+/gJgE62W7KlqB88=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=CQCgygnXTSwu9J3NMtmTbRo5PQsMCHxALB/4rf5EbR3cPYDcbGzq3u3IuLNYfhve7
 0OUnU4APEZlGmGHboMDn/4+r5qUxumXG6vPYZSGJPGBJit/prRsEgZqtpzJgGkJ15F
 kuZkheL+2siTQWH9x18a6ZB8y/rLI7gYD3XGems4=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190906101407eucas1p2f83ea12590aa7a81bd1367620314c2fa~B0dKKYx-J0426804268eucas1p2K;
 Fri,  6 Sep 2019 10:14:07 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 17.F8.04374.F61327D5; Fri,  6
 Sep 2019 11:14:07 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190906101406eucas1p289695a398d757b116367257293c3544d~B0dJQJNPf0165101651eucas1p2V;
 Fri,  6 Sep 2019 10:14:06 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190906101406eusmtrp2bd76666accd9da1e19564368dabf7995~B0dJB4LdS3160331603eusmtrp2Q;
 Fri,  6 Sep 2019 10:14:06 +0000 (GMT)
X-AuditID: cbfec7f5-4ddff70000001116-3e-5d72316f3170
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 5D.03.04117.E61327D5; Fri,  6
 Sep 2019 11:14:06 +0100 (BST)
Received: from AMDC3778.DIGITAL.local (unknown [106.120.51.20]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190906101405eusmtip1d3d6b902b9c7631ac6f5e54f2daa3811~B0dINg9fb0073200732eusmtip1v;
 Fri,  6 Sep 2019 10:14:05 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/3] ARM: dts: exynos: fix too long line in memory device
Date: Fri,  6 Sep 2019 12:13:43 +0200
Message-Id: <20190906101344.3535-3-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190906101344.3535-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrMKsWRmVeSWpSXmKPExsWy7djP87r5hkWxBm3XOCw2zljPanH9y3NW
 i/lHzrFa9D9+zWxx/vwGdouzTW/YLW41yFhsenyN1eLyrjlsFp97jzBazDi/j8li7ZG77BZL
 r19ksrjduILNonXvEXaLw2/aWS2+nXjE6CDosWbeGkaPnbPusntsWtXJ5rF5Sb3HwXd7mDz6
 tqxi9Pi8SS6APYrLJiU1J7MstUjfLoErY8eBy8wFz9kq9t5ZyNTAeJm1i5GTQ0LAROL7n/ts
 XYxcHEICKxgl3v//yALhfGGUuDn5PiuE85lRYsK7HcxdjBxgLR9XFUHElzNKrGrfzgrXsWd6
 IwtIEZuAnsSOVYUgK0QEFjNKfDscBWIzC2xjkuj9KgNiCwt4SrRfngB2BouAqsTKw0dZQGxe
 ATuJQ39Os0CcJy+xesMBZhCbU8BeYtL6qWDXSQgcY5e4+fY8O0SRi8SxvSA/gNjCEq+Ob4GK
 y0j83zmfCcIulmjoXcgIYddIPO6fC1VjLXH4+EVWkJuZBTQl1u/Shwg7Sux9+5IJ4l8+iRtv
 BSHO55OYtG06NBh4JTrahCCqNSS29FyAWiQmsXzNNKjhHhIvH9xjgoTOJEaJ9l+LmCYwys9C
 WLaAkXEVo3hqaXFuemqxcV5quV5xYm5xaV66XnJ+7iZGYFI6/e/41x2M+/4kHWIU4GBU4uEV
 +FIQK8SaWFZcmXuIUYKDWUmEd/1GoBBvSmJlVWpRfnxRaU5q8SFGaQ4WJXHeaoYH0UIC6Ykl
 qdmpqQWpRTBZJg5OqQbGaUdPOewUTBWUO3p2idMFVctc1YwdHuX3/9myv3kVIV3quzf6il27
 +BTz/b03jDf9u1H4+OnZs0VTZn9X/tr7wse+cNmWPXXzX5lpyFb2nmmdUmU3+d0L7yfB7M+5
 c2McZ+/aOyt015+wTw9vHLuVq7ci/kqPzdr1cn5Ns0/aZ92pKP6h3cMYrMRSnJFoqMVcVJwI
 APOi1dVGAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprGIsWRmVeSWpSXmKPExsVy+t/xu7p5hkWxBn+P8llsnLGe1eL6l+es
 FvOPnGO16H/8mtni/PkN7BZnm96wW9xqkLHY9Pgaq8XlXXPYLD73HmG0mHF+H5PF2iN32S2W
 Xr/IZHG7cQWbReveI+wWh9+0s1p8O/GI0UHQY828NYweO2fdZffYtKqTzWPzknqPg+/2MHn0
 bVnF6PF5k1wAe5SeTVF+aUmqQkZ+cYmtUrShhZGeoaWFnpGJpZ6hsXmslZGpkr6dTUpqTmZZ
 apG+XYJexo4Dl5kLnrNV7L2zkKmB8TJrFyMHh4SAicTHVUVdjFwcQgJLGSWun2gBinMCxcUk
 Ju3bzg5hC0v8udbFBmILCXxilHg9twykl01AT2LHqkKQXhGB5YwSx1a9ZQZxmAWOMEn075oH
 NkhYwFOi/fIEMJtFQFVi5eGjLCA2r4CdxKE/p1kgFshLrN5wgBnE5hSwl5i0fioLxDI7iV1T
 OlkmMPItYGRYxSiSWlqcm55bbKRXnJhbXJqXrpecn7uJERgn24793LKDsetd8CFGAQ5GJR5e
 gS8FsUKsiWXFlbmHGCU4mJVEeNdvBArxpiRWVqUW5ccXleakFh9iNAU6aiKzlGhyPjCG80ri
 DU0NzS0sDc2NzY3NLJTEeTsEDsYICaQnlqRmp6YWpBbB9DFxcEo1MF5f3u893+KudFF+kofU
 W/a90vkR39wcjDSYRTLnZTMo1bGFXO0sunL+JdujWP81r9+vy//HZ7FmNvMDXdXNJ6WObpgg
 LZKw5W5Gj+rszz1pm9j7Gt7lCN99Kbz1SOt6Y/bilgefBKxX8nHWBMz4LCqQfPrSZP4jzDMX
 7xb+cj3fYEufBye/lBJLcUaioRZzUXEiAEV82JepAgAA
X-CMS-MailID: 20190906101406eucas1p289695a398d757b116367257293c3544d
X-Msg-Generator: CA
X-RootMTR: 20190906101406eucas1p289695a398d757b116367257293c3544d
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190906101406eucas1p289695a398d757b116367257293c3544d
References: <20190906101344.3535-1-l.luba@partner.samsung.com>
 <CGME20190906101406eucas1p289695a398d757b116367257293c3544d@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_031412_069728_F37CF6CE 
X-CRM114-Status: GOOD (  12.32  )
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
