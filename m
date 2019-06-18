Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF5364A8DA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 19:52:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U6dqMKbAFC1n6kd9rkmJbxDzVwAq9WCIWRG/o5p0XSs=; b=YhKhnq6xji7UKJ
	MicCW09zV2adIRGhJLRbUpgRz3GlHwZ6ypk0FKuWyKfBAeylemmt4BguezMD3OCx1th/a8nI/1aZR
	p/WuA2kmon36KCGiaofIm8Ifz1ouY31qlL74sdpTORMjENxyKUHkDOq+04e0xwfhSvljAVQaYz6AI
	uS3VIpyY2l58cbXpp97ILj9wKtaJrHdQ4gjRRNS0bxKmbH4my5RgO1eGebC21ey/YPFvqVoPFpZB+
	EMpZUmQWC0ja0XENNeDOM4WpemM7j1epLO6RvGNYZHVXD63iZ0lT/8u5koVYyr+6mWqXBvTRI2TNi
	GLkVY/cvliHrOomUkhCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdIHo-00051W-OZ; Tue, 18 Jun 2019 17:52:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdIHe-00050n-Ss
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 17:52:40 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D5FE7205F4;
 Tue, 18 Jun 2019 17:52:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560880358;
 bh=CD9xE+ss/20TQL2/AL+mrrt+iM/xjjMdngpvH66c7G8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0deQUiET+LBxYSPYZSpPfh9bl8iBX+Qh5WHSBxsqcmGzctHnR0KreG5tJz1yOWNyh
 crgCaO6wgJnf2/NSNlr6Os6acxhTShyxf3cqm0Pu5zuHRB7UM4ss73vAgqxymdMS0V
 JIAKpGYjhFeQSgav93CsryheHpoLWvHTAhKdH90w=
Date: Tue, 18 Jun 2019 19:52:35 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH] coresight: cpu-debug: no need to check return value of
 debugfs_create functions
Message-ID: <20190618175235.GA23154@kroah.com>
References: <20190618155246.GA17788@kroah.com>
 <CANLsYkzTgwY=EAE8E98jpyO6uVQnKN3SAKhRwSUCRhQTO+rV0w@mail.gmail.com>
 <20190618174637.GC3649@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190618174637.GC3649@kroah.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_105238_965499_75740EF5 
X-CRM114-Status: GOOD (  25.95  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 18, 2019 at 07:46:37PM +0200, Greg Kroah-Hartman wrote:
> On Tue, Jun 18, 2019 at 11:23:25AM -0600, Mathieu Poirier wrote:
> > Hi Greg,
> > 
> > On Tue, 18 Jun 2019 at 09:52, Greg Kroah-Hartman
> > <gregkh@linuxfoundation.org> wrote:
> > >
> > > When calling debugfs functions, there is no need to ever check the
> > > return value.  The function can work or not, but the code logic should
> > > never do something different based on this.
> > 
> > Looking around in the kernel there is no shortage of instances where
> > the return value of debugfs functions are checked and the logic
> > altered based on these values.  But there are also just as many that
> > don't...  It also seems counter intuitive to ignore the return value
> > of any function, something that in most case is guaranteed to raise
> > admonition.
> 
> In my tree, those instances are almost all gone.  I've also posted over
> 100+ patches in the past few weeks to clean this up.
> 
> > That being said I am sure there is a good reason to support your
> > position - would you mind expanding a little so that I can follow?
> 
> No kernel code should ever care if debugfs works or not.  No user code
> should ever require it for normal operation either.  debugfs was written
> to be simple and easy to use, no need to check any return values at all.
> 
> Any return value of a debugfs call can be fed back into another call
> with no issues at all.
> 
> Also, due to some debugfs core changes a few kernel releases ago, the
> checks:
> 	if (!debug_debugfs_dir) {
> ...
> 	if (!file) {
> can never trigger as debugfs_create_dir() or debugfs_create_file() can
> never return NULL (and in the past, it almost never would either).  So
> as it is, that code isn't correct anyway (my fault, I know, hey, I'm
> trying to fix it!)
> 
> I'm trying to make things simple, and easy, and impossible to get wrong.
> I know it goes against the normal "robust" kernel development mentality,
> but there is no need to ever care about debugfs at all.
> 
> The reason I started all of this is that we have found places where
> userspace, and the kernel, was depending on the proper operation of
> debugfs.  In one horrid example, a device would not display the batter
> level if debugfs was disabled.  In another case, the kernel was actually
> relying on a debugfs call to fail in order to handle some logic the
> subsystem should have been doing on its own.  All of that has now been
> cleaned up, and I am working on making debugfs just not return any
> values at all to prevent this type of mess happening again.
> 
> And hey, I am removing code, here's my current tree as a diff from
> what is not already merged into linux-next:
> 	 301 files changed, 1394 insertions(+), 4637 deletions(-)
> that's always a good thing :)

Oh, forgot the pointer to the tree:
	https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git/log/?h=debugfs_cleanup
this is all public, just not in linux-next as it's being fed through 50+
different subsystem trees.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
