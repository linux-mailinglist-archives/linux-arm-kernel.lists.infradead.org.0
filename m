Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3965BC21C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 08:58:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iP7CVTbUb5v+Kf1VXroyEF6d336t/+9oSIJ/u4S8YBs=; b=qESJZxGH8l5EuR
	VxsldxcWdlnrOH445pLjv7au2jPmI1Z8p7sD7gNEhloB8Npa7gqA5vWNYQ6Tc+BQ7c8th0WuUyDF2
	POnyleIjZs+Ojpce4WfZ2SP7bnDmiCG1smgftl+L4QYZyO0n150AkssvTOqr/YKLcG99maJ/CgvMY
	GOa72lZq9gfY3ZkvFHs8+9wM0e5o0YuEVgQfSIkWnxev2Qk+enTNlNHaePaJ0S/CV46+wxJxi0+Ho
	9iX8N1AqzNgiol4cULF8Oj6F9iY1VtZ3UpW+nTcKdd9W8jnbdT4H8fuG/+z2Luw3HIScKIjKvpQs+
	S9G8UibJoqi0+lWcBxBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCemD-0007s1-CH; Tue, 24 Sep 2019 06:58:21 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCely-0007kU-8t
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 06:58:07 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190924065804euoutp01fe6259503c3144a05db126b199e7bb12~HTZHsRjYh0930509305euoutp01M
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Sep 2019 06:58:04 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190924065804euoutp01fe6259503c3144a05db126b199e7bb12~HTZHsRjYh0930509305euoutp01M
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1569308284;
 bh=OP+dm40ZG5SXMwCkJ0CZwjYwFavtC+VUBZmrccbEErs=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=QzxWmIPanTOyKmdIuIwWCrdjRYAzaM4i+ORzlB+2Bn808Dw/v6Dg8+yokeyJm+7of
 5hdQaq3Ezf0w4WU4pW2Y819CeN64IGdPsD7VjWMOcTRTa4mUht0ccaexbLj6EbNMej
 zrt7ApimceKHttRZTy6uPUzTGsk5E0jO5s4zNX4s=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190924065803eucas1p1dbdff06623fcff1bac8ab4c717640b01~HTZHW3yez1837518375eucas1p1R;
 Tue, 24 Sep 2019 06:58:03 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id F9.CF.04374.B7EB98D5; Tue, 24
 Sep 2019 07:58:03 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190924065803eucas1p21c6e8c7105a20687e10a90fd8db080b4~HTZHCx3DD3200032000eucas1p2U;
 Tue, 24 Sep 2019 06:58:03 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190924065803eusmtrp26ba253e3b3965cd68a5a1cc41fcfd8b8~HTZHB9vCY2593925939eusmtrp2e;
 Tue, 24 Sep 2019 06:58:03 +0000 (GMT)
X-AuditID: cbfec7f5-4f7ff70000001116-dc-5d89be7b4602
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id A9.C7.04166.B7EB98D5; Tue, 24
 Sep 2019 07:58:03 +0100 (BST)
