Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59D2E18B423
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 14:08:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rGgctp7245aZzUPnuJyUY2Hi+jjjBEP7jb6J41I/C9k=; b=lnpVh/iAKwaUpuZjYwrFELWOQ
	2WLJKYxv7Z053C/st0bJnU+VBkxynI3MVoe1Ry/gyIVQMarKE+wfY+wV2CM5ujFk7H+t6j/gAONGY
	Tenrz5fVU5z1zEEsmsO6SijLZ0OO4v/Gf5pjPGCb/m0PwAX6E/sNiTQ0VPLs3Uw2Z/OU0SLV76fqy
	cL+nHWazYR4gAlvlXdPO/kz1x5Xzcu/juTd0gG+pUcNYxVZcMWwV1xt7kZuWqlKfbbIqFnMY4FTxm
	od9LuU/vSMQx3Rl+u5Hhs+z+aFFhebCfitwipJ1f+M5jbYvIiArarMRZVzjxtxYTwtp3l2YoJ1LQW
	QfUq7ggPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEuts-0006R6-1u; Thu, 19 Mar 2020 13:07:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEutj-0006QK-HF; Thu, 19 Mar 2020 13:07:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6DF1A30E;
 Thu, 19 Mar 2020 06:07:42 -0700 (PDT)
Received: from [192.168.1.123] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BAA7B3F534;
 Thu, 19 Mar 2020 06:07:37 -0700 (PDT)
Subject: Re: [RFC PATCH 2/2] phy: phy-rockchip-inno-usb2: remove support for
 rockchip, rk3366-usb2phy
To: Johan Jonker <jbx6244@gmail.com>, kishon@ti.com
References: <20200318192901.5023-1-jbx6244@gmail.com>
 <20200318192901.5023-2-jbx6244@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <233769c3-a44a-0ebd-7a2c-6fab17fb56f2@arm.com>
Date: Thu, 19 Mar 2020 13:07:26 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200318192901.5023-2-jbx6244@gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_060743_664824_9CEEF69C 
X-CRM114-Status: GOOD (  18.45  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Johan,

On 2020-03-18 7:29 pm, Johan Jonker wrote:
> 'phy-rockchip-inno-usb2.txt' is updated to yaml, whereby
> the compatible string 'rockchip,rk3366-usb2phy' was removed,
> because it's not in use by a dts file, so remove support
> in the code as well.

Here's a DT using it:

https://github.com/rockchip-linux/kernel/blob/develop-4.4/arch/arm64/boot/dts/rockchip/rk3366.dtsi#L820

Please note that although DT bindings happen to be primarily maintained 
in the upstream kernel tree at the moment, it is mostly as a consequence 
of Linux being the source of most active development. Bindings should 
not be considered to be "owned" by upstream Linux since there are many 
other consumers, both downstream, and in completely different projects 
like the BSDs. As far as I'm aware there is still a long-term plan to 
eventually flip the switch and move maintenance to a standalone repo:

https://git.kernel.org/pub/scm/linux/kernel/git/devicetree/devicetree-rebasing.git

Things like PCI Device IDs and ACPI HIDs aren't even documented as 
formally as DT bindings, so by the reasoning here we could arguably 
delete the majority of drivers from the kernel...

Robin.

> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>   drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 20 --------------------
>   1 file changed, 20 deletions(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> index 680cc0c88..dcdb5589b 100644
> --- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> +++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> @@ -1299,25 +1299,6 @@ static const struct rockchip_usb2phy_cfg rk3328_phy_cfgs[] = {
>   	{ /* sentinel */ }
>   };
>   
> -static const struct rockchip_usb2phy_cfg rk3366_phy_cfgs[] = {
> -	{
> -		.reg = 0x700,
> -		.num_ports	= 2,
> -		.clkout_ctl	= { 0x0724, 15, 15, 1, 0 },
> -		.port_cfgs	= {
> -			[USB2PHY_PORT_HOST] = {
> -				.phy_sus	= { 0x0728, 15, 0, 0, 0x1d1 },
> -				.ls_det_en	= { 0x0680, 4, 4, 0, 1 },
> -				.ls_det_st	= { 0x0690, 4, 4, 0, 1 },
> -				.ls_det_clr	= { 0x06a0, 4, 4, 0, 1 },
> -				.utmi_ls	= { 0x049c, 14, 13, 0, 1 },
> -				.utmi_hstdet	= { 0x049c, 12, 12, 0, 1 }
> -			}
> -		},
> -	},
> -	{ /* sentinel */ }
> -};
> -
>   static const struct rockchip_usb2phy_cfg rk3399_phy_cfgs[] = {
>   	{
>   		.reg		= 0xe450,
> @@ -1426,7 +1407,6 @@ static const struct of_device_id rockchip_usb2phy_dt_match[] = {
>   	{ .compatible = "rockchip,px30-usb2phy", .data = &rk3328_phy_cfgs },
>   	{ .compatible = "rockchip,rk3228-usb2phy", .data = &rk3228_phy_cfgs },
>   	{ .compatible = "rockchip,rk3328-usb2phy", .data = &rk3328_phy_cfgs },
> -	{ .compatible = "rockchip,rk3366-usb2phy", .data = &rk3366_phy_cfgs },
>   	{ .compatible = "rockchip,rk3399-usb2phy", .data = &rk3399_phy_cfgs },
>   	{ .compatible = "rockchip,rv1108-usb2phy", .data = &rv1108_phy_cfgs },
>   	{}
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
