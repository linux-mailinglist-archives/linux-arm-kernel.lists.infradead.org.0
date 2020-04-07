Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50CE11A06F0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 08:03:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qmDGRqHMEf8w5Bbnm/AWlao4QPADjlm1WBD/7wGGtG8=; b=XiNhVX63zxMRDq
	mT9Up8nrYEjdM+UXMjIlowiAyr40EM2N2Wl0GoVjZJffRQmWrT+uD8s5JFNzq4m5za3kJgTPDjM3b
	vBB9tjpjgduaYLhuEto167j0jungDvIzSb2WkCAIkSCSt8Nz1Tx9x/Y8pZPae+Il+mxPnDO/tBlX+
	ttFxM7kEbEM9ctgsCh1dQOq1NUz2xzWeBnEdUSq9sjDM8tUBaAMZuuTYBt6b0TV+tYdbW1M7PkNqD
	2MYOmrNK//QXF0PV//ea3qV+Z7YG1X5Vka5UFFs18lXlbJ9oEZoaEJKl+z0pYVkxLxZKBs+HsJr8b
	RsgewjKkylYhzzZRMFYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLhK9-0007Qh-4e; Tue, 07 Apr 2020 06:03:01 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLhK1-0007Q5-AX
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 06:02:55 +0000
Received: by mail-pj1-x1043.google.com with SMTP id q16so827040pje.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 23:02:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=mDrnzDZiOnBQa09dvb0Cd1YjsF5mMmyz1I055wbl9vg=;
 b=meOsJwIutYxTrhH9bp6ewRd5RYJhEuAug27VMNargRV3jJhXH/2M5/2bLN3x6lLh6L
 qHDayjzoxQfjLNsOtDmIycx2hqVR7RlolxiUPwl1bR+K0kWCwmANPG7GnJt9Zdjy+Yt6
 PSyAwp2HEzmADUXurEsLRtaijgS2W+MetX2pV6K1dypT7ZnnYmqloQsMiFB7WXnU6Zyn
 6fl0LFoy8Riof1ih1YJzGFq2znARDo2Q8G+SOGeK0JzJBJB2suZC9i+DsbqBDMGdTpoN
 9rhZ6q9k7JDlUaRQ979800OtaTOeL0DwrDvpc3qrq4RiPL6KGs3RKSQM9wBi+zK06jZt
 VYpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=mDrnzDZiOnBQa09dvb0Cd1YjsF5mMmyz1I055wbl9vg=;
 b=LsVjDGIRSpBRdfgCYfTC9Fio0VUUd3Gbng64rs9KcYrnLk9uf8khu9yJd+ReFj5hff
 0KZ3w2oqP1WJejqIL+1KFyEaHuozQPCJ+Qwzwa/9a0gFINoq8yHuVQDaKmX8RyVdtui8
 oWqyCHGJ1UWqr8BV/4juRDoRo8n1ZdeapG+nhdVOdeLjRlKpEKV9/9eZf3GmSacAR/15
 bwUIAr1+ra1xrmstSf/3hiy2Eo2mByCUtBwT2n0PXqZtw145G7Vb8NnBbsaGe4EX4k9Q
 ZrfCZpSiwr4AAl9g50klt/I8ozflRZZdHwX/uJp1LBOa7R3oC+ofjjKE4kiM09mPrTMC
 itXw==
X-Gm-Message-State: AGi0PuYraU+iV3pN0WVEQxYJLucLgvSodSWdrqqnmO5xFbgFGDoSZ5+3
 MHxOm6sqJ+qxihdLP7RSixcSiLVr
X-Google-Smtp-Source: APiQypIQztCXQB9qQWzpcptTM4CGBLA/xZSQCGcmzobvLJ1Ru341f80oLgBRRdcEFutuAOe/Kse/qw==
X-Received: by 2002:a17:902:a411:: with SMTP id
 p17mr939658plq.157.1586239371640; 
 Mon, 06 Apr 2020 23:02:51 -0700 (PDT)
