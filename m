Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A95C8100B7E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 19:32:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=URl8j4LEmG3bbEmwKozzV+kPiymyu7P9Bvz/Lm1117M=; b=HCX6w6WIzkCetY
	XKFlEC4az4k1nD48Wf4a1TyuA2tFaVb5Lm3i1EJqq5fpeR437omAVHPQXxZ9uPuvERuIGRi1J4RuX
	im8oWQMNYn1MWHiecCs8tPc1iKXkJJI4a6Bhde5vi5EV9CsRW5LMXsgVZ82mMDCSPjc3ydYl7rJAW
	pVfmz2MtHNVCiJWIQ2xathamsb2ZOqYr943+bvkae4uzhwp0hYsJBXHI+j8ic8YoG0D7LbVATbAy0
	+/mKvli7mVG2I5auVrdHZpMZpJD0uHD1oR1/geeQ1gkWH+unpcq4RT2bWEbj8mKxmZVrHWZton+Ei
	sTIpycGf0l542p9lBTtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWlok-0002yl-Tc; Mon, 18 Nov 2019 18:32:06 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWloc-0002y2-H6
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 18:32:00 +0000
Received: by mail-pl1-x642.google.com with SMTP id e3so10251146plt.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 10:31:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=A4WMyPwwd33AeWG8Iqc5mgyWoDalMpSQTRsm3rGqwlk=;
 b=ZEu6MqIWF1RGB6jwTdYhgHtxhAATdk1ygV/D13/7aMyuBRUAxpL9gDOKnW1YPM/nX7
 23u6A7lrO4lGUJ27TFnoXF0lqTyFkMa05WMr53EPub91ytz47wsBRy2Cg8xJlmXJ8izw
 BFPtLFmh8TGgmhhfVC4M62Z9fJihEG6wvlR3doCWpGCqfc4YFyMjeQW0+WI0OQOGVJFH
 yol3VAr89WnKHDukq6EJzwO2GWv34IvLeTpiMiwew+8CRmTopaeVu8/tozDTVeiudldZ
 gLk/LVTPoDXoQpARKeLAB7WZme2//ckYXuDhm6shpmQ+YoksNdJYGpL9y7ZAReWpLH9n
 /m4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=A4WMyPwwd33AeWG8Iqc5mgyWoDalMpSQTRsm3rGqwlk=;
 b=bTVsDWg7V/K0vFdyX6Cg2Ulv7OsqXffkDb6l1XYSoJRx/XgiCeLuKVwmFwVu/DZlSV
 +RiHsMEMSIM12QpeXMbzXlB9ZX3WFiUPcxjTpE+x070s5FxrkhfsZK0mSh9yXG64Ex/u
 +TGYBQw8SMSL2VpWLQtgRSa8tEOk9+NqdyimRZN3zc6SH4ylzM3M0B/DifDF9Pteptoy
 Way+BHBLV/f4raoer4YgBjuMYIkpeYt04ql/wnuDhV7FT3uRuev+LljkAmr4cXnPIBew
 dMexqC59vz8xgerDq3YhBNFrXCb8dBsyqExzRSz9u8T8jACpEdKqvOg/ovbyiV2INvE4
 uYaQ==
X-Gm-Message-State: APjAAAUl7sQ9DR5qNe/ZwHPPiq/iZm5aM3gxTreHwLdDF5qcPUuKWvFf
 y49T69DLyXSBQ+7ZQlbdVHu19x1ooP7WW760FkkAnw==
X-Google-Smtp-Source: APXvYqx8XiO2tBbSITPF018kWtOJPDBA1kHDVcmrihBshjIKcmexjBxYou1Oyuo1WIXr2rOeMVvKtkImAr+5wZvRChk=
X-Received: by 2002:a17:90a:1f4b:: with SMTP id
 y11mr418957pjy.123.1574101915060; 
 Mon, 18 Nov 2019 10:31:55 -0800 (PST)
MIME-Version: 1.0
References: <20191031194652.118427-1-samitolvanen@google.com>
 <20191114165544.GB5158@willie-the-truck>
In-Reply-To: <20191114165544.GB5158@willie-the-truck>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Mon, 18 Nov 2019 10:31:44 -0800
Message-ID: <CAKwvOdnwL8cXGDykq4YAQi4bXYc7Fccqm-ki61-nySP0h+8ZxQ@mail.gmail.com>
Subject: Re: [RESEND PATCH] arm64: fix alternatives with LLVM's integrated
 assembler
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_103158_616419_9044A7C9 
X-CRM114-Status: GOOD (  15.84  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Kees Cook <keescook@chromium.org>,
 Catalin Marinas <catalin.marinas@arm.com>, LKML <linux-kernel@vger.kernel.org>,
 Jian Cai <jiancai@google.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Sami Tolvanen <samitolvanen@google.com>, Marc Zyngier <maz@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 14, 2019 at 8:55 AM Will Deacon <will@kernel.org> wrote:
>
> Hi Sami,
>
> Sorry -- I thought I'd already replied to this, but it had actually
> slipped through the cracks.
>
> On Thu, Oct 31, 2019 at 12:46:52PM -0700, Sami Tolvanen wrote:
> > LLVM's integrated assembler fails with the following error when
> > building KVM:
> >
> >   <inline asm>:12:6: error: expected absolute expression
> >    .if kvm_update_va_mask == 0
> >        ^
> >   <inline asm>:21:6: error: expected absolute expression
> >    .if kvm_update_va_mask == 0
> >        ^
> >   <inline asm>:24:2: error: unrecognized instruction mnemonic
> >           NOT_AN_INSTRUCTION
> >           ^
> >   LLVM ERROR: Error parsing inline asm
> >
> > These errors come from ALTERNATIVE_CB and __ALTERNATIVE_CFG,
> > which test for the existence of the callback parameter in inline
> > assembly using the following expression:
> >
> >   " .if " __stringify(cb) " == 0\n"
> >
> > This works with GNU as, but isn't supported by LLVM. This change
> > splits __ALTERNATIVE_CFG and ALTINSTR_ENTRY into separate macros
> > to fix the LLVM build.
>
> Please could you explain a bit more about the failure and why LLVM's
> integrated assembler rejects this?

There are currently more than one issue with `.if` assembler
directives we're tracking against Clang's integrated assembler
currently, particularly around the handling of special cases related
to "fragments."
Recommended reading:
https://eli.thegreenplace.net/2013/01/03/assembler-relaxation
This particular case looks like the error is related to referring to
section before it has been seen.  My current understanding is that
Clang's integrated assembler is one pass, unlike GAS, so it chokes on
references to symbols it has not yet seen.

> Could we use something like .ifb or
> .ifeqs instead?
>
> Thanks,
>
> Will



-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
