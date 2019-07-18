Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAB556CFEA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 16:33:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LbZ+Md3i+nVDkL4OMvRNscczU+pVlRJagGtsL/4cqBs=; b=pOBtzW8dqTU+Pg47LI8ZSEwKCd
	x6OiwCzsz0UlDQOHowv+CrhC0nYmcgIN/2ypxZfYawZga8sc79+91CnDPIavZmsaU4N56XZQ868s9
	UA7DmmFZtrzYjYKc/UJCuO6WfyyblZyHwaUaumCX0jXeORtq84fula2QRQ8TP+gqToYrO5nnJ+FgX
	45H4V8n6DE18bixcti/HalAS2YYWyUeDlHl2hWMd06/K82i2SKpcpqQ4Bj4pD4udYQrvLhSbYIKeP
	wbrD5aJ1HG84E5E3J8AFi8LRDR5UcqjWgWu1kqZTI8MurQ4d6FqZqIynqFk/1Wl8cG7qXUfC6goev
	HXJufW8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho7Tp-00056w-5C; Thu, 18 Jul 2019 14:33:57 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho7Ra-0003eI-33
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 14:31:40 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190718143134euoutp028c8dce59b07a49dd9c3a494c68771863~yhtqnMizA3113231132euoutp02M
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jul 2019 14:31:34 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190718143134euoutp028c8dce59b07a49dd9c3a494c68771863~yhtqnMizA3113231132euoutp02M
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563460294;
 bh=omhkPC8myPIAHetrVW4VociydsTGawBlQtLu8b+v3i0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ab5x28kcQLnrgujnrBXiPsQKYYiAgELNWNIRprqICw+C4s7RzUZOMRuubQMuyCG1k
 6V+xj5yTMK9cMmIdXnkSAg08toJiTkaIj4Pbukxgdx68sOFWc/jmWuLr4YIJDxEyhr
 uCdT691+jYT0Lc2D19jehXcC7PeKGDFUuJNV6o2Y=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190718143133eucas1p165528de0eb0a362638a9bd527164fcc4~yhtqFUIbx0448804488eucas1p1i;
 Thu, 18 Jul 2019 14:31:33 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id C7.20.04325.5C2803D5; Thu, 18
 Jul 2019 15:31:33 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190718143132eucas1p2afecae86f2ef17aa8a4a99df8ffa47d9~yhtpWEIu_2666226662eucas1p2D;
 Thu, 18 Jul 2019 14:31:32 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190718143132eusmtrp2c596c168752b98828aecdd8184fdf0d7~yhtpIACUh0339203392eusmtrp2G;
 Thu, 18 Jul 2019 14:31:32 +0000 (GMT)
X-AuditID: cbfec7f5-b75ff700000010e5-d3-5d3082c5db2e
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id BE.A6.04140.4C2803D5; Thu, 18
 Jul 2019 15:31:32 +0100 (BST)
