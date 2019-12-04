Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 944EE11213B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 03:02:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8cHnFXNLHpu9KVM9q6V0JAa0dZs5VAmqsyel2tcMvSw=; b=Bwyg/qxfvvLIvp
	AbSDEMU4tnsTl8LBRklWSgWsJUyct3XEt4DPzfU0GP0zdL/+MJHFQqYN+pYZ5cvLfno5VBx9NfxN7
	02LFFt/L1DwT8DORzFyXe5V/ACTVp78Apzu0hnqcfMGJu9lAFYVeGZntD2TpZ1ekvHx8worvtIuWa
	9nCkZXLIGf9uDbfcmwXLCb/ws44nJmimfLGuHVQApeDGqYxia0dYmBWoG2rGaYK3R3MkpxI+NYZ+5
	gbl7QOKJiMDXedaU1178pEGlhW9fr0re9a7POZy6eC2thqV90v/z2J5JoceXpXTkyZ8chW/bFNcx2
	4cb1x2krv0Yvc0VJQi3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icK0D-0007kT-GM; Wed, 04 Dec 2019 02:02:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icK06-0007kA-Fp
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 02:02:48 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 741A12073B;
 Wed,  4 Dec 2019 02:02:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575424966;
 bh=6JGhp6hKDiAgsLbhCIIDGicEe/fmHWv0q/ZPw2vNp+A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FVULFVOJUSyS1NR+SsbcWjV/cv/rpuOIfNNYzZ1AqVWzoEQ0JkJnLjeIWr9IERPD1
 dyI50ic2/u/Yfe/DBB/sqpLyva1fXVdKr96EhJesB8b51fHFzm4vyZS0uku63DKfmF
 Xeg2R4CQpaZTRrc/a2kLPqoV95VFdaO7p5fJrqPo=
Date: Wed, 4 Dec 2019 10:02:37 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <anson.huang@nxp.com>,
 Vincent Guittot <vincent.guittot@linaro.org>
Subject: Re: [PATCH] ARM: dts: imx7ulp: Add cpu clock-frequency property
Message-ID: <20191204020236.GK9767@dragon>
References: <1572918578-13544-1-git-send-email-Anson.Huang@nxp.com>
 <20191202134748.GB21897@dragon>
 <DB3PR0402MB39164DF380E6B13558E758E7F5420@DB3PR0402MB3916.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB3PR0402MB39164DF380E6B13558E758E7F5420@DB3PR0402MB3916.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_180246_547444_4099FEAE 
X-CRM114-Status: GOOD (  19.26  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

+ Vincent

On Tue, Dec 03, 2019 at 01:09:22AM +0000, Anson Huang wrote:
> 
> > Subject: Re: [PATCH] ARM: dts: imx7ulp: Add cpu clock-frequency property
> > 
> > On Tue, Nov 05, 2019 at 09:49:38AM +0800, Anson Huang wrote:
> > > Add "clock-frequency" property to avoid below warning on i.MX7ULP:
> > >
> > > [    0.011762] /cpus/cpu@0 missing clock-frequency property
> > >
> > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > ---
> > >  arch/arm/boot/dts/imx7ulp.dtsi | 1 +
> > >  1 file changed, 1 insertion(+)
> > >
> > > diff --git a/arch/arm/boot/dts/imx7ulp.dtsi
> > > b/arch/arm/boot/dts/imx7ulp.dtsi index d37a192..87b2237 100644
> > > --- a/arch/arm/boot/dts/imx7ulp.dtsi
> > > +++ b/arch/arm/boot/dts/imx7ulp.dtsi
> > > @@ -41,6 +41,7 @@
> > >  			compatible = "arm,cortex-a7";
> > >  			device_type = "cpu";
> > >  			reg = <0>;
> > > +			clock-frequency = <500210526>;
> > 
> > I cannot find the binding doc for this property.  What is the definition of it,
> > the maximum frequency that the cpu could possibly run at?
> 
> 
> The code is as below, maybe the property is missing from the beginning of this code,
> this property should mean the current frequency of CPU running at I think:
> 
> arch/arm/kernel/topology.c
> 
> 122                 rate = of_get_property(cn, "clock-frequency", &len);
> 123                 if (!rate || len != 4) {
> 124                         pr_err("%pOF missing clock-frequency property\n", cn);
> 125                         continue;
> 126                 }

Yes, I can find the code, but not bindings for it.  Considering
frequency of a CPU can be scaled in a quite wide range, we need
a clear understanding on this property.  IIUIC, the property is used to
calculate the capacity of CPU, it should be the maximum frequency the
CPU could possibly scale to?

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
