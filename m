Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06E371D11B1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 13:46:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NyOiO6izD++Y7DgQcLu9MF9QrgM3EbhdojqFimB4Onk=; b=ewEBd/PnD/UUqQ
	9vs4x5bRqy5y9b+D9Ugu0/CvsZOwTmpJB/m3hf7S/A/+bDjz849QcrZN5CDdJSadMmLINsfMvrHcK
	kLjdr9UQTKMmZ3/O4GCjZddlZUmw9OHKG64bK7/3zSF2hZY5S0sdewb9UOrCO9qq24derrPsloI9x
	JGzltv+i9v8uUH5UutrscuBdB2iYtRW31wu5un/9R/hhJC7xR6k7e/9mTc9oJDHAzgImSk1pPu281
	wc1O2ajUPt5rXmVl+SEqJDrb14BrTTXnXPDUnn7E+gW2R1LN+FiBNYNTw1gXi7R1us4s2fpf8rN1T
	ZbLYOo0qTY12whQK4DTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYppo-00043n-De; Wed, 13 May 2020 11:46:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYppg-00043L-Ay
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 11:45:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6B8F430E;
 Wed, 13 May 2020 04:45:51 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id ACB843F71E;
 Wed, 13 May 2020 04:45:50 -0700 (PDT)
Date: Wed, 13 May 2020 12:45:48 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: Re: [PATCH 05/14] prctl.2: tfix listing order of prctls
Message-ID: <20200513114548.GK21779@arm.com>
References: <1589301419-24459-1-git-send-email-Dave.Martin@arm.com>
 <1589301419-24459-6-git-send-email-Dave.Martin@arm.com>
 <1bb991f4-176a-a74e-01fc-c73b49ed77f5@gmail.com>
 <20200513112133.GH21779@arm.com>
 <6ef9a969-3e16-e21c-f047-e5a471cbc163@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6ef9a969-3e16-e21c-f047-e5a471cbc163@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_044552_421325_2677EF37 
X-CRM114-Status: GOOD (  19.29  )
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

On Wed, May 13, 2020 at 01:31:32PM +0200, Michael Kerrisk (man-pages) wrote:
> Hi Dave,
> 
> On 5/13/20 1:21 PM, Dave Martin wrote:
> > On Wed, May 13, 2020 at 12:10:53PM +0200, Michael Kerrisk (man-pages) wrote:
> >> Hi Dave,
> >>
> >> On 5/12/20 6:36 PM, Dave Martin wrote:
> >>> The prctl list has historically been sorted by prctl name (ignoring
> >>> any SET_ or GET_ prefix) to make individual prctls easier to find.
> >>> Some noise seems to have crept in since.
> >>>
> >>> Sort the list back into order.  Similarly, reorder the list of
> >>> prctls specified to return non-zero values on success.
> >>
> >> This is a good patch. But see my comments on patch 04.
> >> I'd prefer a patch like this at the end of a series, 
> >> rather than in the middle of it.
> > 
> > Ack.
> > 
> > Ideally we could check the order with a script, but that seemed a step
> > too far.
> 
> Quite.
> 
> > What's the view on having parts of the man pages generated, rather then
> > being distributed ready-built?
> 
> I'm not keen (until someone shows me compelling benefits). Splitting
> things up would make pages harder to edit, and IMO increase
> the chance for inconsistencies in pages.

Fair enough.  I might experiment with something, but I won't expect an
easy sell!

This sort of thing was part of my motivation for having a distinctive
marker for the start of each prctl entry.

> 
> > If we split prctl.2 up with a fragment per prctl, we could paste the
> > fragments together in the right order with a script.
> > 
> >>
> >>> Content movement only.  No semantic change.
> >>
> >> And explicitly noting that detail is very helpful to me.
> > 
> > Unless of course I'm lying ;)  (I'm not, but I won't be offended if you
> > check.)
> 
> Actually, with your first two patches, you impressed right out of
> the gate, so my "I'm gonna blindly trust this guy" needle already
> switched up pretty high :-).

I guess I'll need to be careful...

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
