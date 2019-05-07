Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A119162AB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 13:17:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8f6ZimzBj/YXu/XBjEKZL1OwVEFZeoEnANBf1L0HZAk=; b=P0RbTJFEbJBU4t
	dhvJHuIMVgdbn7aMJVVrLJVMEJqQbCOM4rQyLwGANpB3DtGHkPL6rfx/LK/+WbqVFaI9qLkCyvc/d
	swgfcT0OtHWxByQBLTg5vJbpOQyrHDULu1fqddtR+Q8nFkNBEu0IbTVqj2UDN5XFJT+rME2yj+dui
	biibYpYsJ+/tjsh1vD4ZX+Cp34UYJYwUOHD4Muy4lVdoUDE8p2KdIpfL0o+nqM6FRZMfagdgIA3HN
	EtFGXOZ5n5c0JZ4Mx9FIMWXcsekQQ6aSaf/Ma9YixYWPD6pT+Tcyx0jyvDy+uIisXimmuP1fP5Mr5
	gVlS7kQRCM0shuWWYCtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNy67-0004JI-KC; Tue, 07 May 2019 11:17:23 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNy60-0004IX-DP; Tue, 07 May 2019 11:17:18 +0000
Received: from we0048.dip.tu-dresden.de ([141.76.176.48] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hNy5v-00084m-35; Tue, 07 May 2019 13:17:11 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: Enable SPI0 and SPI4 on Rock960
Date: Tue, 07 May 2019 13:17:10 +0200
Message-ID: <3484838.jBNMtg6mRV@phil>
In-Reply-To: <20190506120458.25842-1-manivannan.sadhasivam@linaro.org>
References: <20190506120458.25842-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_041716_602625_42CB8A94 
X-CRM114-Status: GOOD (  14.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: tom@vamrs.com, linux-kernel@vger.kernel.org, dev@vamrs.com,
 linux-rockchip@lists.infradead.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Montag, 6. Mai 2019, 14:04:57 CEST schrieb Manivannan Sadhasivam:
> Enable SPI0 and SPI4 exposed on the Low and High speed expansion
> connectors of Rock960.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-rock960.dts | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
> index 12285c51cceb..7498344d4a73 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
> @@ -114,6 +114,18 @@
>  	};
>  };
>  
> +&spi0 {
> +	/* On Low speed expansion */
> +	label = "LS-SPI0";

where does the label property come from and what does it do?
It's not part of the rockchip-spi / general-spi binding.


Heiko

> +	status = "okay";
> +};
> +
> +&spi4 {
> +	/* On High speed expansion */
> +	label = "HS-SPI1";
> +	status = "okay";
> +};
> +
>  &usbdrd_dwc3_0 {
>  	dr_mode = "otg";
>  };
> 





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
