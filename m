Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32F23180050
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 15:37:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ccRKaxCUBgm13ncjqMJsMp/AxQ8gvUQCIVVepXzx7nI=; b=TTndRyL4KzGtCS
	Hc2JCW19ng4czDjf+iJaUiyMzqc7i7ElPsmLqOjmGaaVkuYnnF60vuTe2WIeeAdL41jZqs1ZBEKyk
	AoEgNE3ejCePoYeSILndPF8kRhLqh9YrNcQtSF8HlPpSE4PD9lEdB9SkhfnUr+TjjKckPVuBnYUsl
	0Zqw1M71r+8UOih7TU/0pr4l/pyNPXCXOS3aAT/Jus72w5qRy0w+qV2UNmIwNvcrEZPkpMtUeZzYa
	R/wio/Lqgy9GuhgDjXHkBusJZ7cX6Ckn/sHSsKIMEArD2rZiaemEEYS+kTGKwkCduybpXsBNRFJzI
	gM4BIqsV84PozdNrD6hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBg0N-0006wh-AN; Tue, 10 Mar 2020 14:37:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBg0E-0006wC-5P
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 14:37:03 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8FA5420848;
 Tue, 10 Mar 2020 14:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583851021;
 bh=qtr/Wxdxp9yhGS/GKWcLxeXTtIunv0pNegIjpoN7uwI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TRl409m2vmUtgri0erpqzGvayd3XmANPNM5xru9wSm6RbjZVwkO+wVvzMB7c/pq9y
 hy66tUXJ5c+CvEFZ4HPhZZGZWzlev2GxP7YnG4pQ/oEVLiUCTxC3HCRrxBHx2UEkIq
 s9q7ddDV4uHpXg+zi0yR+CGeom0ZPSpWQ1NRs2w8=
Date: Tue, 10 Mar 2020 22:36:57 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH 3/6] ARM: dts: imx6ul-pico-hobbit: Add ADC support
Message-ID: <20200310143656.GB21213@dragon>
References: <20200224193200.2773-1-festevam@gmail.com>
 <20200224193200.2773-3-festevam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200224193200.2773-3-festevam@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_073702_228059_1B4B57F5 
X-CRM114-Status: GOOD (  13.87  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: robh+dt@kernel.org, otavio@ossystems.com.br,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 24, 2020 at 04:31:57PM -0300, Fabio Estevam wrote:
> imx6ul-pico-hobbit has a ADC081 under I2C3.
> 
> Add support for it.
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>
> ---
>  arch/arm/boot/dts/imx6ul-pico-hobbit.dts | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/imx6ul-pico-hobbit.dts b/arch/arm/boot/dts/imx6ul-pico-hobbit.dts
> index 09f7ffa9ad8c..2a951d6ffa63 100644
> --- a/arch/arm/boot/dts/imx6ul-pico-hobbit.dts
> +++ b/arch/arm/boot/dts/imx6ul-pico-hobbit.dts
> @@ -60,6 +60,12 @@
>  &i2c3 {
>  	status = "okay";
>  
> +	adc081c: adc@50 {

Sort the node in unit-address.

Shawn

> +		compatible = "ti,adc081c";
> +		reg = <0x50>;
> +		vref-supply = <&reg_3p3v>;
> +	};
> +
>  	polytouch: touchscreen@38 {
>  		compatible = "edt,edt-ft5x06";
>  		reg = <0x38>;
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
