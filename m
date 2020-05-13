Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EE911D119E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 13:41:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i84qTYYsoUY9shK0rTMJ12WoirpuuO48oCAaKg+YR8g=; b=fPFIpsQiBqmtMb
	6VEtlPCYXjjjbe8rpCojd4Zf2BLGWkw8QjB1cozn2XE+wE9LkSYqr8G7V2/d/BaLYss5w9+EjcJNS
	0zopT7jXMl6XmssoDfjlXEetgESvpaVfZZOEIxVWVEhS5dvtbGibbn5HcKgMbP+NGbpnJiS0wB8Y8
	FNW0CQ+LLV7w+ReLRPF6ZLfoPKrk2tEmNYlv977uY/l7qPkZMm/nfOqGmGp2YOOouxTD6Pekhv0qZ
	HYrXuwOVwbx/3T6W00fYnmOEzPenU2/ECgJzLyySKpIJKlBu5a+F/UFUCowWI2YxZ7nKTu5NL39ag
	iOAZUaRyipaN/omWULEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYpll-0000qf-TG; Wed, 13 May 2020 11:41:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYpld-0000pr-2G
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 11:41:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AEF8130E;
 Wed, 13 May 2020 04:41:40 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0AE423F71E;
 Wed, 13 May 2020 04:41:39 -0700 (PDT)
Date: Wed, 13 May 2020 12:41:38 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: Re: [PATCH 02/14] prctl.2: Add health warning
Message-ID: <20200513114137.GJ21779@arm.com>
References: <1589301419-24459-1-git-send-email-Dave.Martin@arm.com>
 <1589301419-24459-3-git-send-email-Dave.Martin@arm.com>
 <93c5bfe6-fbbe-93ca-ef9c-91228c99d31b@gmail.com>
 <20200513111340.GF21779@arm.com>
 <7218089f-20df-52b3-e1d4-ac63e0215efc@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7218089f-20df-52b3-e1d4-ac63e0215efc@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_044141_146552_BD5A620A 
X-CRM114-Status: GOOD (  24.92  )
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

On Wed, May 13, 2020 at 01:40:26PM +0200, Michael Kerrisk (man-pages) wrote:
> Hi Dave,
> 
> On 5/13/20 1:13 PM, Dave Martin wrote:
> > On Wed, May 13, 2020 at 12:10:25PM +0200, Michael Kerrisk (man-pages) wrote:
> >> Hi Dave,
> >>
> >> On 5/12/20 6:36 PM, Dave Martin wrote:
> >>> In reality, almost every prctl interferes with assumptions that the
> >>> compiler and C library / runtime rely on.  prctl() can therefore
> >>> make userspace explode in a variety ways that are likely to be hard
> >>> to debug.
> >>>
> >>> This is not obvious to the uninitiated, so add a warning.
> >>
> >> Patch applied. But see my comments on patch 04. I may want to 
> >> circle back on this patch later, since the wording feels a 
> >> little strong to me (we simply must use prctl for some things, 
> >> and not all of those things break user-space/runtime as far 
> >> as I know). If you have some thoughts on softening the warning,
> >> let me know.
> > 
> > Certainly the "if at all" can go -- this was just a suggestion
> > really.
> 
> Yes. Gone.
> 
> > Maybe the whole thing is superfluous.  In C anything can screw up the
> > runtime if you try hard enough.
> 
> I think it's at least worth alerting the reader to this issue.
> 
> > The background to this patch is that things like the new
> > PR_PAC_RESET_KEYS and PR_SVE_SET_VL are likely to crash the program, or
> > place a timebomb that will explode later when someone upgrades their
> > toolchain or links with a new version of some library.  Many existing
> > prctls that look equally unfriendly...
> > 
> > I didn't want to say nothing at all, but I didn't want to get into the
> > gory details either.
> 
> (Okay.)
> 
> > Doing the digging to document the safety requirements of each prctl
> > would be a lot of work, and probably an exercise in futility anyway --
> > how to use a lot of prctls safely depends on the run-time environment as
> > much as it does on the kernel.
> > 
> > 
> > If you want to drop this, I'm happy to add explicit notes to just the
> > new arm64 prctls instead for now.
> 
> I just softened the warning a little; see below. Explicit notes for
> the new arm64 prctls would certainly be welcome.

OK, that works for me.  I'll try to keep it brief.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
