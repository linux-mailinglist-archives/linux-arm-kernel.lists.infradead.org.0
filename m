Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AE031583C1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 20:33:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G6qqX5Wx+lPZ9JoMWBS4B8tv2YB934b70HqGFfYeXlQ=; b=ulLbV28u5Qw6hB
	9epARnMVQImbLzpEaLlPCiMuJkn0jF9JNjy9VTNPXpTtU/lIkpDBQon9d2MgZwEPDOrmyAW1zgFDi
	CsxGJxAx53ynujL0kApDigxarL5E8lOPZX3M2UT0jIbihClkb1hj/2KvKeZZ7fEnxzu0L1ySJjVmK
	4DHefrH2zSzKxrmsYX5Yv5/zogKnVgACpmrJgqCJuT6fiNpJDiqlseBPfs9prUogmFyH5vBfigXUR
	BH2kQwMVAc+bPntTS1zHz4rjjqk1p5myaFmZ7sN2Le068+ESK3sjRQDr3o3u0al0lp7E6/LbWRR5s
	yfW3HGVIRYJT0kvNEdJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Ens-0007Ua-02; Mon, 10 Feb 2020 19:33:08 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1EmM-00062Y-7n
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 19:31:36 +0000
Received: by mail-pg1-x544.google.com with SMTP id j15so4426912pgm.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 11:31:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ZuPt180kRsjCVRCyZy+KTCJcOp2X4om9PYJBQV60Moc=;
 b=shdUAmJ14w97aqe7DSTm0HIXz2ZpCws3HjMztJNoydnWz7J6zzufdnzB/MDKNYKzjn
 Np254hbT6cgaPBn4FZz9ykTV7VmZOWgGY5G4KUBewPJZ+5RTiSSoLznfegSaBWBMTsAx
 gF4sEnhtnTO9ia+sOMz4eYufu/7D2ttRDIqjD+aWVPaJ6KVgTc7mvboVz3b1+J4ME9Ze
 s7F4c9JQ+vO4yJKRUNQVKNNIZ+unVmhZdODmaUO3wHnE1HKQpyYeaNm/mneuWgm/uK+0
 CIeE+sMw+0gmAefHNgRg+orMZZIiObTfERMqDWa9up90fnYoNWCE6hMpkPx71UwbLhCc
 IC0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ZuPt180kRsjCVRCyZy+KTCJcOp2X4om9PYJBQV60Moc=;
 b=aEM5uN/AJ7ryoVshZiTnY50NdQCg3Vu7ejbdb/9OQJpVjgb8KdrN39HhWqW83UjUDi
 xewEJaIjwBX3lV2OC3VNJfltYiiD0n88+433utFHeRGdW52r+U4rxWOam/0M0JQXu3Xc
 1133YZzpDLcUlU2AYnYpQEqNaK716R0FdwR1zSgivs/wzoOAm92QaqGIKdVn5JLS/e5q
 KxXMP/BoRV1F+9t5VN1kqzjIOQFkp1JZmdhnoR/YRWlrzzJmj6XBwfpm1c/oEeWH07jW
 pox3jT4FvqNllWMXlcsIM78Wg+A0FCOjF7KraMq1pEDYP1BahUKfwbRvOCL+LqowmEBY
 gsKg==
X-Gm-Message-State: APjAAAUXFKQbBL+bbaYmAkOxcc9utqc4rCqml8l9VlWksPi86FXGGt3w
 KStXhKVKHBvUPBshi8ECrZk=
X-Google-Smtp-Source: APXvYqxTAam4vg8YO3HTEwUSpm+D/PTtAnCrM86RpDJMKgUVL7IuukH9eQEDieHTCjyqJRoqovvDwQ==
X-Received: by 2002:a63:e14b:: with SMTP id h11mr3059825pgk.297.1581363093006; 
 Mon, 10 Feb 2020 11:31:33 -0800 (PST)
Received: from taoren-ubuntu-R90MNF91 ([2620:10d:c090:200::2:87f0])
 by smtp.gmail.com with ESMTPSA id 28sm895963pgl.42.2020.02.10.11.31.31
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 10 Feb 2020 11:31:32 -0800 (PST)
Date: Mon, 10 Feb 2020 11:31:29 -0800
From: Tao Ren <rentao.bupt@gmail.com>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Subject: Re: [PATCH 2/3] usb: gadget: aspeed: add ast2600 vhub support
Message-ID: <20200210193128.GC5346@taoren-ubuntu-R90MNF91>
References: <20200131222157.20849-1-rentao.bupt@gmail.com>
 <20200131222157.20849-3-rentao.bupt@gmail.com>
 <CACPK8XcmUYhnePr1AG2M9P-oGvOM=zCM+r44jWUzPYGxUEGOGw@mail.gmail.com>
 <b7bf421b5fad397a7ef430af6c0c09602dd66c2a.camel@kernel.crashing.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b7bf421b5fad397a7ef430af6c0c09602dd66c2a.camel@kernel.crashing.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_113134_341642_D1172461 
