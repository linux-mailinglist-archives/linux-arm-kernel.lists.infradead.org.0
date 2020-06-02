Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D163E1EB59F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 08:07:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZFkMMgXiOXrZOc2A7ixsXxw7lNMDNtdK2SAavGpt9c8=; b=u0hwvvKKbF0FR2
	fgKEEos/aJKAbsDrRMAsvDEjGsMGlQdkL4if3rggUqbK1v/jXgSfSK+cyfZ4oGNgZZyr3pxjNeG8v
	xGOQrIolJwPSTZceUhdolNzmmhr5+LkZE6I+0vBwfF/XdyTmUx6lJAeSQbXnLE922xOV6puLd4wjz
	QIqzJ18+GTZYhfjufiMVMGmyTLaZsMI3/LCLRWbxbhx5nHWkvbiMBGW+JN/502uh0BOftmuCgxeds
	of0kjsJ/c1K28Np0ZK1KlB+/yJgLnMQY99xBKrfhMsfj5/WgPNfrwzhnHGC6gOaC5scilBAMQtA43
	c0ohWWgBmCQD4YKS3FuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg04m-0004dF-3C; Tue, 02 Jun 2020 06:07:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg04f-0004cr-Iy
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 06:06:58 +0000
Received: from sekiro (lfbn-mar-1-685-55.w109-208.abo.wanadoo.fr
 [109.208.210.55])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 49EA120734;
 Tue,  2 Jun 2020 06:06:54 +0000 (UTC)
Date: Tue, 2 Jun 2020 08:06:50 +0200
From: Ludovic Desroches <ludovic.desroches@microchip.com>
To: Jonathan Cameron <jic23@kernel.org>
Subject: Re: [PATCH] iio: Kconfig: at91_adc: add COMPILE_TEST dependency to
 driver
Message-ID: <20200602060650.vlfx26qb57sewcjw@sekiro>
References: <20200525102744.131672-1-alexandru.ardelean@analog.com>
 <20200531154017.04fc727f@archlinux>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200531154017.04fc727f@archlinux>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_230657_647548_C5C68B62 
X-CRM114-Status: GOOD (  17.00  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: alexandre.belloni@bootlin.com, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Alexandru Ardelean <alexandru.ardelean@analog.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, May 31, 2020 at 03:40:17PM +0100, Jonathan Cameron wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> On Mon, 25 May 2020 13:27:44 +0300
> Alexandru Ardelean <alexandru.ardelean@analog.com> wrote:
> 
> > Since changes can come from all sort of places, it may make sense to have
> > this symbol as a dependency to make sure that the 'make allmodconfig' &&
> > 'make allyesconfig' build rules cover this driver as well for a
> > compile-build/test.
> >
> > It seemed useful [recently] when trying to apply a change for this.
> >
> > Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
> Makes sense.   Given this sort of change can expose weird an wonderful
> dependencies that were previously hidden, I'll be wanting an
> ack from at91 people.

Agree.

Acked-by: Ludovic Desroches <ludovic.desroches@microchip.com>

Regards

Ludovic

> 
> Jonathan
> 
> > ---
> >  drivers/iio/adc/Kconfig | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/iio/adc/Kconfig b/drivers/iio/adc/Kconfig
> > index c48c00077775..c1f4c0aec265 100644
> > --- a/drivers/iio/adc/Kconfig
> > +++ b/drivers/iio/adc/Kconfig
> > @@ -294,7 +294,7 @@ config ASPEED_ADC
> >
> >  config AT91_ADC
> >       tristate "Atmel AT91 ADC"
> > -     depends on ARCH_AT91
> > +     depends on ARCH_AT91 || COMPILE_TEST
> >       depends on INPUT && SYSFS
> >       select IIO_BUFFER
> >       select IIO_TRIGGERED_BUFFER
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
