Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B184B11762
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 12:39:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R++QUHW0LtAjKEiUBTHWfcfqWicKZVbYVaATeANKTr8=; b=N62xSHBXa3kmeL
	qPaYEf/IF1kQRqpB0H9PTr2XwK5dX0DtJIbiNydl1Qqyw2gQ+h0ywNuALZxsc/34qbehBaAF0bo6N
	OxZ6P6qEN4v+z/YdY/DbR44lGoYAriBsqKZHG1UMhR52OSrHR3W6FW8GE2QqLGDD2ZPSdRvOjAvsM
	dFGGEYpoImLvQJSvBSFebk5TMzs61UrNwOAK5E77gFHkBi7SY3j47in+onVEKbsX5vhN9q/0XyUWR
	2TC4mXR0SyBHRZ9dHAy4bFT6pEeVGsxl6IkkE5kXEkYP9HEsyqxGS4eiht2TJKueZ50y7ryocpJUU
	UfclI2vQ8ku6wTV81Tcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM97I-0006kr-QK; Thu, 02 May 2019 10:39:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM976-0006k7-3C; Thu, 02 May 2019 10:38:59 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CEC922075E;
 Thu,  2 May 2019 10:38:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556793531;
 bh=ORS7MqKgv0S4c66duHHzTYFC3hek0qJa0hLcabmXALQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xxVV4J+M4k5Ushl/VdQC1Foc6e9iXq2TCyCJ7kS1vv7wx5fLcyfjdBIV4HIod41qj
 WkKz1Evhhg4eMqjjQ08komjHr95SSoKsfEzkKAT/0tsToD5NugJ95ccvzDoITQRWC/
 i0HvmBTfpYGVnTQt0FfWSp8NsbbNz1zinX81zZbM=
Date: Thu, 2 May 2019 12:38:48 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>
Subject: Re: [PATCH] clk: actions: Use the correct style for SPDX License
 Identifier
Message-ID: <20190502103848.GA17256@kroah.com>
References: <20190501070707.GA5619@nishad>
 <057d9b37-7475-1902-bce7-6d519c2e0fdf@suse.de>
 <20190502070746.GA16247@kroah.com>
 <315de620-b638-aea4-d8d2-e00f5a493625@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <315de620-b638-aea4-d8d2-e00f5a493625@suse.de>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_033857_784339_E720B7D9 
X-CRM114-Status: GOOD (  16.97  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Nishad Kamdar <nishadkamdar@gmail.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-actions@lists.infradead.org, linux-kernel@vger.kernel.org,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Joe Perches <joe@perches.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 02, 2019 at 12:25:36PM +0200, Andreas F=E4rber wrote:
> Am 02.05.19 um 09:07 schrieb Greg Kroah-Hartman:
> > On Wed, May 01, 2019 at 10:20:44PM +0200, Andreas F=E4rber wrote:
> >> + linux-actions
> >>
> >> Am 01.05.19 um 09:07 schrieb Nishad Kamdar:
> >>> This patch corrects the SPDX License Identifier style
> >>> in header files related to Clock Drivers for Actions Semi Socs.
> >>> For C header files Documentation/process/license-rules.rst
> >>> mandates C-like comments (opposed to C source files where
> >>> C++ style should be used)
> >> [...]
> >>>  drivers/clk/actions/owl-common.h       | 2 +-
> >>>  drivers/clk/actions/owl-composite.h    | 2 +-
> >>>  drivers/clk/actions/owl-divider.h      | 2 +-
> >>>  drivers/clk/actions/owl-factor.h       | 2 +-
> >>>  drivers/clk/actions/owl-fixed-factor.h | 2 +-
> >>>  drivers/clk/actions/owl-gate.h         | 2 +-
> >>>  drivers/clk/actions/owl-mux.h          | 2 +-
> >>>  drivers/clk/actions/owl-pll.h          | 2 +-
> >>>  drivers/clk/actions/owl-reset.h        | 2 +-
> >>>  9 files changed, 9 insertions(+), 9 deletions(-)
> >>
> >> Where's the practical benefit of this patch? These are all private
> >> headers used from C files, so they can handle C++ comments just fine,
> >> otherwise we would've seen build failures.
> > =

> > Please read Documentation/process/license-rules.rst, the section
> > entitled "Style", for what the documented formats are for SPDX lines,
> > depending on the file type.
> =

> That does in no way answer my question! You conveniently dropped my
> paragraph indicating that I understand why we would do that for public
> headers in include/, but none of these private headers here are included
> in .lds files. So there really seems to be no benefit of switching from
> one style to another for in-tree code.

It should answer the question, it was "decreed" that all header files
use /* */, and all C files use // for their SPDX lines, so we documented
it that way.

Yes, maybe it doesn't make "sense" in that this really is only needed
for headers that get included into asm files, which is why we had to do
it this way, but it's better to be consistant than to have random
breakages at times.

It's not an issue of public headers at all, sorry.

Consistency is good, as we can have automatic tools check these types of
things, which is the only way to reliably handle the format of something
that needs to be in every file in a project with 63,100+ different
files.

thanks,

greg k-h
> =

> Regards,
> Andreas
> =

> -- =

> SUSE Linux GmbH, Maxfeldstr. 5, 90409 N=FCrnberg, Germany
> GF: Felix Imend=F6rffer, Mary Higgins, Sri Rasiah
> HRB 21284 (AG N=FCrnberg)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
