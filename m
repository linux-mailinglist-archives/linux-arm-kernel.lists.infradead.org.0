Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72D87BDF2E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 15:41:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K84uT0eqES12plExirLsGCaG75Q9DvELt3tTaduHfM4=; b=F5JiYyORuJqEqP
	DNsZKdMULLLfwRg2OpCMI+Rd6jq/ZHOL+fZoKNEhVffT012Uq0zpDUZciqvOGI4el6p2Wvx7r7Cc1
	e66sMZUqQnyzPoIcN6X+sYYLhXql3dFeKe5/Ag+db8UpiLSVBwwOyHxmv5P47JMGjJcox7wyJEo27
	O3+VhWnbJyC+duQwp8dD6bx8/rv0/5EqWZMRdkl3CbDF5bbupdXHaW7BY6x0JfJhptJ4zMy0huLv8
	wtKIiHW/Y5iaWeYvayVkMciFQokpCQ+aSzelEyUpHKal9WPH7+1TA90cBwOccnRdMOfEDf1t7MOGA
	61I81Z72Jyd7eDO1RPPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD7Xe-00065Y-PY; Wed, 25 Sep 2019 13:41:14 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD7XN-00064o-Ov
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 13:41:00 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190925134054euoutp01ed7ec19677e84246c3ec723a2921b9c2~HsiH8nE-91726617266euoutp01x
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 13:40:54 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190925134054euoutp01ed7ec19677e84246c3ec723a2921b9c2~HsiH8nE-91726617266euoutp01x
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1569418854;
 bh=f0AmX9FlrHbNXAtWzVC0R1bkttK0ZP6JLzQMl2nV4tE=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=eqkYlGR4HRz72LogFFLyNnujDq2XUmoyio/fF5sAwF80SVZJaJdwhA6VMXoopqPFD
 It7Tq50zESTrfNh7GtTwIKwh0wgiZMjjydWHBsZqPbvPQFIknkKwaEAjTxgrwYYFUp
 sCLggefj65v1dOuFIDi0liBJu6ldM3nmxhbpshIU=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190925134053eucas1p17263031006a31308e81603811f36a295~HsiHkiLAV1688916889eucas1p17;
 Wed, 25 Sep 2019 13:40:53 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 59.2A.04309.56E6B8D5; Wed, 25
 Sep 2019 14:40:53 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190925134053eucas1p1ae1d6b5a345046b685c0fa0de1c31746~HsiHSaIqk0883308833eucas1p1P;
 Wed, 25 Sep 2019 13:40:53 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190925134053eusmtrp1eba1efa09fcd37e1938ba9bac3fa0ec6~HsiHRVdx_1297212972eusmtrp1_;
 Wed, 25 Sep 2019 13:40:53 +0000 (GMT)
X-AuditID: cbfec7f4-afbff700000010d5-96-5d8b6e65a650
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id DB.A1.04166.56E6B8D5; Wed, 25
 Sep 2019 14:40:53 +0100 (BST)
