Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B584119D06C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 08:48:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dD8HLkajcuhkYLn/nhbjPAgHhN7Saslm9/iYhO/nhCM=; b=OpqZtLsT37UTOk
	wYJuGAwfLLCZjtUHAm8MtvC+wftr4d/t/1kIW5/qlhELTp+NvVfjBBCr48PTadiFjtTgUVQp8JkWk
	vEOmeJDq/LOmWAcLyVi33k09FjmrHg8qsLBMSs/GtQKckO0MRwg6nwkV9YHQPlizBd0HcDmpGpEBE
	5u+XiaAewa5PdUXpM+mEHdE297thpMliSdmIbe7lD475AvM+lg45NZk7bEt5jTkWQWcntjPoUGKp+
	qA3r8pOkXpczPjke1watXKylKo41bkoqpE38PAkEFaDRxfl5hAtB9cQ5WtT3w0KFUasa8C1Tx/8V9
	Ikne9GMRIeNLfvrSMpEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKG8A-0005RY-4V; Fri, 03 Apr 2020 06:48:42 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKG82-0005RB-W0
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 06:48:36 +0000
Received: by mail-pl1-x641.google.com with SMTP id d24so2337340pll.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Apr 2020 23:48:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=X8sH17jtDMINv9quf+CHHV/bCIE6kl8S5IdK86F1KQE=;
 b=bOPWjYg7B8DH9QrulXs3F3wHHmfBrRkcoJhncqWc/qjbF/8MADE6iaxFrqrVL7n63C
 c0UEmgkpkxg1YiwlaiwNHAYDYe0x/n2F7krhJFTLeLiDoymAT+IdIJbTXsWSdXrsVGyk
 Yeu8mm9g9ttT7A0fpUbD93zm5tAos+ax/KJHdF8lBbq44zXyYrbUwR3nUWImUJDKtP8o
 L2vEoag+x+xo00ebLKOkqTFsKYY85PmgrbI6j5MDW6xgF+/jU6Mi3U/jCxLjFridKtwE
 uS8sioUYLEi8DnYmzN1WKPq5Pyc+G/BY1ZS7DOA92Md5zp75HnPGx8UVFZbEktKyLlqf
 pvJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=X8sH17jtDMINv9quf+CHHV/bCIE6kl8S5IdK86F1KQE=;
 b=rqBRiWGqPmDN3nnVmn8mFeYnoOcSIJfeWf+rdPc1lIJOb4ijK5Fm1zd+EKeR6+oPUc
 K1zC6psZwGERtKtgEEC9PVoHUDk+vtRYux2KCNsLBUGWN7+Qkb5lg9bHcaH1KMzgpjym
 rSC/m7kO7BS6oFCIiK/g/KpkE+92m+7vjvdmViZoUXaRBFaafyEH4bvYMN3+gNtshpbr
 mUwcMb+cVLNde7pQFsQDfCZBRHNYztQsL5GKQTH3K1D/C7qt1hgHoYb1sLt0ZHhTb/jP
 9j03rLtRtanXzy1Tw1j1LyIM3nssfzldHkXmYLx+dabT49AyKKmhuL6/qJaUmMwN0BiY
 S/7g==
X-Gm-Message-State: AGi0PuYr8+Idbr+vybknPSQRiP5kIWyoP0x4iMW84yTUBaj+aNQJmKMF
 AcGFTGJ8lG/LrMUbjTKifTE=
X-Google-Smtp-Source: APiQypIgxqh1DBnzx+8YsP5YKSJSTmMCy4ilEK1+IGjU0CJPpK8/Zzl472xC/xJqFtVSDjcQHF5BBQ==
X-Received: by 2002:a17:902:9a45:: with SMTP id
 x5mr6107549plv.296.1585896514050; 
 Thu, 02 Apr 2020 23:48:34 -0700 (PDT)
Received: from taoren-ubuntu-R90MNF91 (c-73-252-146-110.hsd1.ca.comcast.net.
 [73.252.146.110])
 by smtp.gmail.com with ESMTPSA id x25sm4719713pgc.63.2020.04.02.23.48.32
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 02 Apr 2020 23:48:33 -0700 (PDT)
Date: Thu, 2 Apr 2020 23:48:27 -0700
From: Tao Ren <rentao.bupt@gmail.com>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Subject: Re: [PATCH v3] usb: gadget: aspeed: improve vhub port irq handling
Message-ID: <20200403064826.GA10866@taoren-ubuntu-R90MNF91>
References: <20200315191430.12379-1-rentao.bupt@gmail.com>
 <20200401215826.GA8248@taoren-ubuntu-R90MNF91>
 <512d625e45ea953d722bb7ea73c3619730312284.camel@kernel.crashing.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <512d625e45ea953d722bb7ea73c3619730312284.camel@kernel.crashing.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_234835_051968_936037FF 
X-CRM114-Status: GOOD (  25.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Thu, Apr 02, 2020 at 09:45:38PM +1100, Benjamin Herrenschmidt wrote:
> On Wed, 2020-04-01 at 14:58 -0700, Tao Ren wrote:
> > Hi Ben,
> > 
> > Any further comments on the patch?
> 
> Ah sorry, nope. Did you check the generated assembly to see if it
> looked any better ? :-)
> 
> Otherwise,
> 
> Acked-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>

