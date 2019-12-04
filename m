Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3116112C19
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 13:54:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6LdilzabD4yNFz6X9wgGLUGcetv8sQjx6lt1ZoED5OE=; b=RgcuX/uR6C2p0t
	Ip8sdJa/okjm/eGgVP/YrKR8mnOYsLzoHy3GrPvmm04amgj9STZDcQajsIKprmN2Pl8x7jUTZOmhf
	tMxYEeU/nBploQB1lRJRyGqWBmGfsmwFeZD9UPJAsQGUZcJSIPeCvtnlUddqOh09zfrb+5vL/xdiR
	yk0D3gHluopAKHGMe8sM+5LhgGY4Db0lOry88OTTe6jA7uqyzTJb7FOOrdNsYGZ5xb0k835frrpHz
	l19IdFPWO6xtPd/oreZsGrQo7YxvitHiRabQgNZJF5gcwvMboGA7FzT2VpzSgqjZHfoxxO+0JsTqq
	wHtiCWZapX8LSanrfJlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icUAH-0007ZG-Jv; Wed, 04 Dec 2019 12:53:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icUAA-0007Yp-E0
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 12:53:51 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BAEF420674;
 Wed,  4 Dec 2019 12:53:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575464030;
 bh=KrClp9Nd6wxWZ4C+7+GANIBwUZyE6o5TbfPk7RfY+r4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ed2YBioUL3Xgm/lBvrUURCEg5JUb8HTynYNC7HDoVXX8BF5MH4XDxpth0m57vdo/r
 gqbkILgRhJdlVxUhyRTKKd4MFZhRc9mRAMxC4PDrvYXXMmiD0uE3zMvISoG+pBmLpP
 FeQ7yqr1+X81Ov/G1TEml29WDyeGT00niToZkTQ8=
Date: Wed, 4 Dec 2019 20:53:37 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Christoph Fritz <chf.fritz@googlemail.com>
Subject: Re: [PATCH v2 4/4] ARM: dts: phycore-imx6: set buck regulator modes
 explicitly
Message-ID: <20191204125336.GM3365@dragon>
References: <1573652416-9848-1-git-send-email-chf.fritz@googlemail.com>
 <1573652416-9848-5-git-send-email-chf.fritz@googlemail.com>
 <AM5PR1001MB099480739860863EB08EA73280760@AM5PR1001MB0994.EURPRD10.PROD.OUTLOOK.COM>
 <1574973044.2362.11.camel@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1574973044.2362.11.camel@googlemail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_045350_510160_2536EF6F 
X-CRM114-Status: GOOD (  16.43  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Support Opensource <Support.Opensource@diasemi.com>,
 Fabio Estevam <festevam@gmail.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Brown <broonie@kernel.org>,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
 Lee Jones <lee.jones@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 28, 2019 at 09:30:44PM +0100, Christoph Fritz wrote:
> Hi Shawn,
> 
>  any chance to get this patch queued for the upcoming kernel?

Sorry, no.  I need to wait for DA9063_BUCK_MODE_SYNC landing on 5.5-rc1,
and then apply this DTS patch.

Shawn

> 
> bye
>  -- Christoph
> 
> On Wed, 2019-11-13 at 16:26 +0000, Adam Thomson wrote:
> > On 13 November 2019 13:40, Christoph Fritz wrote:
> > 
> > > This patch sets initial buck regulator modes explicitly to a state this
> > > hardware needs. So a wrong initial mode set by bootloader or pmic itself
> > > does not interfere anymore.
> > > 
> > > Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
> > 
> > Reviewed-by: Adam Thomson <Adam.Thomson.Opensource@diasemi.com>
> > 
> > > ---
> > >  arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi | 5 +++++
> > >  1 file changed, 5 insertions(+)
> > > 
> > > diff --git a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
> > > b/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
> > > index 6486df3..644625d 100644
> > > --- a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
> > > +++ b/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
> > > @@ -5,6 +5,7 @@
> > >   */
> > > 
> > >  #include <dt-bindings/gpio/gpio.h>
> > > +#include <dt-bindings/regulator/dlg,da9063-regulator.h>
> > > 
> > >  / {
> > >  	aliases {
> > > @@ -109,6 +110,7 @@
> > >  				regulator-name = "vdd_arm";
> > >  				regulator-min-microvolt = <730000>;
> > >  				regulator-max-microvolt = <1380000>;
> > > +				regulator-initial-mode =
> > > <DA9063_BUCK_MODE_SYNC>;
> > >  				regulator-always-on;
> > >  			};
> > > 
> > > @@ -116,6 +118,7 @@
> > >  				regulator-name = "vdd_soc";
> > >  				regulator-min-microvolt = <730000>;
> > >  				regulator-max-microvolt = <1380000>;
> > > +				regulator-initial-mode =
> > > <DA9063_BUCK_MODE_SYNC>;
> > >  				regulator-always-on;
> > >  			};
> > > 
> > > @@ -123,6 +126,7 @@
> > >  				regulator-name = "vdd_ddr3";
> > >  				regulator-min-microvolt = <1500000>;
> > >  				regulator-max-microvolt = <1500000>;
> > > +				regulator-initial-mode =
> > > <DA9063_BUCK_MODE_SYNC>;
> > >  				regulator-always-on;
> > >  			};
> > > 
> > > @@ -130,6 +134,7 @@
> > >  				regulator-name = "vdd_eth";
> > >  				regulator-min-microvolt = <1200000>;
> > >  				regulator-max-microvolt = <1200000>;
> > > +				regulator-initial-mode =
> > > <DA9063_BUCK_MODE_SYNC>;
> > >  				regulator-always-on;
> > >  			};
> > > 
> > > --
> > > 2.1.4
> > 
> 
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
