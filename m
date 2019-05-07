Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F3AB162B2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 13:22:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gagN6W5Y7oDiYmeIjAzc+hBXV1IhK88QaqYocU8XYPs=; b=JmvoJDtIgpNFU/
	fCM1SVF5ObVaCJa+VbXlITWOdkOhYG4V8X6SkGVDKFhm+zBJB9ZwGpH3s5guj+AiiMY3rjoV4CTKB
	ZPERzMHG0YOvsVNt5qstRN8OUEeBHNKD3uJXcTN2TOU1MWkcD9RgFscUq+9aRPd/5CEsXM+KYOxzY
	HiQSpWcKECfYej2ougwcoJLBkdF200kGIDY4k0SENWCGNQj6EPkbdbRYmTPU9RkpLH+4UvURXX4Ht
	98Y6a39SaSBw71V6gAhZ8DuVVMqK1A5bepWTT5lR9HpMUtWHBJaHPOWH+x1ANLw0iTIbL7kiDfrR+
	qUFGvyUdadIM5z2gSagA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNyAm-00067x-Ol; Tue, 07 May 2019 11:22:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNyAf-00067b-Vt; Tue, 07 May 2019 11:22:07 +0000
Received: from we0048.dip.tu-dresden.de ([141.76.176.48] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hNyAe-00085l-3B; Tue, 07 May 2019 13:22:04 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Enable SPI1 on Ficus
Date: Tue, 07 May 2019 13:22:03 +0200
Message-ID: <2127870.SxaTtWf5LP@phil>
In-Reply-To: <20190506120458.25842-2-manivannan.sadhasivam@linaro.org>
References: <20190506120458.25842-1-manivannan.sadhasivam@linaro.org>
 <20190506120458.25842-2-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_042206_170665_9AA032E4 
X-CRM114-Status: GOOD (  13.61  )
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

Am Montag, 6. Mai 2019, 14:04:58 CEST schrieb Manivannan Sadhasivam:
> Enable SPI1 exposed on both Low and High speed expansion connectors
> of Ficus. SPI1 has 3 different chip selects wired as below:
> 
> CS0 - Serial Flash (unpopulated)
> CS1 - Low Speed expansion
> CS2 - High Speed expansion
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-ficus.dts | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts b/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
> index 027d428917b8..9baa378fc770 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
> @@ -146,6 +146,12 @@
>  	};
>  };
>  
> +&spi1 {
> +	/* On both Low speed and High speed expansion */
> +	cs-gpios = <0>, <&gpio4 6 0>, <&gpio4 7 0>;

cs0 should still be part of the cs-gpios though (gpio1 RK_PB2).
The flash is part of the schematics, so there might be board with
it pre-populated or people might put a flash chip on it.

Also please use the constants for pin specification (RK_PA6, RK_PA7 above)


Heiko

> +	status = "okay";
> +};
> +
>  &usbdrd_dwc3_0 {
>  	dr_mode = "host";
>  };
> 





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
