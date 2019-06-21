Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F2804E6E0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 13:14:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gRDpdPNVdsMDpZon4txRseBhBr+kKSjaJx0gOB1lfCo=; b=hzze+z1yMGAFlw
	YTkWkgdeTUVMvzstxKeQ5j92I/zrNsg7dvf6PJ33btwh0X8Yd67gtlOBJPleMqZiuPWxbqoe+VmTh
	aGNhP3pyzJ6Gexxr7ufR088ZJZj58BqK4LuG1Vxp7mhpH9+bGils4MLL0GmioZtmaOHq3PIecVOJ6
	N+3WEmrKxnJJ57VwLUtd/ukDYLbr5QbTkXo22Fi/ZEK/3ceyPwk2sdJGuI+3VbswKj70+uzQ78Mox
	wmCOLB6HthiF+/xlWjQBOcL2XlQaoX0GVLtUvhrDDlFsFZxESui9sDZVwNxNSp3mmyaQ8Mcpag/EG
	G4yRPHOKaKIsKNVDcCRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heHUh-0008K0-QG; Fri, 21 Jun 2019 11:14:12 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heHU8-0008Is-9I
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 11:13:40 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190621111332euoutp02dd5f7a283822b9d0af52abdce506dfe8~qMmDQJEZy2215822158euoutp02N
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Jun 2019 11:13:32 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190621111332euoutp02dd5f7a283822b9d0af52abdce506dfe8~qMmDQJEZy2215822158euoutp02N
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1561115612;
 bh=6YJ5/kKdrsFfr6ePqP4K2aX5RK675ibIPIClqnEDFTg=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=a9yTj1x25LEtKQdweIiN+h2QxoPfzI89zPwg5lkGUubmka74/Fc1+mQ01+TT8dUdr
 xNyq6owQ7EatBB5ac0JSIpUFQr9O1Xo09nEU8AKrk2z1MwE4wMpQhi5SIYuzdcf8DK
 xYOX37UXxmVCC321aLCM1Zco0715/rwZW3XmKCDw=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190621111331eucas1p22263058629410ced3220f604ff8ac6cc~qMmCZClap0071500715eucas1p2D;
 Fri, 21 Jun 2019 11:13:31 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id F7.4C.04377.BDBBC0D5; Fri, 21
 Jun 2019 12:13:31 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190621111330eucas1p1de6ddd3651f42f621a5e88f0b834f850~qMmBo0P0P1225112251eucas1p1A;
 Fri, 21 Jun 2019 11:13:30 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190621111330eusmtrp1da8482e721d281479c2526efc4819249~qMmBST1Yj0558805588eusmtrp1v;
 Fri, 21 Jun 2019 11:13:30 +0000 (GMT)
X-AuditID: cbfec7f4-113ff70000001119-9d-5d0cbbdb0cbc
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 27.CB.04146.ADBBC0D5; Fri, 21
 Jun 2019 12:13:30 +0100 (BST)
