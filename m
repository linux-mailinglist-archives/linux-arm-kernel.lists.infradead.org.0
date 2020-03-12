Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0529318261D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 01:10:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kIMyXgY/mbsSa8lI/zQWjLifYEbT6lqdeb+Qdpe5Vvw=; b=PjwUUeoU+cpRdu
	8vYdRhXHOeEn0iGvV3Z/4wVO+TlC6RrZx0qRZOV7ec1kMhlICyBJrS3Q3uDWeWdmMGUCvPsh4JXp/
	9fwC9+p6LxFHqsNZuvqQ28FoWTjVih6RVnu151GqxQY6awa+9ZQAbVfcRTIQydsGMZmi2wD0ZVzlv
	ublU2SDkTPgVjh95KsDniE02tUIlvUugnm9OmcdX2ApHKJiKs3lRotinoFAfFZWH90ZLVq2DKXxuH
	cV3p0Jm7Tr9kmdoT5d92yDczlO3l3Jmh3f6yszmQ6Myskn65a6pADncnYg/VOiKMUTYOr6jHyo7nL
	lyCMPlM/C0eMIA+QJJbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCBQ5-0007vL-BC; Thu, 12 Mar 2020 00:09:49 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCBPx-0007ue-C7
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 00:09:42 +0000
Received: by mail-pl1-x641.google.com with SMTP id ay11so1887595plb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 17:09:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=9ApGOF5PBkyoeBPogSoc/7/ab/yJXEM4Uq6xzW0uckE=;
 b=qa/JjpNbOa07fUsB4jPdLDm52/jZZEQRH9wlnggCo8DYirC2AP/CxM7bIpeGf+pTsZ
 Uv9+2rKZqzD67ItMqFhBlkKxIM3pO4GTO/b21mX73+MdeJ8hXW9aA30m/c7gsxNFkmvY
 2l3HzKT7rZseU2snFyYgrJqHPN997zzhpWRiGk0t+jriJZeQ3BOe/fmG//AR7IdLhdFr
 uQzd7AOSjXIYBl7IBeG3pQGBBvzaLhYsBEqU4s+4zR1iUyentr12iqjc2dKsAzemOigy
 iZ6MrnT4onYr65Ude8HVtSsE4M05XvWBLKobbUKLxWtQ+JleX207ym20znvdc2QktO4I
 g/WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9ApGOF5PBkyoeBPogSoc/7/ab/yJXEM4Uq6xzW0uckE=;
 b=GxTrKLCxdx22MLq8FhCqJCgOnW+LUs1M5mRtKEJqEW9LVCR1SPkFHCk99QVecoIZZG
 knUJh5IkVDHd4VuIABlnkAZrJKkysJticmYrR/mYcL+dTUbFUBK0c2TEzgNyHmfBLyHs
 5yeA0ugN8Znj/FYwqZOKqozRxfmhmYUUOj9Yn7AqFqEMoJuRBHHNkQ40TmQ9KO30Li7M
 EqbVtZlrp3v6pMKGfqiblbEgGN1nuj36DEyloBGCh/3AVCiYOXrV8V+m2yIc1p/7420U
 xlJuqHw5RrZE9dlrLTXPU+3+cO1D4Vi4js5q1P4AjF6LpF1D9K01rhvv5byh4V5LX9Lc
 sBeg==
X-Gm-Message-State: ANhLgQ2P7BZahthzdz4jIBLp9u0lIEPdxto6f+/wImpP8AkCT0YLy8JB
 jtuy7M/uFfwuJasRebYLRaA=
X-Google-Smtp-Source: ADFU+vtML21USPDOMZ+PmnB2abZahmaHnFt3ItHVXPSoef4wnUi8Xp1UT2B8XYgt+E7etOPYpGvc6g==
X-Received: by 2002:a17:902:d88d:: with SMTP id
 b13mr5144514plz.228.1583971779921; 
 Wed, 11 Mar 2020 17:09:39 -0700 (PDT)
Received: from taoren-ubuntu-R90MNF91 (c-24-4-25-55.hsd1.ca.comcast.net.
 [24.4.25.55])
 by smtp.gmail.com with ESMTPSA id e11sm9957036pfj.95.2020.03.11.17.09.38
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 11 Mar 2020 17:09:39 -0700 (PDT)
Date: Wed, 11 Mar 2020 17:09:31 -0700
From: Tao Ren <rentao.bupt@gmail.com>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Subject: Re: [PATCH v2] usb: gadget: aspeed: improve vhub port irq handling
Message-ID: <20200312000930.GA3956@taoren-ubuntu-R90MNF91>
References: <20200305234746.1002-1-rentao.bupt@gmail.com>
 <481e9b7d40c51505518a34ddc2515d3200dbf158.camel@kernel.crashing.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <481e9b7d40c51505518a34ddc2515d3200dbf158.camel@kernel.crashing.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_170941_437989_10D1C339 
X-CRM114-Status: GOOD (  20.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Hi Ben,

On Wed, Mar 11, 2020 at 12:31:22PM +1100, Benjamin Herrenschmidt wrote:
> On Thu, 2020-03-05 at 15:47 -0800, rentao.bupt@gmail.com wrote:
> > From: Tao Ren <rentao.bupt@gmail.com>
> > 
> > This patch evaluates vhub ports' irq mask before going through per-port
> > irq handling one by one, which helps to speed up irq handling in case
> > there is no port interrupt.
> > 
> > Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
> > ---
> >  Changes in v2:
> >    - use "for_each_set_bit" to speed up port irq handling.
> > 
> >  drivers/usb/gadget/udc/aspeed-vhub/core.c | 11 ++++++++---
> >  drivers/usb/gadget/udc/aspeed-vhub/vhub.h |  8 +++-----
> >  2 files changed, 11 insertions(+), 8 deletions(-)
> > 
> > diff --git a/drivers/usb/gadget/udc/aspeed-vhub/core.c b/drivers/usb/gadget/udc/aspeed-vhub/core.c
> > index f8d35dd60c34..af2dbd405361 100644
> > --- a/drivers/usb/gadget/udc/aspeed-vhub/core.c
> > +++ b/drivers/usb/gadget/udc/aspeed-vhub/core.c
> > @@ -134,11 +134,14 @@ static irqreturn_t ast_vhub_irq(int irq, void *data)
> >  	}
> >  
> >  	/* Handle device interrupts */
> > -	for (i = 0; i < vhub->max_ports; i++) {
> > -		u32 dev_mask = VHUB_IRQ_DEVICE1 << i;
> > +	if (istat & vhub->port_irq_mask) {
> > +		int offset = VHUB_IRQ_DEV1_BIT;
> > +		int size = VHUB_IRQ_DEV1_BIT + vhub->max_ports;
> >  
> > -		if (istat & dev_mask)
> > +		for_each_set_bit_from(offset, (unsigned long *)&istat, size) 
> 
> That type cast is very bad. It will not work on big endian for example
> (yes this driver isn't used on big endian today but still).
> 
> Please assign istat to an unsigned long (or make it unsigned long to
> begin with).

Thanks for pointing it out. Will fix it in v3.

Cheers,

Tao

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
