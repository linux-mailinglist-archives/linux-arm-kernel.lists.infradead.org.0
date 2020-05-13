Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D1661D11C2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 13:49:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HJNXrZMyGrP8QNwPwoaPff7qcspiTWpgUBYFGPNCtaQ=; b=O7quTbYI1i26UQ
	E0cftvyBsxXWeoRygWoQCOul/noy57JcOyGrhyn8aQFp9XypZrXMPL/WpqkAv0OW139LEk4LoZchx
	vkjFlfrDvP6P/EtoPB4EPWZVtHkIgBiNMVmFlS3VVCRTUxi4vVVVeOnX2i08uWTQneZkzrsrV/P2A
	5GRCPx7cbNKTDOcNshGJNltfdpe99kgG0ZRIMCD54DS8VFtYp9hxQ2802FhdU9SSuwNyNbQgulYdK
	fFkarT9+MxT/1KhtUIiFcz5M6r/r1tVsPhZYVZ/GC5s1uVTFOIEoEZuBDKVkIutkVfwwWRwjEKp3J
	UVg2VOdmPKgk6fKlv+SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYpt9-00059E-RJ; Wed, 13 May 2020 11:49:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYpt1-00058D-61
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 11:49:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 90F0530E;
 Wed, 13 May 2020 04:49:18 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id ABC773F71E;
 Wed, 13 May 2020 04:49:17 -0700 (PDT)
Date: Wed, 13 May 2020 12:49:15 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: Re: [PATCH 10/14] prctl.2: Add PR_SPEC_INDIRECT_BRANCH for
 SPECULATION_CTRL prctls
Message-ID: <20200513114915.GL21779@arm.com>
References: <1589301419-24459-1-git-send-email-Dave.Martin@arm.com>
 <1589301419-24459-11-git-send-email-Dave.Martin@arm.com>
 <bd548916-11c8-a53f-67b5-876c79088258@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bd548916-11c8-a53f-67b5-876c79088258@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_044919_269662_A49A56AD 
X-CRM114-Status: GOOD (  19.88  )
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
 Thomas Gleixner <tglx@linutronix.de>, Tim Chen <tim.c.chen@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 01:21:12PM +0200, Michael Kerrisk (man-pages) wrote:
> Hello Dave,
> 
> On 5/12/20 6:36 PM, Dave Martin wrote:
> > Add the PR_SPEC_INDIRECT_BRANCH "misfeature" added in Linux 4.20
> > for PR_SET_SPECULATION_CTRL and PR_GET_SPECULATION_CTRL.
> > 
> > Signed-off-by: Dave Martin <Dave.Martin@arm.com>
> > Cc: Tim Chen <tim.c.chen@linux.intel.com>
> > Cc: Thomas Gleixner <tglx@linutronix.de>
> 
> Thanks. Patch applied, but not yet pushed while I wait to see if any
> Review/Ack arrives.
> 
> Also, could you please check the tweaks I note below.
> 
> > ---
> >  man2/prctl.2 | 24 ++++++++++++++++++------
> >  1 file changed, 18 insertions(+), 6 deletions(-)
> > 
> > diff --git a/man2/prctl.2 b/man2/prctl.2
> > index e8eaf95..66417cf 100644
> > --- a/man2/prctl.2
> > +++ b/man2/prctl.2
> > @@ -1213,11 +1213,20 @@ arguments must be specified as 0; otherwise the call fails with the error
> >  .\" commit 356e4bfff2c5489e016fdb925adbf12a1e3950ee
> >  Sets the state of the speculation misfeature specified in
> >  .IR arg2 .
> > -Currently, the only permitted value for this argument is
> > +Currently, this argument must be one of:
> > +.RS
> > +.TP
> >  .B PR_SPEC_STORE_BYPASS
> > -(otherwise the call fails with the error
> > +speculative store bypass control, or
> 
> s/speculative/enable speculative/
> 
> > +.\" commit 9137bb27e60e554dab694eafa4cca241fa3a694f
> > +.TP
> > +.BR PR_SPEC_INDIRECT_BRANCH " (since Linux 4.20)"
> > +indirect branch speculation control.
> 
> s/indirect/enable indirect/

That doesn't seem quite right.

arg2 just identifies what behaviour to configure.
It's arg3 that says whether to disable / enable it or whatever.


While editing this I did wonder whether the "control" was helpful.
Maybe just dropping that word from these entries would help.

[...]

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
