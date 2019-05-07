Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 395B316342
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 13:59:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=28uzfzaTMhgfzgipqf+2NSXBwYbNCvJ7Adh6t64TYvA=; b=RcvivdIO/hecja
	tiNtwA54hr6oD8n2xSDyMvCe8VRha13yW9Np6iDj9Xs09NoY5p4bEoV1TW6o/TZ5gEkrvkX/r7y7M
	fxhm2tutdmY6l+MHUWISmz8FARhVEhlVi5EM1L0cB8MBDQ6FBsPbh1PFoKckUIxG2heGGLJRGsOIP
	DY8CWW63mg06/SaHAGBOqp52yh+DoK2xyL7mIaKg3GSXE+Hcz2q/lyEAPQYaDd+zAmKF3zo4N9jci
	S01ZH5bf0teyR8QqSEFFxKljw2Rug6PbUQi6WC6V6cCxH0tJcNxqWeA2hryYoe/BFbUATG5h0+YyP
	SpdZnHqBU+4cJ17SaVlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNykw-0003BC-FL; Tue, 07 May 2019 11:59:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNyko-0003AU-OD; Tue, 07 May 2019 11:59:28 +0000
Received: from we0048.dip.tu-dresden.de ([141.76.176.48] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hNykl-0008Hr-QN; Tue, 07 May 2019 13:59:23 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Enable SPI1 on Ficus
Date: Tue, 07 May 2019 13:59:23 +0200
Message-ID: <111262745.IyAHIOZrRb@phil>
In-Reply-To: <20190507113635.GB309@Mani-XPS-13-9360>
References: <20190506120458.25842-1-manivannan.sadhasivam@linaro.org>
 <2127870.SxaTtWf5LP@phil> <20190507113635.GB309@Mani-XPS-13-9360>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_045926_939474_1753DA43 
X-CRM114-Status: GOOD (  19.50  )
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

Am Dienstag, 7. Mai 2019, 13:36:35 CEST schrieb Manivannan Sadhasivam:
> On Tue, May 07, 2019 at 01:22:03PM +0200, Heiko Stuebner wrote:
> > Am Montag, 6. Mai 2019, 14:04:58 CEST schrieb Manivannan Sadhasivam:
> > > Enable SPI1 exposed on both Low and High speed expansion connectors
> > > of Ficus. SPI1 has 3 different chip selects wired as below:
> > > 
> > > CS0 - Serial Flash (unpopulated)
> > > CS1 - Low Speed expansion
> > > CS2 - High Speed expansion
> > > 
> > > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > > ---
> > >  arch/arm64/boot/dts/rockchip/rk3399-ficus.dts | 6 ++++++
> > >  1 file changed, 6 insertions(+)
> > > 
> > > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts b/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
> > > index 027d428917b8..9baa378fc770 100644
> > > --- a/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
> > > +++ b/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
> > > @@ -146,6 +146,12 @@
> > >  	};
> > >  };
> > >  
> > > +&spi1 {
> > > +	/* On both Low speed and High speed expansion */
> > > +	cs-gpios = <0>, <&gpio4 6 0>, <&gpio4 7 0>;
> > 
> > cs0 should still be part of the cs-gpios though (gpio1 RK_PB2).
> > The flash is part of the schematics, so there might be board with
> > it pre-populated or people might put a flash chip on it.
> > 
> 
> Why? CS0 is owned by the SPI controller itself, so we can't use it as
> a GPIO. Otherwise, we need to change the pinctrl definition of it, which
> doesn't look good to me.

Ok, but are you sure mixing both pinctrl-based chip-select with gpio-based
chip-select will actually work when the spi-flash is populated?

But it looks like you're right in that spi_set_cs() checks for a gpio-cs
first and falls back to the controller-based chip-select.

So I guess this can stay as it is.

> 
> > Also please use the constants for pin specification (RK_PA6, RK_PA7 above)
> > 
> 
> Sure.

Thanks
Heiko

> 
> Thanks,
> Mani
> 
> > 
> > Heiko
> > 
> > > +	status = "okay";
> > > +};
> > > +
> > >  &usbdrd_dwc3_0 {
> > >  	dr_mode = "host";
> > >  };
> > > 
> > 
> > 
> > 
> > 
> 





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
