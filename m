Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFEC79CD54
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 12:32:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:List-Owner; bh=lA6kI/cx4Pa1SQ0zwYAhp4Uut7CGF6yDPSTDbc2EIUA=; b=d9
	Sd0iwRGmzk2DjNw5BpfpE8AnEMmZgS75hPWfgyUs/GNExfdaVmVgghfDFrtuJ3IW1OKN9gDQr5puj
	YMOI8Gu6GqQboX00+ZtOupkVcgUfsV/i5Se2BlWPSfCQB6kA0F1nRBdBSmArYLLnjUh8zBGqSM2vI
	X0TTAuU5GDZNiPMqhbkLboKPGupuXtT1Du8ucNru7ai+EopBqCTAmM75Mj2p2U7RLaqN4ouGvSxFL
	FT+ELO61Ux/RXrYr6v0YRxJNNX1CJFXY+Cn5GgokaDLdbYq/4cMFRyg+uQd4c+xtESdeCyrYSnpSH
	zJ8DkocGW31qrmf4g8NyntA8HzsmwsUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2CIU-0005FF-JO; Mon, 26 Aug 2019 10:32:26 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2CIB-00057I-TJ
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 10:32:09 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190826103203euoutp01030041b05261e767efa22c87b8fc7998~_cmrLH-XU2451824518euoutp01L
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 10:32:03 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190826103203euoutp01030041b05261e767efa22c87b8fc7998~_cmrLH-XU2451824518euoutp01L
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1566815523;
 bh=AmZKpaQJcCRJYjglpjOPbLazFEnUnkpKaFbP4Z2GDfw=;
 h=From:To:Cc:Subject:Date:References:From;
 b=qpHarLKyCAdeGLArHq+lI6EEogO8Yl/aNSdfi9+p0z81/loPJi4NPG/YSRs/6v7AJ
 cPfk6uMixNnn5oGHHmHe2UtI2GrNY22P3Luq+ySDrKzSkFgGvBh2daRDuC7f+d+b6p
 cMymHlcRJdKrBVX+hlFXSZ5GFAh5T4ssFUpZJ1qI=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190826103202eucas1p1ffd543ce3f39805b5027f48ab545ac7a~_cmqtgBbE0322003220eucas1p1W;
 Mon, 26 Aug 2019 10:32:02 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id DD.56.04374.225B36D5; Mon, 26
 Aug 2019 11:32:02 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190826103201eucas1p1358f33d8fbdc8cef8ba2ebdcb1b3a51a~_cmpzCWTe0323703237eucas1p1a;
 Mon, 26 Aug 2019 10:32:01 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190826103201eusmtrp24d54d279e44e8d06669e370efbc30570~_cmpk7yo91574315743eusmtrp2n;
 Mon, 26 Aug 2019 10:32:01 +0000 (GMT)
X-AuditID: cbfec7f5-4ddff70000001116-6d-5d63b52282dd
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id FD.C1.04166.125B36D5; Mon, 26
 Aug 2019 11:32:01 +0100 (BST)
Received: from AMDC2765.DIGITAL.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190826103201eusmtip2dae8b5cb288fdaabfdcc3536dca51892~_cmpNXjho0460004600eusmtip2f;
 Mon, 26 Aug 2019 10:32:01 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/5] Exynos SoCs: enable support for ARM Architected Timers
