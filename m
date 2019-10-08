Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4028FCF3A5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 09:22:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fM+u9SD6c/0KaM+aSwDAv0cVIm2CpF8kIt0HAk3aeTA=; b=O1l4OrCEwLhsLe
	2XYIcULFlZlRWdUuDxyCENqJPiythoIOuLIXYWjkgmXSWAfLB7EF4Ox8mQB9PTh9VwDp/7HNdOtII
	oS9FeWcmcC0Eq9cO3iCQM5gaGUpT0Oj+7wqX+1Vr34/b0AT2HXMKUaa6Ix/x7sP0dMH702Rgi8nIi
	lSa/fHEaPiAuqKUd0j3vxVLv3wRc2ZIYYsWAdxGCH2ZEXZxciZff5DdueT5B3BOxRfCFFWcPsmRXo
	K82lS/af2GK0VjLqVhuzUJbMTZH6epUIIt8ygEk4sM1ubvPl8eDCxOWgzq7unhEDd12UaspjXO56P
	PEfVpv3zFYpJ65qyX80Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHjoq-0001yu-IU; Tue, 08 Oct 2019 07:22:04 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHjne-0000pS-Pl
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 07:20:55 +0000
Received: by mail-yw1-xc41.google.com with SMTP id s6so6092479ywe.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 00:20:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vlcH/WZUIe1tFNe94ltDSVt7kfUxOrKgjsM+yEf+das=;
 b=QBybfdx0WhFzeUSvnu+iOZ8BN30w8BFc59qbkEiZJ2sA2O4CAg0vUm5RdT+1rcs89f
 Pw5cQWeeugWIH5NTcqfJGfC8O68msLLbpXAe6S+GCmBOW98SxXKGu7U/e6w02XnuBEY4
 MjumrKJIKlSx1MXljvhEEm4NLQ5/wdBak4vTxd596T7VFV63sc0pYZoLIOQwakOQArq6
 lmAtXwKYUxAaHO9h2Q9TKx9VODcX+G/2okGvNgDr4qFWq259bpumtBLc3/T0UDQj+1j/
 v9jgMLlB4oiC3egDdymwHJmDNv4VAyBo0aMffB9+TZwE1xuehAuL7MhTBTUc+KHwfBVw
 cYVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vlcH/WZUIe1tFNe94ltDSVt7kfUxOrKgjsM+yEf+das=;
 b=frGMfJnZn7FOWwxU6fJ7qalI9UUNxjWfvy4KBeM03z8rNJcHBz57lz+O6zRgNDeH3P
 4b5ODkr5q79sNw4vj8vTBztwXn4ha1YYNaOyRv46y+Wle2X9xqyRd1ArjKmjrGrSMvnv
 N/JJk66AxYkh4I8RCSt98NJw55u3d3ZrfnbtLgSkqeoEbhncFRtv3ozWO7ugzyLoLP2Q
 Z+yToRkLe//nZHbtPeVsNexXV0eEKi0r/yK5qI5oEhjaPFrBfqoGsfnlF0clvEen5aEE
 zCxt4SePgGNOMDotQ4NHGwyMG2hFlioH+bEPLgr82WF088NvmCNVstNibnmYUZFgV2L0
 HSVw==
X-Gm-Message-State: APjAAAWCHu0Vhb+F88ORmhG8x6P5AVtm8y9aNnCkkNuD+y0byUEBeCpm
 60ckz9ygHIjqRlrlSJX0PqBiaoGDdG9CLsftonRzqkjL
X-Google-Smtp-Source: APXvYqwj62Yi+GVJBXzGytO8nIrTiGFbzVYO4xeKYQn0X6ubZwcIB7n4g0A4m089pqMPp80zVbhxmKUxGoa5o6XZC/s=
X-Received: by 2002:a0d:d7d1:: with SMTP id
 z200mr22934400ywd.464.1570519247780; 
 Tue, 08 Oct 2019 00:20:47 -0700 (PDT)
MIME-Version: 1.0
References: <1569483508-18768-1-git-send-email-candlesea@gmail.com>
 <20190930153437.ocatny7u4z3oj7k2@willie-the-truck>
