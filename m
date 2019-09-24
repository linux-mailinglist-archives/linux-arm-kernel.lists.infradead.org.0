Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 300FCBC21B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 08:58:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PK4kfI7gV8ml7yMH4TzJmr2vr4moHQP9VtFCCyYK4QI=; b=M/aC+U/EQb4fib
	qWIh31SryYvFXdQ4JcHAv+GmoH1FNl4JhKTuIxRuhWiMc38/fcFD66FQ3J6HYtxixfW4eAuJQuQyp
	rmBvhbkebXhveUJTmZtOE3dLi+52B/6F4xPrqAP3XcKHjwvhfYcq9PFGNBl+2MxhiJE4lx2J/zYq7
	ZpCA5ldBhwnlzFVgNvlcIbrCWMbywI0bdar2qfvnJjjltZAdvFA8ljtKuW9TbhlNsdr8aJazRAi8e
	Hcql+1tHBnAkdLRC4aYFcOxVa/NHcw0oNhSzg5t0BN61cIui3ZeR10e4BidmHvWhd42QZuh4Q6qYu
	eKCEhAZ+PO0ieCHnd1Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCem0-0007hA-Ob; Tue, 24 Sep 2019 06:58:08 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCelq-0007gi-Vu
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 06:58:00 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190924065756euoutp027366cdb64aefb12b8864a06010609b51~HTZAqSXin1638816388euoutp02Z
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Sep 2019 06:57:56 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190924065756euoutp027366cdb64aefb12b8864a06010609b51~HTZAqSXin1638816388euoutp02Z
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1569308276;
 bh=x4VWDi57SmRBMcA7N4sKc9QXv3SE7cfVSrJ+k8miT3k=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=Akd6uF539knzDbqpvv2u68xLdgbNW5aq1mOj0AzAkEOi5DpkPYGxqfEwAFwVJqzXb
 9m6ZkZva8gQlrUYu1dH/yivLQoSncP0M4R2WFr77tzTvVE6KShqNkEgcqx+mJKe+Nn
 NUUvuqHcKqe0OSzaE8n6rVgoD5kEN4A7eNwZ8MHg=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190924065756eucas1p1e7f99b3653e63fee8452f4d5a533eaa3~HTZAZPw5X1177811778eucas1p1B;
 Tue, 24 Sep 2019 06:57:56 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 5C.BF.04374.47EB98D5; Tue, 24
 Sep 2019 07:57:56 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190924065756eucas1p2d3c6addaff393e1c65951e6c2129e5bd~HTZABlCkr0407304073eucas1p2m;
 Tue, 24 Sep 2019 06:57:56 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190924065756eusmtrp15e47cd262f11ad01e022077260b827d8~HTZAAgzc42015120151eusmtrp1m;
 Tue, 24 Sep 2019 06:57:56 +0000 (GMT)
X-AuditID: cbfec7f5-4f7ff70000001116-c8-5d89be744835
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 19.BD.04117.37EB98D5; Tue, 24
 Sep 2019 07:57:55 +0100 (BST)
