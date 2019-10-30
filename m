Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60EBBE98F4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 10:12:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mKboQIe0fhCytyOqkWh4CxIeh+AZrgWYcEMxM4cXmZk=; b=rrQ17slEne+OCAtr1o4y1sxhs
	0peE5WaD2qJwzNeKoHK0Bpd6wsxWzzLnRksz6RiCLbqBjR89UJ976qMrE0D9KfRUa2FnCU0M470jn
	JyDhFAA1XGWfvjXPbF0RPf07HRPwAXic5OqdlnN24ftTmU5G7BMDFmK7wkgtBY3EPaAT6Ejdnt3vE
	X8qnTaoxRLNmN+BC6XwS5yE+64P16G6H1HlCQzB7xEo/3bFlg/hrpUHzbgUYCOAYUgf7S7kp2DyAz
	n6tkvtr/YH433H7Vb55HkDNLZViTi4wFzsLpq07s959QAhgFgNz2kLa6Nt+3/1SIkwUXr7En8PvIi
	ii4WQ9hnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPk26-0001a9-DY; Wed, 30 Oct 2019 09:12:50 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPk1w-0001Z8-J0
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 09:12:42 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id A2F42984BC1C39FDC845;
 Wed, 30 Oct 2019 17:12:34 +0800 (CST)
Received: from [127.0.0.1] (10.57.101.250) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.439.0; Wed, 30 Oct 2019
 17:12:33 +0800
Subject: Re: [PATCH] arm64: dts: hisilicon: Add Mali-450 MP4 GPU DT entry
To: John Stultz <john.stultz@linaro.org>, lkml <linux-kernel@vger.kernel.org>
References: <20191001183535.70835-1-john.stultz@linaro.org>
From: Wei Xu <xuwei5@hisilicon.com>
Message-ID: <5DB95401.2000609@hisilicon.com>
Date: Wed, 30 Oct 2019 17:12:33 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <20191001183535.70835-1-john.stultz@linaro.org>
X-Originating-IP: [10.57.101.250]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_021240_819699_2BFF67D2 
X-CRM114-Status: GOOD (  13.72  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Peter Griffin <peter.griffin@linaro.org>,
 Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2019/10/2 2:35, John Stultz wrote:
> From: Peter Griffin <peter.griffin@linaro.org>
>
> hi6220 has a Mali450 MP4 so lets add it into the DT.
>
> Cc: Wei Xu <xuwei5@hisilicon.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> Signed-off-by: John Stultz <john.stultz@linaro.org>

Thanks!
Applied to the hisilicon arm64 dt tree.

Best Regards,
Wei

> ---
>   arch/arm64/boot/dts/hisilicon/hi6220.dtsi | 38 +++++++++++++++++++++++
>   1 file changed, 38 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/hisilicon/hi6220.dtsi b/arch/arm64/boot/dts/hisilicon/hi6220.dtsi
> index 108e2a4227f6..2072b637b5af 100644
> --- a/arch/arm64/boot/dts/hisilicon/hi6220.dtsi
> +++ b/arch/arm64/boot/dts/hisilicon/hi6220.dtsi
> @@ -260,6 +260,7 @@
>   			compatible = "hisilicon,hi6220-aoctrl", "syscon";
>   			reg = <0x0 0xf7800000 0x0 0x2000>;
>   			#clock-cells = <1>;
> +			#reset-cells = <1>;
>   		};
>   
>   		sys_ctrl: sys_ctrl@f7030000 {
> @@ -1021,6 +1022,43 @@
>   			clock-names = "apb_pclk";
>   			cpu = <&cpu7>;
>   		};
> +
> +		mali: gpu@f4080000 {
> +			compatible = "hisilicon,hi6220-mali", "arm,mali-450";
> +			reg = <0x0 0xf4080000 0x0 0x00040000>;
> +			interrupt-parent = <&gic>;
> +			interrupts =	<GIC_PPI 126 IRQ_TYPE_LEVEL_HIGH>,
> +					<GIC_PPI 126 IRQ_TYPE_LEVEL_HIGH>,
> +					<GIC_PPI 126 IRQ_TYPE_LEVEL_HIGH>,
> +					<GIC_PPI 126 IRQ_TYPE_LEVEL_HIGH>,
> +					<GIC_PPI 126 IRQ_TYPE_LEVEL_HIGH>,
> +					<GIC_PPI 126 IRQ_TYPE_LEVEL_HIGH>,
> +					<GIC_PPI 126 IRQ_TYPE_LEVEL_HIGH>,
> +					<GIC_PPI 126 IRQ_TYPE_LEVEL_HIGH>,
> +					<GIC_PPI 126 IRQ_TYPE_LEVEL_HIGH>,
> +					<GIC_PPI 126 IRQ_TYPE_LEVEL_HIGH>,
> +					<GIC_PPI 126 IRQ_TYPE_LEVEL_HIGH>;
> +
> +			interrupt-names = "gp",
> +					  "gpmmu",
> +					  "pp",
> +					  "pp0",
> +					  "ppmmu0",
> +					  "pp1",
> +					  "ppmmu1",
> +					  "pp2",
> +					  "ppmmu2",
> +					  "pp3",
> +					  "ppmmu3";
> +			clocks = <&media_ctrl HI6220_G3D_CLK>,
> +				 <&media_ctrl HI6220_G3D_PCLK>;
> +			clock-names = "core", "bus";
> +			assigned-clocks = <&media_ctrl HI6220_G3D_CLK>,
> +					  <&media_ctrl HI6220_G3D_PCLK>;
> +			assigned-clock-rates = <500000000>, <144000000>;
> +			reset-names = "ao_g3d", "media_g3d";
> +			resets = <&ao_ctrl AO_G3D>, <&media_ctrl MEDIA_G3D>;
> +		};
>   	};
>   };
>   



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
