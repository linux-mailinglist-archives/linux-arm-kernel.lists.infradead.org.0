Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2928C160979
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 05:10:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MoCG5OqduV+7giJAAzode6XIRGUSJoLqooEB4xL/qOM=; b=EgT6VZfHKVhHCO
	zKFdKGhxykJmaeqUZvNbzzA9BXyTWwRjpJq5yK0ebzj8feaKH2BRP6FZYYKkr2l9Y+mR/KzWo89Vi
	OMkOoidI4Ee0GEqWl+genAFC1j1hY5rL7YiMxwzaKEucfceLV0uwp6P9kUjXAMknY8uOUcPjA8nia
	SfbA9E4zmVF/XDFqQ9BTe6yNxIua5PTrqlQRIx6NE7aCTpZXhoJMK+eiK1zOMVwgJdnGD3T7Rtww+
	gwrRmApj7MBghONdPTHq44rKDaYnxdrmjmtqtcy7PZ01zp8O9n97CK0ADhG21Mtjt/YTSGIlk3UND
	G4s0unmwVNmNHqI91WMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3XjQ-0005Fh-G4; Mon, 17 Feb 2020 04:10:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3XjG-0005FL-4M
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 04:09:55 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4DDF920717;
 Mon, 17 Feb 2020 04:09:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581912593;
 bh=N6Y5KKKWqMwm7aFctqJ1MGvZUyDeIUpv6buvA4gPxUM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2F8+vWxe9UuNOOVTK+1AxAoBzcorwtXspYXHIItjZuNh5yW39woNtzY8Vsh76jdjC
 eblBjzyyiqNHjIEDi1gTvKWDaf6oA9s+g6rx9dvAtT4lQmCBTr5Lya9f+dA15wcbF/
 76Zi0fXQJZajaAJ7o6rh2vHS1zZK2J6pjs7qgoxU=
Date: Mon, 17 Feb 2020 12:09:43 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Martin Kepplinger <martin.kepplinger@puri.sm>
Subject: Re: [PATCH v1 10/12] arm64: dts: librem5-devkit: configure VSELECT
Message-ID: <20200217040942.GG5395@dragon>
References: <20200205143003.28408-1-martin.kepplinger@puri.sm>
 <20200205143003.28408-11-martin.kepplinger@puri.sm>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200205143003.28408-11-martin.kepplinger@puri.sm>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_200954_196605_D893E386 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, robh@kernel.org, kernel@puri.sm, Anson.Huang@nxp.com,
 devicetree@vger.kernel.org, s.hauer@pengutronix.de,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 05, 2020 at 03:30:01PM +0100, Martin Kepplinger wrote:
> From: "Angus Ainslie (Purism)" <angus@akkea.ca>
> 
> use vselect to set the io voltage to 1.8V
> 
> Signed-off-by: Angus Ainslie (Purism) <angus@akkea.ca>
> ---
>  arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> index fbc7062c4633..8f920c554ebd 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> @@ -789,6 +789,7 @@
>  			MX8MQ_IOMUXC_SD2_DATA1_USDHC2_DATA1	0xc3
>  			MX8MQ_IOMUXC_SD2_DATA2_USDHC2_DATA2	0xc3
>  			MX8MQ_IOMUXC_SD2_DATA3_USDHC2_DATA3	0xc3
> +			MX8MQ_IOMUXC_GPIO1_IO04_GPIO1_IO4	0xc1

How is the pin working without a pinctrl handle pointing it?

Shawn

>  		>;
>  	};
>  
> @@ -800,6 +801,7 @@
>  			MX8MQ_IOMUXC_SD2_DATA1_USDHC2_DATA1	0xcd
>  			MX8MQ_IOMUXC_SD2_DATA2_USDHC2_DATA2	0xcd
>  			MX8MQ_IOMUXC_SD2_DATA3_USDHC2_DATA3	0xcd
> +			MX8MQ_IOMUXC_GPIO1_IO04_GPIO1_IO4	0xc1
>  		>;
>  	};
>  
> @@ -811,6 +813,7 @@
>  			MX8MQ_IOMUXC_SD2_DATA1_USDHC2_DATA1	0xcf
>  			MX8MQ_IOMUXC_SD2_DATA2_USDHC2_DATA2	0xcf
>  			MX8MQ_IOMUXC_SD2_DATA3_USDHC2_DATA3	0xcf
> +			MX8MQ_IOMUXC_GPIO1_IO04_GPIO1_IO4	0xc1
>  		>;
>  	};
>  
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
