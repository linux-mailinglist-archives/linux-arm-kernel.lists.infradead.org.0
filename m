Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCD95BC221
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 08:59:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=swYjHvX9UyfTOYwBpYhHy+xhI1vQTEFkS8wtMUHsLyo=; b=fhcJ7FNuVxMiD4
	dLpBBQgTQ/iRWhIWK5Tq5cnKVbznpWqCVhne7IvTXF1BPGlOG2yfxGwHOtCN/nyF51wSvEg//Zlsz
	l7DlrgQWP3dz6O6EP6ybFSCPDtjsIwoWXzYxypvlUqXPWmPHnvO8Xg0js/wvMquGbp89ObrHJofBX
	hFRGWsQ25EfBydHL0f9hDtNceDVc8UFmih2uIGv4e+ufW3/G2ct3LEGK/ONiUZRkrtLjv6C/14NsH
	5YHitKvjHetBjvdV4vj7DP36wNskjnGgpL6fFmuZgauredGFBIwtq5WpzbjJYVAUIPumqHphbcux6
	LH0tP5vRCfFtn+CHKLUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCemz-0008Fl-JI; Tue, 24 Sep 2019 06:59:09 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCeme-0008FH-0O
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 06:58:49 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190924065846euoutp0266f056118080bb69560b4aabe9896849~HTZvPHJsX1653216532euoutp02M
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Sep 2019 06:58:46 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190924065846euoutp0266f056118080bb69560b4aabe9896849~HTZvPHJsX1653216532euoutp02M
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1569308326;
 bh=aq9XbIpzYJihPII+PQlWYW1WHkf9Luv6KUkeBe0PpI8=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=resra2lV8+CzgYv48w+/igASv5uRwex8C0aCtnOIGKkI8qotw+qdpwAPfwodaNXsu
 lbgKXDuEr52cvJSWe/01E6yCTMFEemkm3eEHv5DTEq5aCPRS2Pk4PbE/WoOsV1+B2f
 GfBfzlXOmJXgO2uNw66y8t9LJLsCibcSI27FpOj0=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190924065845eucas1p2eed9befdeb1225c1c6933ee0ab389359~HTZuZ3Nwc1521715217eucas1p2S;
 Tue, 24 Sep 2019 06:58:45 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 33.EF.04374.5AEB98D5; Tue, 24
 Sep 2019 07:58:45 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190924065845eucas1p24cf39a480197c691c1acd24e98e1da14~HTZuAw6jR1521715217eucas1p2R;
 Tue, 24 Sep 2019 06:58:45 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190924065845eusmtrp1cf084ba16d5de804b00e1025a05dcae6~HTZt_E4aU2143421434eusmtrp1j;
 Tue, 24 Sep 2019 06:58:45 +0000 (GMT)
X-AuditID: cbfec7f5-4f7ff70000001116-4d-5d89bea500ac
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 41.E7.04166.5AEB98D5; Tue, 24
 Sep 2019 07:58:45 +0100 (BST)
