Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 854C63095C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 09:30:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NJ3g3ciaBKpZZ/yWy4KRsAU3mUD4UduBuTd/77xK9Tg=; b=AtZ8bis4qQXuTf
	tbyqkICXDz3OolOlh0e+e45X6YvL2Yny9msyjdGf+L3BiiRQcxBfxVNeVqZkkGH0cmJ7yBD5cH73p
	y3ISN0aUSV5D1Dsc+HsKj+nHKAvvApoCMSoF/SkLdeuVyxNro2UXgYaDmzraFuZThVwaJN6a1/USE
	LuyHsxVmvq0jwxUeFHTtsE8XUFAzq+Bg6JkbwUqAFrxmNVZ+FmPrUtvZvJrAwGAYye2ZwHNhstGKA
	K4nsaTtqhhSpJV5vpAH/B9vZSDH9kB5lPxioFdYiYlt/rqTnaRkPXkwkEmaQj2XMNUiImgwCiZ8oM
	Mt72jL4G/SC6GuXCOXHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWbzL-0007OE-JW; Fri, 31 May 2019 07:30:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWbzC-0007Nm-AD
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 07:29:59 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E55FA264E7;
 Fri, 31 May 2019 07:29:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559287798;
 bh=Sx1m5/E8D/5A8KuMvDlpJkX5r56naO8qUsBat8C+qgk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mTrEKnP3igGNFyinU5WlegALoxSzHevTxDMhvJML01Fxvds9diY9kGh0ptqTEVba6
 jZt+kT6htNw5fnBs9nk4d0FTlH5KiAWoPM3Y6WcCd31Ggzsfzo/Mgb3lVBrxVqA5jx
 jhOcrry6DTnI5nrlsGw61OpHny4D+zMtZFL6SIw8=
Date: Fri, 31 May 2019 15:28:33 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Daniel Baluta <daniel.baluta@gmail.com>
Subject: Re: [PATCH v3 2/2] arm64: dts: imx8mm-evk: Enable audio codec wm8524
Message-ID: <20190531072832.GC23453@dragon>
References: <20190515144210.25596-1-daniel.baluta@nxp.com>
 <20190515144210.25596-3-daniel.baluta@nxp.com>
 <CAOMZO5A6Gv5k3up0AtKrhQPyMLMe_8SXift68KEP2J+j8D_cJg@mail.gmail.com>
 <CAOMZO5BTqwnun6d7G1vcHUu_Rs+xfvgxTzamWnBPy76W7eeF_A@mail.gmail.com>
 <CAEnQRZD98TKduVLshGrBANRB6NT7Se6CXD0cgd5XRYa6grAo4Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAEnQRZD98TKduVLshGrBANRB6NT7Se6CXD0cgd5XRYa6grAo4Q@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_002958_365445_533B673A 
X-CRM114-Status: GOOD (  15.31  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Fabio Estevam <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "m.felsch@pengutronix.de" <m.felsch@pengutronix.de>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Daniel Baluta <daniel.baluta@nxp.com>, "S.j. Wang" <shengjiu.wang@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 10:10:43AM +0300, Daniel Baluta wrote:
> On Mon, May 20, 2019 at 10:33 PM Fabio Estevam <festevam@gmail.com> wrote:
> >
> > On Thu, May 16, 2019 at 3:35 PM Fabio Estevam <festevam@gmail.com> wrote:
> > >
> > > On Wed, May 15, 2019 at 11:42 AM Daniel Baluta <daniel.baluta@nxp.com> wrote:
> > >
> > > > +               simple-audio-card,codec {
> > > > +                       sound-dai = <&wm8524>;
> > > > +                       clocks = <&clk IMX8MM_CLK_SAI3_ROOT>;
> > >
> > > IMX8MM_CLK_SAI3_ROOT is the internal clock that drives the SAI3
> > > interface, not an external clock that feeds the codec.
> > >
> > > It seems you should remove this 'clocks' entry.
> >
> > Just checked the schematics and the SAI3_MCLK pin clocks the codec, so
> > the representation is correct:
> >
> > Reviewed-by: Fabio Estevam <festevam@gmail.com>
> 
> Shawn,
> 
> Can you have a look?

I cannot apply this one, because there are '=20' in the patch content.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
