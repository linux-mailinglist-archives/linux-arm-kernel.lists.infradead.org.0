Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F951DCC62
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 13:49:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6CW3NRuCZPHG14TKIEWebLiOcPDqOj9Yu3NQtunnGgc=; b=SktrC5akY+3R2Jk3iyYamsy0Z
	SVknEoIP9KuG97c/Ev3xptARR6kgVuqbHfEnSn6TGhjp94ch7rt+/S7A2AcdiZktlc61YxMK8y947
	C860RvQSRfr8kC53vQ/sI++AWtNlwmqWqyIEDC/C5z68vvkOsb2oyAJIk9/jwUUWqCjVSjiM3uqiQ
	IabnmEhQE8dcPVIWkcv1qYDCfd6/k+rF2OOfnseSSxaCv6T1izI6C8LySGhhjkcDcwdnaJroe/kGK
	w0qH8GT0kalc3caD79m4+3T5N9Y7N0hWGujUFE+ceztPnEn2KBSJdccCmM+0iDqGL9D7rvTqx9Csz
	x6cRlF0VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbjh7-0002xP-AQ; Thu, 21 May 2020 11:49:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbjgx-0002wV-0a; Thu, 21 May 2020 11:48:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A938E30E;
 Thu, 21 May 2020 04:48:48 -0700 (PDT)
Received: from [10.57.0.164] (unknown [10.57.0.164])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6C46A3F52E;
 Thu, 21 May 2020 04:48:47 -0700 (PDT)
Subject: Re: [RFC PATCH] arm64: dts: rockchip: fix dmas dma-names for rk3308
 i2s node
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de
References: <20200520064816.3954-1-jbx6244@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <543270ad-dd11-2bd4-8959-e898834c19e5@arm.com>
Date: Thu, 21 May 2020 12:48:42 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200520064816.3954-1-jbx6244@gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_044851_097600_F2A76F7A 
X-CRM114-Status: GOOD (  19.93  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-05-20 07:48, Johan Jonker wrote:
> One of the current rk3308 'i2s' nodes has a different dma layout
> with only 1 item. Table 9-2 DMAC1 Request Mapping Table shows that
> there 2 dma sources available, so fix the dmas and dma-names
> for the rk3308 'i2s' node.
> 
> 10 I2S/PCM_2CH_1 tx High level
> 11 I2S/PCM_2CH_1 rx High level

...however table 1-5 in the same manual (at least that I could find) 
says request 10 is reserved. Does that mean it was intended to be wired 
up for this, but ended up broken for some reason?

Do you have hardware to confirm whether this works reliably or not?

Robin.

> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>   arch/arm64/boot/dts/rockchip/rk3308.dtsi | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
> index ac7f69407..79c1dd1fe 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
> @@ -564,8 +564,8 @@
>   		interrupts = <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>;
>   		clocks = <&cru SCLK_I2S1_2CH>, <&cru HCLK_I2S1_2CH>;
>   		clock-names = "i2s_clk", "i2s_hclk";
> -		dmas = <&dmac1 11>;
> -		dma-names = "rx";
> +		dmas = <&dmac1 10>, <&dmac1 11>;
> +		dma-names = "tx", "rx";
>   		resets = <&cru SRST_I2S1_2CH_M>, <&cru SRST_I2S1_2CH_H>;
>   		reset-names = "reset-m", "reset-h";
>   		status = "disabled";
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
