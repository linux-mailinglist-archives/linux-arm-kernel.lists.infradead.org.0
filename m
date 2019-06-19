Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A54FF4B5C6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 12:01:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2oQQWc7VwsCW/MlR8pOZlrOkfLzT9O8rc3Ue0GoN+a8=; b=WgS5vXyHOtOPXx
	Noc7Zyx04w+6r+Pw+0dh5SDKWACQRl0mZx0VZarx9iobtTZa1h1BJiUU1md2/I7elAv48aFqCx6Kt
	IOyj+yXceFrw7iZMU6wQmgPQsmgCsIMw1iHUJXd9pmbE2CZbIJWAMSzK2CU8FaOQH4gE6vXbWutJi
	JRU+9An/stip0ikYCR4TvElnEMzkcCnAwQ6c9p+f7nHkqznKtmhp+7cOpOimS9n/rXFF5OUKQzZNY
	5it0TjRGd2PGD0DJL9bzu5ajbXmS3yJSrbZS9gB1MJxwIqPA0Yhf4h8ixuxOQ0TD/qSIR7HGcx3r8
	6hheTJdjDkWPiERKYC+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdXPD-000668-0q; Wed, 19 Jun 2019 10:01:27 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdXP3-000654-CL
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 10:01:19 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190619100114euoutp02824689ec064fb6503b6dbe0ff49fab38~pkUW_uV610943309433euoutp02X
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 10:01:14 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190619100114euoutp02824689ec064fb6503b6dbe0ff49fab38~pkUW_uV610943309433euoutp02X
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1560938474;
 bh=+5Aoi9KusrDIevbz701jCID7pa2iYGWJAx0tkxsUsaU=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=Cqxp1Ob7vCTqgYhcChErG/Ouc9Qh2EaLV8Ac0THGlOa7Xj/9q3X+RJu1UxW5mz5yp
 nq09w7x14cBoXGW5TWtaWMCYMau7zy9+GaOppvHjW59fy9KmTWMgKE08e59AyBltjd
 c+jZ/Ti0nNtUzKLI1wb18QX+DqUi6Gm33krWQesQ=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190619100113eucas1p1685d5fcb85feeb41af812d7b1e65c533~pkUWILYHC0885208852eucas1p17;
 Wed, 19 Jun 2019 10:01:13 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 4E.44.04377.9E70A0D5; Wed, 19
 Jun 2019 11:01:13 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190619100112eucas1p25eb0476f1b1dc1bb80c3662c3528c254~pkUVTw3YT0942809428eucas1p2d;
 Wed, 19 Jun 2019 10:01:12 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190619100112eusmtrp1124545bd7f52fa019bebe98b7452f910~pkUVFfwp73261132611eusmtrp15;
 Wed, 19 Jun 2019 10:01:12 +0000 (GMT)
X-AuditID: cbfec7f4-12dff70000001119-d7-5d0a07e9a40f
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 9F.85.04146.8E70A0D5; Wed, 19
 Jun 2019 11:01:12 +0100 (BST)
