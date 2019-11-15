Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5950AFE4B4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 19:15:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hEa1wg3JouJaHeOYpcSnzs2lk+NDZf75BkPk0hJjAh0=; b=aUWrc6BvUTrg5x
	KGT4TSgZxiz6oUrRykr8FDqB9mamZsOuHY7Hf2erBScPLo1vYZOpI7exYseLSUxhKZT3TjyoF7HMB
	xD8I4SLJ3PbYBz/h4krbRiDmfpThvLM+DQJyLpD8pjkQibark+8QdWKJz6/1eVG6F22gGpyHQnJgc
	1IIJLUjgpfowkTqTP0HXpeUoD+vAbqd//Kc0ui3ViqXJ/1wL8x4/lyQ4u7MosZCmvQtByVW+N5vRH
	B7wTkYYxUGEnnv5sNiJM4xkOIbzwtostNwz6bNoqLQqhFtjbtHgGxylEWDi/z302GDYPm3sFbQVU3
	Q/JHw8plmfU3RHvGymRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVg7V-0001cR-JG; Fri, 15 Nov 2019 18:14:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVg7L-0001bi-OE; Fri, 15 Nov 2019 18:14:51 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iVg7B-0001eB-99; Fri, 15 Nov 2019 19:14:37 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: "Matwey V. Kornilov" <matwey@sai.msu.ru>
Subject: Re: [PATCH] arm64: dts: rockchip: Enable PCIe for Radxa Rock Pi 4
 board
Date: Fri, 15 Nov 2019 19:14:36 +0100
Message-ID: <1708909.MJzrS8JzXa@diego>
In-Reply-To: <20191115180825.10526-1-matwey@sai.msu.ru>
References: <20191115180825.10526-1-matwey@sai.msu.ru>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_101449_906471_D256E70A 
X-CRM114-Status: GOOD (  14.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 matwey.kornilov@gmail.com, Akash Gajjar <akash@openedev.com>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Matwey,

Am Freitag, 15. November 2019, 19:08:21 CET schrieb Matwey V. Kornilov:
> Radxa Rock Pi 4 is equipped with M.2 PCIe slot,
> so enable PCIe for the board.
> 
> The changes has been tested with Intel SSD 660p series device.
> 
>     01:00.0 Class 0108: Device 8086:f1a8 (rev 03)
> 
> Signed-off-by: Matwey V. Kornilov <matwey@sai.msu.ru>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts
> index 1ae1ebd4efdd..9c2927faba41 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts
> @@ -463,6 +463,20 @@
>  	pmu1830-supply = <&vcc_3v0>;
>  };
>  
> +&pcie_phy {
> +	status = "okay";
> +};
> +
> +&pcie0 {
> +	status = "okay";
> +
> +	ep-gpios = <&gpio4 RK_PD3 GPIO_ACTIVE_HIGH>;
> +	num-lanes = <4>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie_clkreqnb_cpm>;
> +	max-link-speed = <2>;

the RockPi schematics should be available, so could you also check
the supply regulators and add them please?

Thanks
Heiko


> +};
> +
>  &pinctrl {
>  	bt {
>  		bt_enable_h: bt-enable-h {
> 





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
