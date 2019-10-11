Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10177D45E7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 18:57:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YhGpaPBGWNfXR91X8kQgEDADtd71wBcvrR3bLbHl9es=; b=nyUhJF7ITh+RR3
	zp00JnG/Q55r24cAvLVabMXzDG0ekWju0Fs397/E/0hskqdlhgfUvXH2q5aVBbzmH9DdRgsYvwSfM
	0j4twsDsFlAf6oKSs0JWYn49Dd6gY3ACMe8l6OOkezmWZk5mGeJhyqAW5U+BfxXOyCELQpHCBEDTV
	tvJVaXlQ3f5iGvE3DknhSZMb89rpu4nuFrG0v4S8RXMK5iHZp3wbQbw6ok0Ft7knvcB2hVYvblQy5
	2px4imgq/1Ny0rphVLSIN1hDit4tfW/5rPqKodJvjUlb71AadIRRb2ee34UQVpaeM+S/tnMELTEFD
	EcDg5CjpfzSKedQZggwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIyDs-0001RV-Jj; Fri, 11 Oct 2019 16:57:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIyDk-0001Qd-QN
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 16:56:54 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1iIyDW-00056W-7D; Fri, 11 Oct 2019 18:56:38 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1iIyDR-0007Kv-OH; Fri, 11 Oct 2019 18:56:33 +0200
Date: Fri, 11 Oct 2019 18:56:33 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Andreas Kemnade <andreas@kemnade.info>
Subject: Re: [PATCH v3 2/3] ARM: dts: add Netronix E60K02 board common file
Message-ID: <20191011165633.5ty3yux4ljrcycux@pengutronix.de>
References: <20191010192357.27884-1-andreas@kemnade.info>
 <20191010192357.27884-3-andreas@kemnade.info>
 <20191011065609.6irap7elicatmsgg@pengutronix.de>
 <20191011094148.1376430e@aktux> <20191011142927.GA11490@bogus>
 <20191011170147.1b3c4b25@kemnade.info>
 <20191011152214.v6lq6itwf5lp6j7q@pengutronix.de>
 <20191011181938.185f2a00@kemnade.info>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011181938.185f2a00@kemnade.info>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 18:54:48 up 146 days, 23:12, 97 users,  load average: 0.08, 0.10,
 0.02
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_095652_851710_8063E905 
X-CRM114-Status: GOOD (  24.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, Rob Herring <robh@kernel.org>, marex@denx.de,
 devicetree@vger.kernel.org, andrew.smirnov@gmail.com, festevam@gmail.com,
 s.hauer@pengutronix.de, angus@akkea.ca, linux-kernel@vger.kernel.org,
 j.neuschaefer@gmx.net, linux-imx@nxp.com, kernel@pengutronix.de,
 manivannan.sadhasivam@linaro.org,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-10-11 18:19, Andreas Kemnade wrote:
> On Fri, 11 Oct 2019 17:22:14 +0200
> Marco Felsch <m.felsch@pengutronix.de> wrote:
> 
> > On 19-10-11 17:05, Andreas Kemnade wrote:
> > > On Fri, 11 Oct 2019 09:29:27 -0500
> > > Rob Herring <robh@kernel.org> wrote:
> > >   
> > > > On Fri, Oct 11, 2019 at 09:41:48AM +0200, Andreas Kemnade wrote:  
> > > > > On Fri, 11 Oct 2019 08:56:09 +0200
> > > > > Marco Felsch <m.felsch@pengutronix.de> wrote:
> > > > >     
> > > > > > Hi Andreas,
> > > > > > 
> > > > > > On 19-10-10 21:23, Andreas Kemnade wrote:    
> > > > > > > The Netronix board E60K02 can be found some several Ebook-Readers,
> > > > > > > at least the Kobo Clara HD and the Tolino Shine 3. The board
> > > > > > > is equipped with different SoCs requiring different pinmuxes.
> > > > > > > 
> > > > > > > For now the following peripherals are included:
> > > > > > > - LED
> > > > > > > - Power Key
> > > > > > > - Cover (gpio via hall sensor)
> > > > > > > - RC5T619 PMIC (the kernel misses support for rtc and charger
> > > > > > >   subdevices).
> > > > > > > - Backlight via lm3630a
> > > > > > > - Wifi sdio chip detection (mmc-powerseq and stuff)
> > > > > > > 
> > > > > > > It is based on vendor kernel but heavily reworked due to many
> > > > > > > changed bindings.
> > > > > > > 
> > > > > > > Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
> > > > > > > ---
> > > > > > > Changes in v3:
> > > > > > > - better led name
> > > > > > > - correct memory size
> > > > > > > - comments about missing devices
> > > > > > > 
> > > > > > > Changes in v2:
> > > > > > > - reordered, was 1/3
> > > > > > > - moved pinmuxes to their actual users, not the parents
> > > > > > >   of them
> > > > > > > - removed some already-disabled stuff
> > > > > > > - minor cleanups      
> > > > > > 
> > > > > > You won't change the muxing, so a this dtsi can be self contained?
> > > > > >     
> > > > > So you want me to put a big 
> > > > > #if defined(MX6SLL)     
> > > > 
> > > > Not sure what the comment meant, but no, don't do this. C defines in dts 
> > > > files are for symbolic names for numbers and assembling bitfields and 
> > > > that's it.  
> > > 
> > > yes, that is also my opinion. For now, there is only one user
> > > of this .dtsi, but I have another one in preparation. That is the
> > > reason for splitting things between .dts and .dtsi to avoid such ugly
> > > ifdefs  
> > 
> > Then IMHO the pnictrl-* entries shouldn't appear in the dsti.
> > 
> hmm, maybe now I understand your idea:
> You do not want only to have
> 
>   pinctrl_lm3630a_bl_gpio: lm3630a_bl_gpio_grp {
>                         fsl,pins = <
>                                 MX6SLL_PAD_EPDC_PWR_CTRL3__GPIO2_IO10   0x10059 /* HWEN */
>                         >;
>                 };
> in dts, but also  do not have these in .dtsi:
> 
>                 pinctrl-names = "default";
>                 pinctrl-0 = <&pinctrl_lm3630a_bl_gpio>;
> 
> and instead have in dts:
> &lm3630a {
>  	pinctrl-names = "default";
>         pinctrl-0 = <&pinctrl_lm3630a_bl_gpio>;
> 	
> };
> 
> 
> just to make sure I get it right before doing the restructuring work. That way of structuring things did not come to my mind, but then the .dtsi is self-contained.

That is what I mean but wait for Shawn's comments. It's just my opinion
that .dtsi and .dts files should be self-contained.

Regards,
  Marco

> Regards,
> Andreas



-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
