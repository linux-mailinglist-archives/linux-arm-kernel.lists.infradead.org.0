Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A27A9EAFA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 16:29:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=49QB6Mub1UvSRVnfsd1jDCpn7eHlbVyXlJMGLbgJ5Ww=; b=At+jgmAlv4vB8c
	ETQ0z5gp9f/fcf2MN5r4Kwc1enbxRfltnqY6InR65TAG3WlKnAFs3P6DXTjfpBF5GgCI5o2/lbXei
	l4abrHLXRPPhRwc+1toMYwnmFVSONZ5CpNFMQbRjXkdXC67yGQLjyeoJz0ftI1ud+a+pqfqapYNyN
	AkJbRgl/2/gJ7G56OqsYPiSStQ3XWF10Py8q5xUQzyZzNPw16PFpJxpC9HY061MIguLZP6LZ3RruK
	i5FCGCQu/2jXvHA5I07z4qC1PzFjdORQvgZ88r0vFZYmYP48e/RLm+mCI06BFgCJ7w42qIOhzqZoU
	WOznffbUCSGU6IpZgEGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2cSv-0006ye-ME; Tue, 27 Aug 2019 14:28:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2cSk-0006xP-Ta; Tue, 27 Aug 2019 14:28:48 +0000
Received: from c-73-71-116-68.hsd1.ca.comcast.net ([73.71.116.68]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1i2cSP-0002Ds-GB; Tue, 27 Aug 2019 16:28:25 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Elon Zhang <zhangzj@rock-chips.com>
Subject: Re: [PATCH v1 1/1] ARM: dts: rockchip: set crypto default disabled on
 rk3288
Date: Tue, 27 Aug 2019 16:28:21 +0200
Message-ID: <4806912.UyKsYhR33o@phil>
In-Reply-To: <20190827071439.14767-1-zhangzj@rock-chips.com>
References: <20190827071439.14767-1-zhangzj@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_072847_162759_C0BD1273 
X-CRM114-Status: GOOD (  16.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Am Dienstag, 27. August 2019, 09:14:39 CEST schrieb Elon Zhang:
> Not every board needs to enable crypto node, so the node should
> be set default disabled in rk3288.dtsi and enabled in specific
> board dts file.

Can you give a bit more rationale here? There would need to be a very
specific reason because of the following:

The crypto module is not wired to some board-specific components,
so its usability does not depend on the specific board at all.
Instead every board can just use it out of the box and the devicetree
is supposed to describe the hardware and is _not_ meant as a space
for user configuration.

So in fact the status property should probably go away completely from
the crypto node, as it's usable out of the box in all cases.


Heiko



> Signed-off-by: Elon Zhang <zhangzj@rock-chips.com>
> ---
>  arch/arm/boot/dts/rk3288.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
> index cc893e154fe5..d509aa24177c 100644
> --- a/arch/arm/boot/dts/rk3288.dtsi
> +++ b/arch/arm/boot/dts/rk3288.dtsi
> @@ -984,7 +984,7 @@
>  		clock-names = "aclk", "hclk", "sclk", "apb_pclk";
>  		resets = <&cru SRST_CRYPTO>;
>  		reset-names = "crypto-rst";
> -		status = "okay";
> +		status = "disabled";
>  	};
>  
>  	iep_mmu: iommu@ff900800 {
> 





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
