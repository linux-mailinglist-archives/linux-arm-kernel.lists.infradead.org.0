Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 567419BFBF
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 21:12:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=30mLNAh3XVttbOIB8FdpHbJnaCElrRqERLBB+0j74uQ=; b=WVSm6Noy1rO5nC
	aZlJzzIN56eFtHOth2K1Xc7ZlZ9tFF+OnvLh/t9GV1vpiwoyMJfLGUVSjx7GcUN/zC/5Za8TAAb8P
	2ojYYCTjoGhOWD3cnT1C0uXtHFTUVpVq3YSohB8FY/7f806xdsJSON43lKjEThihsj/Yq/Ig9hmZN
	BIV5xVMYGGl5mRZ3SxmgMuJL4t4QoQnN0WtIEyRGFf6bJEvxXRJxnQI+aFUx98CeDsOCBs1I8c8Xp
	KXpXQU1t0yT68193+/g6a8V9PWHFuuYH2MHyY33ZxgoHnJjjn6oMLk/uNczpVujIa0eL7u44v+4A9
	IlbraHiBDxWGWFYjyFDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1bSM-000513-TG; Sat, 24 Aug 2019 19:12:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1bSD-00050f-6c
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 19:12:02 +0000
Received: from X250.getinternet.no (98.142.130.235.16clouds.com
 [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8C2F62146E;
 Sat, 24 Aug 2019 19:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566673920;
 bh=ezRY8yYFMypgLFWgx+5OQQJxcoy3QEXmesB47+8ufzI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=m6v4/aZ+ImZd7NTE9+8wGYp6+Ps1oERNv9g0DBYUKSmqeyANYjh+q8GYRn9VmWxRI
 WamiIPkAYvjySRwulOd3fFY7ApE64dmacMO/3cbtc4MvteMINBl7J5JH1ipjaYTqi7
 SZvTgcwwaItZ1R2EgJMubnmX7ddWXBQI+du0YsPg=
Date: Sat, 24 Aug 2019 21:11:49 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Subject: Re: [PATCH] ARM: dts: vf610-zii-dev-rev-b: Drop redundant I2C
 properties
Message-ID: <20190824191148.GD16308@X250.getinternet.no>
References: <20190820031952.14804-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190820031952.14804-1-andrew.smirnov@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_121201_267111_41531145 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Fabio Estevam <festevam@gmail.com>, Chris Healy <cphealy@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 08:19:52PM -0700, Andrey Smirnov wrote:
> Drop redundant I2C properties that are already specified in
> vf610-zii-dev.dtsi
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Chris Healy <cphealy@gmail.com>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> ---
>  arch/arm/boot/dts/vf610-zii-dev-rev-b.dts | 10 ----------
>  1 file changed, 10 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/vf610-zii-dev-rev-b.dts b/arch/arm/boot/dts/vf610-zii-dev-rev-b.dts
> index 48086c5e8549..e500911ce0a5 100644
> --- a/arch/arm/boot/dts/vf610-zii-dev-rev-b.dts
> +++ b/arch/arm/boot/dts/vf610-zii-dev-rev-b.dts
> @@ -323,11 +323,6 @@
>  };
>  
>  &i2c0 {
> -	clock-frequency = <100000>;
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&pinctrl_i2c0>;

pinctrl for i2c0 is not same as what vf610-zii-dev.dtsi has.

Shawn

> -	status = "okay";
> -
>  	gpio5: io-expander@20 {
>  		compatible = "nxp,pca9554";
>  		reg = <0x20>;
> @@ -350,11 +345,6 @@
>  };
>  
>  &i2c2 {
> -	clock-frequency = <100000>;
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&pinctrl_i2c2>;
> -	status = "okay";
> -
>  	tca9548@70 {
>  		compatible = "nxp,pca9548";
>  		pinctrl-0 = <&pinctrl_i2c_mux_reset>;
> -- 
> 2.21.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
