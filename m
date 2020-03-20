Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E452218C989
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 10:08:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eKpE28OOAdE/m2Jv9DCxiFu8wPwqmDSnuy5H4B27qIc=; b=o6lQ3TXaZDBLrrn/MM140n1I6
	v9UjsnNXsEWVcR/2QR7uoI8tz7iRqHG2CzvzuHA65nbgTDOjv4JHhsfjSRQwVZCaVGBBYipHe1wHl
	pNZFAoH1AaAkTeSXpJXRX+olEav5ibpq3wg3d+EahTi4xPIPi4CgvVkubyANNTAkiyK9DL15NFrCy
	86E72jRmMA3HFi80xzi6M4Pi9vjleFMF3spW8Zp8HH2BIbFA/H61Ff7cdxDTk/AFSqXy5GXsE/Aby
	bfiJ1LrHyFx7CFLcEA0NGE6fBsfAVvcXas+wFdyS1LU1R609rL6HLVTqhi47lJo/UphlUPw/cmVQS
	pH5HL9gug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFDdO-0006Hh-I1; Fri, 20 Mar 2020 09:08:06 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFDdD-0006DL-8k
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 09:07:56 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02K97sDA001263;
 Fri, 20 Mar 2020 04:07:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1584695274;
 bh=N8POESgNbRbRirVxkmMy0bAxBkY2aB1P4q5cc5w0mZo=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=mHza96b7BZmaVRgaeagy0y5m6jAPu+h2wV85HjMq/r3EDQJnw5EnynO5ZVLHliB2u
 c4y8uR+tzc6NS8IxObqB44szLlr3vXVzSZbACpm9vxtrxYbEjB6cZTqeOQD/OBI5xi
 khOb7mZKyJDApLNYF1OMtXAhFkYP6E2rvwv1iEbA=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02K97slN035967;
 Fri, 20 Mar 2020 04:07:54 -0500
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 20
 Mar 2020 04:07:53 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 20 Mar 2020 04:07:53 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02K97pHN012013;
 Fri, 20 Mar 2020 04:07:52 -0500
Subject: Re: [PATCH] arm64: dts: ti: k3-j721e-mcu-wakeup: Add DMA entries for
 ADC
To: Vignesh Raghavendra <vigneshr@ti.com>, Nishanth Menon <nm@ti.com>
References: <20200312121251.4582-1-vigneshr@ti.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <10d8a214-82e7-e245-7a81-70f2dd59e7df@ti.com>
Date: Fri, 20 Mar 2020 11:07:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200312121251.4582-1-vigneshr@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_020755_644417_9DACC0D9 
X-CRM114-Status: GOOD (  14.55  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
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

On 12/03/2020 14:12, Vignesh Raghavendra wrote:
> Add DMA entries for ADC nodes
> 
> Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>

Queued up for 5.7, thanks.

-Tero


> ---
>   arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
> index 16c874bfd49a..23f8a9dbb595 100644
> --- a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
> @@ -203,6 +203,9 @@ tscadc0: tscadc@40200000 {
>   		assigned-clocks = <&k3_clks 0 3>;
>   		assigned-clock-rates = <60000000>;
>   		clock-names = "adc_tsc_fck";
> +		dmas = <&main_udmap 0x7400>,
> +			<&main_udmap 0x7401>;
> +		dma-names = "fifo0", "fifo1";
>   
>   		adc {
>   			#io-channel-cells = <1>;
> @@ -219,6 +222,9 @@ tscadc1: tscadc@40210000 {
>   		assigned-clocks = <&k3_clks 1 3>;
>   		assigned-clock-rates = <60000000>;
>   		clock-names = "adc_tsc_fck";
> +		dmas = <&main_udmap 0x7402>,
> +			<&main_udmap 0x7403>;
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