Received: from [106.120.51.15] (unknown [106.120.51.15]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190925134052eusmtip2106b84878db25e3d1385666da6f83d53~HsiGprZQ51295012950eusmtip24;
 Wed, 25 Sep 2019 13:40:52 +0000 (GMT)
Subject: Re: [PATCH v4 1/8] dt-bindings: timer: Convert Exynos MCT bindings
 to json-schema
To: Krzysztof Kozlowski <krzk@kernel.org>, Daniel Lezcano
 <daniel.lezcano@linaro.org>, Thomas Gleixner <tglx@linutronix.de>, Rob
 Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Kukjin
 Kim <kgene@kernel.org>, Andrzej Hajda <a.hajda@samsung.com>,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <aa4acd33-eff3-175f-b86a-459ba8c1d17c@samsung.com>
Date: Wed, 25 Sep 2019 15:40:52 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20190923161411.9236-1-krzk@kernel.org>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02SfyyUcRzH+97z3D3P3Zw9d5hPQttttakQq/WQWay1Z2rNYtqEOnlG4067
 8yP6I1HiiJYKl7AwTpx2RKnIKVczJzTMWj8cNem0RRubrDtPyn+vz/vz/jzvz+e7h8SkQ3w3
 8pwyjVUp5SkygQjvHFgxe7PKoti9k79201N6M5+uXvSga17aoNQyj9HDww8J2mAZ59Nj3VUC
 umK4h0c3TIzw6KvPXxL0tdk5jG433MYOOTAt1S2IMTQXCpj3488EzILZTDDt9ZeYko5mxCwa
 PMOJaFFQAptyLoNV+QafESVZ9E3E+Y7jF4pKB1AOWgjQICEJ1D7QlNzDNUhESqkmBNfzPvK5
 YgnB6sJTgisWEVjnegUbI3fbOhDXaERQWzWB7A0pZUXQ/iPMzk5UDLR1ra2bnKkyDHr7devT
 GOUN5QvfMTsLKD/QWDXrupgKBt2VlXUdp3ZAXZ2ZZ2cXKhY+LJswziOBN5UzuJ2Fti3qCywE
 983t0GWtwjh2hamZGp49GKhpAmZ/azBu7cPw886Xv+wE30wdBMfuMFhWjHMDeQg+m1sJrihG
 MJZbgTjXQeg3jdiehrRFeEFbty8nh8Cr1zqeXQbKESatEm4JR7jZWY5xshgK8qWceydoTfp/
 sX1vR7EbSKbddJp20znaTedo/+fWIrwZubLpakUiq/ZXspk+arlCna5M9DmbqjAg2082uGZa
 eoy6V+ONiCKRzEH8IqooVsqXZ6izFEYEJCZzFmvdNbFScYI8K5tVpZ5WpaewaiPaRuIyV/HF
 LZ9OSalEeRqbzLLnWdVGl0cK3XKQf75Vld2jK1/VNTp/Fe6nvYZaP+H6oZCjYQeOUfEBjMdl
 YfT09ISWnY2onI7waYjM26qID9N79hTenzrBRLvFdYaOJge2RZamGyuNkvll0a34qLns8CNB
 KVkSS2DoZH7nu8A+BJk0czItxoXeUxLnNZ4rdlp+wH80JXlCimW4OknutwtTqeV/ACdIsm9g
 AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrHIsWRmVeSWpSXmKPExsVy+t/xe7qped2xBttnSFjcWneO1WLeZ1mL
 +UeAjP7Hr5ktzp/fwG6x6fE1VovLu+awWcw4v4/JYun1i0wWrXuPsFu0P33JbLF501RmBx6P
 NfPWMHpsWtXJ5nHn2h42j3fnzrF7bF5S79G3ZRWjx+dNcgHsUXo2RfmlJakKGfnFJbZK0YYW
 RnqGlhZ6RiaWeobG5rFWRqZK+nY2Kak5mWWpRfp2CXoZj9etYC/Y4lfR3X+MsYHxnWUXIyeH
 hICJxOz1Wxi7GLk4hASWMkr8+n+UBSIhI3FyWgMrhC0s8edaFxtE0WtGiX8r1zGCJIQFYiR2
 73rLDmKLCExllrh5qRbEZhbQlZj+7g0zREM7o8SBvsdgRWwChhJdb0EmcXLwCthJrGz5yQxi
 swioSixefI6pi5GDQ1QgVmLTXjOIEkGJkzOfgB3ECXTpkg6IMcwCZhLzNj9khrDlJba/nQNl
 i0vcejKfaQKj0Cwk7bOQtMxC0jILScsCRpZVjCKppcW56bnFhnrFibnFpXnpesn5uZsYgXG7
 7djPzTsYL20MPsQowMGoxMN7IKw7Vog1say4MvcQowQHs5II7yyZrlgh3pTEyqrUovz4otKc
 1OJDjKZAv01klhJNzgemlLySeENTQ3MLS0NzY3NjMwslcd4OgYMxQgLpiSWp2ampBalFMH1M
 HJxSDYwsj2XKirRiPk26x845Z7Xc3KnuT5gUX9z/yzDF3C2Hyd8ieV/Xvxkugg6ie29rBk6U
 VnHxKTsmbLV+vkVJrNJN9er6X9elVxelePpmlWx7prEg8BTbuy1la17VzGe8ylh0qnTB/lqz
 AyujDukeePRlcqXEdtEr0mcyY1f53DQSiCxabWyoK6PEUpyRaKjFXFScCAAxGhDE8QIAAA==
X-CMS-MailID: 20190925134053eucas1p1ae1d6b5a345046b685c0fa0de1c31746
X-Msg-Generator: CA
X-RootMTR: 20190923161449epcas3p4bf25ddc76d4893a93b9472c3a286f410
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190923161449epcas3p4bf25ddc76d4893a93b9472c3a286f410
References: <CGME20190923161449epcas3p4bf25ddc76d4893a93b9472c3a286f410@epcas3p4.samsung.com>
 <20190923161411.9236-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_064058_157579_4D73B438 
X-CRM114-Status: GOOD (  29.40  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Hi Krzysztof,

On 23.09.2019 18:14, Krzysztof Kozlowski wrote:
> Convert Samsung Exynos Soc Multi Core Timer bindings to DT schema format
> using json-schema.
>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
>
> ---
>
> Changes since v3:
> 1. Use interrupts-extended instead of interrupts-map.
>
> Changes since v1:
> 1. Indent example with four spaces (more readable),
> 2. Rename nodes in example to timer,
> 3. Remove mct-map subnode.
> ---
>   .../bindings/timer/samsung,exynos4210-mct.txt |  88 ------------
>   .../timer/samsung,exynos4210-mct.yaml         | 125 ++++++++++++++++++
>   2 files changed, 125 insertions(+), 88 deletions(-)
>   delete mode 100644 Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.txt
>   create mode 100644 Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.yaml
>
> diff --git a/Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.txt b/Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.txt
> deleted file mode 100644
> index 8f78640ad64c..000000000000
> --- a/Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.txt
> +++ /dev/null
> @@ -1,88 +0,0 @@
> -Samsung's Multi Core Timer (MCT)
> -
> -The Samsung's Multi Core Timer (MCT) module includes two main blocks, the
> -global timer and CPU local timers. The global timer is a 64-bit free running
> -up-counter and can generate 4 interrupts when the counter reaches one of the
> -four preset counter values. The CPU local timers are 32-bit free running
> -down-counters and generate an interrupt when the counter expires. There is
> -one CPU local timer instantiated in MCT for every CPU in the system.
> -
> -Required properties:
> -
> -- compatible: should be "samsung,exynos4210-mct".
> -  (a) "samsung,exynos4210-mct", for mct compatible with Exynos4210 mct.
> -  (b) "samsung,exynos4412-mct", for mct compatible with Exynos4412 mct.
> -
> -- reg: base address of the mct controller and length of the address space
> -  it occupies.
> -
> -- interrupts: the list of interrupts generated by the controller. The following
> -  should be the order of the interrupts specified. The local timer interrupts
> -  should be specified after the four global timer interrupts have been
> -  specified.
> -
> -	0: Global Timer Interrupt 0
> -	1: Global Timer Interrupt 1
> -	2: Global Timer Interrupt 2
> -	3: Global Timer Interrupt 3
> -	4: Local Timer Interrupt 0
> -	5: Local Timer Interrupt 1
> -	6: ..
> -	7: ..
> -	i: Local Timer Interrupt n
> -
> -  For MCT block that uses a per-processor interrupt for local timers, such
> -  as ones compatible with "samsung,exynos4412-mct", only one local timer
> -  interrupt might be specified, meaning that all local timers use the same
> -  per processor interrupt.
> -
> -Example 1: In this example, the IP contains two local timers, using separate
> -	   interrupts, so two local timer interrupts have been specified,
> -	   in addition to four global timer interrupts.
> -
> -	mct@10050000 {
> -		compatible = "samsung,exynos4210-mct";
> -		reg = <0x10050000 0x800>;
> -		interrupts = <0 57 0>, <0 69 0>, <0 70 0>, <0 71 0>,
> -			     <0 42 0>, <0 48 0>;
> -	};
> -
> -Example 2: In this example, the timer interrupts are connected to two separate
> -	   interrupt controllers. Hence, an interrupt-map is created to map
> -	   the interrupts to the respective interrupt controllers.
> -
> -	mct@101c0000 {
> -		compatible = "samsung,exynos4210-mct";
> -		reg = <0x101C0000 0x800>;
> -		interrupt-parent = <&mct_map>;
> -		interrupts = <0>, <1>, <2>, <3>, <4>, <5>;
> -
> -		mct_map: mct-map {
> -			#interrupt-cells = <1>;
> -			#address-cells = <0>;
> -			#size-cells = <0>;
> -			interrupt-map = <0 &gic 0 57 0>,
> -					<1 &gic 0 69 0>,
> -					<2 &combiner 12 6>,
> -					<3 &combiner 12 7>,
> -					<4 &gic 0 42 0>,
> -					<5 &gic 0 48 0>;
> -		};
> -	};
> -
> -Example 3: In this example, the IP contains four local timers, but using
> -	   a per-processor interrupt to handle them. Either all the local
> -	   timer interrupts can be specified, with the same interrupt specifier
> -	   value or just the first one.
> -
> -	mct@10050000 {
> -		compatible = "samsung,exynos4412-mct";
> -		reg = <0x10050000 0x800>;
> -
> -		/* Both ways are possible in this case. Either: */
> -		interrupts = <0 57 0>, <0 69 0>, <0 70 0>, <0 71 0>,
> -			     <0 42 0>;
> -		/* or: */
> -		interrupts = <0 57 0>, <0 69 0>, <0 70 0>, <0 71 0>,
> -			     <0 42 0>, <0 42 0>, <0 42 0>, <0 42 0>;
> -	};
> diff --git a/Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.yaml b/Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.yaml
> new file mode 100644
> index 000000000000..bff3f54a398f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.yaml
> @@ -0,0 +1,125 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/timer/samsung,exynos4210-mct.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Samsung Exynos SoC Multi Core Timer (MCT)
> +
> +maintainers:
> +  - Krzysztof Kozlowski <krzk@kernel.org>
> +
> +description: |+
> +  The Samsung's Multi Core Timer (MCT) module includes two main blocks, the
> +  global timer and CPU local timers. The global timer is a 64-bit free running
> +  up-counter and can generate 4 interrupts when the counter reaches one of the
> +  four preset counter values. The CPU local timers are 32-bit free running
> +  down-counters and generate an interrupt when the counter expires. There is
> +  one CPU local timer instantiated in MCT for every CPU in the system.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - samsung,exynos4210-mct
> +      - samsung,exynos4412-mct
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    description: |
> +      Interrupts should be put in specific order. This is, the local timer
> +      interrupts should be specified after the four global timer interrupts
> +      have been specified:
> +      0: Global Timer Interrupt 0
> +      1: Global Timer Interrupt 1
> +      2: Global Timer Interrupt 2
> +      3: Global Timer Interrupt 3
> +      4: Local Timer Interrupt 0
> +      5: Local Timer Interrupt 1
> +      6: ..
> +      7: ..
> +      i: Local Timer Interrupt n
> +      For MCT block that uses a per-processor interrupt for local timers, such
> +      as ones compatible with "samsung,exynos4412-mct", only one local timer
> +      interrupt might be specified, meaning that all local timers use the same
> +      per processor interrupt.
> +    minItems: 5               # 4 Global + 1 local
> +    maxItems: 20              # 4 Global + 16 local
> +
> +  interrupts-extended:
> +    description: |
> +      If interrupts are coming from different controllers, this property
> +      can be used instead of regular "interrupts" property.
> +      The format is exactly the same as with "interrupts".
> +      Interrupts should be put in specific order. This is, the local timer
> +    minItems: 5               # 4 Global + 1 local
> +    maxItems: 20              # 4 Global + 16 local
> +
> +required:
> +  - compatible
> +  - interrupts
> +  - reg
> +
> +allOf:
> +  - if:
> +      not:
> +        required:
> +          - interrupts
> +    then:
> +      required:
> +        - interrupts-extended
> +
> +examples:
> +  - |
> +    // In this example, the IP contains two local timers, using separate
> +    // interrupts, so two local timer interrupts have been specified,
> +    // in addition to four global timer interrupts.
> +
> +    timer@10050000 {
> +        compatible = "samsung,exynos4210-mct";
> +        reg = <0x10050000 0x800>;
> +        interrupts = <0 57 0>, <0 69 0>, <0 70 0>, <0 71 0>,
> +                     <0 42 0>, <0 48 0>;
> +    };
> +
> +  - |
> +    // In this example, the timer interrupts are connected to two separate
> +    // interrupt controllers. Hence, an interrupts-extended is needed.
> +
> +    timer@101c0000 {
> +        compatible = "samsung,exynos4210-mct";
> +        reg = <0x101C0000 0x800>;
> +        interrupts-extended = <&gic 0 57 0>,
> +                              <&gic 0 69 0>,
> +                              <&combiner 12 6>,
> +                              <&combiner 12 7>,
> +                              <&gic 0 42 0>,
> +                              <&gic 0 48 0>;
> +    };
> +
> +  - |
> +    // In this example, the IP contains four local timers, but using
> +    // a per-processor interrupt to handle them. Only one first local
> +    // interrupt is specified.
> +
> +    timer@10050000 {
> +        compatible = "samsung,exynos4412-mct";
> +        reg = <0x10050000 0x800>;
> +
> +        interrupts = <0 57 0>, <0 69 0>, <0 70 0>, <0 71 0>,
> +                     <0 42 0>;
> +    };
> +
> +  - |
> +    // In this example, the IP contains four local timers, but using
> +    // a per-processor interrupt to handle them. All the local timer
> +    // interrupts are specified.
> +
> +    timer@10050000 {
> +        compatible = "samsung,exynos4412-mct";
> +        reg = <0x10050000 0x800>;
> +
> +        interrupts = <0 57 0>, <0 69 0>, <0 70 0>, <0 71 0>,
> +                     <0 42 0>, <0 42 0>, <0 42 0>, <0 42 0>;
> +    };
I would add "#include <dt-bindings/interrupt-controller/arm-gic.h>" and
replace zeros with proper defines like GIC_SPI and GIC_PPI. The last two
examples describes per-processor-interrupts, but have 0 in the specifier
cell 0. I would also use proper IRQ_TYPE_LEVEL_HIGH at cell 3 instead
of 0. I would also consider adding artificial 'interrupt-parent = &git'
property to the 1st, 3rd and 4th examples to make it clear that they
refer to ARM GIC bindings.

Best regards
-- 
Marek Szyprowski, PhD
Samsung R&D Institute Poland


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