Received: from [106.120.50.25] (unknown [106.120.50.25]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190619100111eusmtip242ed98c0f3f696e11dec29ab5b2bf902~pkUUHPMIF2666626666eusmtip2_;
 Wed, 19 Jun 2019 10:01:11 +0000 (GMT)
Subject: Re: [RFT 01/10] dt-bindings: gpu: mali: Add Samsung compatibles for
 Midgard and Utgard
To: Krzysztof Kozlowski <krzk@kernel.org>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, Mark
 Rutland <mark.rutland@arm.com>, Kukjin Kim <kgene@kernel.org>, Catalin
 Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>, Tomasz Figa
 <tomasz.figa@gmail.com>, Chanwoo Choi <cw00.choi@samsung.com>, Michael
 Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Olof
 Johansson <olof@lixom.net>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <9d16d4f7-8353-e0f0-a005-1b04457d70f0@samsung.com>
Date: Wed, 19 Jun 2019 12:01:10 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190618190534.4951-2-krzk@kernel.org>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01SWUwTURT1zU6lOBaVG9xLNGoUxfUZl7gmY9RojB9GJDrKBIxs6YDrhwuu
 pW74AVaQiqKmqSAVATFFi0BFkyJCBDQKCkhcCEIrLlSRMqj8nXPuue+cmzyO1FxlArmdMfGS
 LkaM0jIqKr/8h3PaB1YVNiPRHoBPOysI/Cu5nMW5qTk0br9uQLjW3UrjnvzzJM4oddK45ms7
 g5MbzlHYcMJD47NNn0hcWXmbxdamFzTuMLyhcXVRGoNTK4sJnFVbReCqJyvxk1oXg4/ZSln8
 6PMJGv9+kUthc5EH4Q8dj6klIFguW5DQ/TMZCe11x1jB1mWihHvG16xgNZ9ihIKuRlpoSHIQ
 wp1rB4Wax0do4UyeGQku65j1vptVC8OlqJ27Jd30xdtUkfU2OxX33m9v+c8k4hDK9NUjHw74
 2WA4+x7pkYrT8DcRvGp5TSvEjSC3uZhUiAvB97yjzN+VmsIkShncQJDjcfaTNgSZZXba6/Ln
 RXB12ljvYBhfT0OBNbHPRfJXETy9cLjvLYYPAX2bvg+r+cXw5WEFoUccR/ETwH0qzisP57dA
 amErpViGQsXF5j7s01ujx9lJeDHJj4WCtjRSwQHwsjmD8GYB38jB+eff+nuvgJS6DFbB/vDR
 kdePR/X2MVDKQiKCt85brEIMCKqPpCLFtQAeOapobzuSnww5RdMVeSnUd5gZrwy8H9S1DVVK
 +EFyfgqpyGo4eVyjuCeC0ZH9L9b+7Dl5DmmNA04zDjjHOOAc4/9cE6LMKEBKkKMjJHlmjLQn
 WBaj5YSYiOAdsdFW1Pt1n/52uAtRkWd7CeI5pPVV8y4uTEOLu+V90SUIOFI7TD040SdMow4X
 9+2XdLFbdQlRklyCRnKUNkB9YFBjqIaPEOOlXZIUJ+n+TgnOJ/AQmjvi22hPaJch1HJ3FYR0
 7yFbUsYvlS7pMyoMl8zy+Enpsya0N4R3L1MV7xoXu/bCZHHWukrLopsH7Ku3nJmXeSX9flm8
 /+E12ZM2NQzpKU3PCeo8Onx+1wbLjaypJtW86rQVp3W27JGDjrsfBJqso5cHLTDdamqZc3l9
 3Meywe/Sv7du1FJypBgyhdTJ4h+XsRu4tgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0hTYRjHe89lO1MXp9PEF0mtRQRdVmdqvqYuPxgcqCioKErTpQcnuR3b
 mXb70DDE3Kx0H8KGaBeNGEFNy1JYpZW3SJuZpl2s7KKoWXkBL2lbK/Db732e/+/heeGhcOYu
 GUxlGEy80aDNVEr8iGdzTe/XD0j9kjbaukLRubYWDP22NUqRs+QWiUavFwLUPf6NRPM1xTgq
 f9JGos6JUQmy9RURqDB/lkQX+odw1N5+W4qq+rtI9LPwPYle1pVKUEn7AwxVdrsx5G7dilq7
 xyQoz/VEih4P55NorstJIEfdLECDP5uJeMjdLLsJuJlpG+BGX+dJOdfkZYKrtb+TclWOAgl3
 b/IDyfVZmzCuuuI019mcS3Ln7zgAN1YVuivggCrWKGSb+OU6QTTFKQ+ySK1io5FKHRGtYsOj
 kjarI5UbNLFpfGZGDm/coElR6Xpc9UTW18XHG6etmBlcDbAAGQXpCNh530pYgB/F0JUAzj19
 CHyNZbDlopn08VI422WR+EJDAHa4S/+GltJaOPbLJfU2FHQPCXsrhnDvA6evAdhjLZf6FKdH
 cbpwryKhWWgZ8c6SUXJaA388asEsgKIIehUcL8jylgPpRPiw/g3hiyyBLZc+/2WZZ9f5tl+Y
 l3F6Eyyr/oj7OAzeGyn9x0Gw93M5VgQY+wLdvkCxL1DsC5TLgHAABZ8t6tP1IqsStXox25Cu
 ShX0VcBzMjWNU9X3QYdzdwOgKaAMkOsmqCSG1OaIJ/QNAFK4UiH3PyNLYuRp2hMneaOQbMzO
 5MUGEOn5WzEeHJgqeA7QYEpmI9koFM1GhUeFb0LKIPlZuj6RodO1Jv4Iz2fxxv8eRsmCzSDh
 hrWOKDJMr9MNpsYrruwwzwSl0+I2NDUY96X/mIrCE2pt/st3L4p8e8vY/DVgS5h72LFz+9qI
 8AGBeZV79G2ikMgcnq0dOci8WM24zcK+45oVCUWHavwqhOcxIEuREzKgDklNiWj6fqo4c2+f
 Rv2GjLE+/zQyvPI6t2e/o1xJiDotuwY3ito/yg4JmkgDAAA=
X-CMS-MailID: 20190619100112eucas1p25eb0476f1b1dc1bb80c3662c3528c254
X-Msg-Generator: CA
X-RootMTR: 20190618190551epcas2p38f3c93da2a05117c7741468bb5a7784c
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190618190551epcas2p38f3c93da2a05117c7741468bb5a7784c
References: <20190618190534.4951-1-krzk@kernel.org>
 <CGME20190618190551epcas2p38f3c93da2a05117c7741468bb5a7784c@epcas2p3.samsung.com>
 <20190618190534.4951-2-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_030117_713277_178EB94A 
X-CRM114-Status: GOOD (  17.77  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Joseph Kogut <joseph.kogut@gmail.com>, Inki Dae <inki.dae@samsung.com>,
 Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Krzysztof,

On 2019-06-18 21:05, Krzysztof Kozlowski wrote:
> Add vendor compatibles for specific implementation of Mali Utgard
> (Exynos3250, Exynos4-family) and Midgard (Exynos5433, Exynos7).
>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
>   Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt | 1 +
>   Documentation/devicetree/bindings/gpu/arm,mali-utgard.txt  | 1 +
>   2 files changed, 2 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt b/Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt
> index e5ad3b2afe17..9b298edec5b2 100644
> --- a/Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt
> +++ b/Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt
> @@ -17,6 +17,7 @@ Required properties:
>     * which must be preceded by one of the following vendor specifics:
>       + "allwinner,sun50i-h6-mali"
>       + "amlogic,meson-gxm-mali"
> +    + "samsung,exynos5433-mali"
>       + "rockchip,rk3288-mali"
>       + "rockchip,rk3399-mali"
>   
> diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-utgard.txt b/Documentation/devicetree/bindings/gpu/arm,mali-utgard.txt
> index ae63f09fda7d..519018cb860b 100644
> --- a/Documentation/devicetree/bindings/gpu/arm,mali-utgard.txt
> +++ b/Documentation/devicetree/bindings/gpu/arm,mali-utgard.txt
> @@ -17,6 +17,7 @@ Required properties:
>         + amlogic,meson8b-mali
>         + amlogic,meson-gxbb-mali
>         + amlogic,meson-gxl-mali
> +      + samsung,exynos3250-mali
I would prefer 'samsung,exynos4-mali', because historically Exynos4 was 
the first SoC with Mali400 and such prefix is already used for many hw 
blocks.
>         + rockchip,rk3036-mali
>         + rockchip,rk3066-mali
>         + rockchip,rk3188-mali

Best regards
-- 
Marek Szyprowski, PhD
Samsung R&D Institute Poland


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
