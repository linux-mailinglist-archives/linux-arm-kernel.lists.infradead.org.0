Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3673418C982
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 10:07:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=V4iL4qH7o1RHDnCSyg0Mzdf9httbFTyrtWGga/VlUw8=; b=MrLyaRN8Oi00i4NIcOrutm0pt
	q5uAxJpqOMfC1Mb39OI1OouamtTC0yjTzXno0IHwWasCAwdAIkhfzf5Oj8YYwmmxuSoUCfSm6uO4S
	F8dZR9OPj/vgCaHuRg5lvdKeiKSqn44WFXx1cdRyUfB3gMUTw/LHpKcLy2B5IcKFPKaVctuSXUXyZ
	ctdpRx4RY4AU4JQTvaDm3v1GqoD/xNBBu9AXGjHlDGcUQEDzbS5xGuYSTPcWuvi9pguQiL7ad4HES
	pllfR+yfulPA0H/f9xzJKFp7Y7nmfrdY1F+tSbXU6PkcnRM8zMvh36UHnhDgkl6ZxBqnbjatmDXaQ
	iSCQdIzkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFDcZ-0005kv-He; Fri, 20 Mar 2020 09:07:15 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFDcR-0005kQ-Dx
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 09:07:08 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02K9749f001160;
 Fri, 20 Mar 2020 04:07:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1584695224;
 bh=Utp2bYw61RXYVAOCnJQvVihm8BNTybfuAKiMIT8R1Z4=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=Sl4jeNcX4+ZPpF6DMIQR3I+jARl4W9KcDQ6lG32NW6KQ9aK+kOrjBCg+xsTyVaTlL
 d9wN6hHlSsOAn8gzsN0hrgAAdQI7LEbaU4mcHy0E7cZV++UrUgJrFINq4a5YwSBV9R
 rBPVSxQfRMTXjZcDGxZXXoZl+3bnGUpxb8ZKhTqI=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02K974bl035172;
 Fri, 20 Mar 2020 04:07:04 -0500
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 20
 Mar 2020 04:07:04 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 20 Mar 2020 04:07:04 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02K970g2086730;
 Fri, 20 Mar 2020 04:07:02 -0500
Subject: Re: [PATCH] arm64: dts: ti: k3-am65: Add clocks to dwc3 nodes
To: Roger Quadros <rogerq@ti.com>
References: <20200311144111.7112-1-rogerq@ti.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <3dcb6199-2276-7aa5-2857-1208f8024b56@ti.com>
Date: Fri, 20 Mar 2020 11:07:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200311144111.7112-1-rogerq@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_020707_550133_FD809047 
X-CRM114-Status: GOOD (  15.70  )
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
Cc: nm@ti.com, devicetree@vger.kernel.org, d-gerlach@ti.com, nsekhar@ti.com,
 linux-kernel@vger.kernel.org, stable@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/03/2020 16:41, Roger Quadros wrote:
> From: Dave Gerlach <d-gerlach@ti.com>
> 
> The TI sci-clk driver can scan the DT for all clocks provided by system
> firmware and does this by checking the clocks property of all nodes, so
> we must add this to the dwc3 nodes so USB clocks are available.
> 
> Without this USB does not work with latest system firmware i.e.
> [    1.714662] clk: couldn't get parent clock 0 for /interconnect@100000/dwc3@4020000
> 
> Fixes: cc54a99464ccd ("arm64: dts: ti: k3-am6: add USB suppor")
> Signed-off-by: Dave Gerlach <d-gerlach@ti.com>
> Signed-off-by: Roger Quadros <rogerq@ti.com>
> Cc: stable@kernel.org
> ---

Queued up towards 5.7, thanks.

-Tero

>   arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> index e5df20a2d2f9..d86c5c7b82fc 100644
> --- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> @@ -296,6 +296,7 @@
>   		interrupts = <GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH>;
>   		dma-coherent;
>   		power-domains = <&k3_pds 151 TI_SCI_PD_EXCLUSIVE>;
> +		clocks = <&k3_clks 151 2>, <&k3_clks 151 7>;
>   		assigned-clocks = <&k3_clks 151 2>, <&k3_clks 151 7>;
>   		assigned-clock-parents = <&k3_clks 151 4>,	/* set REF_CLK to 20MHz i.e. PER0_PLL/48 */
>   					 <&k3_clks 151 9>;	/* set PIPE3_TXB_CLK to CLK_12M_RC/256 (for HS only) */
> @@ -335,6 +336,7 @@
>   		interrupts = <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
>   		dma-coherent;
>   		power-domains = <&k3_pds 152 TI_SCI_PD_EXCLUSIVE>;
> +		clocks = <&k3_clks 152 2>;
>   		assigned-clocks = <&k3_clks 152 2>;
>   		assigned-clock-parents = <&k3_clks 152 4>;	/* set REF_CLK to 20MHz i.e. PER0_PLL/48 */
>   
> 

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
