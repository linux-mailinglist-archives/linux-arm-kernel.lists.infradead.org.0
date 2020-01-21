Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED65714400B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 15:57:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lz9rAHyp35KqUPCrcmRNprcfxw8mtZnF6jOFRqxn6YI=; b=W5YrbFrsO/rHVqJiiSmtVEJR6
	yXG2aF4xsmIPxkirjbvzM/LjlZNXwsad4ltHpkG6K9fpwrn2uBuPprMc41+rkcQCfSHxG1sLAypQq
	vz6nXREq/JqARgWuyMhCprB7Q+honMYQsdhcvGi12Cy4ymGCLEFcEiV1PWjeM2wp3lSvGGu3xMob0
	33Yx9RI0SwdS+FY4TQB3lFM2PYZZ5F528s8KrGKtwTxFlhv3QB5uDzb89NQOLkZj/OJtV2zqNg5Vi
	F8w560k0guGTrVDqHimKO6B1GNCBeXoORXP6co5jNKjb3hH4YW9kuOV43qjliYnfVzIAH2qYj396x
	m+4K2ZgSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ituxs-0001PP-SK; Tue, 21 Jan 2020 14:57:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ituxh-0001MA-FQ; Tue, 21 Jan 2020 14:57:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C0F0330E;
 Tue, 21 Jan 2020 06:57:00 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D725C3F52E;
 Tue, 21 Jan 2020 06:56:59 -0800 (PST)
Subject: Re: [PATCH] arm64: dts: rockchip: fix px30 lvds ports
To: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
References: <20200121134510.3893487-1-heiko@sntech.de>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <1cd15d49-3c4f-6da2-4d4f-0414dd6d6adc@arm.com>
Date: Tue, 21 Jan 2020 14:56:58 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200121134510.3893487-1-heiko@sntech.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_065701_575808_748AD72F 
X-CRM114-Status: GOOD (  17.69  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 christoph.muellner@theobroma-systems.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, miquel.raynal@bootlin.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 21/01/2020 1:45 pm, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> The lvds controller has two ports. port@0 for the connection
> to the display controller(s) and port@1 for the connection to
> the panel, so should have a ports node covering the port@x nodes.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> ---
>   arch/arm64/boot/dts/rockchip/px30.dtsi | 23 ++++++++++++++---------
>   1 file changed, 14 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
> index 9b1c92132007..37e014444214 100644
> --- a/arch/arm64/boot/dts/rockchip/px30.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
> @@ -421,19 +421,24 @@ lvds: lvds {
>   			rockchip,output = "lvds";
>   			status = "disabled";

FWIW, the main node's "#{address,size}-cells" properties above here 
should now be unnecessary too.

Robin.

>   
> -			port@0 {
> -				reg = <0>;
> +			ports {
>   				#address-cells = <1>;
>   				#size-cells = <0>;
>   
> -				lvds_vopb_in: endpoint@0 {
> +				port@0 {
>   					reg = <0>;
> -					remote-endpoint = <&vopb_out_lvds>;
> -				};
> -
> -				lvds_vopl_in: endpoint@1 {
> -					reg = <1>;
> -					remote-endpoint = <&vopl_out_lvds>;
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +
> +					lvds_vopb_in: endpoint@0 {
> +						reg = <0>;
> +						remote-endpoint = <&vopb_out_lvds>;
> +					};
> +
> +					lvds_vopl_in: endpoint@1 {
> +						reg = <1>;
> +						remote-endpoint = <&vopl_out_lvds>;
> +					};
>   				};
>   			};
>   		};
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