Received: from [106.120.51.15] (unknown [106.120.51.15]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190924065844eusmtip1dcb3ab16975d9d7d7ef6e8df337418ea~HTZtaHRrg1194611946eusmtip1J;
 Tue, 24 Sep 2019 06:58:44 +0000 (GMT)
Subject: Re: [RFT v4 5/8] ARM: dts: exynos: Remove MCT subnode for interrupt
 map on Exynos4412
To: Krzysztof Kozlowski <krzk@kernel.org>, Daniel Lezcano
 <daniel.lezcano@linaro.org>, Thomas Gleixner <tglx@linutronix.de>, Rob
 Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Kukjin
 Kim <kgene@kernel.org>, Andrzej Hajda <a.hajda@samsung.com>,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <21fdac03-cb35-34eb-c48e-52985377aa16@samsung.com>
Date: Tue, 24 Sep 2019 08:58:44 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20190923161411.9236-5-krzk@kernel.org>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrDKsWRmVeSWpSXmKPExsWy7djP87pL93XGGmxYaGhxa905Vot5n2Ut
 5h8BMvofv2a2OH9+A7vFpsfXWC0u75rDZjHj/D4mi6XXLzJZtO49wm7R/vQls8XmTVOZHXg8
 1sxbw+ixaVUnm8eda3vYPN6dO8fusXlJvUffllWMHp83yQWwR3HZpKTmZJalFunbJXBltE78
 xV7wgK/i8WGLBsaZ3F2MnBwSAiYSe3Y+Yuti5OIQEljBKPF120ko5wujxI1vl1ggnM+MEs8n
 L2SFabn4/SkzRGI5o8TfDc+hqt4ySrw5cpQZpEpYIEFi1u9VTCAJEYHJzBL7D69kA0kwC+hK
 TH/3BqyITcBQouttF1icV8BOor2/kQXEZhFQldjW8ZkdxBYViJW49+M4M0SNoMTJmU+Aajg4
 OIHO+NqfDjFSXmL72znMELa4xK0n88H2SgjcYpc4//MOI8TZLhJtqydCvSAs8er4FnYIW0bi
 9OQeFoiGZkaJh+fWskM4PYwSl5tmQHVbSxw+fpEVZDOzgKbE+l36EGFHiR9/HjCBhCUE+CRu
 vBWEOIJPYtK26cwQYV6JjjYhiGo1iVnH18GtPXjhEvMERqVZSD6bheSdWUjemYWwdwEjyypG
 8dTS4tz01GLjvNRyveLE3OLSvHS95PzcTYzANHb63/GvOxj3/Uk6xCjAwajEwwsMzFgh1sSy
 4srcQ4wSHMxKIrybtNpihXhTEiurUovy44tKc1KLDzFKc7AoifNWMzyIFhJITyxJzU5NLUgt
 gskycXBKNTDulNM14xaVzbzclB4Xw5Z2SPFDwC4PnVOR+aq9dzZW/ejLvvP385XHpr/imyfw
 TTcsNDDQOH1a4Fl3dmrYiYPcV4R1/l/tCeQW/v9wr5iM3e/gKbsM53Pw+HZJPKy99j7gE6fH
 h0V3My58SmdtvHDTvc3oeE/xsYvL0lzT13I0CHs+f5/8cZ8SS3FGoqEWc1FxIgDEfphzXwMA
 AA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrNIsWRmVeSWpSXmKPExsVy+t/xu7pL93XGGjQ8ErO4te4cq8W8z7IW
 848AGf2PXzNbnD+/gd1i0+NrrBaXd81hs5hxfh+TxdLrF5ksWvceYbdof/qS2WLzpqnMDjwe
 a+atYfTYtKqTzePOtT1sHu/OnWP32Lyk3qNvyypGj8+b5ALYo/RsivJLS1IVMvKLS2yVog0t
 jPQMLS30jEws9QyNzWOtjEyV9O1sUlJzMstSi/TtEvQyWif+Yi94wFfx+LBFA+NM7i5GTg4J
 AROJi9+fMncxcnEICSxllGjadIoRIiEjcXJaAyuELSzx51oXG4gtJPCaUeJ1SwiILSyQIDHr
 9yomEFtEYCqzxM1LtSA2s4CuxPR3b6CGbmSUOLlvEztIgk3AUKLrLcQgXgE7ifb+RhYQm0VA
 VWJbx2egGg4OUYFYiU17zSBKBCVOznzCAhLmBDr0a386xHgziXmbHzJD2PIS29/OgbLFJW49
 mc80gVFoFpLuWUhaZiFpmYWkZQEjyypGkdTS4tz03GJDveLE3OLSvHS95PzcTYzAiN127Ofm
 HYyXNgYfYhTgYFTi4QW6NlaINbGsuDL3EKMEB7OSCO8mrbZYId6UxMqq1KL8+KLSnNTiQ4ym
 QK9NZJYSTc4HJpO8knhDU0NzC0tDc2NzYzMLJXHeDoGDMUIC6YklqdmpqQWpRTB9TBycUg2M
 xu/lExt9L/+v1K/a/v3Mg5PM7EqtzMqidmd6L3AzeieZu86xuPY6SOLk55Aaldlxlm2xB62V
 pr31WWsUudlBLYpx8sqjfDuC1oZx5D9NXa1y4Y7HX844OQGf6ws9UnxM1Ewm+San35/M9IWl
 h5VT3/TARW/HkkaXSX9WNB89p7CRLazhsKwSS3FGoqEWc1FxIgB4fpBv7gIAAA==
X-CMS-MailID: 20190924065845eucas1p24cf39a480197c691c1acd24e98e1da14
X-Msg-Generator: CA
X-RootMTR: 20190923161447epcas2p49a72596974a4ba294a734ef8ad8bbad1
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190923161447epcas2p49a72596974a4ba294a734ef8ad8bbad1
References: <20190923161411.9236-1-krzk@kernel.org>
 <CGME20190923161447epcas2p49a72596974a4ba294a734ef8ad8bbad1@epcas2p4.samsung.com>
 <20190923161411.9236-5-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_235848_181174_9AAAD01D 
X-CRM114-Status: GOOD (  17.29  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
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
> Tested on Odroid U3 (Exynos4412).
>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>

Works fine on Trats2 board.

> ---
>
> Changes since v3:
> 1. Use interrupts-extended instead of interrupts-map.
> ---
>   arch/arm/boot/dts/exynos4412.dtsi | 19 +++++--------------
>   1 file changed, 5 insertions(+), 14 deletions(-)
>
> diff --git a/arch/arm/boot/dts/exynos4412.dtsi b/arch/arm/boot/dts/exynos4412.dtsi
> index 8b6d5875c75d..9b5fb4e54d7c 100644
> --- a/arch/arm/boot/dts/exynos4412.dtsi
> +++ b/arch/arm/boot/dts/exynos4412.dtsi
> @@ -246,22 +246,13 @@
>   		timer@10050000 {
>   			compatible = "samsung,exynos4412-mct";
>   			reg = <0x10050000 0x800>;
> -			interrupt-parent = <&mct_map>;
> -			interrupts = <0>, <1>, <2>, <3>, <4>;
>   			clocks = <&clock CLK_FIN_PLL>, <&clock CLK_MCT>;
>   			clock-names = "fin_pll", "mct";
> -
> -			mct_map: mct-map {
> -				#interrupt-cells = <1>;
> -				#address-cells = <0>;
> -				#size-cells = <0>;
> -				interrupt-map =
> -					<0 &gic 0 57 IRQ_TYPE_LEVEL_HIGH>,
> -					<1 &combiner 12 5>,
> -					<2 &combiner 12 6>,
> -					<3 &combiner 12 7>,
> -					<4 &gic 1 12 IRQ_TYPE_LEVEL_HIGH>;
> -			};
> +			interrupts-extended = <&gic 0 57 IRQ_TYPE_LEVEL_HIGH>,
> +					      <&combiner 12 5>,
> +					      <&combiner 12 6>,
> +					      <&combiner 12 7>,
> +					      <&gic 1 12 IRQ_TYPE_LEVEL_HIGH>;
>   		};
>   
>   		watchdog: watchdog@10060000 {

Best regards
-- 
Marek Szyprowski, PhD
Samsung R&D Institute Poland


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
