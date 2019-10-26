Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AA72E5932
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 10:12:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mq6q8bQ+9n8CPHX0yWI/5CZ6/KOzr+/X6Or0uYw8sjI=; b=ClRggV+7H9eI7v
	idpRphoEBPq1I89edhe72e2dtZaDW3x1WS+6pJE0PAQzqlpBNRdRn7loIdnXAK4sCRnkLbiD0USUQ
	pzP2X1xcoHm95Oj2kdzC0YpA2xA3uT5Zr8is1yNKLhQtgkBVEmfFKQNLSeLdhdexVK/mBiwrz1AkE
	U3UkLj4K1GrLWontuu3CcIKqUjlJOxsu0o3QTnRNGIF17E1Ww+kqmKSDKcX4DmrLS3SviPAbByz7v
	kbTQhD+sXgLbPPuNOR/irfI0b8mB2pkpW3VHUuBpzUovyoR4aMuFNXXFTheV1oAEJniTDF8dnWaIC
	UGg6W7mphpK9ztspV8aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOHBl-0003ZC-Ij; Sat, 26 Oct 2019 08:12:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOHBb-0003Yh-9A
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 08:12:36 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BBBD6214DA;
 Sat, 26 Oct 2019 08:12:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572077555;
 bh=uLrgR5dduFiKpCf2zS/LUfYO4qdcUR5sKFqtU9Ua3Xc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wRieEcbL9aSAvlkBKLiSjJvhvYjxTr7M/1F5X6n/1gwJb+4tm0rqZjlUNkmpTYBzR
 FSfVZf99PGNvd9h8CuatnG7fM6hyTPAc7Ab4mtZ1aUCi/aDRCTrxz7Up34ZLFBifko
 asjSu+zFgko2TZlDVN1OZjhZ57/BCAurusF6BDVs=
Date: Sat, 26 Oct 2019 16:12:15 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Andreas Kemnade <andreas@kemnade.info>
Subject: Re: [PATCH v3 3/3] ARM: dts: imx: add devicetree for Kobo Clara HD
Message-ID: <20191026081214.GB14401@dragon>
References: <20191010192357.27884-1-andreas@kemnade.info>
 <20191010192357.27884-4-andreas@kemnade.info>
 <20191025134621.GN3208@dragon> <20191025200743.48455cc9@aktux>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191025200743.48455cc9@aktux>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_011235_344278_97468171 
X-CRM114-Status: GOOD (  17.32  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, marex@denx.de, Marco Felsch <m.felsch@pengutronix.de>,
 devicetree@vger.kernel.org, andrew.smirnov@gmail.com, s.hauer@pengutronix.de,
 angus@akkea.ca, linux-kernel@vger.kernel.org, j.neuschaefer@gmx.net,
 robh+dt@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 manivannan.sadhasivam@linaro.org,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 25, 2019 at 08:07:43PM +0200, Andreas Kemnade wrote:
> Hi,
> 
> On Fri, 25 Oct 2019 21:46:24 +0800
> Shawn Guo <shawnguo@kernel.org> wrote:
> 
> [...]
> > > +
> > > +		pinctrl_wifi_reset: wifi_reset_grp {
> > > +			fsl,pins = <
> > > +				MX6SLL_PAD_SD2_DATA7__GPIO5_IO00	0x10059		/* WIFI_RST */
> > > +			>;
> > > +		};
> > > +
> > > +		pinctrl_wifi_power: wifi_power_grp {  
> > 
> > I guess you can have one pinctrl node to include both reset and power
> > pins?  Also, to be consistent with other pinctrl nodes on naming, the
> > node name should probably be wifigrp.
> > 
> well, the problems they are used in different nodes, so I cannot do
> that:
> 
>        reg_wifi: regulator-wifi {
>                 compatible = "regulator-fixed";
>                 pinctrl-names = "default";
>                 pinctrl-0 = <&pinctrl_wifi_power>;
>                 regulator-name = "SD3_SPWR";
>                 regulator-min-microvolt = <3000000>;
>                 regulator-max-microvolt = <3000000>;
>                 gpio = <&gpio4 29 GPIO_ACTIVE_HIGH>;
>                 enable-active-high;
>         };
> 
>         wifi_pwrseq: wifi_pwrseq {
>                 compatible = "mmc-pwrseq-simple";
>                 pinctrl-names = "default";
>                 pinctrl-0 = <&pinctrl_wifi_reset>;
>                 post-power-on-delay-ms = <20>;
>                 reset-gpios = <&gpio5 0 GPIO_ACTIVE_LOW>;
>         };

Ah, yes, it makes more sense.  I missed that.

Shawn

> 
> So having them combined breaks the mux where you use it rule.
> I got in earlier mails:
> 
> > > +	wifi_pwrseq: wifi_pwrseq {
> > > +		compatible = "mmc-pwrseq-simple";
> > > +		post-power-on-delay-ms = <20>;
> > > +		reset-gpios = <&gpio5 0 GPIO_ACTIVE_LOW>;  
> 
> > Can you add a pinctrl-entry here please? The general rule is to mux
> > things where you use it
> [...]
> > > +			compatible = "regulator-fixed";
> > > +			regulator-name = "SD3_SPWR";
> > > +			regulator-min-microvolt = <3000000>;
> > > +			regulator-max-microvolt = <3000000>;
> > > +
> > > +			gpio = <&gpio4 29 GPIO_ACTIVE_HIGH>;  
> 
> > Please add a pinctrl here to mux this gpio.
> 
> Regards,
> Andreas

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