X-CRM114-Status: GOOD (  25.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Joel Stanley <joel@jms.id.au>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Colin Ian King <colin.king@canonical.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 10, 2020 at 08:29:22AM +0100, Benjamin Herrenschmidt wrote:
> On Mon, 2020-02-10 at 02:48 +0000, Joel Stanley wrote:
> > On Fri, 31 Jan 2020 at 22:22, <rentao.bupt@gmail.com> wrote:
> > > 
> > > From: Tao Ren <rentao.bupt@gmail.com>
> > > 
> > > Add AST2600 support in aspeed-vhub driver. There are 3 major differences
> > > between AST2500 and AST2600 vhub:
> > >   - AST2600 supports 7 downstream ports while AST2500 supports 5.
> > >   - AST2600 supports 21 generic endpoints while AST2500 supports 15.
> > >   - EP0 data buffer's 8-byte DMA alignment restriction is removed from
> > >     AST2600.
> > > 
> > > Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
> > > Reviewed-by: Andrew Jeffery <andrew@aj.id.au>
> 
> Travelling at the moment so my review might be a bit delayed. Also for
> some reason I missed your original submission, sorry about that, please
> poke me next time if I don't reply within a couple of days !

No worries Ben and thanks for the review. I thought people was too busy
during merge window :)

> 
> One thing to look into as well is the 2600 has revived the "device
> controller" which looks like a cut down version of a vhub device, so we
> should break a bit more the linkage between vhub and the underlying
> devices so the latter can be instanciated standalone...
> 
> (Foor for thought, I'm not asking you to do that right now)

Thanks for sharing your thought. I was actually curious why "device
controller" was back. Anyways I feel it might be easier to break the
linkage when we decide to add driver for the "device controller".


Cheers,

Tao
> 
> Cheers,
> Ben.
> 
> > Reviewed-by: Joel Stanley <joel@jms.id.au>
> > 
> > > ---
> > >  drivers/usb/gadget/udc/aspeed-vhub/Kconfig | 4 ++--
> > >  drivers/usb/gadget/udc/aspeed-vhub/core.c  | 9 +++++++++
> > >  2 files changed, 11 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/usb/gadget/udc/aspeed-vhub/Kconfig b/drivers/usb/gadget/udc/aspeed-vhub/Kconfig
> > > index 83ba8a2eb6af..605500b19cf3 100644
> > > --- a/drivers/usb/gadget/udc/aspeed-vhub/Kconfig
> > > +++ b/drivers/usb/gadget/udc/aspeed-vhub/Kconfig
> > > @@ -4,5 +4,5 @@ config USB_ASPEED_VHUB
> > >         depends on ARCH_ASPEED || COMPILE_TEST
> > >         depends on USB_LIBCOMPOSITE
> > >         help
> > > -         USB peripheral controller for the Aspeed AST2500 family
> > > -         SoCs supporting the "vHub" functionality and USB2.0
> > > +         USB peripheral controller for the Aspeed AST2400, AST2500 and
> > > +         AST2600 family SoCs supporting the "vHub" functionality and USB2.0
> > > diff --git a/drivers/usb/gadget/udc/aspeed-vhub/core.c b/drivers/usb/gadget/udc/aspeed-vhub/core.c
> > > index 94081cc04113..c827bf420278 100644
> > > --- a/drivers/usb/gadget/udc/aspeed-vhub/core.c
> > > +++ b/drivers/usb/gadget/udc/aspeed-vhub/core.c
> > > @@ -42,6 +42,11 @@ static const struct ast_vhub_config ast2400_config = {
> > >         .max_epns = 15,
> > >  };
> > > 
> > > +static const struct ast_vhub_config ast2600_config = {
> > > +       .max_ports = 7,
> > > +       .max_epns = 21,
> > > +};
> > > +
> > >  static const struct of_device_id ast_vhub_dt_ids[] = {
> > >         {
> > >                 .compatible = "aspeed,ast2400-usb-vhub",
> > > @@ -51,6 +56,10 @@ static const struct of_device_id ast_vhub_dt_ids[] = {
> > >                 .compatible = "aspeed,ast2500-usb-vhub",
> > >                 .data = &ast2400_config,
> > >         },
> > > +       {
> > > +               .compatible = "aspeed,ast2600-usb-vhub",
> > > +               .data = &ast2600_config,
> > > +       },
> > >         { }
> > >  };
> > >  MODULE_DEVICE_TABLE(of, ast_vhub_dt_ids);
> > > --
> > > 2.17.1
> > > 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
