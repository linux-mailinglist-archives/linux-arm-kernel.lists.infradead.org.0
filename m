Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A64ED38F7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 07:56:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rt43jJ6OWBVJfSTYzYybQgNmFUAOd15o8Olxg9NqXbg=; b=OaXNDr3FJGY7Mc
	VQEmeuizwfNslsuye3TS5flx1UemzFSOz8Iu87hvgvku9oKoex21Gse/074DgHdQIeSfmQ+PzpWHU
	us1WTKrpq4Ks+xXv76DId+hjLKaNNB8oR4y/Bc08Vw5h5fySyKkAUv0RMEX1sKqzYGzPRag2lsLT1
	iIKasWCAXEiaP3rbhHoaQeaGfLx2GKICd5QbxaqOtIbxqlEEUPPF57ij/utZbyAEfCGxuQS2KGg4x
	MtW302ToGN6y84dLGZdF6LXE9w6N5ArD+zQ2rgooIMMYr4vZHw+P1KxmXwcxAz89Tsc1P/2qeYbPS
	/9L01FPZ8KjTN19J4BBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iInv3-0007D2-7Y; Fri, 11 Oct 2019 05:56:53 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iInuv-0007CE-4I
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 05:56:47 +0000
Received: by mail-yw1-xc44.google.com with SMTP id w140so3086823ywd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 22:56:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pe6e9mNl/y0Gbnhlz0OK+rTALdS40mdMde2Yhq6pRx4=;
 b=J+WIECfJvoDfcmVnvSSBIZ4lNss2OgFow+NE64WEmLj/C9nSi5FbKuwHQr1GIMC0Yi
 OA/dKcBPrbvi2PsqXUglXBW0UsH9BPsNcRz5nR9xyCWKr1pBrh8RPor7oujvR3fnJweD
 E87uoLOUeUEtU2yJDO6g9bGzTblY+0i02TDSS9+E2n+PCk5QlknLelEdFq77/fvfmWoo
 yXab8s2H1jag3DQ+ydbKr4IJ/x/1sJG0BXwjm11tn1wXZnw/UpxjWKanh+xC53DKFQWY
 2fhgRfkrpdHpGGShABubbyl2MBd4GAW20/7A+j5xT8be423rVJFa9fMIAaUv31cemTHB
 s6Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pe6e9mNl/y0Gbnhlz0OK+rTALdS40mdMde2Yhq6pRx4=;
 b=HkOwnvXXm2ZinZE5BqzsgU//x/xU73UmEQPqGxc/1e9/wcaa0pPiMvRVi4+6+l5Pb6
 AE6RDy2yWdLXmQ66RyoyB4IVDabScQwVO+m4JS/WkpNjdOwcR/mcz43ej0HJ5PvJCdP7
 UX+xVR6M73yxwJoy/mzjjV6sBw7PsWv3SAhGnZ6n3HjivOLhmw9PlGY+MP4v78azNSrR
 um0AygnLU28pXHf4tR8+bkYgNWHBU2tyDyPrnbKswdUFY2i7Nv0oHStOozecILCrmAYc
 CEbOsYKajRTGdzWZNKMWU6kQrMxDRgojdSwDBeSKZvPv2qxuhYGigJnglDxjL+OVxNTt
 TXGQ==
X-Gm-Message-State: APjAAAWL1gIel+6UAftZcwRJKbHi/9h5wLpEHkn30tZtRVMyYbPJGwtl
 70Mhvn0ZDzYFhP+J6a2xTz5ODBFBAD7JeCGqdO0=
X-Google-Smtp-Source: APXvYqxX5Ag0UvYinmkF5SB7/dX0f1cfnLGQ4rgibnQ/l3STGcAuL5YynQVyOviGB+3r1+YI979fSLdXYgQZkCa4wKg=
X-Received: by 2002:a81:4320:: with SMTP id q32mr1039014ywa.464.1570773402419; 
 Thu, 10 Oct 2019 22:56:42 -0700 (PDT)
MIME-Version: 1.0
References: <1569483508-18768-1-git-send-email-candlesea@gmail.com>
 <20190930153437.ocatny7u4z3oj7k2@willie-the-truck>
 <CAPnx3XMqnQ4R=_gkL6Rye=4adV=qCRUs2sm5A6kJccDCQ82xnw@mail.gmail.com>
