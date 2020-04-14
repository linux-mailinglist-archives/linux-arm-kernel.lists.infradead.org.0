Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D962A1A769B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 10:52:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N9KRbnjK/JTUZSYTjdAAfJeS7HYAMN0WmnnXoS1F/3c=; b=qfHcaYOLtCGlal
	gkV91gKano0IwyTKfd5tG74MI870kTqSGgTYd4tvfaJHts6JxxMuksbMKuGfuAjDTB/Q2ko/ByCXG
	o/Q8etIpNmxcfH4lwTJZDYbsL0x2tdikdym/6fGHlN+exqWqd1GFR2ivOAXvHpl6vfWH3Ap3QpZVu
	vwVHq+mcfXXvHWJ5P3rEhqnyjQEv8O/ZNZY9rzt9v0+pxxD53WwJU69uFPLeVknyukLon4DVLZbWg
	7Uydeg+3c4CvGKWhMO4vHQXGfi+IbmFIE84LaDVv05+5jZkUOAmckWeaseL7GPKnRzrLy3/Bh1u4z
	rZaX8jMAj5/AhKL5a13w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOHIi-0005sT-JI; Tue, 14 Apr 2020 08:52:12 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOHIX-0005rY-KI
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 08:52:03 +0000
X-Originating-IP: 78.193.40.249
Received: from kb-xps (unknown [78.193.40.249])
 (Authenticated sender: kamel.bouhara@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 07CFBC0013;
 Tue, 14 Apr 2020 08:51:54 +0000 (UTC)
Date: Tue, 14 Apr 2020 10:51:53 +0200
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
To: Jonathan Cameron <jic23@kernel.org>
Subject: Re: [PATCH v2 1/3] ARM: at91: add atmel tcb capabilities
Message-ID: <20200414085153.GC161090@kb-xps>
References: <20200409141401.321222-1-kamel.bouhara@bootlin.com>
 <20200409141401.321222-2-kamel.bouhara@bootlin.com>
 <20200412113137.1763f084@archlinux>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200412113137.1763f084@archlinux>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_015201_806969_0E58D28B 
X-CRM114-Status: GOOD (  15.34  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, linux-iio@vger.kernel.org,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-input@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 12, 2020 at 11:31:37AM +0100, Jonathan Cameron wrote:
> On Thu,  9 Apr 2020 16:13:59 +0200
> Kamel Bouhara <kamel.bouhara@bootlin.com> wrote:
>
> > Some atmel socs have extra tcb capabilities that allow using a generic
> > clock source or enabling a quadrature decoder.
> >
> > Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> > ---
> > Changes from v2:
> >  - Fixed first patch not applying on mainline
> >
> >  include/soc/at91/atmel_tcb.h | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/include/soc/at91/atmel_tcb.h b/include/soc/at91/atmel_tcb.h
> > index c3c7200ce151..7e47ace9255c 100644
> > --- a/include/soc/at91/atmel_tcb.h
> > +++ b/include/soc/at91/atmel_tcb.h
> > @@ -39,6 +39,8 @@ struct clk;
> >   */
> >  struct atmel_tcb_config {
> >  	size_t	counter_width;
>
Hi,

> This structure has existing kernel doc. Please add these new
> elements and run ./scripts/kernel-doc over it check for any issues.
>

Its fixed, thanks.

Kamel

> > +	bool    has_gclk;
> > +	bool    has_qdec;
> >  };
> >
> >  /**
> > --
> > 2.25.0
> >
>
> Thanks,
>
> Jonathan

--
Kamel Bouhara, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
