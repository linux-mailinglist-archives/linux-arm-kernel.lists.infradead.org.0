Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A9FCC97E8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 07:20:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ARevja9NQ0nToCmU0xRkXwdu3EnrZg0bvcibZ5FsnLw=; b=WsZPHJixxLkgyy
	du8LyBghQnBQ8l7OEtwSM2zMUG5/XA5tYCOzCeYw7G4y1CtxNgOcFiHarGalefq7zh1Qv1grYQlWw
	eSCG23ETCJLR002+CCqWiotOqmyU5NeMPivGS+St38Ne5fTS8HajrzCY2ajiJ0VU5cfT5fB4aWEcc
	SXj3RLvXVLydoAJjFR9sWl7rZCVfbChwJ5DxLyjJvyuFleyieL4GxYE+Yaj7at/q8cMAa8gTI0ypN
	60JsRP8Nle5pg+btEmKwAjQfodyDbH06jxReeeoO4hoYExCpSQuISQkQ9AhLfbJVIvYGhnbAEYMEX
	i34ZfIFZ9Rti4CgIao0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFtXH-0001Dq-Ne; Thu, 03 Oct 2019 05:20:19 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFtXA-0000lK-Tf
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 05:20:14 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20191003052008euoutp019cbf1119c7177b7d95b9d9801beea86f~KC3L3twUI0063000630euoutp01Y
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  3 Oct 2019 05:20:08 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20191003052008euoutp019cbf1119c7177b7d95b9d9801beea86f~KC3L3twUI0063000630euoutp01Y
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1570080008;
 bh=XOALDYVI2Kp1ypBfrNvPufEPotcelKDxlWNpiErrXxs=;
 h=Subject:To:From:Date:In-Reply-To:References:From;
 b=GmfdIOgiq/+7MG93wun6C1I4sEWveQoXVBw3mrb76H2Dud2qllvF8iELODGnxMVng
 KFMqGMVgXh2vZotm3b9zdm5LggiO06ADBi1d6juZTEu9+oMAqJf+dsrrukERFivatb
 pZY0mILgPdCIGmQ3ozboJ27NbY6IPzA7Jl/C6rzI=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20191003052008eucas1p17befa107e104359b339c741982f698d6~KC3LooFwv1986419864eucas1p1G;
 Thu,  3 Oct 2019 05:20:08 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 95.D8.04469.805859D5; Thu,  3
 Oct 2019 06:20:08 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191003052007eucas1p2b7d112bdfa8a4b628f853035f6d4948d~KC3LTB8xH1801218012eucas1p2K;
 Thu,  3 Oct 2019 05:20:07 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191003052007eusmtrp1a3c2a7963b07bf12ceeec926499b3108~KC3LSXhiR0655106551eusmtrp1i;
 Thu,  3 Oct 2019 05:20:07 +0000 (GMT)
X-AuditID: cbfec7f2-54fff70000001175-a0-5d958508893e
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 5E.EF.04166.705859D5; Thu,  3
 Oct 2019 06:20:07 +0100 (BST)
