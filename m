Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6913D1316F2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 18:41:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RAKhRkp7BVYwqdk7Wmahw48jn4QEWvEd0LhZ1u2ov/0=; b=DHGrRnRc7eupHL
	G1SgqJpNsS0X9wkcn8PE+lJdYwrQkl62kzchNmLQGFs/4FPaaKhdCQBknU+Bfp2gWBmSl+/4V/GOF
	TyFTeMGfvZMjEWHr/RIquL6/mJ2K8C+CbwRP1J/MXq5/OEzflZ7C/6B5o0Ic9ZPYa4Ol/e9oCaDCU
	2qIVpvxTppBskDcNEbs5141mH1Rcyzg/Y9DrF02mGC7e9RIflH6kzK99fXOfXFBy+gUVBC8/MvrKu
	XmiSuP5KuPa3vdi/uZaX8hk9+3ujdWNilMnggv0QVgB7QRlGm3AD1AVTq637n+nBkyX7yJTbvYCUw
	MXO/+Tz1w3AOSiwHxWLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioWN8-0002zR-GJ; Mon, 06 Jan 2020 17:40:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioWN1-0002yp-5m
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 17:40:52 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 57FC0207FF;
 Mon,  6 Jan 2020 17:40:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578332450;
 bh=bIKoVq4hl/ECNJKsDFS86OjWRdm/wDV25FzE9e9dkIE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OzOCByQJUep+YkGdjIFATSvSmNO39GTmt/W4SruqlilzlYqIS9Aox9DpAAXsbXzKK
 ikAhcBRxSRwBzdq+GuVRk0xvRO5WJ2WuDhSAOARW82MI4ERsA6BNBq19HWvE0bJeeM
 u0WNumDWCk/3WMSHz79ronZ0Jwb0kcQtSfTnvCzU=
Date: Mon, 6 Jan 2020 17:40:46 +0000
From: Will Deacon <will@kernel.org>
To: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH] ARM: hw_breakpoint: Handle inexact watchpoint addresses
Message-ID: <20200106174045.GD9676@willie-the-truck>
References: <20191019111216.1.I82eae759ca6dc28a245b043f485ca490e3015321@changeid>
 <20191120191813.GD4799@willie-the-truck>
 <CAD=FV=Wntf0TCwdtNNvPY-CXX1VL_SZK8Y8yw1r=UfeayHfwgw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD=FV=Wntf0TCwdtNNvPY-CXX1VL_SZK8Y8yw1r=UfeayHfwgw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_094051_236978_5F07068E 
X-CRM114-Status: GOOD (  23.03  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Pratyush Anand <panand@redhat.com>,
 Pavel Labath <labath@google.com>, Russell King <linux@armlinux.org.uk>,
 LKML <linux-kernel@vger.kernel.org>, Kazuhiro Inaba <kinaba@google.com>,
 Matthias Kaehlcke <mka@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 02, 2019 at 08:36:19AM -0800, Doug Anderson wrote:
> On Wed, Nov 20, 2019 at 11:18 AM Will Deacon <will@kernel.org> wrote:
> >
> > On Sat, Oct 19, 2019 at 11:12:26AM -0700, Douglas Anderson wrote:
> > > This is commit fdfeff0f9e3d ("arm64: hw_breakpoint: Handle inexact
> > > watchpoint addresses") but ported to arm32, which has the same
> > > problem.
> > >
> > > This problem was found by Android CTS tests, notably the
> > > "watchpoint_imprecise" test [1].  I tested locally against a copycat
> > > (simplified) version of the test though.
> > >
> > > [1] https://android.googlesource.com/platform/bionic/+/master/tests/sys_ptrace_test.cpp
> > >
> > > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > > ---
> > >
> > >  arch/arm/kernel/hw_breakpoint.c | 96 ++++++++++++++++++++++++---------
> > >  1 file changed, 70 insertions(+), 26 deletions(-)
> >
> > Sorry for taking so long to look at this. After wrapping my head around the
> > logic again
> 
> Yeah.  It was a little weird and (unfortunately) arbitrarily different
> in some places compared to the arm64 code.
> 
> 
> > I think it looks fine, so please put it into the patch system
> > with my Ack:
> >
> > Acked-by: Will Deacon <will@kernel.org>
> 
> Thanks!  Submitted as:
> 
> https://www.arm.linux.org.uk/developer/patches/viewpatch.php?id=8944/1
> 
> 
> > One interesting difference between the implementation here and the arm64
> > code is that I think if you have multiple watchpoints, all of which fire
> > with a distance != 0, then arm32 will actually report them all whereas
> > you'd only get one on arm64.
> 
> Are you sure about that?  The "/* No exact match found. */" code is
> outside the for loop so it should only be able to trigger for exactly
> one breakpoint, no?

I didn't test it, but I think that we'll convert the first watchpoint into a
mismatch breakpoint on arm32 and then when we resume execution, we'll hit
the subsequent watchpoint and so on until we actually manage to "step" the
instruction. On arm64, we'll use hardware step directly and therefore
disable all watchpoints prior to performing the step.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
