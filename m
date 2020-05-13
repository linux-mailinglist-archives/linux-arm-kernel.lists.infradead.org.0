Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA2741D11CE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 13:52:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OMlgwSclbtZ5MXsXo1Is9++Hi9anVmOCQmPs3HbFQG0=; b=XY3aIPVpkBs2jT
	cob/OsLXyJP2u1etB0aHkvt2qbRxdsz9pNGCP9t47D6IZmLokRS5e0uTksewWyZ0hZpyDDq+XhiCl
	NjNc9aKhy5VbUlvSSqQwgiLnwkJlk5QeySIN62x6P3xmIT0Z/795Yj1e65qBl/TNW4DVybabfuaWY
	QxKprvY5DT70mwG+IMbPdsF6st4ayeDvfZTtlqx7/LIbGJodx9ZkDk38SIYGnwUUhupD5O6pPR8Yy
	UBldyNWJjWJrz2SdGTdvE8ss88zz4ug/zaMgOPNKseCzVCjvbSbRUvOWELyQls1StIFqbKASXcbo0
	3LSYZ8JqtBMAs6P1j8Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYpvk-0008Bf-Jp; Wed, 13 May 2020 11:52:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYpvc-0008BJ-Ey
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 11:52:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D0B8830E;
 Wed, 13 May 2020 04:51:59 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 228753F71E;
 Wed, 13 May 2020 04:51:59 -0700 (PDT)
Date: Wed, 13 May 2020 12:51:57 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: Re: [PATCH 04/14] prctl.2: srcfix add comments for navigation
Message-ID: <20200513115156.GN21779@arm.com>
References: <1589301419-24459-1-git-send-email-Dave.Martin@arm.com>
 <1589301419-24459-5-git-send-email-Dave.Martin@arm.com>
 <8b882b6e-376b-111d-3c3c-7a042b0e91b5@gmail.com>
 <20200513105620.GE21779@arm.com>
 <9770249d-0d5a-1b02-4de1-bbb6343b5829@gmail.com>
 <20200513111557.GG21779@arm.com>
 <022b1d7f-8381-a9a8-b5aa-907143fd4831@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <022b1d7f-8381-a9a8-b5aa-907143fd4831@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_045200_542558_4EB81701 
X-CRM114-Status: GOOD (  25.73  )
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

On Wed, May 13, 2020 at 01:48:36PM +0200, Michael Kerrisk (man-pages) wrote:
> Hi Dave,
> 
> On 5/13/20 1:15 PM, Dave Martin wrote:
> > On Wed, May 13, 2020 at 01:03:27PM +0200, Michael Kerrisk (man-pages) wrote:
> >> Hi Dave,
> >>
> >> On 5/13/20 12:56 PM, Dave Martin wrote:
> >>> On Wed, May 13, 2020 at 12:09:27PM +0200, Michael Kerrisk (man-pages) wrote:
> >>>> Hi Dave,
> >>>>
> >>>> On 5/12/20 6:36 PM, Dave Martin wrote:
> >>>>> The prctl.2 source is unnecessarily hard to navigate, not least
> >>>>> because prctl option flags are traditionally named PR_* and so look
> >>>>> just like prctl names.
> >>>>>
> >>>>> For each actual prctl, add a comment of the form
> >>>>>
> >>>>> 	.\" prctl PR_FOO
> >>>>>
> >>>>> to make it move obvious where each top-level prctl starts.
> >>>>>
> >>>>> Of course, we could add some clever macros, but let's not confuse
> >>>>> dumb parsers.
> >>>>
> >>>> A patch like this, which makes sweeping changes across the page,
> >>>> should be best placed at the end of a series, I think.
> >>>> The reason is that if I fail to apply this patch (and I am a
> >>>> little dubious about it), then probably the rest of the patches
> >>>> in the series won't apply. (Furthermore, it also forced me to
> >>>> apply patch 02 already, which I wanted to reflect on a little.)
> >>>
> >>> Agreed, I'll try to do that in future.
> >>>
> >>>> That said, I'll apply it, so that the remaining patches
> >>>> apply cleanly. I'll consider later whether to keep this
> >>>> change. For example, I wonder if a visually distinctive 
> >>>> source line that is always the same would be better than
> >>>> these comments that repeat the PR_* names. For example, 
> >>>> something like
> >>>>
> >>>> .\" ==========================
> >>>>
> >>>> I'll circle back to this later.
> >>>
> >>> I'd prefer to keep the name if we can, since navigating by search is
> >>> otherwise bothersome due to false hits.
> >>>
> >>> Could we do both, say:
> >>>
> >>> .\" === PR_FOO ===
> >>
> >> Okay -- I'll give that some thought.
> >>
> >>> If you prefer to reject this patch, I'm happy to rebase and repost the
> >>> series as appropriate.
> >>>
> >>> In any case, this one is nice to have rather than essential.
> >>
> >> For now, the patch is already committed and pushed.
> > 
> > OK, thanks.  I'm happy to write a further patch when you've decided what
> > to do, if it saves you work.
> 
> Let's leave this for the moment. Once the dust settles on your 
> remaining patches, I'll try to remember to circle back on this.

OK, give me a should if you need anything from me.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