Received: from taoren-ubuntu-R90MNF91 (c-73-252-146-110.hsd1.ca.comcast.net.
 [73.252.146.110])
 by smtp.gmail.com with ESMTPSA id d22sm2030774pgh.11.2020.04.06.23.02.50
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 06 Apr 2020 23:02:51 -0700 (PDT)
Date: Mon, 6 Apr 2020 23:02:43 -0700
From: Tao Ren <rentao.bupt@gmail.com>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Subject: Re: [PATCH v3] usb: gadget: aspeed: improve vhub port irq handling
Message-ID: <20200407060242.GA15050@taoren-ubuntu-R90MNF91>
References: <20200315191430.12379-1-rentao.bupt@gmail.com>
 <20200401215826.GA8248@taoren-ubuntu-R90MNF91>
 <512d625e45ea953d722bb7ea73c3619730312284.camel@kernel.crashing.org>
 <20200403064826.GA10866@taoren-ubuntu-R90MNF91>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200403064826.GA10866@taoren-ubuntu-R90MNF91>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_230253_390649_63435BDF 
X-CRM114-Status: GOOD (  29.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Felipe Balbi <balbi@kernel.org>, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, openbmc@lists.ozlabs.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 Stephen Boyd <swboyd@chromium.org>, Joel Stanley <joel@jms.id.au>,
 taoren@fb.com, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ben,

On Thu, Apr 02, 2020 at 11:48:27PM -0700, Tao Ren wrote:
> On Thu, Apr 02, 2020 at 09:45:38PM +1100, Benjamin Herrenschmidt wrote:
> > On Wed, 2020-04-01 at 14:58 -0700, Tao Ren wrote:
> > > Hi Ben,
> > > 
> > > Any further comments on the patch?
> > 
> > Ah sorry, nope. Did you check the generated assembly to see if it
> > looked any better ? :-)
> > 
> > Otherwise,
> > 
> > Acked-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>
> 
> Thanks Ben for the review. Let me see if I can collect some runtime data
> on my ast2400 BMC platform. Will update back later.

I ran some testing on my ast2400 and ast2500 BMC and looks like the
for() loop runs faster than for_each_set_bit_from() loop in my
environment. I'm not sure if something needs to be revised in my test
code, but please kindly share your suggestions:

I use get_cycles() to calculate execution time of 2 different loops, and
ast_vhub_dev_irq() is replaced with barrier() to avoid "noise"; below
are the results:

  - when downstream port number is 5 and only 1 irq bit is set, it takes
    ~30 cycles to finish for_each_set_bit() loop, and 20-25 cycles to
    finish the for() loop.

  - if downstream port number is 5 and all 5 bits are set, then
    for_each_set_bit() loop takes ~50 cycles and for() loop takes ~25
    cycles.

  - when I increase downsteam port number to 16 and set 1 irq bit, the
    for_each_set_bit() loop takes ~30 cycles and for() loop takes 25
    cycles. It's a little surprise to me because I thought for() loop
    would cost 60+ cycles (3 times of the value when port number is 5).

  - if downstream port number is 16 and all irq status bits are set,
    then for_each_set_bit() loop takes 60-70 cycles and for() loop takes
    30+ cycles.


Cheers,

Tao

