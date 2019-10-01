Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 987F5C3E4C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 19:13:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+5COx8M0fe0eCOhCeHsNWZ/A7CI1h1wCBk0HUd3Snko=; b=Hzn1I5lJ9L6UEA
	i1DX1z+jYycgEPqiGeEjf2xmTDjGiYpRCoiyldAuQhyItsjCSuaxkt6cgA+UPPkogKe2QYLYBlzFo
	GraNqeDsUVDBUGnnGre1H4nBKOSwP6vEoKuux2y4yWqFmP/iBafmY2VLYHnbmS15U5L3wGnWJ2CZQ
	4rpaDW8D30PEF3qXw2QyvXeU5RyezxLLyMkQEyQg8SwnfGo4K/oFVV4CRFI2lOPVKbYeuU/tfK3ag
	jYnvYplQLKuZZmui4gMyInOhL/5u/vV43Pcr5CjESxuJHxncTLlzTAUi8ldBu4jukGybJ1mXHWp2b
	VDEpdgzdk1K1qvemavNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFLiE-00062A-B0; Tue, 01 Oct 2019 17:13:22 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFLi4-00061l-BM
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 17:13:13 +0000
Received: by mail-pg1-x542.google.com with SMTP id i14so10061979pgt.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 10:13:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6C8PPfwqos/xyCjtM97fgsnhM67RrRfY2Cr8/MMkmOA=;
 b=tUQH95EvgiPfl0Y+fg6kKu08+CgUfXrJXrWkufCK5PE64yrkG/R9g/iTCe/S+iz38W
 Myzy8n1qnPCY01xSN2FM3VFvCBqPoDdo63Q0OaUkFeXgdh/K26rsn0wSSg6VWLDdg1Ix
 dRQEDrRIuDaI9zSk4rPWRTHedvcW7wmFcHhflR1pJtWFj7qrTOBASvSZpVtDWbW3wJZ8
 VKriPmlX7ad0CnwbJQuedyuZW9j7d1gaTuPkVYKkQbciLDsB0bC+/lgZArMSReHnnKFV
 zPaV05g7z0avF+9ISuuWz+vNwqxEszHiin3Ip8aczWGRy6rEgHMCq5Lh78qf/5cKrn93
 KNwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6C8PPfwqos/xyCjtM97fgsnhM67RrRfY2Cr8/MMkmOA=;
 b=IhjW4jrRjbkIHwq9FFNtzVg+fzSEiG82ZpxDfhMFRhX3lSmMO9WqMnxG5kwUnCLI6U
 dDq4EzwpGemFtKsTEEjZtpZBUGMet4F1Gwz8IDWtULlqptgoCEvzBtbmTw24LhbKyT/6
 4oDZdETbNXZtdJZQc6IYwoHIXxh0RtJTPWCZDT+cthyygPOkx7n643wlRNFaye4hesqK
 ZAxh7U2YiDZiHnnbiqpcsmvWVhLpPzYMVg37KTH3JSPZa+h2wrHy60RV5blwZOx8PO9P
 4EeZIMEoOMRD+ENM/j1VNX2AJC6Q5ryFfzwKyvizDzz1D/YExnJwnvK6NZidAQIzsgWX
 NtFg==
X-Gm-Message-State: APjAAAWUPSDGp6E4Jx5g7zy2nXqYs+Oq9lomVlh+6z6uUM3/wWsLVQuG
 AcIPOfjT1VanVraTv6gg7bqUmqyt3E9RpbdLZHmH1g==
X-Google-Smtp-Source: APXvYqx/scIWirpOYrA9tus4XSZDjm1o5VEP7KJ7Jgb2bzdi5lU3I4H9J8QadwZuzGoUpwaQkaBKGWy5WvkMVwIpjhg=
X-Received: by 2002:a63:2f45:: with SMTP id v66mr7548913pgv.263.1569949991015; 
 Tue, 01 Oct 2019 10:13:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190926214342.34608-2-vincenzo.frascino@arm.com>
 <20191001131420.y3fsydlo7pg6ykfs@willie-the-truck>
 <20191001132731.GG41399@arrakis.emea.arm.com>
 <ed7d1465-2d7b-d57c-c1b1-215af1ba7a6f@arm.com>
 <20191001142038.ptwyfbesfrz3kkoz@willie-the-truck>
 <7558914c-fc2d-d05a-ccbe-76ef451670ae@arm.com>
 <20191001144353.5rn3bkcc6eyfclh7@willie-the-truck>
 <20191001153056.GO41399@arrakis.emea.arm.com>
 <20191001164657.l2wz3ghq6icm3lim@willie-the-truck>
 <CAKwvOd=+-PEQXOZBG6rprWdOzHfcQq9ojkGo+Q28vfC4AU=Hwg@mail.gmail.com>
 <20191001170753.sqmfqt7zf33jgzns@willie-the-truck>
In-Reply-To: <20191001170753.sqmfqt7zf33jgzns@willie-the-truck>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Tue, 1 Oct 2019 10:12:59 -0700
Message-ID: <CAKwvOdm3E=Gp1XYfs6tcNObkJXA+VwvtLZt81mQ-mbo2gtyTaw@mail.gmail.com>
Subject: Re: [PATCH v3 1/5] arm64: vdso32: Introduce COMPAT_CC_IS_GCC
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_101312_417672_0D1532BA 
X-CRM114-Status: GOOD (  22.46  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, LKML <linux-kernel@vger.kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 1, 2019 at 10:08 AM Will Deacon <will@kernel.org> wrote:
>
> On Tue, Oct 01, 2019 at 09:59:43AM -0700, Nick Desaulniers wrote:
> > On Tue, Oct 1, 2019 at 9:47 AM Will Deacon <will@kernel.org> wrote:
> > >
> > > On Tue, Oct 01, 2019 at 04:30:56PM +0100, Catalin Marinas wrote:
> > > > In the long run, I wouldn't mandate CROSS_COMPILE_COMPAT to always be
> > > > set for the compat vDSO since with clang we could use the same compiler
> > > > binary for both native and compat (with different flags). That's once we
> > > > cleaned up the headers.
> > >
> > > But we'll still need it even with clang so that the relevant triple can be
> > > passed to the --target option. The top-level Makefile already does this:
> > >
> > > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Makefile#n544
> >
> > That's not pulling the cross compiler out of a *config* (as this patch
> > is proposing); rather from an env var.
>
> CROSS_COMPILE_COMPAT is the environment variable, right? If not, then I have
> my terminology mixed up.

Ah, sorry, I'm the one misreading the patch.  I thought the commit
message was showing what the new process would be. I see now that it's
describing the issue pre-patch.  My mistake.

>
> > > so I think we should do the same thing for the compat vdso as well, which
> > > would allow us to remove this complexity by requiring that
> > > CROSS_COMPILE_COMPAT identifies the cross-compiler to use in exactly the
> > > same way as CROSS_COMPILE does.
> > >
> > > Am I missing something here?
> >
> > I think the second paragraph you wrote shows we're all in agreement,
> > but I suspect you may be conflating *how* the toplevel Makefile knows
> > we're doing a cross compile.  It doesn't read a config, this patch
> > would make it so a cross compiler is specified via config, Catalin
> > asked "please no," I agree with Catalin (and I suspect you do too).
>
> Yes, I'm saying let's have an environment variable only and drop the
> CONFIG stuff completely. I think this means that the environment variable
> must always be specified if you want the compat vDSO, but I don't see that
> as a problem.
>
> Will



-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
