Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C0F018C986
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 10:07:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TBz3whP4gTXKXzYSbG7VKGDQOE5+ffLJXByHTdaPY2c=; b=j+tFzC+8y81vKiPmKST74zZEh
	mOHX/vREnf6vv/Yt5gF8Q5Jjs6Zgp0lb4VRII4/Tw/++7WLxTeauxdaCK4jWMPj8Sdo4wLnh2Pua+
	uipq2cJgD7aaXNSUpGMKcqpGFmQvJF8fI1Dlrn2PPOw/W2MgFnUz9cW5+EBykGXCS+3kAoUOyohr1
	lioDmGcgaB8c6wuNN/+qtel6G/33MQaPgNOn0nWIL2OCrTl9xuy1Umme65mlCdaKQp3fxEzBrjFtQ
	tk5KY6s9VjnIDENTEa0IECXRRpBufU7smHTd+QbzhqI331KaVubU10W8nLXC1Sv+qRjp4p/mDuVAe
	ZTk42mcGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFDd2-0005z6-Lv; Fri, 20 Mar 2020 09:07:44 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFDcr-0005yU-1F
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 09:07:34 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02K97UAp059436;
 Fri, 20 Mar 2020 04:07:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1584695250;
 bh=CA60fAxu2Om4P8TmIH8kKHYbjd79oYciPDz/3lq0gVE=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=W6a345w/oxVR7BQ8Mx0nAraxljHK6q8mHoD8zIYbYNlYknE8IriFVfvpsnYlqX17d
 XH5cN29zm5HNH00+fvkguper0jBs6gWRXdEvh8sKWEtQRK89w9T6cCs8u75xyshlpz
 64p4ysc4gKlPFdz9REjFgD9hiuQS+SqbWuHLjRvQ=
Received: from DLEE110.ent.ti.com (dlee110.ent.ti.com [157.170.170.21])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 02K97UqX093926
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 20 Mar 2020 04:07:30 -0500
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 20
 Mar 2020 04:07:29 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 20 Mar 2020 04:07:29 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02K97QNc085215;
 Fri, 20 Mar 2020 04:07:27 -0500
Subject: Re: [PATCH 2/2] arm64: dts: ti: k3-am65-mcu: Add DMA entries for ADC
To: Vignesh Raghavendra <vigneshr@ti.com>, Nishanth Menon <nm@ti.com>
References: <20200312092823.21587-1-vigneshr@ti.com>
 <20200312092823.21587-2-vigneshr@ti.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <5b1703e1-b1af-6436-3e46-34e27f7c8ada@ti.com>
Date: Fri, 20 Mar 2020 11:07:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200312092823.21587-2-vigneshr@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_020733_154148_5EAFB02B 
X-CRM114-Status: GOOD (  14.81  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/03/2020 11:28, Vignesh Raghavendra wrote:
> Add DMA entries for ADC nodes
> 
> Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>

Queued both patches towards 5.7, thanks.

-Tero

> ---
>   arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi b/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi
> index 92629cbdc184..e85498f0dd05 100644
> --- a/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi
> @@ -82,6 +82,9 @@ tscadc0: tscadc@40200000 {
>   		assigned-clocks = <&k3_clks 0 2>;
>   		assigned-clock-rates = <60000000>;
>   		clock-names = "adc_tsc_fck";
> +		dmas = <&mcu_udmap 0x7100>,
> +			<&mcu_udmap 0x7101 >;
> +		dma-names = "fifo0", "fifo1";
>   
>   		adc {
>   			#io-channel-cells = <1>;
> @@ -97,6 +100,9 @@ tscadc1: tscadc@40210000 {
>   		assigned-clocks = <&k3_clks 1 2>;
>   		assigned-clock-rates = <60000000>;
>   		clock-names = "adc_tsc_fck";
> +		dmas = <&mcu_udmap 0x7102>,
> +			<&mcu_udmap 0x7103>;
> +		dma-names = "fifo0", "fifo1";
>   
>   		adc {
>   			#io-channel-cells = <1>;
> 

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
