Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FF6F11824
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 13:29:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5GGALColUGT02XKEN0QqW4BFj5RC9A2jkQp6iBO0cfs=; b=DsBkOBFTJtoCAV
	3JXncw2Epb7z2PfwY9ToipQyIa9qeblh7wvqAINN6Hlvwc4HuhRQlJyqzGStBoBz8p1mSFb9Nsq3a
	hQ4AweeLeCIVAI3+kkZWqPybv6Qah6VbT7x5oigia21JUgcYBQGRU5ss4yPb0dEOxPhbiRYtxTutX
	tEbtmZ8Vl1X4CrG2qFlZjKhif0byre/auZwRgkFQ1vMZ3kMP1SP+gQYGZYhem8FIW7A0+eb9nq4pN
	waUZVgeUWmuDDBBUNh5EnwqYsHg7mdt700PQcBiy8FT/eKVHgzUO4HsbG6CyFveGcB3OfEE9eqLBb
	dhxrU0fkc8OqY9+5+bzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM9tf-0000rJ-G4; Thu, 02 May 2019 11:29:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM9tY-0000qr-Ik; Thu, 02 May 2019 11:28:58 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 96DD32075E;
 Thu,  2 May 2019 11:28:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556796536;
 bh=fqx8UlBQV0EdoNBTnAuO4hpKhnRVHJvkc8nSmJ/L22k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zQxwkyY5pPrdl15G8NdigAQvxmLoabfGm6HRZYTvKDfxlWn5LW/amKuqfOoE2wlZW
 jwSupKI0HJxWuGwCHNNUD5Ju8iUKUwUBym6qdRWci01TA2vYWoj0IwJJj/Hd15NUXW
 jOXUJi1JMnYZajhuMHiZPzPY9xnGv+tuojviGjb0=
Date: Thu, 2 May 2019 13:28:53 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>
Subject: Re: [PATCH] clk: actions: Use the correct style for SPDX License
 Identifier
Message-ID: <20190502112853.GB7358@kroah.com>
References: <20190501070707.GA5619@nishad>
 <057d9b37-7475-1902-bce7-6d519c2e0fdf@suse.de>
 <20190502070746.GA16247@kroah.com>
 <315de620-b638-aea4-d8d2-e00f5a493625@suse.de>
 <20190502103848.GA17256@kroah.com>
 <f52484fc-b35b-f92a-9c7b-ce53fd731ab5@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f52484fc-b35b-f92a-9c7b-ce53fd731ab5@suse.de>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_042856_655803_39D023A1 
X-CRM114-Status: GOOD (  23.39  )
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

On Thu, May 02, 2019 at 12:45:05PM +0200, Andreas F=E4rber wrote:
> Am 02.05.19 um 12:38 schrieb Greg Kroah-Hartman:
> > On Thu, May 02, 2019 at 12:25:36PM +0200, Andreas F=E4rber wrote:
> >> Am 02.05.19 um 09:07 schrieb Greg Kroah-Hartman:
> >>> On Wed, May 01, 2019 at 10:20:44PM +0200, Andreas F=E4rber wrote:
> >>>> + linux-actions
> >>>>
> >>>> Am 01.05.19 um 09:07 schrieb Nishad Kamdar:
> >>>>> This patch corrects the SPDX License Identifier style
> >>>>> in header files related to Clock Drivers for Actions Semi Socs.
> >>>>> For C header files Documentation/process/license-rules.rst
> >>>>> mandates C-like comments (opposed to C source files where
> >>>>> C++ style should be used)
> >>>> [...]
> >>>>>  drivers/clk/actions/owl-common.h       | 2 +-
> >>>>>  drivers/clk/actions/owl-composite.h    | 2 +-
> >>>>>  drivers/clk/actions/owl-divider.h      | 2 +-
> >>>>>  drivers/clk/actions/owl-factor.h       | 2 +-
> >>>>>  drivers/clk/actions/owl-fixed-factor.h | 2 +-
> >>>>>  drivers/clk/actions/owl-gate.h         | 2 +-
> >>>>>  drivers/clk/actions/owl-mux.h          | 2 +-
> >>>>>  drivers/clk/actions/owl-pll.h          | 2 +-
> >>>>>  drivers/clk/actions/owl-reset.h        | 2 +-
> >>>>>  9 files changed, 9 insertions(+), 9 deletions(-)
> >>>>
> >>>> Where's the practical benefit of this patch? These are all private
> >>>> headers used from C files, so they can handle C++ comments just fine,
> >>>> otherwise we would've seen build failures.
> >>>
> >>> Please read Documentation/process/license-rules.rst, the section
> >>> entitled "Style", for what the documented formats are for SPDX lines,
> >>> depending on the file type.
> >>
> >> That does in no way answer my question! You conveniently dropped my
> >> paragraph indicating that I understand why we would do that for public
> >> headers in include/, but none of these private headers here are includ=
ed
> >> in .lds files. So there really seems to be no benefit of switching from
> >> one style to another for in-tree code.
> > =

> > It should answer the question, it was "decreed" that all header files
> > use /* */, and all C files use // for their SPDX lines, so we documented
> > it that way.
> > =

> > Yes, maybe it doesn't make "sense" in that this really is only needed
> > for headers that get included into asm files, which is why we had to do
> > it this way, but it's better to be consistant than to have random
> > breakages at times.
> > =

> > It's not an issue of public headers at all, sorry.
> > =

> > Consistency is good, as we can have automatic tools check these types of
> > things, which is the only way to reliably handle the format of something
> > that needs to be in every file in a project with 63,100+ different
> > files.
> =

> Okay, if it's about consistency then there will be more cases to fix.

Agreed, hopefully checkpatch is up to date enough to catch these.

> What about this one:
> =

> My interpretation of the documentation has been that I should end the
> comment after the identifiers:
> =

> /* SPDX-... */
> /* ...
>  */

Correct.

> Some people deviate by doing
> =

> /* SPDX-...
>  * foo
>  */

Not correct.

> So the documentation may need to be extended to clarify that for full
> consistency, as well as clarify the previous scenario:
>   "If a specific tool cannot handle the standard comment style, then the
>    appropriate comment mechanism which the tool accepts shall be used."
> To me that reads very different from what you just said above.

Documentation can always be updated, a patch to make it clearer is
always appreciated.  But look at what we have today in the document, I
think it should be pretty obvious that:
	/* SPDX... */
is the thing to use for C header files.

If you disagree, that's fine, please send a patch to make it clearer and
we can all review it.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
