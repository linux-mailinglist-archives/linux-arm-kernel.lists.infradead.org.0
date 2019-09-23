Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D6D8BAE2B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 08:57:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U1HTiSCQF56FKWj1P8XzBHHTYHB+I9dZhQYkdOy2U7s=; b=czTmq4VSiYmNiQ
	8joQE9EmG1t/CJKVH7S6LobUCY+BrF07cUB4caJCvqKZP2LhU6QQk3R4ltpgbGRtV1H1MflVV29HU
	xAVMAP+dlv/uwz1+eN5fTFVEywajAXIjCvVn8G/k0lstC+Woc0CDuVIKvT0U78ZWOHSkfPiunTlQi
	vkfaegAKb+KVRU5Q1F/j00mX3tWYteCnGiapy6Y7wrNXXjObF/CaZzjbXPXl0df7Jl+camM4HhNTW
	CmyhxkMV/a4kgznw0nJtMbjF5EM2hhX617sD72iVZ8zG5qYL/PHYNpsWSt75B+t9NKY66Ql88PAqU
	oDNNOVFYVuej+zNpIMnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCIHX-0004ym-3l; Mon, 23 Sep 2019 06:57:11 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCIHD-0004xi-LQ
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 06:56:53 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190923065648euoutp024f2051ef3fff6bc3fcb6bf05587b7dff~G-uvOP6cc0849608496euoutp021
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 06:56:48 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190923065648euoutp024f2051ef3fff6bc3fcb6bf05587b7dff~G-uvOP6cc0849608496euoutp021
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1569221808;
 bh=7Rfe9iUIE3HzKPxCJrJahPXXP+94a5ihjD5YoIEzClk=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=toeq10M+xAq369X9H+BtAWRfn8GkrcTxatRqctbTGNRi7ebgEieDYkfNh8EiCwmNt
 WflvGfWxC+stUc7bfxnQ7+NqQO5AoaPk4/g5p6GHb+KYl/ws2jgxBNvYTmBf815Np8
 7SbXWMbAK+IOOCpi2Lrx8jOYNF8sBGGmWxWhzaS8=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190923065648eucas1p1f200b147807ba647c11906db1e13976f~G-uu2ot6E2705827058eucas1p1Q;
 Mon, 23 Sep 2019 06:56:48 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 40.23.04374.0BC688D5; Mon, 23
 Sep 2019 07:56:48 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190923065648eucas1p112eb5c7cbcbd79b8dcb7840f1186e384~G-uuYi76R0835308353eucas1p1E;
 Mon, 23 Sep 2019 06:56:48 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190923065647eusmtrp1cc5aff0ad8736f373a58777588a19a14~G-uuXhKGC1701517015eusmtrp1c;
 Mon, 23 Sep 2019 06:56:47 +0000 (GMT)
X-AuditID: cbfec7f5-4ddff70000001116-cd-5d886cb06ed3
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id F5.24.04166.FAC688D5; Mon, 23
 Sep 2019 07:56:47 +0100 (BST)
