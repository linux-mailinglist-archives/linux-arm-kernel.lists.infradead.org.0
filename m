Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 666C8134A65
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 19:23:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vz9bKRZWD9rvx8dtSMo0JS/pbEXrBg8kY/jSyJgeJBU=; b=ZugfQn8AiwrTR0
	KIhHa1dFDVccgWe2S5T1EsmDTP1dcX26AuRndirBT5dtOBfRRq/1NgtbTT+Y/SrP2knBDthFY8d3D
	FHFIvLNJhiSZb6ZM4iwBsNVPSJAywQaaBNhsG21QqtXiZ8l8NxwtTH9Lr1OsYCgAksPDoZ5h9gYhC
	2YCa9D4c0+DmoiXY37J8KI4EyZtxVnyU6HrricTjK9MVyHSeiYacpE16CbidxvP02hZv2P++m0Dgz
	fQlEvcNRHb3UdmpsW8H9YY3J8xO8Ff+KgaoCoSRIPkJHMPL9UyQ2bGAw66ZDikm0PXCqIV8N7X/Cn
	C1HgmgE73N8A88ClGeyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipFyr-0006Sk-6b; Wed, 08 Jan 2020 18:22:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipFyi-0006S6-Fz
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 18:22:49 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7DFBA20692;
 Wed,  8 Jan 2020 18:22:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578507766;
 bh=UbS62opg9Mg5R72fpet8UvVpGaxxJdD/fWOHZnld6Fg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kt+Qk0iJbTqBYp82azao16P8Qn8lfy8bY1gHmgWDED9NtdiNQj/8YyuaeuGed6osA
 7uRQTfdezN3WlnVo7EkkhvCiLDiNNj38NH6DKGyHRQ72R8GUO0m5bQsHNZRQTE9yuI
 Tv2ieMF0y4HgVOFfad+a/enJVf5CbI9S3u+n7ym4=
Date: Wed, 8 Jan 2020 19:22:44 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Stephen Warren <swarren@wwwdotorg.org>
Subject: Re: "arm64: alternatives: use tpidr_el2 on VHE hosts" v4.9 backport
 missing edits to proc.S
Message-ID: <20200108182244.GA2547623@kroah.com>
References: <a1cb6ca5-4806-0813-3aad-1246e65162a6@wwwdotorg.org>
 <aa09fae4-5b73-22d6-b3e8-91ff8d61d623@wwwdotorg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aa09fae4-5b73-22d6-b3e8-91ff8d61d623@wwwdotorg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_102248_557015_4A25FEDE 
X-CRM114-Status: GOOD (  16.96  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, James Morse <james.morse@arm.com>,
 stable <stable@vger.kernel.org>,
 ARM kernel mailing list <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 08, 2020 at 11:08:20AM -0700, Stephen Warren wrote:
> On 1/7/20 6:09 PM, Stephen Warren wrote:
> > James,
> > 
> > I'm looking at commit 6d99b68933fbcf51f84fcbba49246ce1209ec193 ("arm64:
> > alternatives: use tpidr_el2 on VHE hosts"). When it was back-ported to
> > v4.9.x as eea59020a7f2993018ccde317387031c04c62036, the changes to
> > arch/arm64/mm/proc.S weren't included. I assume this was just an
> > accident, or was there some specific reason for this? Either way, I do
> > find that I need those changes for system suspend/resume to work in my
> > downstream vendor fork of v4.9 if I enable KVM support in .config. I'm
> > happy to send a patch for v4.9.x to add those changes back if that's the
> > way to go. v4.14.x and later don't have this issue.
> 
> Upon further investigation of git history, here's what happened:
> 
> When When 6d99b68933fb was back-ported to upstream v4.9.x as eea59020a7f2,
> proc.S didn't save/restore tpidr_el1 at all, so that's why the edits to
> proc.S were dropped as part of the backport.
> 
> Separately, in android-4.9, 0ec37136b90e ("UPSTREAM: arm64: move sp_el0 and
> tpidr_el1 into cpu_suspend_ctx") modified proc.S to save/restore tpidir_el1.
> When those two commits were later merged together in android-4.9, the
> modifications to proc.S to alternate between tpidr_el1/2 should have been
> added back in, but weren't.
> 
> Since our downstream 4.9 fork is based on android-4.9 after that merge, it
> picked up this issue and needs to be patched for it. Anyone else using
> android-4.9 would need this fix too. However, upstream 4.9.x stable doesn't
> have an issue.

Thanks for figuring this out.  If you could submit a 4.9 patch to AOSP
for this, that would be great, or I can do it myself if you have a
patch.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
