Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C306633294
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 16:45:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W1HdKtsoWlYeL/ocSQ7AyhG7KZK0BpXuju22rsHpsPw=; b=CV9RsbQetI8TAl
	KWJDrBktUG++tHFdGaCni2svItPE9d/5GcFhpZQRUOgTDpNnAbJRc+vfguw8DNsgSFqIN0mjA7f9D
	qF63BjOuJZscmNRtCY3WZRFBEFRfqwme7Yo0/CsB2hAeUNPS5erJRrxs5LhHaJQJavdWzdeAtX8qz
	9UlyGZ3kG1yES/wWlq8egui378BRmu+EwmK+YiS15ZiqmpwfqkU4w907xA4GvPk6gWQHgHRFjwJ70
	4eqfeJjXtrcNmxlRwpEbdE/6KDqcGDtJEwFkwAgYLLG7Qi6yu+hVEmxU+iIJvk/xx0dA+NRhgxHNo
	0UlbIwEcRAdoB9ZJwNoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXoCt-0004Te-VZ; Mon, 03 Jun 2019 14:45:03 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXoCm-0004TA-3Q; Mon, 03 Jun 2019 14:44:57 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 5A81B28A185
Message-ID: <435028daafebcf23425dd5b9338dc3126fac8b89.camel@collabora.com>
Subject: Re: [PATCH] arm64: dts: rockchip: fix isp iommu clocks and power
 domain
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Helen Koike <helen.koike@collabora.com>, 
 linux-rockchip@lists.infradead.org
Date: Mon, 03 Jun 2019 11:44:43 -0300
In-Reply-To: <20190603142214.24686-1-helen.koike@collabora.com>
References: <20190603142214.24686-1-helen.koike@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.30.5-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_074456_269139_6C59F68D 
X-CRM114-Status: GOOD (  16.31  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Heiko Stuebner <heiko@sntech.de>, Tony Xie <tony.xie@rock-chips.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, Randy Li <ayaka@soulik.info>,
 linux-kernel@vger.kernel.org, Vicente Bergas <vicencb@gmail.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Klaus Goger <klaus.goger@theobroma-systems.com>,
 laurent.pinchart@ideasonboard.com, manivannan.sadhasivam@linaro.org,
 Matthias Brugger <matthias.bgg@gmail.com>, kernel@collabora.com,
 linux-arm-kernel@lists.infradead.org,
 Christoph Muellner <christoph.muellner@theobroma-systems.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-06-03 at 11:22 -0300, Helen Koike wrote:
> isp iommu requires wrapper variants of the clocks.
> noc variants are always on and using the wrapper variants will activate
> {A,H}CLK_ISP{0,1} due to the hierarchy.
> 
> Also add the respective power domain.
> 
> Refer:
>  RK3399 TRM v1.4 Fig. 2-4 RK3399 Clock Architecture Diagram
>  RK3399 TRM v1.4 Fig. 8-1 RK3399 Power Domain Partition
> 
> Signed-off-by: Helen Koike <helen.koike@collabora.com>
> 
> ---
> Hello,
> 
> I tested this using the isp patch set (which is not upstream
> yet). Without this patch, streaming from the isp stalls.
> 
> I'm also enabling the power domain and removing the disable status,
> please let me know if this should be done in a separated patch.
> 

I think you might want to put the comments about enabling power domain
and removing disable status on the commit log. It's useful information :-)

Thanks,
Eze

> Thanks
> Helen
> 
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index 196ac9b78076..89594a7276f4 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -1706,11 +1706,11 @@
>  		reg = <0x0 0xff914000 0x0 0x100>, <0x0 0xff915000 0x0 0x100>;
>  		interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH 0>;
>  		interrupt-names = "isp0_mmu";
> -		clocks = <&cru ACLK_ISP0_NOC>, <&cru HCLK_ISP0_NOC>;
> +		clocks = <&cru ACLK_ISP0_WRAPPER>, <&cru HCLK_ISP0_WRAPPER>;
>  		clock-names = "aclk", "iface";
>  		#iommu-cells = <0>;
> +		power-domains = <&power RK3399_PD_ISP0>;
>  		rockchip,disable-mmu-reset;
> -		status = "disabled";
>  	};
>  
>  	isp1_mmu: iommu@ff924000 {
> @@ -1718,11 +1718,11 @@
>  		reg = <0x0 0xff924000 0x0 0x100>, <0x0 0xff925000 0x0 0x100>;
>  		interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH 0>;
>  		interrupt-names = "isp1_mmu";
> -		clocks = <&cru ACLK_ISP1_NOC>, <&cru HCLK_ISP1_NOC>;
> +		clocks = <&cru ACLK_ISP1_WRAPPER>, <&cru HCLK_ISP1_WRAPPER>;
>  		clock-names = "aclk", "iface";
>  		#iommu-cells = <0>;
> +		power-domains = <&power RK3399_PD_ISP1>;
>  		rockchip,disable-mmu-reset;
> -		status = "disabled";
>  	};
>  
>  	hdmi_sound: hdmi-sound {



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
