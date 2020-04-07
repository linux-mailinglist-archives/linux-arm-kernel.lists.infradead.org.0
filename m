Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9893F1A16B2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 22:22:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nJDG0VXqtRTflcpDt3etO/NSCGEKYRZZCM/0sVs8HAg=; b=tO8txcIqreCO4A
	uKu/Kf4jvKTo4oi8Es6tCrOGW2snXuokTsPp2werzowpP9Q2Ru+qL/Jh8/oYm4k1MzpboCO+vUONo
	jed+J7ORsQlESu+MDumCdMGVqT4F26A+zPq4R+qlstxSmdMnAHG1fJZjWsrw0CTYuvKHXU2LMuRGZ
	ZmPZER/g9U82gk50blCYqJwNdllx5VyhDKKnZw1Q7hcF6keQddevHDexg8+JxPzDLB2aKhQ8CDXVv
	Cqm8YSLqCSxH3zAMJXqUnvnAEOSRVcLdMzbVWUKbsNnlNmGa1GhI/iBNU1G9Xp99OGDhsR18vVSrT
	CTB7r+QEapLqEvMb5KNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLujd-0000Eg-Em; Tue, 07 Apr 2020 20:22:13 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLujW-0000Dp-GQ
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 20:22:08 +0000
X-Originating-IP: 78.193.40.249
Received: from kb-xps (unknown [78.193.40.249])
 (Authenticated sender: kamel.bouhara@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id AD90920005;
 Tue,  7 Apr 2020 20:21:51 +0000 (UTC)
Date: Tue, 7 Apr 2020 22:21:50 +0200
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
To: William Breathitt Gray <vilhelm.gray@gmail.com>
Subject: Re: [PATCH 1/3] ARM: at91: add atmel tcb capabilities
Message-ID: <20200407202150.GD1489441@kb-xps>
References: <20200406155320.1291701-1-kamel.bouhara@bootlin.com>
 <20200406155320.1291701-2-kamel.bouhara@bootlin.com>
 <20200407165335.GF5578@icarus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200407165335.GF5578@icarus>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_132206_679527_3BE574A0 
X-CRM114-Status: GOOD (  17.57  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-input@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 07, 2020 at 12:53:35PM -0400, William Breathitt Gray wrote:
> On Mon, Apr 06, 2020 at 05:53:18PM +0200, Kamel Bouhara wrote:
> > Some atmel socs have extra tcb capabilities that allow using a generic
> > clock source or enabling a quadrature decoder.
> >
> > Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> > ---
> >  include/soc/at91/atmel_tcb.h | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/include/soc/at91/atmel_tcb.h b/include/soc/at91/atmel_tcb.h
> > index fbf5474f4484..6b9c9bec982e 100644
> > --- a/include/soc/at91/atmel_tcb.h
> > +++ b/include/soc/at91/atmel_tcb.h
> > @@ -39,7 +39,8 @@ struct clk;
> >   */
> >  struct atmel_tcb_config {
> >  	size_t	counter_width;
> > -	unsigned int has_gclk:1;
>
> Hi Kamel,
>

Hi William,

> I'm having trouble applying this patch, so I think we have different
> bases. Specifically, I'm not sure where this has_gclk member was
> introduced. It doesn't look like it's in the testing branch of the IIO
> tree yet.
>
> What branch did you base your patches on?

You're right, this line should not be here.

I'll fix it for v2.

Thanks,

Kamel

>
> Thanks,
>
> William Breathitt Gray
>
> > +	bool	has_gclk;
> > +	bool	has_qdec;
> >  };
> >
> >  /**
> > --
> > 2.25.0
> >



--
Kamel Bouhara, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
