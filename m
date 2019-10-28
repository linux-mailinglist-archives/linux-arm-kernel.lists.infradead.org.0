Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8186E6C5A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 07:16:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AAQh22DmVnRmJsHWOL9/MkbO6uORL9eTb/FtfyakidE=; b=QKIKIzKoEaVvcA
	oGsYAcifsXO4hSXz8mx3KnGBV30+XxsU54iRU8RIknuquThqpUlVPK4GTqG23GdawQ54ksBbdxkBR
	e5kf1Re8VDh9/450fpTCasOjCB0eCvGumAM9fONrlvHSvLeTt8ixwsUFzWzC8zt31lgOifzi7kd+E
	Lnr3aGbGq3KX/dn1SM0C/7PD3LHuglbw6tVxX+Kzyp/XaIrLsrd0miB16GBPdLe/AFUezJp3LJnbn
	7sZAX5nJRr3sAuMaM7rfEBsF6KuyjALE6mQ4xyCHE2vqiQXUwqoTtSnnEWJB1zpm7g151t8IrNkwu
	slweKTnJolcWMcsxtoDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOyK5-0001Mz-LL; Mon, 28 Oct 2019 06:16:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOyJs-0001ML-No
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 06:16:01 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F336B2086D;
 Mon, 28 Oct 2019 06:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572243360;
 bh=s86/4rKeSKBp+v+UDesMXr/1qh5YcXpzBFFcSzVdra8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OIq3TNKQhjMq+0XusrDYJ0lgidnBNQhqUCcOjjBf98A0njafypYbZHnHs7y4ql8j8
 v+bN6zRu2bfDgrcSK5LrJS6tEF8Y45gUCOTznVZCHsNCqcOf1KEF1aRVKIyJVYcF6C
 zzqfWixl+Q3WJrWPk/4M1qUKom0FunXINiyO8dMg=
Date: Mon, 28 Oct 2019 14:15:41 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Lucas Stach <l.stach@pengutronix.de>
Subject: Re: [PATCH] arm64: dts: zii-ultra: add i210 ethernet node
Message-ID: <20191028061540.GM16985@dragon>
References: <20191021164200.31051-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191021164200.31051-1-l.stach@pengutronix.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_231600_799738_732B655A 
X-CRM114-Status: GOOD (  14.35  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Fabio Estevam <festevam@gmail.com>, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, patchwork-lst@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 21, 2019 at 06:42:00PM +0200, Lucas Stach wrote:
> Used by the bootloader to patch in the correct MAC address for
> the ethernet adapter.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi b/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
> index 087b5b6ebe89..7933c685fe6a 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
> @@ -475,6 +475,17 @@
>  	         <&pcie1_refclk>;
>  	clock-names = "pcie", "pcie_aux", "pcie_phy", "pcie_bus";
>  	status = "okay";
> +
> +	host@0 {

Where is the bindings documenting this child node of pcie device?

> +		reg = <0 0 0 0 0>;
> +
> +		#address-cells = <3>;
> +		#size-cells = <2>;
> +
> +		i210: i210@0 {

Can we have generic node name for it?

Shawn

> +			reg = <0 0 0 0 0>;
> +		};
> +	};
>  };
>  
>  &pgc_gpu {
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
