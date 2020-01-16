Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D335C13FA6E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 21:17:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BxOY3tuByj5V9JWqKZ/pjOKg2nsWxhe9JR3ZlP9gLwo=; b=QAjDXKq7Cg3Att
	cg81W8funzSHi8+cmxns47hrVt2yt3TzC8QXc9i9laCP2l8FsG/7OZiEYPO8BgaAQU+PMAUToRlzX
	kkwjJyrtowSa9j3M9oa1u0p4DPlJOVugmy8au8G5ooOK3GWdbS3U8VMjjzQMK6tO+wnQdE1vD/kFy
	fr2HOa2C92d9Q5/DaVMKC3nYg6BKdpF9eLrJujW6v0aICOLEvNaSCWmMel1H+MFesKJbgGlI0nrox
	yPJKGQI1V8hU/TJmztTPrl+ch6dMfrGghotG5IalqyXwi5xBYr2uGCqvhCRnZDZA9Svi5qCK9EkW3
	ni9JhVY7SQrpVyL1iNVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isBZu-0006yY-0Y; Thu, 16 Jan 2020 20:17:18 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isBZj-0006xX-1O
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 20:17:11 +0000
Received: by mail-vs1-xe43.google.com with SMTP id g23so13506641vsr.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 12:17:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZF5qzwwkyvyxMKFoOMSyyzNqONb3HROfIsi+ysNvVik=;
 b=nqN/bGHtSGgX+TrvYBkC13nJUB3X8ukJ0klosFF2D10Zy6+y3oamxcHwM8fKEGApUq
 ljpWCk+uAgUgTHRZ1qBolWRCI5hpR6cf37CtPTltdh0YgZvzs++wth7qnHJIp986uOBB
 UtxOCPtMeYhDZIrkw9F7bWSMB7HrODj92xdDp0H7B5dpg/28a7guMnn4MYFhqm3AeNyl
 0j3ofX8AEU86BvazTA4YNmuV8io7MMtpGWaEkogvIihSJVFwcARSZu5G6e+K3zeFZ3kx
 72oIJUgsqtD/qxVLtjNU3NsUe+MHB49BJcuPel9WG6KsUZ0IewO/3FguqYguZl6qKihc
 072g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZF5qzwwkyvyxMKFoOMSyyzNqONb3HROfIsi+ysNvVik=;
 b=o31dxuER/194OAJ28//i0NzdBtBJEIt/t9zbTBHPoV3Et7pGnd1jLgTT7pjZjrK7tb
 l8Chxvkd2aV817xjmly/Fw2h59xKzbiE8KWj84jf3JUCGjH/LCr6Fp4FJbAt7UPWBnt7
 nUYxW+in2zEUjCcRyrCQLRa+45AkfUbJT+YwIAo9vIgcCRaS1cAmjIXzHO92d4wQgcg/
 iXkdb7Yr/2vxj+TgszhOqMk0053uow8e9xn3j8PJfHybYisn4xIEPL/Wk7UtkKHMT7ay
 xw74okX0hnO33SNPQOt5PSIgDHEBa2y481kTgGN44AuN0I5gzFPI/SsQ/1zH4BGLASuF
 SP0Q==
X-Gm-Message-State: APjAAAU3lsEVslthW6KIkn4wt8sFXWau/kGMOQNZvdBgwhK36OykDi5m
 GzROaEIlkqmeVHzV24nBi6PGZ2SasxGTcuJAw1TjtA==
X-Google-Smtp-Source: APXvYqzGSnsl6edzBoVDYTYn7dSudVhqxeHJpq3vbT3Nbo0uCX4G50Cg8szwmqQoGFBA6ZgNEWLEG8Jm96Lj3l2tVXg=
X-Received: by 2002:a67:f057:: with SMTP id q23mr3030208vsm.5.1579205825357;
 Thu, 16 Jan 2020 12:17:05 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191206221351.38241-1-samitolvanen@google.com>
 <20191206221351.38241-14-samitolvanen@google.com>
 <20200116174742.GF21396@willie-the-truck>
In-Reply-To: <20200116174742.GF21396@willie-the-truck>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Thu, 16 Jan 2020 12:16:53 -0800
Message-ID: <CABCJKucQY_Qr6bZXW5TdPnDcBUd7uk8_Md5FNfO+ObNmsH3MZg@mail.gmail.com>
Subject: Re: [PATCH v6 13/15] arm64: disable SCS for hypervisor code
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_121707_199421_2E4C008B 
X-CRM114-Status: GOOD (  13.51  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Laura Abbott <labbott@redhat.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 16, 2020 at 9:47 AM Will Deacon <will@kernel.org> wrote:
>
> On Fri, Dec 06, 2019 at 02:13:49PM -0800, Sami Tolvanen wrote:
> > Filter out CC_FLAGS_SCS for code that runs at a different exception
> > level.
> >
> > Suggested-by: Steven Rostedt (VMware) <rostedt@goodmis.org>
> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > Reviewed-by: Kees Cook <keescook@chromium.org>
> > Reviewed-by: Mark Rutland <mark.rutland@arm.com>
> > ---
> >  arch/arm64/kvm/hyp/Makefile | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/arch/arm64/kvm/hyp/Makefile b/arch/arm64/kvm/hyp/Makefile
> > index ea710f674cb6..17ea3da325e9 100644
> > --- a/arch/arm64/kvm/hyp/Makefile
> > +++ b/arch/arm64/kvm/hyp/Makefile
> > @@ -28,3 +28,6 @@ GCOV_PROFILE        := n
> >  KASAN_SANITIZE       := n
> >  UBSAN_SANITIZE       := n
> >  KCOV_INSTRUMENT      := n
> > +
> > +# remove the SCS flags from all objects in this directory
> > +KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
>
> Same comment as for the vDSO; can we remove the -ffixed-x18 as well?

Sure, I don't see why not. I'll change this in the next version.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
