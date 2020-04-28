Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9813B1BB769
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 09:25:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7EtMkDLF5Pnx1Besq5VRQmrry6/2RHU87zseuObXdrU=; b=r4VgROWqSmoszu
	AcgYhLwaWGDD29IQl0F5mF5qwBE2HYp+vOTjgpK6v6aRMARMP3B8iS2dlaVTV8fIUckFGyAr6q7QM
	xhfc/WDv0q0M2PbRNBc0BTrreqn9AkrpBNiNXesTLyVE22QVrfZxIFYSmE/xErTRqymuxnHDmFOg8
	ljoXEB9Hszpq9DJEYemn79+uzgrm6VIOslgTLTVZBOd9PGGOfr9c5Y2I60bFRvQsLMIpQS0tHcvzO
	1VgV0zYpZJfl4N3U3O2htgmHsyV17AMDCP51xENalbpAUNsqZKUW2DxMTzkdbJRmJF0A7/4+IOqT1
	2VBvUPzfyYp3PAn5qeHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTKcW-0007vg-FW; Tue, 28 Apr 2020 07:25:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTKcJ-0007uK-8O
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 07:25:20 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 15A6E20661;
 Tue, 28 Apr 2020 07:25:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588058714;
 bh=GLu5j27TIX4wZFikcdS3374+orGJgRuWeeuefdu1XMk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PpheMqqd0u7obdLb311fFWl0BWxLCIGElMpzR1JL+EihHlxLyJdxEAwhK4VvGdvaK
 LMO3BvQ1yvDDuzCNWC/3b8XDj6TzxcjtBA7kyGe/WOQsT2l266x1XYEN3utRQjv+ld
 vuEeQRiIBnmS97jAdAO5hSbLU/lwE+4vU4tF/PT8=
Date: Tue, 28 Apr 2020 08:25:09 +0100
From: Will Deacon <will@kernel.org>
To: Gavin Shan <gshan@redhat.com>
Subject: Re: [PATCH] arm64/mm: Reject invalid NUMA option
Message-ID: <20200428072509.GA4049@willie-the-truck>
References: <20200424045314.16017-1-gshan@redhat.com>
 <20200424101132.GC1167@C02TD0UTHF1T.local>
 <f83c0ce1-b1b2-31f4-60c8-15567b87a8ff@redhat.com>
 <20200427225406.7cacc796@gandalf.local.home>
 <20200427225944.185d4431@gandalf.local.home>
 <20200427230920.3d606a2e@gandalf.local.home>
 <7e85ea83-de5f-c789-2e3c-e468a50ed4bd@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7e85ea83-de5f-c789-2e3c-e468a50ed4bd@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_002519_326498_9F6D1F2E 
X-CRM114-Status: GOOD (  16.15  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 shan.gavin@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 28, 2020 at 02:35:20PM +1000, Gavin Shan wrote:
> On 4/28/20 1:09 PM, Steven Rostedt wrote:
> 
> [...]
> 
> > 
> > Could this be a bug in the implementation of strncmp() in
> > arch/arm64/lib/strncmp.S. As I don't know arm64 assembly, I have no idea
> > what it is trying to do.
> > 
> > But strncmp("o","off",3) returning zero *is* a bug.
> > 
> 
> I think it's false alarm. The patch has been in my local repo for a while.
> I checked out 5.7.rc3 and tried passing "numa=o" to the kernel, @numa_off
> is unchanged and its value is false. I also check the return value from
> strncmp() as below, it's correct. Nothing is broken. I should have retested
> before posting it. Sorry for the noise. Please ignore the crap patch :)

Hmm, it's still worrying that you had that patch kicking around though, as
it sounds like it /used/ to be broken. Would you be able to test the LTS
kernels (5.4, 4.19, 4.14, 4.9, 4.4) to check that we're not missing a
backport, please? Sorry to be a pain, but I'd like to get to the bottom of
this!

Thanks,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
