Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1C3D1A2BA5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 23:56:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V6S69C2IWbrRF/2LqXC72zvuw16Cq97CUBK7w9KAkF8=; b=hcPdT9oRhyeDQd
	rIOMDpY09x6Y6OIE3EeLNzGaAgjsznaBKMBITHhabvSle6mxGOS7sr+d3Qxraec6Cot0BvCnkPQZ8
	BV2N2upBeBpfYq5nTfX3OqOWI12O6feB1GwP6tEKlRfrHAwqeTq599oRjM5FHe0NWYS2GxZztK1qh
	tmi7jMiqa7Flls7AMmcZqSbSLKTB70SM/xZDvRza99u4Y8Oig+Jxp9Q/bZElTeun2j6s6X/iudHGM
	ueBAlBzNjd7FBVe0oTaRFlN2+ZuFZ7qTqkDHFCjvFcCZHcEdY/I4pRzVbQoRqAUBwwWowLhItDcTk
	vTXGY+eHP2GS3cUOtoEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMIgc-0003IF-36; Wed, 08 Apr 2020 21:56:42 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMIgV-0003Fl-57
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 21:56:36 +0000
X-Originating-IP: 86.202.105.35
Received: from localhost (lfbn-lyo-1-9-35.w86-202.abo.wanadoo.fr
 [86.202.105.35])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 267BCC0006;
 Wed,  8 Apr 2020 21:56:26 +0000 (UTC)
Date: Wed, 8 Apr 2020 23:56:25 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: William Breathitt Gray <vilhelm.gray@gmail.com>
Subject: Re: [PATCH 3/3] counter: Add atmel TCB capture counter
Message-ID: <20200408215625.GS3628@piout.net>
References: <20200406155320.1291701-1-kamel.bouhara@bootlin.com>
 <20200406155320.1291701-4-kamel.bouhara@bootlin.com>
 <20200408213013.GA30867@icarus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200408213013.GA30867@icarus>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_145635_331676_14F35B58 
X-CRM114-Status: GOOD (  15.09  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Kamel Bouhara <kamel.bouhara@bootlin.com>, devicetree@vger.kernel.org,
 linux-iio@vger.kernel.org, Ludovic Desroches <ludovic.desroches@microchip.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-input@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi William,

On 08/04/2020 17:31:03-0400, William Breathitt Gray wrote:
> On Mon, Apr 06, 2020 at 05:53:20PM +0200, Kamel Bouhara wrote:
> > This drivers allows to use the capture mode of the Timer Counter Block
> > hardware block available in Atmel SoCs through the counter subsystem.
> > 
> > Two functions of the counter are supported for the moment: period
> > capture and quadrature decoder. The latter is only supported by the
> > SAMA5 series of SoCs.
> > 
> > For the period capture mode a basic setup has been chosen that will
> > reset the counter each time the period is actually reached. Of course
> > the device offers much more possibilities.
> > 
> > For quadrature mode, both channel 0 and 1 must be configured even if we
> > only capture the position (no revolution/rotation).
> > 
> > Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> 
> Hi Kamel,
> 
> Thank you for submitting support for this driver. Since this is a new
> counter driver, make sure to create an entry for it in the top-level
> MAINTAINERS file so users know who to contact to report bugs and other
> issues.
> 

The file name already matches for the at91 maintainers so I think we are
good on this front.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