In-Reply-To: <20190930153437.ocatny7u4z3oj7k2@willie-the-truck>
From: Candle Sun <candlesea@gmail.com>
Date: Tue, 8 Oct 2019 15:20:36 +0800
Message-ID: <CAPnx3XMqnQ4R=_gkL6Rye=4adV=qCRUs2sm5A6kJccDCQ82xnw@mail.gmail.com>
Subject: Re: [RESEND PATCH] ARM/hw_breakpoint: add ARMv8.1/ARMv8.2 debug
 architecutre versions support in enable_monitor_mode()
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_002050_884220_D9F9C56B 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (candlesea[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, linux@armlinux.org.uk,
 Candle Sun <candle.sun@unisoc.com>, lkml <linux-kernel@vger.kernel.org>,
 Nianfu Bai <nianfu.bai@unisoc.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,
Sorry for not instant respond.


On Mon, Sep 30, 2019 at 11:34 PM Will Deacon <will@kernel.org> wrote:
>
> On Thu, Sep 26, 2019 at 03:38:28PM +0800, Candle Sun wrote:
> > From: Candle Sun <candle.sun@unisoc.com>
> >
> > When ARMv8.1/ARMv8.2 cores are used in AArch32 mode,
> > arch_hw_breakpoint_init() in arch/arm/kernel/hw_breakpoint.c will be used.
> >
> > From ARMv8 specification, different debug architecture versions defined:
> > * 0110 ARMv8, v8 Debug architecture.
> > * 0111 ARMv8.1, v8 Debug architecture, with Virtualization Host Extensions.
> > * 1000 ARMv8.2, v8.2 Debug architecture.
> >
> > So missing ARMv8.1/ARMv8.2 cases will cause enable_monitor_mode() function
> > returns -ENODEV, and arch_hw_breakpoint_init() will fail.
> >
> > Signed-off-by: Candle Sun <candle.sun@unisoc.com>
> > Signed-off-by: Nianfu Bai <nianfu.bai@unisoc.com>
> > ---
> >  arch/arm/include/asm/hw_breakpoint.h | 2 ++
> >  arch/arm/kernel/hw_breakpoint.c      | 2 ++
> >  2 files changed, 4 insertions(+)
>
> How did you test this?
>
> Will

We have the SoC with A55 cores. On one Android project, for saving memory usage,
we let A55 run in aarch32 mode.
While the following failures occue on Android CtsBionicTestCases:
--sys_ptrace#watchpoint_imprecisede
--sys_ptrace#hardware_breakpoint
--sys_ptrace#watchpoint_stress

The code snippet for testing is:

static void check_hw_feature_supported(pid_t child, HwFeature feature) {
#if defined(__arm__)
  long capabilities;
  long result = ptrace(PTRACE_GETHBPREGS, child, 0, &capabilities);
  if (result == -1) {
    EXPECT_EQ(EIO, errno);
    GTEST_SKIP() << "Hardware debug support disabled at kernel
configuration time";
  }
  uint8_t hb_count = capabilities & 0xff;
  capabilities >>= 8;
  uint8_t wp_count = capabilities & 0xff;
  capabilities >>= 8;
  uint8_t max_wp_size = capabilities & 0xff;
  if (max_wp_size == 0) {
    GTEST_SKIP() << "Kernel reports zero maximum watchpoint size";
  } else if (feature == HwFeature::Watchpoint && wp_count == 0) {
    GTEST_SKIP() << "Kernel reports zero hardware watchpoints";
  } else if (feature == HwFeature::Breakpoint && hb_count == 0) {
    GTEST_SKIP() << "Kernel reports zero hardware breakpoints";
  }
#elif defined(__aarch64__)
  user_hwdebug_state dreg_state;
  iovec iov;
  iov.iov_base = &dreg_state;
  iov.iov_len = sizeof(dreg_state);

  long result = ptrace(PTRACE_GETREGSET, child,
                       feature == HwFeature::Watchpoint ?
NT_ARM_HW_WATCH : NT_ARM_HW_BREAK, &iov);
  if (result == -1) {
    ASSERT_EQ(EINVAL, errno);
  }
  if ((dreg_state.dbg_info & 0xff) == 0) GTEST_SKIP() << "hardware
support missing";
#else
  // We assume watchpoints and breakpoints are always supported on x86.
  UNUSED(child);
  UNUSED(feature);
#endif
}

The max_wp_size field returned by __ptrace() from kernel is zero,
which causes the test failures.

After futher analysis, we found max_watchpoint_len variable is not
right initialized in kernel
arch_hw_breakpoint_init() function. Missing the case of ARM_DEBUG_ARCH_V8_2 in
enable_monitor_mode() directly aborts the arch_hw_breakpoint_int().

Candle
Best regards

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
