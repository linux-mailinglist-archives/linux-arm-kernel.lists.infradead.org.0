Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0A91113AF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 09:07:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kwfv9E6CCaOZNfu0d6PNSOv5dPA0bEg0GfDjrBpYVls=; b=Pn86oyakIPP8eA
	Qi7f/rbpGAfpjTYrsaeBM1YLQM64UEMBdqsx3phebOUyEypQxTvx8FDfVpvGSV3DgGYkejPb5P6UQ
	Ttfh+4XD+Uob4goSyQQSMxTZ9dVhguug0d3MEbvTPYHnGUpmeeds2ZNAAGOGPTr0Gprw9VSLrt9xE
	29/s/jN6aNKIU1+7N/lXi9IXyC6qj4niuaV/Y+elR006tAVNpcfLODb7VElhln1qFisrVVywbM7Z2
	DNSGHHEvqJ3USqWy96rq+SPXZTRw3IkjpPgtpviQh8VOfv+5luAucRomfxMDN8kom9L4ijvlFsWM8
	D/esS0lY3cZD0QCGCc3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM5oy-0001On-Ff; Thu, 02 May 2019 07:07:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM5or-0001OH-9z; Thu, 02 May 2019 07:07:50 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B9159208C4;
 Thu,  2 May 2019 07:07:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556780868;
 bh=R58soqJU4/GFbmzVt6nBZnewIAmHT909NOZ409AkhRM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BO285Ep1LVasDMxvVq5Od9DRgRNO6bDWc1jYgn8yTtbgsFfHfewSjEVStJsT8NoOX
 JE3DiwPqAY24RWeqhUvVu5iPxDvrgLOBCG2FKR+EKtD88UumZ50usRkb0kDkqcvlR3
 fDbgLrJVG5TsOSfcOW6M3RP1qdznJtq2VvCZYhO4=
Date: Thu, 2 May 2019 09:07:46 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>
Subject: Re: [PATCH] clk: actions: Use the correct style for SPDX License
 Identifier
Message-ID: <20190502070746.GA16247@kroah.com>
References: <20190501070707.GA5619@nishad>
 <057d9b37-7475-1902-bce7-6d519c2e0fdf@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <057d9b37-7475-1902-bce7-6d519c2e0fdf@suse.de>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_000749_359654_6AC498EA 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

On Wed, May 01, 2019 at 10:20:44PM +0200, Andreas F=E4rber wrote:
> + linux-actions
> =

> Am 01.05.19 um 09:07 schrieb Nishad Kamdar:
> > This patch corrects the SPDX License Identifier style
> > in header files related to Clock Drivers for Actions Semi Socs.
> > For C header files Documentation/process/license-rules.rst
> > mandates C-like comments (opposed to C source files where
> > C++ style should be used)
> [...]
> >  drivers/clk/actions/owl-common.h       | 2 +-
> >  drivers/clk/actions/owl-composite.h    | 2 +-
> >  drivers/clk/actions/owl-divider.h      | 2 +-
> >  drivers/clk/actions/owl-factor.h       | 2 +-
> >  drivers/clk/actions/owl-fixed-factor.h | 2 +-
> >  drivers/clk/actions/owl-gate.h         | 2 +-
> >  drivers/clk/actions/owl-mux.h          | 2 +-
> >  drivers/clk/actions/owl-pll.h          | 2 +-
> >  drivers/clk/actions/owl-reset.h        | 2 +-
> >  9 files changed, 9 insertions(+), 9 deletions(-)
> =

> Where's the practical benefit of this patch? These are all private
> headers used from C files, so they can handle C++ comments just fine,
> otherwise we would've seen build failures.

Please read Documentation/process/license-rules.rst, the section
entitled "Style", for what the documented formats are for SPDX lines,
depending on the file type.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
