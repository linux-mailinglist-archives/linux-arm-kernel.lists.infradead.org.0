Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F289C1AF329
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 20:23:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cAqGf7wSoIfgqVYMcOOGAoph1QkKfafWUlsTF1WYCIU=; b=k0HjWtynADtOie
	tc6OE5xrq+JcVaQEGv/rwFUggoUgDbrZkGYdoT6U/r452ZvRFKfurg65gedrK9nIetC6FBJ0ZPeo3
	aQxaVo5EAPjKwk9vtPS8960nk927N8kopp2ChBHVJ1u3/93naPpIPoT/rYaJNxThqpC00kJbO++4R
	ykCLcuwRkYFbUOxLVKg4hUggVaIBZ8asOfBzwggYijRnQp3VaHHExnAMZHNX88wY+x3ntMLdDE+Wm
	vPMojh/4vHT+2JzWwX/VsdJMPk59YMdVThunP6y2k5PRa92dtsLFHLzhVGsqRWN3IRLm4AH4t/rhQ
	0sYurJcUSpA5IypSgmog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPs80-0003vk-Kl; Sat, 18 Apr 2020 18:23:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPs7p-0003uG-AE
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Apr 2020 18:23:36 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BBE5B21BE5;
 Sat, 18 Apr 2020 18:23:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587234212;
 bh=D0YLD1CWlKpcWEMow+Kk2q0B0UJPZE3Wdv2YBGnWJic=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=TM/WaVc93+TEUGTvUQx0MkFqN55VwlhtsfB622iwbLuaBBILnE8kj6UFczbdPbjJF
 O4Nvkaq252hnpXVhWbA5IhWr3I2jb/+gdTq/JKgt+9ZjLMQopRkh/LFVUKT57sxySM
 /kULNFwY5oaCSk/HSbTpWuca+8F1rkhnHrnpeKxY=
Date: Sat, 18 Apr 2020 19:23:27 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: William Breathitt Gray <vilhelm.gray@gmail.com>
Subject: Re: [PATCH v3 1/3] ARM: at91: add atmel tcb capabilities
Message-ID: <20200418192327.151e3155@archlinux>
In-Reply-To: <20200417135635.GA94725@icarus>
References: <20200415130455.2222019-1-kamel.bouhara@bootlin.com>
 <20200415130455.2222019-2-kamel.bouhara@bootlin.com>
 <20200417135635.GA94725@icarus>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_112333_374684_994502BA 
X-CRM114-Status: GOOD (  17.84  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Kamel Bouhara <kamel.bouhara@bootlin.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, devicetree@vger.kernel.org,
 linux-iio@vger.kernel.org, Ludovic Desroches <ludovic.desroches@microchip.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-input@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 17 Apr 2020 09:56:35 -0400
William Breathitt Gray <vilhelm.gray@gmail.com> wrote:

> On Wed, Apr 15, 2020 at 03:04:53PM +0200, Kamel Bouhara wrote:
> > Some atmel socs have extra tcb capabilities that allow using a generic
> > clock source or enabling a quadrature decoder.
> > 
> > Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>  
> 
> Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
> 
I'll need an appropriate ack from at91 maintainers for this bit

Thanks,

Jonathan

> > ---
> > Changes from v3:
> >  - Added missing kernel doc for new elements introduced in structure
> >    atmel_tcb_config.
> > 
> > Changes from v2:
> >  - Fixed first patch not applying on mainline
> > 
> >  include/soc/at91/atmel_tcb.h | 5 +++++
> >  1 file changed, 5 insertions(+)
> > 
> > diff --git a/include/soc/at91/atmel_tcb.h b/include/soc/at91/atmel_tcb.h
> > index c3c7200ce151..1d7071dc0bca 100644
> > --- a/include/soc/at91/atmel_tcb.h
> > +++ b/include/soc/at91/atmel_tcb.h
> > @@ -36,9 +36,14 @@ struct clk;
> >  /**
> >   * struct atmel_tcb_config - SoC data for a Timer/Counter Block
> >   * @counter_width: size in bits of a timer counter register
> > + * @has_gclk: boolean indicating if a timer counter has a generic clock
> > + * @has_qdec: boolean indicating if a timer counter has a quadrature
> > + * decoder.
> >   */
> >  struct atmel_tcb_config {
> >  	size_t	counter_width;
> > +	bool    has_gclk;
> > +	bool    has_qdec;
> >  };
> >  
> >  /**
> > -- 
> > 2.25.0
> >   


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