Received: from [106.120.50.25] (unknown [106.120.50.25]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190621111329eusmtip17f30fdcc8f6f7feae71cee195c7f8f7f~qMmAruyuf0278702787eusmtip1R;
 Fri, 21 Jun 2019 11:13:29 +0000 (GMT)
Subject: Re: [PATCH 6/6] ARM: dts: exynos: Add regulator suspend
 configuration to Odroid XU3/XU4/HC1 family
To: Krzysztof Kozlowski <krzk@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 Sangbeom Kim <sbkim73@samsung.com>, Bartlomiej Zolnierkiewicz
 <b.zolnierkie@samsung.com>, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown
 <broonie@kernel.org>, Lee Jones <lee.jones@linaro.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <3e5320aa-ac26-3d69-7a8c-35c2c36b0f76@samsung.com>
Date: Fri, 21 Jun 2019 13:13:28 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190620183530.5386-6-krzk@kernel.org>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrHKsWRmVeSWpSXmKPExsWy7djP87q3d/PEGkxcx2yxccZ6VoupD5+w
 Wcw/co7Vov/xa2aL8+c3sFvc/3qU0eLblQ4mi02Pr7FaXN41h81ixvl9TBZXHv9jtbi44guT
 RfvTl8wOvB47Z91l99i0qpPN4861PWwem5fUe/RtWcXo8XmTXABbFJdNSmpOZllqkb5dAlfG
 5hPrmQqWW1Tc6vnN1sB4Ur2LkZNDQsBEYtO+LSxdjFwcQgIrGCXmvG2Acr4wSpzofscK4Xxm
 lHjbd58VpqX53Et2iMRyRolTOz5AtbxllLjeuZoZpEpYIFfiR9tZsISIwHRmiQ/XlzCCJJgF
 HCQeX+pjA7HZBAwlut52gdm8AnYS+9/1gzWzCKhK3N0yG8wWFYiReDj/DlSNoMTJmU9YQGxO
 oDN+7bzIBDFTXmL72znMELa4xK0n85kgTn3ELnH4GT+E7SIx8+R3dghbWOLV8S1QtozE6ck9
 YIdKCDQzSjw8t5YdwulhlLjcNIMRospa4vDxi8AA4ADaoCmxfpc+RNhRYmXHX0aQsIQAn8SN
 t4IQN/BJTNo2nRkizCvR0SYEUa0mMev4Ori1By9cYp7AqDQLyWezkHwzC8k3sxD2LmBkWcUo
 nlpanJueWmyUl1quV5yYW1yal66XnJ+7iRGYyk7/O/5lB+OuP0mHGAU4GJV4eA/M4o4VYk0s
 K67MPcQowcGsJMLLk8MTK8SbklhZlVqUH19UmpNafIhRmoNFSZy3muFBtJBAemJJanZqakFq
 EUyWiYNTqoGxSfrusd9RtqcNE+fdFylfqzfp9f9/Dv3/WWxW63tJ7lql/qiZ59vedv1Hsume
 NocfP1SdX1g77c/kZ7Eib3ec0Nx9LtZ5c9223yqaHovnNO29GXvhYdlFZoGj17blbX4ioFe4
 1mWd5fag+zNdGKZ/cCqXbVnq5+ugFyr3xlX9Puvli8Xf37fkK7EUZyQaajEXFScCAPcN51Zh
 AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrIIsWRmVeSWpSXmKPExsVy+t/xu7q3dvPEGqy5yGKxccZ6VoupD5+w
 Wcw/co7Vov/xa2aL8+c3sFvc/3qU0eLblQ4mi02Pr7FaXN41h81ixvl9TBZXHv9jtbi44guT
 RfvTl8wOvB47Z91l99i0qpPN4861PWwem5fUe/RtWcXo8XmTXABblJ5NUX5pSapCRn5xia1S
 tKGFkZ6hpYWekYmlnqGxeayVkamSvp1NSmpOZllqkb5dgl7G5hPrmQqWW1Tc6vnN1sB4Ur2L
 kZNDQsBEovncS/YuRi4OIYGljBLnHy5nhUjISJyc1gBlC0v8udbFBlH0mlFi/qsjTCAJYYFc
 if195xlBEiICM5klnjy6ywySYBZwkHh8qQ+qYyOjxOZJ6xlBEmwChhJdb0FGcXLwCthJ7H/X
 D9bAIqAqcXfLbDBbVCBGomvqTxaIGkGJkzOfgNmcQLf+2nmRCWKBmcS8zQ+hlslLbH87B8oW
 l7j1ZD7TBEahWUjaZyFpmYWkZRaSlgWMLKsYRVJLi3PTc4sN9YoTc4tL89L1kvNzNzECo3fb
 sZ+bdzBe2hh8iFGAg1GJh/fALO5YIdbEsuLK3EOMEhzMSiK8PDk8sUK8KYmVValF+fFFpTmp
 xYcYTYGem8gsJZqcD0wseSXxhqaG5haWhubG5sZmFkrivB0CB2OEBNITS1KzU1MLUotg+pg4
 OKUaGA0t7d1PeLcE2R9xeyVTznvb7uDCfU97NgTfXGHxSpNjuVG51oonhZueP99lclbQK7Zm
 h8njEsY5ho//9Dsf+2wiaWwXtu7cqpK59w0FX/SdqH+r/CyMJbJrZ9jGjRutt1oWXrK+c6zu
 rtlhNt+JYs4bf7XalOjdfa9useLaeqacq6JfZdZd3qjEUpyRaKjFXFScCABX2wNR9AIAAA==
X-CMS-MailID: 20190621111330eucas1p1de6ddd3651f42f621a5e88f0b834f850
X-Msg-Generator: CA
X-RootMTR: 20190620183612epcas2p17aa8e12a10b92891ab2228abca402e0c
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190620183612epcas2p17aa8e12a10b92891ab2228abca402e0c
References: <20190620183530.5386-1-krzk@kernel.org>
 <CGME20190620183612epcas2p17aa8e12a10b92891ab2228abca402e0c@epcas2p1.samsung.com>
 <20190620183530.5386-6-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_041337_177858_4D6F800E 
X-CRM114-Status: GOOD (  16.78  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sylwester Nawrocki <snawrocki@kernel.org>, notify@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 2019-06-20 20:35, Krzysztof Kozlowski wrote:
> Add the PMIC regulator suspend configuration to entire Odroid
> XU3/XU4/HC1 family of boards to reduce power usage during suspend.  The
> configuration is based on vendor (Hardkernel) reference kernel.
>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

On XU4 (booted either from eMMC or SD) this reduces power consumption in 
suspend-to-ram from 120mA to about 87mA (@5V). Suspend-to-RAM also works 
fine on XU3, XU3lite and HC1.

Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>

> ---
>
> Tested on XU3 and HC1 with SD card.
> ---
>   arch/arm/boot/dts/exynos5422-odroid-core.dtsi | 92 +++++++++++++++++++
>   1 file changed, 92 insertions(+)
>
> diff --git a/arch/arm/boot/dts/exynos5422-odroid-core.dtsi b/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
> index 0f967259ad29..5a4f7dd2568b 100644
> --- a/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
> +++ b/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
> @@ -177,6 +177,10 @@
>   				regulator-name = "vdd_adc";
>   				regulator-min-microvolt = <1800000>;
>   				regulator-max-microvolt = <1800000>;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
>   			};
>   
>   			ldo5_reg: LDO5 {
> @@ -184,6 +188,10 @@
>   				regulator-min-microvolt = <1800000>;
>   				regulator-max-microvolt = <1800000>;
>   				regulator-always-on;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
>   			};
>   
>   			ldo6_reg: LDO6 {
> @@ -191,6 +199,10 @@
>   				regulator-min-microvolt = <1000000>;
>   				regulator-max-microvolt = <1000000>;
>   				regulator-always-on;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
>   			};
>   
>   			ldo7_reg: LDO7 {
> @@ -198,6 +210,10 @@
>   				regulator-min-microvolt = <1800000>;
>   				regulator-max-microvolt = <1800000>;
>   				regulator-always-on;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
>   			};
>   
>   			ldo8_reg: LDO8 {
> @@ -205,6 +221,10 @@
>   				regulator-min-microvolt = <1800000>;
>   				regulator-max-microvolt = <1800000>;
>   				regulator-always-on;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
>   			};
>   
>   			ldo9_reg: LDO9 {
> @@ -212,6 +232,10 @@
>   				regulator-min-microvolt = <3000000>;
>   				regulator-max-microvolt = <3000000>;
>   				regulator-always-on;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
>   			};
>   
>   			ldo10_reg: LDO10 {
> @@ -219,6 +243,10 @@
>   				regulator-min-microvolt = <1800000>;
>   				regulator-max-microvolt = <1800000>;
>   				regulator-always-on;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
>   			};
>   
>   			ldo11_reg: LDO11 {
> @@ -226,6 +254,10 @@
>   				regulator-min-microvolt = <1000000>;
>   				regulator-max-microvolt = <1000000>;
>   				regulator-always-on;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
>   			};
>   
>   			ldo12_reg: LDO12 {
> @@ -239,6 +271,10 @@
>   				regulator-name = "vddq_mmc2";
>   				regulator-min-microvolt = <1800000>;
>   				regulator-max-microvolt = <2800000>;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
>   			};
>   
>   			ldo14_reg: LDO14 {
> @@ -253,6 +289,10 @@
>   				regulator-min-microvolt = <3300000>;
>   				regulator-max-microvolt = <3300000>;
>   				regulator-always-on;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
>   			};
>   
>   			ldo16_reg: LDO16 {
> @@ -267,18 +307,30 @@
>   				regulator-min-microvolt = <3300000>;
>   				regulator-max-microvolt = <3300000>;
>   				regulator-always-on;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
>   			};
>   
>   			ldo18_reg: LDO18 {
>   				regulator-name = "vdd_emmc_1V8";
>   				regulator-min-microvolt = <1800000>;
>   				regulator-max-microvolt = <1800000>;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
>   			};
>   
>   			ldo19_reg: LDO19 {
>   				regulator-name = "vdd_sd";
>   				regulator-min-microvolt = <2800000>;
>   				regulator-max-microvolt = <2800000>;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
>   			};
>   
>   			ldo20_reg: LDO20 {
> @@ -307,6 +359,10 @@
>   				regulator-min-microvolt = <1100000>;
>   				regulator-max-microvolt = <1100000>;
>   				regulator-always-on;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
>   			};
>   
>   			ldo24_reg: LDO24 {
> @@ -328,6 +384,10 @@
>   				regulator-name = "vdd_ldo26";
>   				regulator-min-microvolt = <800000>;
>   				regulator-max-microvolt = <3950000>;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
>   			};
>   
>   			ldo27_reg: LDO27 {
> @@ -335,6 +395,10 @@
>   				regulator-min-microvolt = <1000000>;
>   				regulator-max-microvolt = <1000000>;
>   				regulator-always-on;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
>   			};
>   
>   			ldo28_reg: LDO28 {
> @@ -342,6 +406,10 @@
>   				regulator-name = "vdd_ldo28";
>   				regulator-min-microvolt = <800000>;
>   				regulator-max-microvolt = <3950000>;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
>   			};
>   
>   			ldo29_reg: LDO29 {
> @@ -420,6 +488,10 @@
>   				regulator-max-microvolt = <1300000>;
>   				regulator-always-on;
>   				regulator-boot-on;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
>   			};
>   
>   			buck2_reg: BUCK2 {
> @@ -428,6 +500,10 @@
>   				regulator-max-microvolt = <1500000>;
>   				regulator-always-on;
>   				regulator-boot-on;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
>   			};
>   
>   			buck3_reg: BUCK3 {
> @@ -436,6 +512,10 @@
>   				regulator-max-microvolt = <1400000>;
>   				regulator-always-on;
>   				regulator-boot-on;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
>   			};
>   
>   			buck4_reg: BUCK4 {
> @@ -444,6 +524,10 @@
>   				regulator-max-microvolt = <1400000>;
>   				regulator-always-on;
>   				regulator-boot-on;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
>   			};
>   
>   			buck5_reg: BUCK5 {
> @@ -460,6 +544,10 @@
>   				regulator-max-microvolt = <1500000>;
>   				regulator-always-on;
>   				regulator-boot-on;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
>   			};
>   
>   			buck7_reg: BUCK7 {
> @@ -490,6 +578,10 @@
>   				regulator-name = "vdd_vmem";
>   				regulator-min-microvolt = <2850000>;
>   				regulator-max-microvolt = <2850000>;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
>   			};
>   		};
>   	};

Best regards
-- 
Marek Szyprowski, PhD
Samsung R&D Institute Poland


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