In-Reply-To: <CAPnx3XMqnQ4R=_gkL6Rye=4adV=qCRUs2sm5A6kJccDCQ82xnw@mail.gmail.com>
From: Candle Sun <candlesea@gmail.com>
Date: Fri, 11 Oct 2019 13:56:31 +0800
Message-ID: <CAPnx3XN99m8NH31eHrK+tpeUXy0DLUmTppd0Q3TskSGj2e_FPg@mail.gmail.com>
Subject: Re: [RESEND PATCH] ARM/hw_breakpoint: add ARMv8.1/ARMv8.2 debug
 architecutre versions support in enable_monitor_mode()
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_225645_171716_358E33DF 
X-CRM114-Status: GOOD (  17.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (candlesea[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Will,
Is the patch useful for you? Would you please give me some suggestions?
Thank you.

Regards,
Candle


On Tue, Oct 8, 2019 at 3:20 PM Candle Sun <candlesea@gmail.com> wrote:
>
> Hi Will,
> Sorry for not instant respond.
>
>
> On Mon, Sep 30, 2019 at 11:34 PM Will Deacon <will@kernel.org> wrote:
> >
> > On Thu, Sep 26, 2019 at 03:38:28PM +0800, Candle Sun wrote:
> > > From: Candle Sun <candle.sun@unisoc.com>
> > >
> > > When ARMv8.1/ARMv8.2 cores are used in AArch32 mode,
> > > arch_hw_breakpoint_init() in arch/arm/kernel/hw_breakpoint.c will be used.
> > >
> > > From ARMv8 specification, different debug architecture versions defined:
> > > * 0110 ARMv8, v8 Debug architecture.
> > > * 0111 ARMv8.1, v8 Debug architecture, with Virtualization Host Extensions.
> > > * 1000 ARMv8.2, v8.2 Debug architecture.
> > >
> > > So missing ARMv8.1/ARMv8.2 cases will cause enable_monitor_mode() function
> > > returns -ENODEV, and arch_hw_breakpoint_init() will fail.
> > >
> > > Signed-off-by: Candle Sun <candle.sun@unisoc.com>
> > > Signed-off-by: Nianfu Bai <nianfu.bai@unisoc.com>
> > > ---
> > >  arch/arm/include/asm/hw_breakpoint.h | 2 ++
> > >  arch/arm/kernel/hw_breakpoint.c      | 2 ++
> > >  2 files changed, 4 insertions(+)
> >
> > How did you test this?
> >
> > Will
>
> We have the SoC with A55 cores. On one Android project, for saving memory usage,
> we let A55 run in aarch32 mode.
> While the following failures occue on Android CtsBionicTestCases:
> --sys_ptrace#watchpoint_imprecisede
> --sys_ptrace#hardware_breakpoint
> --sys_ptrace#watchpoint_stress
>
> The code snippet for testing is:
>
> static void check_hw_feature_supported(pid_t child, HwFeature feature) {
> #if defined(__arm__)
>   long capabilities;
>   long result = ptrace(PTRACE_GETHBPREGS, child, 0, &capabilities);
>   if (result == -1) {
>     EXPECT_EQ(EIO, errno);
>     GTEST_SKIP() << "Hardware debug support disabled at kernel
> configuration time";
>   }
>   uint8_t hb_count = capabilities & 0xff;
>   capabilities >>= 8;
>   uint8_t wp_count = capabilities & 0xff;
>   capabilities >>= 8;
>   uint8_t max_wp_size = capabilities & 0xff;
>   if (max_wp_size == 0) {
>     GTEST_SKIP() << "Kernel reports zero maximum watchpoint size";
>   } else if (feature == HwFeature::Watchpoint && wp_count == 0) {
>     GTEST_SKIP() << "Kernel reports zero hardware watchpoints";
>   } else if (feature == HwFeature::Breakpoint && hb_count == 0) {
>     GTEST_SKIP() << "Kernel reports zero hardware breakpoints";
>   }
> #elif defined(__aarch64__)
>   user_hwdebug_state dreg_state;
>   iovec iov;
>   iov.iov_base = &dreg_state;
>   iov.iov_len = sizeof(dreg_state);
>
>   long result = ptrace(PTRACE_GETREGSET, child,
>                        feature == HwFeature::Watchpoint ?
> NT_ARM_HW_WATCH : NT_ARM_HW_BREAK, &iov);
>   if (result == -1) {
>     ASSERT_EQ(EINVAL, errno);
>   }
>   if ((dreg_state.dbg_info & 0xff) == 0) GTEST_SKIP() << "hardware
> support missing";
> #else
>   // We assume watchpoints and breakpoints are always supported on x86.
>   UNUSED(child);
>   UNUSED(feature);
> #endif
> }
>
> The max_wp_size field returned by __ptrace() from kernel is zero,
> which causes the test failures.
>
> After futher analysis, we found max_watchpoint_len variable is not
> right initialized in kernel
> arch_hw_breakpoint_init() function. Missing the case of ARM_DEBUG_ARCH_V8_2 in
> enable_monitor_mode() directly aborts the arch_hw_breakpoint_int().
>
> Candle
> Best regards

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