Received: from AMDC3061.DIGITAL.local (unknown [106.120.51.75]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190718143132eusmtip14c9b6ca46e9b56d439e2842a57d86250~yhtogpBIl1655816558eusmtip1z;
 Thu, 18 Jul 2019 14:31:32 +0000 (GMT)
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
To: krzk@kernel.org
Subject: [PATCH v2 5/9] ARM64: EXYNOS: enable exynos_chipid for ARCH_EXYNOS
Date: Thu, 18 Jul 2019 16:30:40 +0200
Message-Id: <20190718143044.25066-6-s.nawrocki@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190718143044.25066-1-s.nawrocki@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprCKsWRmVeSWpSXmKPExsWy7djPc7pHmwxiDXYflbHYOGM9q8X8I+dY
 Lfofv2a2OH9+A7vFpsfXWC0u75rDZvG59wijxYzz+5gs1h65y26xaOsXdovWvUfYLQ6/aWe1
 2PzgGJsDr8emVZ1sHpuX1Hv0bVnF6PF5k1wASxSXTUpqTmZZapG+XQJXxu4Zn5gLmtkr7u8p
 bWD8y9rFyMkhIWAisXXPNZYuRi4OIYEVjBIvdnUyQzhfGCX+TdvNCuF8ZpR48+8JG0zLgfsX
 2SASyxklvp04wALXcq9lDlgVm4ChRO/RPkYQW0RAWOLe0uXsIEXMAveYJE4/PcsEkhAW8JaY
 dH4XC4jNIqAq8bPzMlicV8Ba4sv7oywQ6+QlVm84wAxicwrYSBy++5QRZJCEwGR2iXPzdjJB
 FLlIrLi4Deo+YYlXx7ewQ9gyEv93zmeCaGhmlOjZfZsdwpnAKHH/+AJGiCpricPHLwK9ygF0
 n6bE+l36IKaEgKPE16vuECafxI23giDFzEDmpG3TmSHCvBIdbUIQM1Qkfq+aDnWNlET3k/9Q
 53tInPj4gB0SQP2MEpvPrGSewCg/C2HXAkbGVYziqaXFuempxcZ5qeV6xYm5xaV56XrJ+bmb
 GIFp5fS/4193MO77k3SIUYCDUYmHNyDXIFaINbGsuDL3EKMEB7OSCO/tl/qxQrwpiZVVqUX5
 8UWlOanFhxilOViUxHmrGR5ECwmkJ5akZqemFqQWwWSZODilGhjTrrw7qLbihnbKkY85xy4r
 SuzPXTkzuEk0TO/nvF7H89mTm9dM4jc8dvZ3Rt+hE9Ktm/vVC5Yc47Zi2DGl25ZV8nrqraRr
 15yuX/koJnGO11HqV0ZiFJ++op7KTgchpUkfW/Vj9p6XKeO90Xjy7Rt+oT9LXZbc2+y9PoDP
 yJSZq+HvgVXSUXeVWIozEg21mIuKEwFcQ6qNJwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrCLMWRmVeSWpSXmKPExsVy+t/xu7pHmgxiDfZP0bTYOGM9q8X8I+dY
 Lfofv2a2OH9+A7vFpsfXWC0u75rDZvG59wijxYzz+5gs1h65y26xaOsXdovWvUfYLQ6/aWe1
 2PzgGJsDr8emVZ1sHpuX1Hv0bVnF6PF5k1wAS5SeTVF+aUmqQkZ+cYmtUrShhZGeoaWFnpGJ
 pZ6hsXmslZGpkr6dTUpqTmZZapG+XYJexu4Zn5gLmtkr7u8pbWD8y9rFyMkhIWAiceD+RbYu
 Ri4OIYGljBIvT61n72LkAEpIScxvUYKoEZb4c60LquYTo8TPF78YQRJsAoYSvUf7wGwRoKJ7
 S5ezgxQxC7xikrg97z8TSEJYwFti0vldLCA2i4CqxM/Oy2BxXgFriS/vj7JAbJCXWL3hADOI
 zSlgI3H47lOwoUJANbNfXmOcwMi3gJFhFaNIamlxbnpusZFecWJucWleul5yfu4mRmCIbzv2
 c8sOxq53wYcYBTgYlXh4A3INYoVYE8uKK3MPMUpwMCuJ8N5+qR8rxJuSWFmVWpQfX1Sak1p8
 iNEU6KiJzFKiyfnA+MsriTc0NTS3sDQ0NzY3NrNQEuftEDgYIySQnliSmp2aWpBaBNPHxMEp
 1cC46MLbm62icUcsVhtau55K37nt/grxneb8R8U7uY/dzl9Ssfnx/1vzgyLcLj822FjLumbf
 pEDv2yL9q445vty1gOum/HQFw8+xNofd9hxPi7tw/0iV1vPcMN2Y+wsTzihKhTw4NFMs+Nh8
 3Wfrbi5+7PVKJGqrq+/2Lbwb/6bfZtjM65ivsbjTV4mlOCPRUIu5qDgRAKYVWIyHAgAA
X-CMS-MailID: 20190718143132eucas1p2afecae86f2ef17aa8a4a99df8ffa47d9
X-Msg-Generator: CA
X-RootMTR: 20190718143132eucas1p2afecae86f2ef17aa8a4a99df8ffa47d9
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190718143132eucas1p2afecae86f2ef17aa8a4a99df8ffa47d9
References: <20190718143044.25066-1-s.nawrocki@samsung.com>
 <CGME20190718143132eucas1p2afecae86f2ef17aa8a4a99df8ffa47d9@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_073138_918466_E1018455 
X-CRM114-Status: GOOD (  10.42  )
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

From: Pankaj Dubey <pankaj.dubey@samsung.com>

This patch enables exynos_chipid driver for ARCH_EXYNOS
based SoC.

Signed-off-by: Pankaj Dubey <pankaj.dubey@samsung.com>
Signed-off-by: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
---
Changes since v1 (RFC):
 - none
---
 arch/arm64/Kconfig.platforms | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
index d07fc063c930..e432d26f37d3 100644
--- a/arch/arm64/Kconfig.platforms
+++ b/arch/arm64/Kconfig.platforms
@@ -74,6 +74,7 @@ config ARCH_BRCMSTB
 config ARCH_EXYNOS
 	bool "ARMv8 based Samsung Exynos SoC family"
 	select COMMON_CLK_SAMSUNG
+	select EXYNOS_CHIPID
 	select EXYNOS_PM_DOMAINS if PM_GENERIC_DOMAINS
 	select EXYNOS_PMU
 	select HAVE_S3C2410_WATCHDOG if WATCHDOG
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
