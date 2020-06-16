Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 162271FBE19
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 20:35:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kZxb1bFRTXaxx/mlCwBmw9xSMzIM9xX3U3xHfMMy0b4=; b=bg9JOBB0UntQ0H
	J3mcyW8lfT4fBtnUMfVGCnsHWdkTBA5fmDPIIqRraSjWCmjtthIX3zFtuFpYCdWwmZbinRYYLLNk/
	QywujUeQV/H/9wzdRXX/rTkkbZ02LnnBHmgdOOYcRW2NDHkvZaFm12zJF3WFpvmy9mMvyUoy9scBl
	iPnu/+ApZcDhk68YWma9i7SER965uAJZ6bg7037KIMSS6kCflXNnKhb9cH2ZSXGKON3K/zugtZw9h
	53tJbBaakN422kBy0vTkvPF1wUN2L3bdNJYWgnoHoQ0GA55IbJEIhtMrNj1Y7m7wuWBrxDGhu1iQZ
	gIhKTwUfHnhJBUcbPA+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlGQy-0001Ok-0Q; Tue, 16 Jun 2020 18:35:44 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlGQo-0001O2-0z
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 18:35:35 +0000
Received: by mail-pj1-x1042.google.com with SMTP id jz3so1820923pjb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 11:35:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IH9VVlN+Y3oFdk9wXuwt995Uv/M65orCpR16OYHXQQM=;
 b=iQJdgGl58jJnTmc1BKIn7lcWnOSzoEDuyAY4Yr/qJUGxkDlFp/KV1OchlSwJ9Cp71g
 PbwGyoYYRdplVmPN5aBNWkpfFmVjJpZYlJ5o52xwF3+GS4pB8TPZw2usN7XRD0tLMXr+
 i7zK+1y/Srm9NSyT+4/1KUxt8dN2AwuAi2Typ2amM1+rlf44D6/xIU4gSuUbb5bWgwuh
 xFC2K4Pp38+hvM3ntujC58MEW+zco88Jlvq1TR7epbk00B74ngM5ltiv2Jlw7C/65pcx
 XA9bx9+PLLbyjmka0EDIagMZY+enWYl5FDOVFbjHTsuHtGC7+Z/nFfga5NSekZZW9Zlk
 Y4iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IH9VVlN+Y3oFdk9wXuwt995Uv/M65orCpR16OYHXQQM=;
 b=CMRrUXuQK/va7e914fCIhZeCJx7U7U+Z49fkJz6cArXaK3WzUkNxKzOEvQHjmiuB4z
 py3IssLVwepgxzZ9t+YI1v0A42ypyG9i955coDUK/5Rv+G14L16At8EGujrHgz+2psOs
 pzXLH5WKGpTPPamnPfMZ6n/NpRleQRvjaLArHrMuc+sH36wnsZhKZFV0QK83nGcHABKB
 9KywxvDrzAOvKI9gcj/0kEhuFodgtPDx0GzOssYyPnTEf8I22k86rZHd+QB3naQcBdXB
 b7S4uoPS+Gan5rM5bl5tkAj/NWY5zxOwqYgKM7q7cw5L7wq6kouxrckz+dNQ/rSPi37q
 NQjA==
X-Gm-Message-State: AOAM530TBHE8gDp+ej1d407IiqyeadJip48rPcVORXHfbBpq1oGy7MXP
 qMmi72FO7EeKY0TYvIQA23VzSK0zZJItfn8grB+v7A==
X-Google-Smtp-Source: ABdhPJx44qsZAEPWMPZPg9G8s3ZP/wZ+Zj8a+6iFRVT+xjKU7obyOPfurTQ3agdgPup9ps47yH0arosZzDVGFJS1VLo=
X-Received: by 2002:a17:90b:949:: with SMTP id
 dw9mr4211084pjb.101.1592332530503; 
 Tue, 16 Jun 2020 11:35:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200615105524.GA2694@willie-the-truck>
 <20200615115337.GG4447@sirena.org.uk>
 <20200615120223.GC2694@willie-the-truck>
 <20200615143105.GA2283265@ubuntu-n2-xlarge-x86>
 <20200616173728.GC2129@willie-the-truck>
 <20200616174904.GA3403100@ubuntu-n2-xlarge-x86>
 <20200616175519.GD2129@willie-the-truck>
In-Reply-To: <20200616175519.GD2129@willie-the-truck>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Tue, 16 Jun 2020 11:35:19 -0700
Message-ID: <CAKwvOdm_0W5A+=C0uNfFfU2+wb-f4MA2B_P+15KWdGsBqfZ9rg@mail.gmail.com>
Subject: Re: Clang miscompiling arm64 kernel with BTI and PAC?
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_113534_088350_7BA8BC1D 
X-CRM114-Status: GOOD (  19.09  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Tom Stellard <tstellar@redhat.com>,
 android-kvm@google.com, Catalin Marinas <catalin.marinas@arm.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Mark Brown <broonie@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, daniel.kiss@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 16, 2020 at 10:55 AM Will Deacon <will@kernel.org> wrote:
>
> On Tue, Jun 16, 2020 at 10:49:04AM -0700, Nathan Chancellor wrote:
> > On Tue, Jun 16, 2020 at 06:37:28PM +0100, Will Deacon wrote:
> > > On Mon, Jun 15, 2020 at 07:31:05AM -0700, Nathan Chancellor wrote:
> > > > On Mon, Jun 15, 2020 at 01:02:23PM +0100, Will Deacon wrote:
> > > > > On Mon, Jun 15, 2020 at 12:53:37PM +0100, Mark Brown wrote:
> > > > > > ([AArch64] Fix BTI instruction emission) should fix this, it's been
> > > > > > reviewed so should be merged shortly.
> > > > >
> > > > > Cheers, that's good to hear. Shall we have a guess at the clang release
> > > > > that will get the fix, or just disable in-kernel BTI with clang for now?
> > > > >
> > > >
> > > > This will be in clang 11 for sure. Tom, would it be too late to get this
> > > > in to clang 10.0.1? If it is not, I can open a PR.
> > >
> > > Any update on this, please? I'd like to get the kernel fixed this week.
> > >
> > The AArch64 backend owner said it should be okay to add to 10.0.1:
> > https://llvm.org/pr46327
> >
> > Tom just needs to pick it, I see no reason to believe that won't happen
> > this week.
>
> Brill, then I'll tentatively queue the diff below...
>
> Thanks,
>
> Will
>
> --->8
>
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 31380da53689..4ae2419c14a8 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -1630,6 +1630,8 @@ config ARM64_BTI_KERNEL
>         depends on CC_HAS_BRANCH_PROT_PAC_RET_BTI
>         # https://gcc.gnu.org/bugzilla/show_bug.cgi?id=94697
>         depends on !CC_IS_GCC || GCC_VERSION >= 100100
> +       # https://reviews.llvm.org/rGb8ae3fdfa579dbf366b1bb1cbfdbf8c51db7fa55
> +       depends on !CC_IS_CLANG || CLANG_VERSION >= 100001
>         depends on !(CC_IS_CLANG && GCOV_KERNEL)
>         depends on (!FUNCTION_GRAPH_TRACER || DYNAMIC_FTRACE_WITH_REGS)
>         help

That should be fine.
Acked-by: Nick Desaulniers <ndesaulniers@google.com>

-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