Thanks Ben for the review. Let me see if I can collect some runtime data
on my ast2400 BMC platform. Will update back later.


Cheers,

Tao
> 
> > 
> > Cheers,
> > 
> > Tao
> > 
> > On Sun, Mar 15, 2020 at 12:14:30PM -0700, rentao.bupt@gmail.com
> > wrote:
> > > From: Tao Ren <rentao.bupt@gmail.com>
> > > 
> > > This patch evaluates vhub ports' irq mask before going through per-
> > > port
> > > irq handling one by one, which helps to speed up irq handling in
> > > case
> > > there is no port interrupt.
> > > 
> > > Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
> > > ---
> > >  Changes in v3:
> > >    - assign istat to (unsigned long) bitmap before calling
> > >      "for_each_set_bit_from".
> > >  Changes in v2:
> > >    - use "for_each_set_bit" to speed up port irq handling.
> > > 
> > >  drivers/usb/gadget/udc/aspeed-vhub/core.c | 12 +++++++++---
> > >  drivers/usb/gadget/udc/aspeed-vhub/vhub.h |  8 +++-----
> > >  2 files changed, 12 insertions(+), 8 deletions(-)
> > > 
> > > diff --git a/drivers/usb/gadget/udc/aspeed-vhub/core.c
> > > b/drivers/usb/gadget/udc/aspeed-vhub/core.c
> > > index f8d35dd60c34..555e8645fb1e 100644
> > > --- a/drivers/usb/gadget/udc/aspeed-vhub/core.c
> > > +++ b/drivers/usb/gadget/udc/aspeed-vhub/core.c
> > > @@ -134,11 +134,15 @@ static irqreturn_t ast_vhub_irq(int irq, void
> > > *data)
> > >  	}
> > >  
> > >  	/* Handle device interrupts */
> > > -	for (i = 0; i < vhub->max_ports; i++) {
> > > -		u32 dev_mask = VHUB_IRQ_DEVICE1 << i;
> > > +	if (istat & vhub->port_irq_mask) {
> > > +		unsigned long bitmap = istat;
> > > +		int offset = VHUB_IRQ_DEV1_BIT;
> > > +		int size = VHUB_IRQ_DEV1_BIT + vhub->max_ports;
> > >  
> > > -		if (istat & dev_mask)
> > > +		for_each_set_bit_from(offset, &bitmap, size) {
> > > +			i = offset - VHUB_IRQ_DEV1_BIT;
> > >  			ast_vhub_dev_irq(&vhub->ports[i].dev);
> > > +		}
> > >  	}
> > >  
> > >  	/* Handle top-level vHub EP0 interrupts */
> > > @@ -332,6 +336,8 @@ static int ast_vhub_probe(struct
> > > platform_device *pdev)
> > >  
> > >  	spin_lock_init(&vhub->lock);
> > >  	vhub->pdev = pdev;
> > > +	vhub->port_irq_mask = GENMASK(VHUB_IRQ_DEV1_BIT + vhub-
> > > >max_ports - 1,
> > > +				      VHUB_IRQ_DEV1_BIT);
> > >  
> > >  	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> > >  	vhub->regs = devm_ioremap_resource(&pdev->dev, res);
> > > diff --git a/drivers/usb/gadget/udc/aspeed-vhub/vhub.h
> > > b/drivers/usb/gadget/udc/aspeed-vhub/vhub.h
> > > index fac79ef6d669..23a1ac91f8d2 100644
> > > --- a/drivers/usb/gadget/udc/aspeed-vhub/vhub.h
> > > +++ b/drivers/usb/gadget/udc/aspeed-vhub/vhub.h
> > > @@ -51,14 +51,11 @@
> > >  #define VHUB_CTRL_UPSTREAM_CONNECT		(1 << 0)
> > >  
> > >  /* IER & ISR */
> > > +#define VHUB_IRQ_DEV1_BIT			9
> > >  #define VHUB_IRQ_USB_CMD_DEADLOCK		(1 << 18)
> > >  #define VHUB_IRQ_EP_POOL_NAK			(1 << 17)
> > >  #define VHUB_IRQ_EP_POOL_ACK_STALL		(1 << 16)
> > > -#define VHUB_IRQ_DEVICE5			(1 << 13)
> > > -#define VHUB_IRQ_DEVICE4			(1 << 12)
> > > -#define VHUB_IRQ_DEVICE3			(1 << 11)
> > > -#define VHUB_IRQ_DEVICE2			(1 << 10)
> > > -#define VHUB_IRQ_DEVICE1			(1 << 9)
> > > +#define VHUB_IRQ_DEVICE1			(1 <<
> > > (VHUB_IRQ_DEV1_BIT))
> > >  #define VHUB_IRQ_BUS_RESUME			(1 << 8)
> > >  #define VHUB_IRQ_BUS_SUSPEND 			(1 << 7)
> > >  #define VHUB_IRQ_BUS_RESET 			(1 << 6)
> > > @@ -402,6 +399,7 @@ struct ast_vhub {
> > >  	/* Per-port info */
> > >  	struct ast_vhub_port		*ports;
> > >  	u32				max_ports;
> > > +	u32				port_irq_mask;
> > >  
> > >  	/* Generic EP data structures */
> > >  	struct ast_vhub_ep		*epns;
> > > -- 
> > > 2.17.1
> > > 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
