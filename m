Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D70C61048C0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 03:53:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u8bA60PqS56ul+pXpq1U71TzkeTZGhHIwbsDju5WDjw=; b=fYEX/gA9qVTucw
	DqySA3+RhI4aIqEToY4+5NKBSAF2nTBj+Uo6b94Wn3ue3ALMLCMBryaFXKzM5IV5JedKl+Z/xcEqW
	t6t3Oy2dOiepoGrpiZ38qF+YTtK3zw0D5vq+r7/a5LYiNc9OIWiYb/KoX7JpKvmjX8WKkXF/RnN3d
	yRTyaLPHEOvnXe1ZufxSSPcKoir0D6Nfy9pz4U/MdabaBax/Xu5xEoRukU3gnc85i21fx/UEwcRIw
	CqnZs7+s3mwtCWiLlUsGXBJvsSFdu1vRLddddf76Ez3xHjtNxXB76aXsPm1ZrqXGnHkS68dFrDYsw
	uW8QGM/l/qTfA0eYn1rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXcah-0003AE-Bz; Thu, 21 Nov 2019 02:53:07 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXcaT-000395-WB
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 02:53:00 +0000
Received: by mail-qk1-x744.google.com with SMTP id m16so1779436qki.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 18:52:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HRBpb1NofTDSzn/r03yAMNZB5b+BCFqizd3KS9TU4pA=;
 b=eM8XKCwLiBTrYDBgxBsRw2BnAmazqG7Yh6EbctgrhhDT/VkJWtpyd4I0jgafYvddrh
 D66QjPZTHqlc9/T9Pq6r+XndN0ChjvCNCAbtD1ti+CxMAcIA0x8gA/v8a9/8DxOw6uTh
 MX6B2lo/1ZzdCXW7YoJyaVCv3hhhg1OJvwgSQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HRBpb1NofTDSzn/r03yAMNZB5b+BCFqizd3KS9TU4pA=;
 b=neYPEukwvXv9hkk2dKp28dyGy2R8dLc/+3ESVRudxdMlUQ46LJ/4VhRk4t5uSe8/CV
 AM/b+bii1O3KRiFbTFzB/Ej7aSzHDkLGl93fxsFUCTk5AVb2vyJ1v79gEZ61DWo0xu7e
 fZma+r94xGq7RlZ+VoKliH6YWPHgD/5RAs3J7bYf/hPyOb8W7L7IVJw3K7fYIuRXWyR+
 rtfJwRx8dEZkCmX9xuXpoXHonJM+QJXfU+lkfGblNsw23+8kYY9nXOcDkjIler5KplWv
 GzVBnRPvDOlYc+ajAPs4ldEfqw7/FfpidJgJG41/VLU35KfLKTp1TqI7efEO37SMNqZS
 GEhQ==
X-Gm-Message-State: APjAAAX4uRicGYsh+WcRZSH01aQe1aRz8yajScJJe4s5TFVv1EPDM8+9
 KQPheHg/r0S/uLhlK/JMqsqe6H2LPnNgkHiFuTs=
X-Google-Smtp-Source: APXvYqzEOaht5xTwJzZ1PyVm7pSpljnawSJw5pVkoy6TqeJnWlaviiQzQVT03RYWqcb2qhbWWljBiAkv81grK5w5zNg=
X-Received: by 2002:a37:dcc7:: with SMTP id v190mr5861034qki.330.1574304771112; 
 Wed, 20 Nov 2019 18:52:51 -0800 (PST)
MIME-Version: 1.0
References: <20191120000647.30551-1-luc.vanoostenryck@gmail.com>
 <787e54c2-2fe3-4afc-a69b-94771726194b@www.fastmail.com>
In-Reply-To: <787e54c2-2fe3-4afc-a69b-94771726194b@www.fastmail.com>
From: Joel Stanley <joel@jms.id.au>
Date: Thu, 21 Nov 2019 02:52:39 +0000
Message-ID: <CACPK8XfO=F-BtCuDqyQODJv=6joYmyFiQ5eOYC5YuDJhcLSJtw@mail.gmail.com>
Subject: Re: [PATCH] aspeed: fix snoop_file_poll()'s return type
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_185254_971492_3DDABA36 
X-CRM114-Status: GOOD (  15.52  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Robert Lippert <rlippert@google.com>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Patrick Venture <venture@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 20 Nov 2019 at 05:42, Andrew Jeffery <andrew@aj.id.au> wrote:
>
> On Wed, 20 Nov 2019, at 10:36, Luc Van Oostenryck wrote:
> > snoop_file_poll() is defined as returning 'unsigned int' but the
> > .poll method is declared as returning '__poll_t', a bitwise type.
> >
> > Fix this by using the proper return type and using the EPOLL
> > constants instead of the POLL ones, as required for __poll_t.
> >
> > CC: Joel Stanley <joel@jms.id.au>
> > CC: Andrew Jeffery <andrew@aj.id.au>
> > CC: linux-aspeed@lists.ozlabs.org
> > CC: linux-arm-kernel@lists.infradead.org
> > Signed-off-by: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
> > ---
> >  drivers/soc/aspeed/aspeed-lpc-snoop.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/soc/aspeed/aspeed-lpc-snoop.c
> > b/drivers/soc/aspeed/aspeed-lpc-snoop.c
> > index 48f7ac238861..f3d8d53ab84d 100644
> > --- a/drivers/soc/aspeed/aspeed-lpc-snoop.c
> > +++ b/drivers/soc/aspeed/aspeed-lpc-snoop.c
> > @@ -97,13 +97,13 @@ static ssize_t snoop_file_read(struct file *file,
> > char __user *buffer,
> >       return ret ? ret : copied;
> >  }
> >
> > -static unsigned int snoop_file_poll(struct file *file,
> > +static __poll_t snoop_file_poll(struct file *file,
> >                                   struct poll_table_struct *pt)
> >  {
> >       struct aspeed_lpc_snoop_channel *chan = snoop_file_to_chan(file);
> >
> >       poll_wait(file, &chan->wq, pt);
> > -     return !kfifo_is_empty(&chan->fifo) ? POLLIN : 0;
> > +     return !kfifo_is_empty(&chan->fifo) ? EPOLLIN : 0;
>
> Looks fine to me as POLLIN and EPOLLIN evaluate to the same value despite
> the type difference.

I assume Luc was using sparse to check:

CHECK   ../drivers/soc/aspeed/aspeed-lpc-snoop.c
../drivers/soc/aspeed/aspeed-lpc-snoop.c:112:19: warning: incorrect
type in initializer (different base types)
../drivers/soc/aspeed/aspeed-lpc-snoop.c:112:19:    expected
restricted __poll_t ( *poll )( ... )
../drivers/soc/aspeed/aspeed-lpc-snoop.c:112:19:    got unsigned int (
* )( ... )

If you fix the return type:

  CHECK   ../drivers/soc/aspeed/aspeed-lpc-snoop.c
../drivers/soc/aspeed/aspeed-lpc-snoop.c:106:45: warning: incorrect
type in return expression (different base types)
../drivers/soc/aspeed/aspeed-lpc-snoop.c:106:45:    expected restricted __poll_t
../drivers/soc/aspeed/aspeed-lpc-snoop.c:106:45:    got int

Reviewed-by: Joel Stanley <joel@jms.id.au>

I will send this to the ARM SOC maintainer. Thanks Luc!

Cheers,

Joel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