Received: from [106.120.51.20] (unknown [106.120.51.20]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191003052007eusmtip1af482ce854d860399ddef78caa775958~KC3K3GtXv0301203012eusmtip1v;
 Thu,  3 Oct 2019 05:20:07 +0000 (GMT)
Subject: Re: [PATCH] dt-bindings: memory-controllers: exynos5422-dmc:
 Correct example syntax and memory region
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Kukjin Kim <kgene@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
From: Lukasz Luba <l.luba@partner.samsung.com>
Message-ID: <d0955b23-2111-7dbb-92ce-0a81ac417bb8@partner.samsung.com>
Date: Thu, 3 Oct 2019 07:20:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191002174401.17590-1-krzk@kernel.org>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0hTYRj2O5ftzJwcp+WLSeXoKqhZCQe0qKjYTwmhyIYuPano5trxknZb
 knlBMdK8jM0l5aVlXtZSMTNTS0xoqbTC8DqDSCR0BUU5cp5J/nt4Lt/3PPBSuKSBDKBSVBms
 RqVIkwo8iY43v60hVP49+X7nmIgxDr4jmTL7As5YrW1Cxmy3kcx4t17AVFt7Mab+4yjG5L8Y
 FB6lZM21zUhmNhUJZE8f3pA5zNuiiXOeUYlsWkoWqwk7Eu+ZXFDVTarzJJen54owLar3LkYi
 CuhDsNL0R1CMPCkJ3YSgcMKJuQQJ/QPBq/Z4XnAgsIz3oPWEZeoWyQuNCCryytzxRQQv9bWr
 cYrypdXwy7TDxfvR1RjYnA9IFy+gQ6HLdMn1kJg+BTa7WejCBL0TWm2fcRfeTJ+F5ZkBkvf4
 wHDNPOHCIjoCJmum1jw47Q8T80aMx9uhc1GPu/4CukEIf7++JvimJ6CpbxbjsS98G7IIeRwI
 I+Ulbg8H2tI697KrYC8zuD2RMDA0utYZp/dBa3cYTx+D0brhtYlAe8OnRR++gjfc7ajCeVoM
 hbclvHsvWEreuwtsgcbmSiFvkUFl4eE7KEi3YaNuwy7dhl26/xXuI8KE/NlMTpnEcuEqNjuU
 Uyi5TFVSaEK60oxWr2fEObTchX6OXehHNIWkXuLqqQq5hFRkcTnKfgQULvUTj7WuUuJERU4u
 q0mP02SmsVw/2koRUn/xFY+ZWAmdpMhgU1lWzWrWVYwSBWhR/KNN8vCI66WazsKL9sCJk98N
 g1WP8QPyOWGw8UNucHRb3JLjiyDmpuD58ciD80EODzJW2Tb6rM922jtF+1aV3bMcMrk0U9Oi
 CggynDlv1gUar5XEyAxxXbtDre2zlVHi3jwPzHdlT6+up1E/7aVsEe56MruwxMwllBekNqiz
 pASXrAgPxjWc4h8hx+1BOQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrIIsWRmVeSWpSXmKPExsVy+t/xu7rsrVNjDZo/G1rMP3KO1aL/8Wtm
 i/PnN7BbbHp8jdXi8q45bBYzzu9jslh6/SKTReveI+wOHB5r5q1h9Ni0qpPNY/OSeo/Pm+QC
 WKL0bIryS0tSFTLyi0tslaINLYz0DC0t9IxMLPUMjc1jrYxMlfTtbFJSczLLUov07RL0Mtqn
 72ItaBKquP+ok6mBcSlfFyMnh4SAicSWey2sXYxcHEICSxklun6sYYVIiElM2redHcIWlvhz
 rYsNoug1o8SKR28YQRLCAgUSjy40gyVEBGYwSXyY+YcJoqqDUWJf42ugKg4ONgE9iR2rCkEa
 eAXcJK493gQ2lUVARWL9tdvMILaoQITE4R2zGCFqBCVOznzCAmJzCphK3J15D6yGWcBMYt7m
 h1C2uMStJ/OZIGx5ie1v5zBPYBSchaR9FpKWWUhaZiFpWcDIsopRJLW0ODc9t9hQrzgxt7g0
 L10vOT93EyMwurYd+7l5B+OljcGHGAU4GJV4eGfcmxIrxJpYVlyZe4hRgoNZSYT30nqgEG9K
 YmVValF+fFFpTmrxIUZToOcmMkuJJucDIz+vJN7Q1NDcwtLQ3Njc2MxCSZy3Q+BgjJBAemJJ
 anZqakFqEUwfEwenVAOjKM+BX9peHbsvx542P502/eymze/Trz9NvO0i18RWqp8ec2uzdYj/
 wfaTiZzpujfmZVz6s37ezH1HxU4tWntshWiB0WLH/yKa7Ac7FGy5Twof9n0oFOUa/V3vceKq
 eMnAlNXcvxfyd3W9umD8ffuxr8+aHB8kbO5/8yo7iH3txA1Zb3XmvGGcrsRSnJFoqMVcVJwI
 ANL42UfEAgAA
X-CMS-MailID: 20191003052007eucas1p2b7d112bdfa8a4b628f853035f6d4948d
X-Msg-Generator: CA
X-RootMTR: 20191002174416epcas4p15c507d0c8cacfafce9b538d0b08e277f
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191002174416epcas4p15c507d0c8cacfafce9b538d0b08e277f
References: <CGME20191002174416epcas4p15c507d0c8cacfafce9b538d0b08e277f@epcas4p1.samsung.com>
 <20191002174401.17590-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_222013_261547_4CDCD099 
X-CRM114-Status: GOOD (  17.38  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Krzysztof,

On 10/2/19 7:44 PM, Krzysztof Kozlowski wrote:
> After adding the interrupt properties to Exynos5422 DMC bindings
> example, the mapped memory region must be big enough to access
> performance counters registers.
> 
> Fix also syntax errors (semicolons) and adjust indentation.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> 
> ---
> 
> Rebased on top of my for-next branch as exynos5422-dmc.txt bindings were
> applied by me.
> ---
>   .../bindings/memory-controllers/exynos5422-dmc.txt        | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/memory-controllers/exynos5422-dmc.txt b/Documentation/devicetree/bindings/memory-controllers/exynos5422-dmc.txt
> index e2434cac4858..02e4a1f862f1 100644
> --- a/Documentation/devicetree/bindings/memory-controllers/exynos5422-dmc.txt
> +++ b/Documentation/devicetree/bindings/memory-controllers/exynos5422-dmc.txt
> @@ -55,7 +55,7 @@ Example:
>   
>   	dmc: memory-controller@10c20000 {
>   		compatible = "samsung,exynos5422-dmc";
> -		reg = <0x10c20000 0x100>, <0x10c30000 0x100>,
> +		reg = <0x10c20000 0x10000>, <0x10c30000 0x10000>;
>   		clocks = <&clock CLK_FOUT_SPLL>,
>   			 <&clock CLK_MOUT_SCLK_SPLL>,
>   			 <&clock CLK_FF_DOUT_SPLL2>,
> @@ -63,7 +63,7 @@ Example:
>   			 <&clock CLK_MOUT_BPLL>,
>   			 <&clock CLK_SCLK_BPLL>,
>   			 <&clock CLK_MOUT_MX_MSPLL_CCORE>,
> -			 <&clock CLK_MOUT_MCLK_CDREX>,
> +			 <&clock CLK_MOUT_MCLK_CDREX>;
>   		clock-names = "fout_spll",
>   			      "mout_sclk_spll",
>   			      "ff_dout_spll2",
> @@ -71,10 +71,10 @@ Example:
>   			      "mout_bpll",
>   			      "sclk_bpll",
>   			      "mout_mx_mspll_ccore",
> -			      "mout_mclk_cdrex",
> +			      "mout_mclk_cdrex";
>   		operating-points-v2 = <&dmc_opp_table>;
>   		devfreq-events = <&ppmu_event3_dmc0_0>,	<&ppmu_event3_dmc0_1>,
> -				<&ppmu_event3_dmc1_0>, <&ppmu_event3_dmc1_1>;
> +				 <&ppmu_event3_dmc1_0>, <&ppmu_event3_dmc1_1>;
>   		device-handle = <&samsung_K3QF2F20DB>;
>   		vdd-supply = <&buck1_reg>;
>   		samsung,syscon-clk = <&clock>;
> 

Thank you for the patch. Indeed it must also be updated.

Reviewed-by: Lukasz Luba <l.luba@partner.samsung.com>

Regards,
Lukasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
