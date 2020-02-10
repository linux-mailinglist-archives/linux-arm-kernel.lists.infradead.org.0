Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4533F156FD8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 08:30:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=se1POzZfjOZreadtxKcmzXHIT9iGr5VmxIyiCwfilhw=; b=O4uYd+ZuFclaw6
	JUBOoiLsGg1dDvLAFqTBXnhiXBGkKUgVHJvLhAPcl0Wn6kBMZy4phCkkbnUhnwBC8Ny65+Z3raf13
	yUmgHV+LlFw5rcnHQHrUhyYdxjzuLKKOTBY2pdj5gstkMruSFf5o/ncC+4CTxcPWvcV8rSIFm/l19
	5w50NLsmWcK9j7ViaDyhNQGRxCvxyUl+CQ0VntmUhUSmz/kZGl3d2INF5ZzpXZaVdPe0px7+93ew7
	UzkxPxmTOPieWy3Hmop0GJTyTkKnAdHGd/LmOdh2tYTMF8cJbpQMoYkJ5Tf0M2vEWAH/lIt88ifCD
	/gIs6RcVSTndrnik6sEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j13W8-0002F1-R2; Mon, 10 Feb 2020 07:30:04 +0000
Received: from kernel.crashing.org ([76.164.61.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j13Vx-0002CI-PL
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 07:29:55 +0000
Received: from localhost (gate.crashing.org [63.228.1.57])
 (authenticated bits=0)
 by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id 01A7TN4p010982
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Mon, 10 Feb 2020 01:29:29 -0600
Message-ID: <b7bf421b5fad397a7ef430af6c0c09602dd66c2a.camel@kernel.crashing.org>
Subject: Re: [PATCH 2/3] usb: gadget: aspeed: add ast2600 vhub support
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Joel Stanley <joel@jms.id.au>, Tao Ren <rentao.bupt@gmail.com>
Date: Mon, 10 Feb 2020 08:29:22 +0100
In-Reply-To: <CACPK8XcmUYhnePr1AG2M9P-oGvOM=zCM+r44jWUzPYGxUEGOGw@mail.gmail.com>
References: <20200131222157.20849-1-rentao.bupt@gmail.com>
 <20200131222157.20849-3-rentao.bupt@gmail.com>
 <CACPK8XcmUYhnePr1AG2M9P-oGvOM=zCM+r44jWUzPYGxUEGOGw@mail.gmail.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200209_232954_025765_5A10A579 
X-CRM114-Status: GOOD (  19.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: Mark Rutland <mark.rutland@arm.com>, Felipe Balbi <balbi@kernel.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 devicetree <devicetree@vger.kernel.org>, Andrew Jeffery <andrew@aj.id.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>, linux-usb@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Boyd <swboyd@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Colin Ian King <colin.king@canonical.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2020-02-10 at 02:48 +0000, Joel Stanley wrote:
> On Fri, 31 Jan 2020 at 22:22, <rentao.bupt@gmail.com> wrote:
> > 
> > From: Tao Ren <rentao.bupt@gmail.com>
> > 
> > Add AST2600 support in aspeed-vhub driver. There are 3 major differences
> > between AST2500 and AST2600 vhub:
> >   - AST2600 supports 7 downstream ports while AST2500 supports 5.
> >   - AST2600 supports 21 generic endpoints while AST2500 supports 15.
> >   - EP0 data buffer's 8-byte DMA alignment restriction is removed from
> >     AST2600.
> > 
> > Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
> > Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

Travelling at the moment so my review might be a bit delayed. Also for
some reason I missed your original submission, sorry about that, please
poke me next time if I don't reply within a couple of days !

One thing to look into as well is the 2600 has revived the "device
controller" which looks like a cut down version of a vhub device, so we
should break a bit more the linkage between vhub and the underlying
devices so the latter can be instanciated standalone...

(Foor for thought, I'm not asking you to do that right now)

Cheers,
Ben.

> Reviewed-by: Joel Stanley <joel@jms.id.au>
> 
> > ---
> >  drivers/usb/gadget/udc/aspeed-vhub/Kconfig | 4 ++--
> >  drivers/usb/gadget/udc/aspeed-vhub/core.c  | 9 +++++++++
> >  2 files changed, 11 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/usb/gadget/udc/aspeed-vhub/Kconfig b/drivers/usb/gadget/udc/aspeed-vhub/Kconfig
> > index 83ba8a2eb6af..605500b19cf3 100644
> > --- a/drivers/usb/gadget/udc/aspeed-vhub/Kconfig
> > +++ b/drivers/usb/gadget/udc/aspeed-vhub/Kconfig
> > @@ -4,5 +4,5 @@ config USB_ASPEED_VHUB
> >         depends on ARCH_ASPEED || COMPILE_TEST
> >         depends on USB_LIBCOMPOSITE
> >         help
> > -         USB peripheral controller for the Aspeed AST2500 family
> > -         SoCs supporting the "vHub" functionality and USB2.0
> > +         USB peripheral controller for the Aspeed AST2400, AST2500 and
> > +         AST2600 family SoCs supporting the "vHub" functionality and USB2.0
> > diff --git a/drivers/usb/gadget/udc/aspeed-vhub/core.c b/drivers/usb/gadget/udc/aspeed-vhub/core.c
> > index 94081cc04113..c827bf420278 100644
> > --- a/drivers/usb/gadget/udc/aspeed-vhub/core.c
> > +++ b/drivers/usb/gadget/udc/aspeed-vhub/core.c
> > @@ -42,6 +42,11 @@ static const struct ast_vhub_config ast2400_config = {
> >         .max_epns = 15,
> >  };
> > 
> > +static const struct ast_vhub_config ast2600_config = {
> > +       .max_ports = 7,
> > +       .max_epns = 21,
> > +};
> > +
> >  static const struct of_device_id ast_vhub_dt_ids[] = {
> >         {
> >                 .compatible = "aspeed,ast2400-usb-vhub",
> > @@ -51,6 +56,10 @@ static const struct of_device_id ast_vhub_dt_ids[] = {
> >                 .compatible = "aspeed,ast2500-usb-vhub",
> >                 .data = &ast2400_config,
> >         },
> > +       {
> > +               .compatible = "aspeed,ast2600-usb-vhub",
> > +               .data = &ast2600_config,
> > +       },
> >         { }
> >  };
> >  MODULE_DEVICE_TABLE(of, ast_vhub_dt_ids);
> > --
> > 2.17.1
> > 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