Received: from [106.120.51.15] (unknown [106.120.51.15]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190923065647eusmtip2b3de707c374bff63e519288d66d1c27f~G-utoGUbP1425114251eusmtip2h;
 Mon, 23 Sep 2019 06:56:47 +0000 (GMT)
Subject: Re: [RFT v3 4/8] ARM: dts: exynos: Remove MCT subnode for interrupt
 map on Exynos4210
To: Krzysztof Kozlowski <krzk@kernel.org>, Daniel Lezcano
 <daniel.lezcano@linaro.org>, Thomas Gleixner <tglx@linutronix.de>, Rob
 Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Kukjin
 Kim <kgene@kernel.org>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <c1d02aa3-b5f2-1c5b-0b7b-8749e7c0ce9a@samsung.com>
Date: Mon, 23 Sep 2019 08:56:46 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20190921170152.5033-4-krzk@kernel.org>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0hTYRju29nZjsvVcSq+aSkM7CLlBYUOVGIgsfoRJYGgLF158DYvbE6z
 fkyS1MRSjHQt0XnD+22KeUnDeRmmTc2yMrt4GWG5dbGbUdrm0fLf8z3P877P88JHYIJR3JmI
 jk+iZfESqZDDY7cPrRgONUuzxN5rea5Ui6oJp4qX91AlAwacyp3/gFFjY81cSjs/hVOTXUUc
 SjXWy6Iqn02wqGs9A1wq07iIUa3a21iArai+uB6JtLXXOaKZqfsckdlg4IpaK5Sim221SLSs
 dT3DDeEdjaCl0cm0zMs/nBf1cWQWT2zZeal8epqVhha2ZyMbAkg/6K9Lx7IRjxCQ1Qgm6qsx
 qyAgvyKYX7ZhhGUE7TVfsM0JvfkRlxGqEGTNpW9MmCyughArtifDoba7EreaHEgzCzQL39dN
 GElDt2kIt2IO6QPZpmyOFfNJf2hbUq/zbNIdFtW5bCt2JMXw+qceYzx2MHxnYZ23sbTQpY3j
 zE43uGcq2tjvBNMLJSxrMJBzXNAODHGZ2oFQNv2GzWB7eK9v2+B3w8itHDYzkI5g1tDAZR45
 CCavqhDjOgL9+glLHGGJOABNXV4MfRwq9aXISgO5A56b7JgSOyC/vRBjaD5kZQgY915Q6xv/
 xfaNP8bykFC95TT1lnPUW85R/8/VIHYtcqIV8rhIWu4bT6d4yiVxckV8pOfFhDgtsvyxkVX9
 tw7U+/uCDpEEEtryP7VkigW4JFmeGqdDQGBCB77WI0Ms4EdIUi/TsoQwmUJKy3XIhWALnfhX
 tr0NFZCRkiQ6lqYTadmmyiJsnNPQw8aw/b3mff1lxiAx2XviQUJ56C7iM3lw8OnhkqrTL4+N
 jwc3vArKL49dGo7pTFGmVvr9cVQGO04qwd797lr53LlMt1/FZzWDLR2+uFLlcIpn7ntxQ1C4
 ohkNcPE+2Ww01k31VPT9kK16dWZpVxajY0Znap4sFpxvfZffEVjqoBCy5VESHw9MJpf8BUIT
 8/hfAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrPIsWRmVeSWpSXmKPExsVy+t/xe7rrczpiDdYttrTYOGM9q8W8z7IW
 84+cY7Xof/ya2eL8+Q3sFpseX2O1uLxrDpvFjPP7mCyWXr/IZNG69wi7RfvTl8wWmzdNZXbg
 8Vgzbw2jx6ZVnWwed67tYfN4d+4cu8fmJfUefVtWMXp83iQXwB6lZ1OUX1qSqpCRX1xiqxRt
 aGGkZ2hpoWdkYqlnaGwea2VkqqRvZ5OSmpNZllqkb5egl/H+9EPWgo38FYtv3WJqYHzC3cXI
 ySEhYCJx/N1Z9i5GLg4hgaWMEq27HrJAJGQkTk5rYIWwhSX+XOtigyh6zShx6N59JpCEsECC
 xKrdS1lBEiIC75gk3jxfyw6SYBZIlZjYNJUJomMjo8SNN1OZQRJsAoYSXW9BRnFy8ArYSWx5
 MwtsBYuAqsTLWf1Aqzk4RAViJTbtNYMoEZQ4OfMJ2EWcQKcearjACjHfTGLe5ofMELa8xPa3
 c6BscYlbT+YzTWAUmoWkfRaSlllIWmYhaVnAyLKKUSS1tDg3PbfYUK84Mbe4NC9dLzk/dxMj
 MHK3Hfu5eQfjpY3BhxgFOBiVeHg/bGyPFWJNLCuuzD3EKMHBrCTCu0mrLVaINyWxsiq1KD++
 qDQntfgQoynQbxOZpUST84FJJa8k3tDU0NzC0tDc2NzYzEJJnLdD4GCMkEB6YklqdmpqQWoR
 TB8TB6dUA2P1KtZOn6lnLn19H7f4yT1+t3bZauc1BVcO6XzbGXhB1M24rKaRtVvi4HaGIx8U
 HBrEO+/e809QPftyvRT/4n1KwbbiR+NPG+/Y8UhmmpyFZdbkv8qW1s4P1nOnCc7bu4KtTOXV
 vu+m3dpCgu0MsjPlBNNNm7988l7rGiG1bteUi2npkiKGO5RYijMSDbWYi4oTAR2RidXyAgAA
X-CMS-MailID: 20190923065648eucas1p112eb5c7cbcbd79b8dcb7840f1186e384
X-Msg-Generator: CA
X-RootMTR: 20190921203810epcas3p39f3d9e3224d2c5ef61c1e18df2ab403d
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190921203810epcas3p39f3d9e3224d2c5ef61c1e18df2ab403d
References: <20190921170152.5033-1-krzk@kernel.org>
 <CGME20190921203810epcas3p39f3d9e3224d2c5ef61c1e18df2ab403d@epcas3p3.samsung.com>
 <20190921170152.5033-4-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_235651_912200_819D5DE6 
X-CRM114-Status: GOOD (  16.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sylwester Nawrocki <snawrocki@kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Krzysztof,

On 21.09.2019 19:01, Krzysztof Kozlowski wrote:
> Multi Core Timer node has interrupts routed to two different parents -
> GIC and combiner.  This was modeled with a interrupt-map within a
> subnode but can be expressed in an easier and more common way, directly
> in the node itself.

Maybe we should simply use 'interrupts-extended' based approach and 
simplify mct node even more (get rid of interrupt-parent, interrupts, 
size/address cells)?

> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
>
> ---
>
> Not tested.
> ---
>   arch/arm/boot/dts/exynos4210.dtsi | 16 ++++++----------
>   1 file changed, 6 insertions(+), 10 deletions(-)
>
> diff --git a/arch/arm/boot/dts/exynos4210.dtsi b/arch/arm/boot/dts/exynos4210.dtsi
> index 6d3f19562aab..38c49ab8c733 100644
> --- a/arch/arm/boot/dts/exynos4210.dtsi
> +++ b/arch/arm/boot/dts/exynos4210.dtsi
> @@ -109,23 +109,19 @@
>   		mct: timer@10050000 {
>   			compatible = "samsung,exynos4210-mct";
>   			reg = <0x10050000 0x800>;
> -			interrupt-parent = <&mct_map>;
> -			interrupts = <0>, <1>, <2>, <3>, <4>, <5>;
>   			clocks = <&clock CLK_FIN_PLL>, <&clock CLK_MCT>;
>   			clock-names = "fin_pll", "mct";
> -
> -			mct_map: mct-map {
> -				#interrupt-cells = <1>;
> -				#address-cells = <0>;
> -				#size-cells = <0>;
> -				interrupt-map =
> -					<0 &gic 0 57 IRQ_TYPE_LEVEL_HIGH>,
> +			#address-cells = <0>;
> +			#size-cells = <0>;
> +			#interrupt-cells = <1>;
> +			interrupt-parent = <&mct>;
> +			interrupts = <0>, <1>, <2>, <3>, <4>, <5>;
> +			interrupt-map = <0 &gic 0 57 IRQ_TYPE_LEVEL_HIGH>,
>   					<1 &gic 0 69 IRQ_TYPE_LEVEL_HIGH>,
>   					<2 &combiner 12 6>,
>   					<3 &combiner 12 7>,
>   					<4 &gic 0 42 IRQ_TYPE_LEVEL_HIGH>,
>   					<5 &gic 0 48 IRQ_TYPE_LEVEL_HIGH>;
> -			};
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
