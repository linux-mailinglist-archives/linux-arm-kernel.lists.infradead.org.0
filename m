Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9D01C3E59
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 19:15:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HV0XfoTqJSZqzehRjiczwQgekqf8l9wJiyr+NhOXsvE=; b=PZDAwpPtmP/Nwi
	8MnL/+lHETmdMa6QspxTtivCg/lVeCEyCYNV2wWT1Pe14QiRg9nEHX3b8WT5GBLDL5yY8VbNvJ1aT
	27RBQpJBLYcUDCOpYJ8zUOip2dZlGndT2b0xyVWpEgmRcWtAyT/ftlhlsmg4O0D25bTcq4/A+/5yK
	qTxJeDaIs0cBCuMr6IOo7uXJ8aAWl0g/i1Wx906ybZuVhrdRoU2r02OjMimd82DuUCyjatvBbNwS3
	8d09ZjAvP2rlYsfoI/Eu/31xbi99nkt/eSh8Z+zzUUYa7urpf+7Rfxxw5v3RPBfC8f/34g+kMbOQq
	7tAGhIm4/Bh5tHbhoFwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFLjh-00078W-DH; Tue, 01 Oct 2019 17:14:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFLj8-0006hf-CX
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 17:14:20 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AF4412086A;
 Tue,  1 Oct 2019 17:14:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569950058;
 bh=BMjXR4T+qkoSlH2Amx5Z9s9cKJvcuI0C+ADO/cAk58g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=asouqCp7zIPE1TNjf/pN7/BLGNttFAYePIXHMrZuxZYhn4M/UVbKW7LLoKXgDD+qm
 zEq8vYsUusPtOZlINj3C8pwNGBkgHiUHhOGncoI/YuHHVBdh0t0lb036fSiI3BUofZ
 4l+Pz/VI2abPe1Jhyhz0fyc3AezIdu87tBB1TmrA=
Date: Tue, 1 Oct 2019 18:14:13 +0100
From: Will Deacon <will@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH v3 1/5] arm64: vdso32: Introduce COMPAT_CC_IS_GCC
Message-ID: <20191001171413.2idy6t7c3bi7rb5l@willie-the-truck>
References: <20191001132731.GG41399@arrakis.emea.arm.com>
 <ed7d1465-2d7b-d57c-c1b1-215af1ba7a6f@arm.com>
 <20191001142038.ptwyfbesfrz3kkoz@willie-the-truck>
 <7558914c-fc2d-d05a-ccbe-76ef451670ae@arm.com>
 <20191001144353.5rn3bkcc6eyfclh7@willie-the-truck>
 <20191001153056.GO41399@arrakis.emea.arm.com>
 <20191001164657.l2wz3ghq6icm3lim@willie-the-truck>
 <CAKwvOd=+-PEQXOZBG6rprWdOzHfcQq9ojkGo+Q28vfC4AU=Hwg@mail.gmail.com>
 <20191001170753.sqmfqt7zf33jgzns@willie-the-truck>
 <CAKwvOdm3E=Gp1XYfs6tcNObkJXA+VwvtLZt81mQ-mbo2gtyTaw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKwvOdm3E=Gp1XYfs6tcNObkJXA+VwvtLZt81mQ-mbo2gtyTaw@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_101418_463208_178E3891 
X-CRM114-Status: GOOD (  17.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, LKML <linux-kernel@vger.kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 01, 2019 at 10:12:59AM -0700, Nick Desaulniers wrote:
> On Tue, Oct 1, 2019 at 10:08 AM Will Deacon <will@kernel.org> wrote:
> >
> > On Tue, Oct 01, 2019 at 09:59:43AM -0700, Nick Desaulniers wrote:
> > > On Tue, Oct 1, 2019 at 9:47 AM Will Deacon <will@kernel.org> wrote:
> > > >
> > > > On Tue, Oct 01, 2019 at 04:30:56PM +0100, Catalin Marinas wrote:
> > > > > In the long run, I wouldn't mandate CROSS_COMPILE_COMPAT to always be
> > > > > set for the compat vDSO since with clang we could use the same compiler
> > > > > binary for both native and compat (with different flags). That's once we
> > > > > cleaned up the headers.
> > > >
> > > > But we'll still need it even with clang so that the relevant triple can be
> > > > passed to the --target option. The top-level Makefile already does this:
> > > >
> > > > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Makefile#n544
> > >
> > > That's not pulling the cross compiler out of a *config* (as this patch
> > > is proposing); rather from an env var.
> >
> > CROSS_COMPILE_COMPAT is the environment variable, right? If not, then I have
> > my terminology mixed up.
> 
> Ah, sorry, I'm the one misreading the patch.  I thought the commit
> message was showing what the new process would be. I see now that it's
> describing the issue pre-patch.  My mistake.

Thanks. Thought I was losing the plot for a moment there!

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