Received: from [106.120.51.15] (unknown [106.120.51.15]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190924065755eusmtip2a938019655ea734af0ec79bd9d15f570~HTY-cXBVt0900509005eusmtip2t;
 Tue, 24 Sep 2019 06:57:55 +0000 (GMT)
Subject: Re: [RFT v4 4/8] ARM: dts: exynos: Remove MCT subnode for interrupt
 map on Exynos4210
To: Krzysztof Kozlowski <krzk@kernel.org>, Daniel Lezcano
 <daniel.lezcano@linaro.org>, Thomas Gleixner <tglx@linutronix.de>, Rob
 Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Kukjin
 Kim <kgene@kernel.org>, Andrzej Hajda <a.hajda@samsung.com>,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <e3c08a87-2650-3df8-01a6-05dff24af913@samsung.com>
Date: Tue, 24 Sep 2019 08:57:54 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20190923161411.9236-4-krzk@kernel.org>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02Se0hTYRjG+3bOdo7m9Hg0fDFTGmUkeKOwA5asMBhBFyIkCtGTHlRyUza1
 rCgrvE3ReUsd1gwqzbzOK2YTLzjF2FJJxUwSDSrTSu2KWpvHyv9+z/s+3/c978tHYvSg0JWM
 USRwSgUbKxHZ4i19P03eCYbMUL+7Dc7MRK1JyNxb2sHoei2QOzOHMWZzPcHoZ0aFzEh7mYgp
 MRsEzMOxIQGT+qyXYNLfvseYRn0RJrWTVd+rRjJ9VaZINjnaIZItmEyErPHBDVlOUxWSLend
 TxHnbA9GcrExSZzSNyjcNrqhphKPf+Vwuag4nUhBy1vViCSB2g+tCwfUyJakqUoEFQtLAl4s
 Ixi7U2cRNhaxhEA94Gtl64HZ/gIhb6pA0NSZTfBiHsHEdDlmdTlR4XBz9bfI2nCmCjDo7Hks
 sjYwyhuKFz6um0SUP6jn1et1MRUE3ZrRdcap3bDYM4tbeRsVClM/jBjvcYSBUr5uY4kxk9eH
 83d6QOt8GcazC0zM6gR81CkC9FkhPAfDcP8Tgmcn+GBs2mA3GCzIxq1BgbqNYNpUQ/AiG8HI
 rRLEuwKhxzgktG4Mo/ZCXfvGLg7D87E1jF+kPYzPO/IZ7CG/pXijLIaMNJp3e4LWWPvv2a4X
 w5gGSbSbJtNumka7aRrt/3fLEV6FXLhElTyKU+1TcJd8VKxclaiI8omIk+uR5YsNrhm/tiHD
 yoVuRJFIYieGloxQWsgmqZLl3QhITOIs1nulhdLiSDb5CqeMC1MmxnKqbrSdxCUu4qtb3pyn
 qSg2gbvIcfGc8m9XQNq4piBO5BdAufUue0pmv0mH3bt2hUCwJqI01+8oGcY2z43ljx4yj98P
 fCk8TV1vUz7yfJ0edkLz2URLP33xk+bt0QVc++7UF1lYdqRI3h9C/2qJ8Kh42rZzZbzZP7Xw
 HVESfCYwy1B4XHqyw+2sXS17rLHVYTJ1dUpd7+vRtJjj4qWT4Kpo1t8LU6rYP0WIk1peAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrHIsWRmVeSWpSXmKPExsVy+t/xe7rF+zpjDf6utbK4te4cq8W8z7IW
 848AGf2PXzNbnD+/gd1i0+NrrBaXd81hs5hxfh+TxdLrF5ksWvceYbdof/qS2WLzpqnMDjwe
 a+atYfTYtKqTzePOtT1sHu/OnWP32Lyk3qNvyypGj8+b5ALYo/RsivJLS1IVMvKLS2yVog0t
 jPQMLS30jEws9QyNzWOtjEyV9O1sUlJzMstSi/TtEvQyNq5dwVJwm79i6vR29gbGL9xdjJwc
 EgImEk9OTGbtYuTiEBJYyihx795RNoiEjMTJaQ2sELawxJ9rXWwQRa8ZJW4f6wMrEhZIkGj8
 +x/MFhGYyixx81ItiM0soCsx/d0bZoiGjYwSc650gk1iEzCU6HrbBdbAK2AncWjCNTCbRUBV
 4tPhJyxdjBwcogKxEpv2mkGUCEqcnAkS5uTgBLr08cRjLBDzzSTmbX7IDGHLS2x/OwfKFpe4
 9WQ+0wRGoVlI2mchaZmFpGUWkpYFjCyrGEVSS4tz03OLjfSKE3OLS/PS9ZLzczcxAuN227Gf
 W3Ywdr0LPsQowMGoxMMrsa0jVog1say4MvcQowQHs5II7yattlgh3pTEyqrUovz4otKc1OJD
 jKZAv01klhJNzgemlLySeENTQ3MLS0NzY3NjMwslcd4OgYMxQgLpiSWp2ampBalFMH1MHJxS
 DYx5j+W3TVvm3Wd4k6nj/+u1NzNnrzi9+NpshaLnjy0NI3z5cyav8/kZuuopS2i979NdIYKi
 P0s+fpI6rHFPQ8bkQo8U54HCzRbMc4pselsf3HZVX87wKEff1+BdftmS5kuuYrvXv/vnc/5e
 W1LOeo4966QVud4WzHJUP5srqrO7ecvxyr1m9pJKLMUZiYZazEXFiQCJOvh18QIAAA==
X-CMS-MailID: 20190924065756eucas1p2d3c6addaff393e1c65951e6c2129e5bd
X-Msg-Generator: CA
X-RootMTR: 20190923161444epcas3p280b21cfbb4448d55eb850de2d49a72d7
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190923161444epcas3p280b21cfbb4448d55eb850de2d49a72d7
References: <20190923161411.9236-1-krzk@kernel.org>
 <CGME20190923161444epcas3p280b21cfbb4448d55eb850de2d49a72d7@epcas3p2.samsung.com>
 <20190923161411.9236-4-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_235759_230188_FDFF22C9 
X-CRM114-Status: GOOD (  16.80  )
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
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>

Works fine on Trats and Origen boards.

> ---
>
> Not tested.
>
> Changes since v3:
> 1. Use interrupts-extended instead of interrupts-map.
> ---
>   arch/arm/boot/dts/exynos4210.dtsi | 21 ++++++---------------
>   1 file changed, 6 insertions(+), 15 deletions(-)
>
> diff --git a/arch/arm/boot/dts/exynos4210.dtsi b/arch/arm/boot/dts/exynos4210.dtsi
> index 6d3f19562aab..5fa33d43821e 100644
> --- a/arch/arm/boot/dts/exynos4210.dtsi
> +++ b/arch/arm/boot/dts/exynos4210.dtsi
> @@ -109,23 +109,14 @@
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
> -					<1 &gic 0 69 IRQ_TYPE_LEVEL_HIGH>,
> -					<2 &combiner 12 6>,
> -					<3 &combiner 12 7>,
> -					<4 &gic 0 42 IRQ_TYPE_LEVEL_HIGH>,
> -					<5 &gic 0 48 IRQ_TYPE_LEVEL_HIGH>;
> -			};
> +			interrupts-extended = <&gic 0 57 IRQ_TYPE_LEVEL_HIGH>,
> +					      <&gic 0 69 IRQ_TYPE_LEVEL_HIGH>,
> +					      <&combiner 12 6>,
> +					      <&combiner 12 7>,
> +					      <&gic 0 42 IRQ_TYPE_LEVEL_HIGH>,
> +					      <&gic 0 48 IRQ_TYPE_LEVEL_HIGH>;
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