> 
> > > 
> > > On Sun, Mar 15, 2020 at 12:14:30PM -0700, rentao.bupt@gmail.com
> > > wrote:
> > > > From: Tao Ren <rentao.bupt@gmail.com>
> > > > 
> > > > This patch evaluates vhub ports' irq mask before going through per-
> > > > port
> > > > irq handling one by one, which helps to speed up irq handling in
> > > > case
> > > > there is no port interrupt.
> > > > 
> > > > Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
> > > > ---
> > > >  Changes in v3:
> > > >    - assign istat to (unsigned long) bitmap before calling
> > > >      "for_each_set_bit_from".
> > > >  Changes in v2:
> > > >    - use "for_each_set_bit" to speed up port irq handling.
> > > > 
> > > >  drivers/usb/gadget/udc/aspeed-vhub/core.c | 12 +++++++++---
> > > >  drivers/usb/gadget/udc/aspeed-vhub/vhub.h |  8 +++-----
> > > >  2 files changed, 12 insertions(+), 8 deletions(-)
> > > > 
> > > > diff --git a/drivers/usb/gadget/udc/aspeed-vhub/core.c
> > > > b/drivers/usb/gadget/udc/aspeed-vhub/core.c
> > > > index f8d35dd60c34..555e8645fb1e 100644
> > > > --- a/drivers/usb/gadget/udc/aspeed-vhub/core.c
> > > > +++ b/drivers/usb/gadget/udc/aspeed-vhub/core.c
> > > > @@ -134,11 +134,15 @@ static irqreturn_t ast_vhub_irq(int irq, void
> > > > *data)
> > > >  	}
> > > >  
> > > >  	/* Handle device interrupts */
> > > > -	for (i = 0; i < vhub->max_ports; i++) {
> > > > -		u32 dev_mask = VHUB_IRQ_DEVICE1 << i;
> > > > +	if (istat & vhub->port_irq_mask) {
> > > > +		unsigned long bitmap = istat;
> > > > +		int offset = VHUB_IRQ_DEV1_BIT;
> > > > +		int size = VHUB_IRQ_DEV1_BIT + vhub->max_ports;
> > > >  
> > > > -		if (istat & dev_mask)
> > > > +		for_each_set_bit_from(offset, &bitmap, size) {
> > > > +			i = offset - VHUB_IRQ_DEV1_BIT;
> > > >  			ast_vhub_dev_irq(&vhub->ports[i].dev);
> > > > +		}
> > > >  	}
> > > >  
> > > >  	/* Handle top-level vHub EP0 interrupts */
> > > > @@ -332,6 +336,8 @@ static int ast_vhub_probe(struct
> > > > platform_device *pdev)
> > > >  
> > > >  	spin_lock_init(&vhub->lock);
> > > >  	vhub->pdev = pdev;
> > > > +	vhub->port_irq_mask = GENMASK(VHUB_IRQ_DEV1_BIT + vhub-
> > > > >max_ports - 1,
> > > > +				      VHUB_IRQ_DEV1_BIT);
> > > >  
> > > >  	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> > > >  	vhub->regs = devm_ioremap_resource(&pdev->dev, res);
> > > > diff --git a/drivers/usb/gadget/udc/aspeed-vhub/vhub.h
> > > > b/drivers/usb/gadget/udc/aspeed-vhub/vhub.h
> > > > index fac79ef6d669..23a1ac91f8d2 100644
> > > > --- a/drivers/usb/gadget/udc/aspeed-vhub/vhub.h
> > > > +++ b/drivers/usb/gadget/udc/aspeed-vhub/vhub.h
> > > > @@ -51,14 +51,11 @@
> > > >  #define VHUB_CTRL_UPSTREAM_CONNECT		(1 << 0)
> > > >  
> > > >  /* IER & ISR */
> > > > +#define VHUB_IRQ_DEV1_BIT			9
> > > >  #define VHUB_IRQ_USB_CMD_DEADLOCK		(1 << 18)
> > > >  #define VHUB_IRQ_EP_POOL_NAK			(1 << 17)
> > > >  #define VHUB_IRQ_EP_POOL_ACK_STALL		(1 << 16)
> > > > -#define VHUB_IRQ_DEVICE5			(1 << 13)
> > > > -#define VHUB_IRQ_DEVICE4			(1 << 12)
> > > > -#define VHUB_IRQ_DEVICE3			(1 << 11)
> > > > -#define VHUB_IRQ_DEVICE2			(1 << 10)
> > > > -#define VHUB_IRQ_DEVICE1			(1 << 9)
> > > > +#define VHUB_IRQ_DEVICE1			(1 <<
> > > > (VHUB_IRQ_DEV1_BIT))
> > > >  #define VHUB_IRQ_BUS_RESUME			(1 << 8)
> > > >  #define VHUB_IRQ_BUS_SUSPEND 			(1 << 7)
> > > >  #define VHUB_IRQ_BUS_RESET 			(1 << 6)
> > > > @@ -402,6 +399,7 @@ struct ast_vhub {
> > > >  	/* Per-port info */
> > > >  	struct ast_vhub_port		*ports;
> > > >  	u32				max_ports;
> > > > +	u32				port_irq_mask;
> > > >  
> > > >  	/* Generic EP data structures */
> > > >  	struct ast_vhub_ep		*epns;
> > > > -- 
> > > > 2.17.1
> > > > 
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
