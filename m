Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 332E011FEB9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 08:02:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZvdWpmW3t/q3eYT3nAMMBNMkAh1uV9pXEhIlWU5bl64=; b=JJnJYsa/OPtyLF
	3wHHQ9hfjIthppyz/zAGzeFnu3ZUKHazcLsqN+AOsTXF8bn/dYPlP9rUmICih1bYmjFYDIR0gSh6k
	e0dm/a0IeU1gnos9/T7M5xk2vzeDPIDbDYgw+BbC2FWlVLbgOYjn+IA+G/1356Lsd5DrgYL+cXnra
	+IZakwbKZYZcKQTm7m4I1SULIQKK9sRQUXGuVEj1RT4PdWlxSKRH2OloajKkQqJSeSN5hPMFcJrd/
	WsWm6GTP+E4zdwMnNm6ah+zmxHeoT6d4kxjTn7amYybPM8mwCCtGsJtyVuqnS9fE6Li73eBbG5MsP
	l+9mdZ4ErAM+AmtD5z5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igkO6-000526-8A; Mon, 16 Dec 2019 07:01:50 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igkNy-00051B-AT
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 07:01:43 +0000
Received: by mail-pg1-x542.google.com with SMTP id q127so3135090pga.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Dec 2019 23:01:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=QTc3d1HmVPrybJi2/QarMwHVxM3YGV+FrtECoqhlaVM=;
 b=V4YmLffaWP4s+kQ6BJvq6kVT1zDNR+3hMe/lXQaI/CpjA9B/Yi5Fi9/fZNahOPncH5
 PUWVlR8lNtVE70GoY0Nu0MWnUDvbJJcf0KceehFUqHTJTCmItz8Y31gurqLGiRtTCfZi
 3nLA1Q39WIf44c0UDCUciUgPAx6BSvLG3aQ5LHuOiA+rEEHyawtOwHxTt56S4rT7OBjp
 KvYE/SPWlm66nx+6JfpdEPfbLmaHGV3B85WbYoogHYzWh5K4kIXs/2Wz2Ui6nuEIvu6t
 uIHTdgb1CszgVdzkOG1P83gaG90DhxDUIRm06bM2kM9Ihph8eR6EnBqX4T+76jnVE0dd
 y28A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=QTc3d1HmVPrybJi2/QarMwHVxM3YGV+FrtECoqhlaVM=;
 b=tnwG4JFQHHqU9E59C8+uvtk0LVSeEW5BQB2NVcwM+NbqMIiMSCK9pTQsd1c8KnYRjS
 Kl1hN3o+pyfIufYYlu2mY3q27+VwPo7Ve8Y708qDMf3f5gKvShO4eWN1CMuSBZqf3Y8I
 3AwYdRy2I070jP3m5qWb7jCFTlOppfnqVNaIT4N+/EgVRRDJQTyG2q1iHjfaRcDPL+UX
 LIRhiVcF9ZAcdlI4+GH6X95G3lhmg0DWOLZwAoIdpHePNJSMDXRbVI53Fb6XSPJbbiVo
 W4ICjJzynzNitWndcBnDtkPPk/m1eDsyNj3duv/yCfg040Gy9gpSVzWRV9NUXFBtIoXg
 dJuQ==
X-Gm-Message-State: APjAAAW0Qf6cYq7+yv82V/U14NJH0qnFuepYi5dXjaLX0tw9XSytOFtt
 iE1kUB75unnlKLjJFa21BrU=
X-Google-Smtp-Source: APXvYqw1S8NeDvux5szO7FbOa9ytvis7sjbDjIn33rJHA9DmPrfRgaJxVhOZcjtvgNbB7S9x0NioTA==
X-Received: by 2002:a63:6946:: with SMTP id e67mr11257641pgc.181.1576479700620; 
 Sun, 15 Dec 2019 23:01:40 -0800 (PST)
Received: from taoren-ubuntu-R90MNF91 (c-24-4-25-55.hsd1.ca.comcast.net.
 [24.4.25.55])
 by smtp.gmail.com with ESMTPSA id 78sm19949249pfu.65.2019.12.15.23.01.39
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 15 Dec 2019 23:01:40 -0800 (PST)
Date: Sun, 15 Dec 2019 23:01:32 -0800
From: Tao Ren <rentao.bupt@gmail.com>
To: Joel Stanley <joel@jms.id.au>
Subject: Re: [PATCH] ARM: dts: aspeed: AST2400 disables hw checksum
Message-ID: <20191216070131.GA11755@taoren-ubuntu-R90MNF91>
References: <20191216064132.78015-1-joel@jms.id.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191216064132.78015-1-joel@jms.id.au>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_230142_386091_844F85A3 
X-CRM114-Status: GOOD (  15.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rentao.bupt[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andrew Jeffery <andrew@aj.id.au>, Alexander Filippov <a.filippov@yadro.com>,
 linux-aspeed@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 16, 2019 at 05:41:32PM +1100, Joel Stanley wrote:
> There is no need to specify this property in the device tree as the
> AST2400 does not have working hardware checksum and disables it in the
> driver.
> 
> Signed-off-by: Joel Stanley <joel@jms.id.au>
> ---
>  arch/arm/boot/dts/aspeed-bmc-facebook-wedge100.dts | 1 -
>  arch/arm/boot/dts/aspeed-bmc-facebook-wedge40.dts  | 1 -
>  arch/arm/boot/dts/aspeed-bmc-opp-vesnin.dts        | 3 ---
>  3 files changed, 5 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/aspeed-bmc-facebook-wedge100.dts b/arch/arm/boot/dts/aspeed-bmc-facebook-wedge100.dts
> index b1e10f0c85c9..322587b7b67d 100644
> --- a/arch/arm/boot/dts/aspeed-bmc-facebook-wedge100.dts
> +++ b/arch/arm/boot/dts/aspeed-bmc-facebook-wedge100.dts
> @@ -76,7 +76,6 @@ &uart5 {
>  
>  &mac1 {
>  	status = "okay";
> -	no-hw-checksum;
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_rgmii2_default &pinctrl_mdio2_default>;
>  };
> diff --git a/arch/arm/boot/dts/aspeed-bmc-facebook-wedge40.dts b/arch/arm/boot/dts/aspeed-bmc-facebook-wedge40.dts
> index aaa77a597d1a..54e508530dce 100644
> --- a/arch/arm/boot/dts/aspeed-bmc-facebook-wedge40.dts
> +++ b/arch/arm/boot/dts/aspeed-bmc-facebook-wedge40.dts
> @@ -75,7 +75,6 @@ &uart5 {
>  
>  &mac1 {
>  	status = "okay";
> -	no-hw-checksum;
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_rgmii2_default &pinctrl_mdio2_default>;
>  };
> diff --git a/arch/arm/boot/dts/aspeed-bmc-opp-vesnin.dts b/arch/arm/boot/dts/aspeed-bmc-opp-vesnin.dts
> index affd2c8743b1..041f28e3ac10 100644
> --- a/arch/arm/boot/dts/aspeed-bmc-opp-vesnin.dts
> +++ b/arch/arm/boot/dts/aspeed-bmc-opp-vesnin.dts
> @@ -107,10 +107,7 @@ flash@0 {
>  
>  &mac0 {
>  	status = "okay";
> -
>  	use-ncsi;
> -	no-hw-checksum;
> -
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_rmii1_default>;
>  };
> -- 
> 2.24.0

Thanks for the fix, Joel. I totally forget I added the property in
ast2400 dts.

Reviewed-by: Tao Ren <rentao.bupt@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
