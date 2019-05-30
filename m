Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 477802FFBC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 17:58:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FtgrwRd6mXjHy2M5T8HYciAqtHV+zrm1fIS9lIaEs9U=; b=oM/CQyCi+JxXcw
	z2nXGz1b4jYmAS+HNDiTvFsY5uyn+SxHyjNdgV8gV4J1BHcj/nECGM5Gk/S4rPYhgvVQik2ZlbK7P
	sbpkU9cRHmtAYC9Kl0BqLjhgX/vjlq1hO6czPwCbcxINmR0xEJRGqSdkzACbETdXhgITTg0pEl/To
	ENEFM00r7UKJBGC0/j3sp5lL4tM/5GZRjQeDWy1pXl4I8W9ab66YMGuXJoMWu6d41heht8f1T/obd
	B3iHIzNLBqNxEkL9+JIEeVteApqp3Mc+nd2Qk96UQvc37K3fHpLNqDq5da3fGOUOOUTDatqAa86+o
	KrTBhR84gZWoiMjPx9IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWNRQ-0002m1-Rf; Thu, 30 May 2019 15:58:08 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWNRI-0002lh-Rs
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 15:58:02 +0000
Received: by mail-pl1-x644.google.com with SMTP id gn7so2727733plb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 08:58:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=kWW18hE4+uF5ySvO6zdc9iCJqom8rdSH23lJ32T2ggs=;
 b=Z6sH7vWj58q5LSALBmm7RalvQ/LSBNVc1VDLXm0t1Z9F2RwN4MR19Fo5FohZbEVmFV
 n6d8OLcnkf32aK7NYTe5kbwXQANGFFAOKFuWpvEJsSRttXp8/ZjeZnqCvF7hIBH58ASt
 zWyRCXL/6or2VyIQu8R3OIDLlCn02X6g+tRns=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=kWW18hE4+uF5ySvO6zdc9iCJqom8rdSH23lJ32T2ggs=;
 b=HtR3PY7QQL0RrZL/LJCJtZN68MonjVCl1QHPyoC0fWZ66012j0KsabnxBdjFDr4v0s
 0ZTNc7tAb0AlKZihxn1Di/JBLM0PrcjZqPnYe5hebL0Io4MTMk3Hqe2tjvMBP2dd8mbz
 HE+lN59C0bjsE5NgWY3O8LjRDiccJRw9mYDvQiuKsVx9ZsctSpgEsjE0WTwuKxMTDgyU
 y7SIIsVbLTN4Ox8OtyH+VTm0MVHgb9yAH2nAuerBWRYpmLtFM/RRueY4bl82nndZXIlo
 LK4dE3QePw1agxG1Nss12pSaNfZKs2bfndDjC2pqmkJ4kT//kkaUbt2ToFZ8ZmW7TISa
 ly4A==
X-Gm-Message-State: APjAAAXujPK/rDF6+Y6bU4KznY5Oe70tfbOmiUoknkNm4ZGaUaVsnj9l
 ni87Je12eCyiQU7kMCxdEBWvUQ==
X-Google-Smtp-Source: APXvYqyt23uehYgq9PIDdJiUHJbIXj+OSuKaa1WBbhOYAYyIfLl7wYKvtas0paOSgoQ2F5rZXAmDUg==
X-Received: by 2002:a17:902:7618:: with SMTP id
 k24mr4468610pll.78.1559231879832; 
 Thu, 30 May 2019 08:57:59 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id x10sm4810357pfj.136.2019.05.30.08.57.58
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 30 May 2019 08:57:58 -0700 (PDT)
Date: Thu, 30 May 2019 08:57:57 -0700
From: Kees Cook <keescook@chromium.org>
To: Luke Cheeseman <Luke.Cheeseman2@arm.com>
Subject: Re: [RFC v2 0/7] arm64: return address signing
Message-ID: <201905300851.4A68705B0@keescook>
References: <20190529190332.29753-1-kristina.martsenko@arm.com>
 <201905292004.3809FBAA66@keescook>
 <DB7PR08MB3865C4AA36C9C465B2A687DABF180@DB7PR08MB3865.eurprd08.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB7PR08MB3865C4AA36C9C465B2A687DABF180@DB7PR08MB3865.eurprd08.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_085800_928635_2FB3A393 
X-CRM114-Status: GOOD (  28.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <Mark.Rutland@arm.com>, Diogo Sampaio <Diogo.Sampaio@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 Luke Cheeseman <luke.cheeseman@arm.com>, Will Deacon <Will.Deacon@arm.com>,
 Kristina Martsenko <Kristina.Martsenko@arm.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Amit Kachhap <Amit.Kachhap@arm.com>, Suzuki Poulose <Suzuki.Poulose@arm.com>,
 Dave P Martin <Dave.Martin@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 30, 2019 at 10:33:33AM +0000, Luke Cheeseman wrote:
> > Luke, is this expected to work Clang currently?
> 
> 
> Do you mean something like the following to control signing of each function?
> 
> 
> int __attribute__ ((target ("sign-return-address=all"))) foo(void) {
>   return 42;
> }

Well, yes, though, in this usage, the goal is to disable it for specific
functions:

int __attribute__((target("branch-protection=none"))) early_func(void)
{
    /* set up branch protection registers */
}

> Clang doesn't currently support any function attribute to control
> function signing to this level of granularity. We haven't added it and
> don't have a plan to do so at the moment.

What's needed to accomplish this? It looks to be a blocker for getting
PAC working on Android kernels.

-Kees

> 
> 
> Thanks,
> 
> Luke
> 
> 
> ________________________________
> From: Kees Cook <keescook@chromium.org>
> Sent: 30 May 2019 04:09:23
> To: Kristina Martsenko
> Cc: Luke Cheeseman; Diogo Sampaio; linux-arm-kernel@lists.infradead.org; Amit Kachhap; Ard Biesheuvel; Catalin Marinas; Dave P Martin; Mark Rutland; Ramana Radhakrishnan; Suzuki Poulose; Will Deacon
> Subject: Re: [RFC v2 0/7] arm64: return address signing
> 
> On Wed, May 29, 2019 at 08:03:25PM +0100, Kristina Martsenko wrote:
> > This series improves function return address protection for the arm64 kernel, by
> > compiling the kernel with ARMv8.3 Pointer Authentication instructions. This
> > should help protect the kernel against attacks using return-oriented
> > programming.
> 
> Can you speak to whether this feature should be enalbed in addition to
> or instead of the standard stack canary option?
> 
> >  - The patches make use of the sign-return-address/branch-protection compiler
> >    options and function attributes. GCC supports both, but Clang/LLVM appears
> >    to only support the compiler option, not the function attribute, so with
> >    these patches (and CONFIG_ARM64_PTR_AUTH=y) an LLVM-built kernel will fail
> >    to boot on ARMv8.3 CPUs. I don't yet know why LLVM does not support it, or
> >    whether support can be added. This series may need to be rewritten to not
> >    use the attribute, and instead move the functionality to assembly, or to
> >    disable return address signing when building with LLVM.
> 
> I've added Luke Cheeseman and Diogo N. Sampaio to CC. In looking quickly
> at the LLVM support for branch-protection, I think it's just missing the
> attribute target glue needed to "notice" the attribute markings. Luke,
> is this expected to work Clang currently? I'm not familiar yet with
> how attributes get wired up, but I think it should be quite possible.
> 
> >  - more testing
> 
> Is PAC emulated in QEmu yet? (I assume I can't get real hardware to help
> test this yet...)
> 
> --
> Kees Cook
> IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