Received: from [106.120.51.15] (unknown [106.120.51.15]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190924065802eusmtip2c9064db0f375185d24928d292c876fc3~HTZGTuqUK1018710187eusmtip2h;
 Tue, 24 Sep 2019 06:58:02 +0000 (GMT)
Subject: Re: [RFT v4 6/8] ARM: dts: exynos: Remove MCT subnode for interrupt
 map on Exynos5250
To: Krzysztof Kozlowski <krzk@kernel.org>, Daniel Lezcano
 <daniel.lezcano@linaro.org>, Thomas Gleixner <tglx@linutronix.de>, Rob
 Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Kukjin
 Kim <kgene@kernel.org>, Andrzej Hajda <a.hajda@samsung.com>,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <7ad1898d-3aa7-db49-78c1-c42b34568c60@samsung.com>
Date: Tue, 24 Sep 2019 08:58:02 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20190923161411.9236-6-krzk@kernel.org>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrLKsWRmVeSWpSXmKPExsWy7djPc7rV+zpjDRpaTCxurTvHajHvs6zF
 /CNARv/j18wW589vYLfY9Pgaq8XlXXPYLGac38dksfT6RSaL1r1H2C3an75ktti8aSqzA4/H
 mnlrGD02repk87hzbQ+bx7tz59g9Ni+p9+jbsorR4/MmuQD2KC6blNSczLLUIn27BK6MdRO+
 sBd0CVQ0bbnD0sDYytPFyMkhIWAicbJlB0sXIxeHkMAKRonFi1+wQzhfGCVeHXvCAlIlJPCZ
 UWLpIXmYjiPTzjNBFC1nlFh25BUbhPOWUeLCpjdMIFXCAgkSk55cYwRJiAhMZpbYf3glG0iC
 WUBXYvq7N8wgNpuAoUTX2y6wOK+AncTTi/sYQWwWAVWJJfN/gK0WFYiVuPfjODNEjaDEyZkQ
 J3ECnXHjSTMzxEx5ie1v50DZ4hK3nswHO09C4B67xNMVnawQd7tIvPx4mRHCFpZ4dXwLO4Qt
 I/F/J0xDM6PEw3Nr2SGcHkaJy00zoDqsJQ4fvwg0iQNohabE+l36EGFHiR99vUwgYQkBPokb
 bwUhjuCTmLRtOjNEmFeio00IolpNYtbxdXBrD164xDyBUWkWktdmIXlnFpJ3ZiHsXcDIsopR
 PLW0ODc9tdg4L7Vcrzgxt7g0L10vOT93EyMwkZ3+d/zrDsZ9f5IOMQpwMCrx8Eps64gVYk0s
 K67MPcQowcGsJMK7SastVog3JbGyKrUoP76oNCe1+BCjNAeLkjhvNcODaCGB9MSS1OzU1ILU
 IpgsEwenVANj4MPIU8HSbzRLVNQkHN87ek7wvRTsxvtDvrN17lqG8B952ReFGicHJpteUZh0
 Okb5v9O0SMHZyxbX8ap8Enx4Y/+nI+uUOp/V/dssz62qalHicV8ooag8T8TW+dBMsZp/+irs
 roGRbz5e2H0isbGzKclBcObVsCu1MVK1XDLnjZzO//yt3qvEUpyRaKjFXFScCAA33H4HYAMA
 AA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrHIsWRmVeSWpSXmKPExsVy+t/xe7rV+zpjDZ7fUbS4te4cq8W8z7IW
 848AGf2PXzNbnD+/gd1i0+NrrBaXd81hs5hxfh+TxdLrF5ksWvceYbdof/qS2WLzpqnMDjwe
 a+atYfTYtKqTzePOtT1sHu/OnWP32Lyk3qNvyypGj8+b5ALYo/RsivJLS1IVMvKLS2yVog0t
 jPQMLS30jEws9QyNzWOtjEyV9O1sUlJzMstSi/TtEvQy1k34wl7QJVDRtOUOSwNjK08XIyeH
 hICJxJFp55m6GLk4hASWMkq0d+5nhUjISJyc1gBlC0v8udbFBlH0mlGi7/VjRpCEsECCxKQn
 18BsEYGpzBI3L9WC2MwCuhLT371hhmjYyCjx6k4zO0iCTcBQoustyCRODl4BO4mnF/eBNbMI
 qEosmf+DpYuRg0NUIFZi014ziBJBiZMzn7CA2JxAl9540swMMd9MYt7mh1C2vMT2t3OgbHGJ
 W0/mM01gFJqFpH0WkpZZSFpmIWlZwMiyilEktbQ4Nz232FCvODG3uDQvXS85P3cTIzButx37
 uXkH46WNwYcYBTgYlXh4JbZ1xAqxJpYVV+YeYpTgYFYS4d2k1RYrxJuSWFmVWpQfX1Sak1p8
 iNEU6LeJzFKiyfnAlJJXEm9oamhuYWlobmxubGahJM7bIXAwRkggPbEkNTs1tSC1CKaPiYNT
 qoGRM8iGNeP0z+JPt7V2v/lcXX9Cyl/S4n6e6DIT2YaWP9tv5HH7L9PO/fAvMDG+f+2a306H
 Hics3fn6+6ttT6bcfs2RsP2bGxv/BcuD6xvZfCxZM9vDw6bPvWp+sbE36pFkyD7HmQvulrYm
 dR66u/h8J7fiPAWXpGul7+X+fSjpulHK2TK7xyZZiaU4I9FQi7moOBEA7VA+AvECAAA=
X-CMS-MailID: 20190924065803eucas1p21c6e8c7105a20687e10a90fd8db080b4
X-Msg-Generator: CA
X-RootMTR: 20190923161450epcas4p32dfa1273d244c1392c7bfb4c352f2d3e
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190923161450epcas4p32dfa1273d244c1392c7bfb4c352f2d3e
References: <20190923161411.9236-1-krzk@kernel.org>
 <CGME20190923161450epcas4p32dfa1273d244c1392c7bfb4c352f2d3e@epcas4p3.samsung.com>
 <20190923161411.9236-6-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_235806_451415_59005D0A 
X-CRM114-Status: GOOD (  16.04  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sylwester Nawrocki <snawrocki@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 23.09.2019 18:14, Krzysztof Kozlowski wrote:
> Multi Core Timer node has interrupts routed to two different parents -
> GIC and combiner.  This was modeled with a interrupt-map within a
> subnode but can be expressed in an easier and more common way, directly
> in the node itself.
>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>

Works fine on Arndale and Snow boards.

>
> ---
>
> Not tested.
>
> Changes since v3:
> 1. Use interrupts-extended instead of interrupts-map.
> ---
>   arch/arm/boot/dts/exynos5250.dtsi | 23 ++++++-----------------
>   1 file changed, 6 insertions(+), 17 deletions(-)
>
> diff --git a/arch/arm/boot/dts/exynos5250.dtsi b/arch/arm/boot/dts/exynos5250.dtsi
> index 7a01349317a3..a549eafd2c64 100644
> --- a/arch/arm/boot/dts/exynos5250.dtsi
> +++ b/arch/arm/boot/dts/exynos5250.dtsi
> @@ -236,25 +236,14 @@
>   		timer@101c0000 {
>   			compatible = "samsung,exynos4210-mct";
>   			reg = <0x101C0000 0x800>;
> -			interrupt-controller;
> -			#interrupt-cells = <2>;
> -			interrupt-parent = <&mct_map>;
> -			interrupts = <0 0>, <1 0>, <2 0>, <3 0>,
> -				     <4 0>, <5 0>;
>   			clocks = <&clock CLK_FIN_PLL>, <&clock CLK_MCT>;
>   			clock-names = "fin_pll", "mct";
> -
> -			mct_map: mct-map {
> -				#interrupt-cells = <2>;
> -				#address-cells = <0>;
> -				#size-cells = <0>;
> -				interrupt-map = <0x0 0 &combiner 23 3>,
> -						<0x1 0 &combiner 23 4>,
> -						<0x2 0 &combiner 25 2>,
> -						<0x3 0 &combiner 25 3>,
> -						<0x4 0 &gic 0 120 IRQ_TYPE_LEVEL_HIGH>,
> -						<0x5 0 &gic 0 121 IRQ_TYPE_LEVEL_HIGH>;
> -			};
> +			interrupts-extended = <&combiner 23 3>,
> +					      <&combiner 23 4>,
> +					      <&combiner 25 2>,
> +					      <&combiner 25 3>,
> +					      <&gic 0 120 IRQ_TYPE_LEVEL_HIGH>,
> +					      <&gic 0 121 IRQ_TYPE_LEVEL_HIGH>;
>   		};
>   
>   		pinctrl_0: pinctrl@11400000 {

Best regards
-- 
Marek Szyprowski, PhD
Samsung R&D Institute Poland


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
