Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A4121D11C8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 13:51:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fVvIrqrIYTvonV+/tbJzxAJwdco7wrshYo4LELnUkA4=; b=E5rDZUjd16tvA3
	LgyRsOvJs99A0DuKePIrUN6IMsIHybXmcAHJvCotH/nQQ0Rs547FDiTKjQOhJuVuMhC972NKyiK+2
	hZ9H9h/vYJF2zrcqLOHdAOtP1QhkOBps/KCUyMzCvj84AaBWeO5M81IK+IL1XREXoYPF0GIkuz5ug
	2aBzqbfKuzxN0n5vQFnYxqxy6jtImiyt43La48th9NiVCv5RmPcWHvsKvj/TEd1L5V2gIdSLILrzb
	ee7OULAU1H4o8zFHNOsy9g2L+TVnSjiIyg0t8VWT3dHt7/dAMXcwnY5xW1+R1Nztzw9pnyxpdLqRS
	bh7CFtnULaQH0Y/yrv5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYpv5-0007wC-2X; Wed, 13 May 2020 11:51:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYpuw-0007vO-Ms
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 11:51:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2503730E;
 Wed, 13 May 2020 04:51:18 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 744D93F71E;
 Wed, 13 May 2020 04:51:17 -0700 (PDT)
Date: Wed, 13 May 2020 12:51:15 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: Re: [PATCH 06/14] prctl.2: ffix quotation mark tweaks
Message-ID: <20200513115115.GM21779@arm.com>
References: <1589301419-24459-1-git-send-email-Dave.Martin@arm.com>
 <1589301419-24459-7-git-send-email-Dave.Martin@arm.com>
 <7afe32a5-9675-74d4-7c39-f1271d475afd@gmail.com>
 <20200513113949.GI21779@arm.com>
 <f575e35d-cd5e-5808-bed4-91bdfb9c2905@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f575e35d-cd5e-5808-bed4-91bdfb9c2905@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_045118_787860_E8A6F948 
X-CRM114-Status: GOOD (  25.64  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, linux-man@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 01:46:22PM +0200, Michael Kerrisk (man-pages) wrote:
> On 5/13/20 1:39 PM, Dave Martin wrote:
> > On Wed, May 13, 2020 at 12:11:21PM +0200, Michael Kerrisk (man-pages) wrote:
> >> Hello Dave,
> >>
> >> On 5/12/20 6:36 PM, Dave Martin wrote:
> >>> Convert quote marks used for information terms in prose to use
> >>> \(oq .. \(cq, for better graphical rendering.
> >>>
> >>> Signed-off-by: Dave Martin <Dave.Martin@arm.com>
> >>
> >> Again, this is a patch that I would prefer to see near the end 
> >> of a series, rather than in the middle.
> >>
> >> I'm currently agnostic about this change. But, I do not
> >> want to apply this patch, since no other pages in man-pages
> >> use \(oq...\(cq.
> >>
> >> I haven't applied this patch. Luckily, that does not prevent
> >> any of the later patches applying.
> > 
> > I'll be careful to move this sort of thing to the end of a series in
> > future.
> > 
> > This was a provocative patch, so I'm happy for it to be dropped.
> > 
> > 
> > The main motivation was that ' renders to PostScript etc. as a closing
> > quote, which is fine for apostrophes but not fine for an opening quote
> > mark.  Most of the current quotes in here are actually ", but I don't
> > see an actual promise from groff that that renders as a neutral glyph
> > either, so it seemed best to avoid.  For now " does seem to be rendered
> > with a neutral glyph (i.e., neither opening or closing).
> 
> See my commit 11b0b31a14bd2c7dcb0cf7bc815b4c1887444a89, just pushed,
> which addresses the ' issues.
> 
> >>> ---
> >>>
> >>> Note, this can lead to misrendering on badly-configured systems.
> >>> However, many man pages do it.
> >>
> >> Can you say some more about this please?
> > 
> > Terminal character maps need to match LANG etc. in order for fancy
> > characters coming out of nroff to display correctly.
> > 
> > ssh attempts to send LANG across, but terminal sessions between systems
> > that have different locales installed can be a problem, as can dumb
> > serial links that don't magically pass the locale and terminal type
> > settings across.
> > 
> > The fact that I hit this problem a lot in some situations (particularly
> > the serial link case) suggested to me that fancy characters are
> > considered fine nowadays, but perhaps I'd need to dig into it some more
> > to understand the situation fully.
> 
> Thanks for the clarification.
> 
> > (There are one or two ' that should really be \(aq anyway, but I'll
> > try to address that separately.)
> 
> See above. I presume that patch is what you wanted?

Yup, works for me.

I'll keep an eye out for other instances, but those were the ones that
stood out.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