Date: Mon, 26 Aug 2019 12:31:39 +0200
Message-Id: <20190826103142.3477-1-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrMIsWRmVeSWpSXmKPExsWy7djP87pKW5NjDdafVLXYOGM9q8X1L89Z
 Lc6f38BusenxNVaLGef3MVmsPXKX3YHNY9OqTjaPzUvqPfq2rGL0+LxJLoAlissmJTUnsyy1
 SN8ugStj6fFNbAXHeCr+HvnF2MA4l6uLkZNDQsBEYuGjuYxdjFwcQgIrGCW2vv/ODJIQEvjC
 KLHkPBdE4jOjxPT169hgOvqXn2OGSCxnlFh14TUbhAPU8WfBWhaQKjYBQ4mut11gHSIC3hKT
 z/xlByliFtjGKLGl9wHYDmGgxN3v+5hAbBYBVYlpT/+CNfAK2EjMbLoCtU5eYvWGA2DrJASO
 sEnsX7AEaAMHkOMiMXWZCkSNsMSr41vYIWwZif875zNB1DczSjw8t5YdwulhlLjcNIMRospa
 4vDxi6wgg5gFNCXW79KHCDtKdLY3MkHM55O48VYQJMwMZE7aNp0ZIswr0dEmBFGtJjHr+Dq4
 tQcvXIIq8ZC4sNoDEoqxEr/PHmKfwCg3C2HVAkbGVYziqaXFuempxcZ5qeV6xYm5xaV56XrJ
 +bmbGIFRf/rf8a87GPf9STrEKMDBqMTDm1CaHCvEmlhWXJl7iFGCg1lJhDdHPzFWiDclsbIq
 tSg/vqg0J7X4EKM0B4uSOG81w4NoIYH0xJLU7NTUgtQimCwTB6dUA+NWl4xfe5byfXlQ+Wgx
 R2qYhAD7vIKalqMT1My6wtJWpYQxKzIUsixrYZillmAq+fHkA/W8q98Y9e7tWZQQuH3Nc8U9
 R4wYpKIZtjvN/cj+4/z6bbIvKmOUQ2d9tJ92TaDLUu3E+cv5BoG8T/yzTHvUs+/LbxVxytNd
 4ixVK5u47OCi9z5lP5VYijMSDbWYi4oTAZzXjVD2AgAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrNLMWRmVeSWpSXmKPExsVy+t/xe7qKW5NjDda9VrXYOGM9q8X1L89Z
 Lc6f38BusenxNVaLGef3MVmsPXKX3YHNY9OqTjaPzUvqPfq2rGL0+LxJLoAlSs+mKL+0JFUh
 I7+4xFYp2tDCSM/Q0kLPyMRSz9DYPNbKyFRJ384mJTUnsyy1SN8uQS9j6fFNbAXHeCr+HvnF
 2MA4l6uLkZNDQsBEon/5OeYuRi4OIYGljBKv95xjh0jISJyc1sAKYQtL/LnWxQZR9IlR4vuG
 E2AJNgFDia63IAlODhEBX4nHb1aygBQxC+xglNiy4y1YkbCAt8Td7/uYQGwWAVWJaU//gjXw
 CthIzGy6wgaxQV5i9YYDzBMYeRYwMqxiFEktLc5Nzy021CtOzC0uzUvXS87P3cQIDLhtx35u
 3sF4aWPwIUYBDkYlHt6E0uRYIdbEsuLK3EOMEhzMSiK8OfqJsUK8KYmVValF+fFFpTmpxYcY
 TYGWT2SWEk3OB0ZDXkm8oamhuYWlobmxubGZhZI4b4fAwRghgfTEktTs1NSC1CKYPiYOTqkG
 xtTYA95pXrk9pccT7Fb6mmydvuJJuIxJkhyr8WRtEeO35YtKnvYm7vj2+f8VmdUx5f8PGH2p
 3f/K6tSNblOOx/eCGnKcdpgePfYn4NCSx7eyY0VKNv5f/mWlX1NdJWfIugab35bKlQLFl1yF
 BTr2tYhHX+62Op/yvnXfm0/RZ+p/zmGfJf/KXImlOCPRUIu5qDgRAKL3Cq9OAgAA
X-CMS-MailID: 20190826103201eucas1p1358f33d8fbdc8cef8ba2ebdcb1b3a51a
X-Msg-Generator: CA
X-RootMTR: 20190826103201eucas1p1358f33d8fbdc8cef8ba2ebdcb1b3a51a
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190826103201eucas1p1358f33d8fbdc8cef8ba2ebdcb1b3a51a
References: <CGME20190826103201eucas1p1358f33d8fbdc8cef8ba2ebdcb1b3a51a@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_033208_251328_2BAF4155 
X-CRM114-Status: GOOD (  12.44  )
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

Dear All,

ARM Architected Timers are present in all CortexA7/A15 based Samsung
Exynos SoCs. So far they were not enabled, because there were some issues
related to their initialization. Samsung Exynos SoCs used custom timer
hardware - Exynos MultiCore Timer. It turned out that enabling MCT it is
also needed to get ARM Architected Timers working, because they both
share some common hardware blocks (global system counter).

This patchset enables support for ARM Architected Timer driver together
with a standard Exynos MultiCore Timer driver, which is kept as a default
timer source on ARM 32bit platforms. Support for ARM architected timers
is essential for enabling proper KVM support on those platforms.

Some of the MCT cleanup patches were earlier a part of the similar
patchset for ARM64-based Exynos5433 SoC.

Best regards
Marek Szyprowski
Samsung R&D Institute Poland

Marek Szyprowski (5):
  clocksource: exynos_mct: Remove dead code
  clocksource: exynos_mct: Fix error path in timer resources
    initialization
  clocksource: exynos_mct: Increase priority over ARM arch timer
  ARM: dts: exynos: Add support ARM architected timers
  ARM: exynos: Enable support for ARM architected timers

 arch/arm/boot/dts/exynos3250.dtsi | 10 ++++++++++
 arch/arm/boot/dts/exynos5250.dtsi |  1 +
 arch/arm/boot/dts/exynos54xx.dtsi | 10 ++++++++++
 arch/arm/mach-exynos/Kconfig      |  1 +
 drivers/clocksource/exynos_mct.c  | 27 +++++++++++++++++----------
 include/linux/cpuhotplug.h        |  2 +-
 6 files changed, 40 insertions(+), 11 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
