Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 213361FFF1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 09:05:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MJ23EtDcF84lOWQgFSPb9pn9FIVUbL+kXUSHOD9by4Q=; b=MLdBJ825DTTBXQ
	W+/W8wqcQNU2H0hoUM7G+h15fri9Yb+XkFvOtjf6kcfIIC30BASVjqer5USzBuk3m9a1Xd0X4GJd5
	dNH7eapts1/orVC5OujENf1fwyiN872dsA3Ttaik58XQDk6y1MJLK8ZLebCqZYLoNv3AM7BjeL2SG
	QT/ntsbgW3mthvvyhNDRw4w1mLUtl8lQwhQYu6ajmzSG+Ogk1Y0O75fHlexyZSUNKtXz6zsONWEFG
	OSQNPl/VKcQlLqFseChYvIYNCHfUAmP74SGtaSNFZ6FTsobw/JKrslIsxWMXiqzhhtPCe0QPmS8YD
	t+5qsbW8kaCr7ToZo3iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRARu-0006Jx-Sk; Thu, 16 May 2019 07:05:06 +0000
Received: from mail-vs1-f66.google.com ([209.85.217.66])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRARj-0006JT-OD
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 07:04:57 +0000
Received: by mail-vs1-f66.google.com with SMTP id d128so1608612vsc.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 00:04:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=q015/QHSXrok6Bw3iqMxHNHZLCbCNdwdW05xVaqSbFA=;
 b=IjkisOq2jTM0RrMAbhgso+JE1ZC3Uhz6u/x2cCC2eHaVHCbZ1axqcneL5CRyssFbT8
 Ogq/gfTqdo+pI0Iw+FXE6SkvzGW9XnUOUcBkGKwzAYZ9YsJBzjmwt8D3hzXdcNX5ym+X
 3QRLfEwhPwFXSAPsc4ql3xSbie8bZ99PVfvijCjJyRODk1LejhMWpN31yR+iLOfTtgqt
 EVglwYcNR2PxAxxEU0JCFY4QZ6WUki8oJ6e4sf5+DgFw/sLMpb8eiHx52Yq/UkgOF7Fl
 0kOtx9f0hmkwlKczpjM91pInIpmtpVqqC7HwDdqG1WqU+HZ2Yydc2OyGZvglVirE+rsk
 TUTg==
X-Gm-Message-State: APjAAAVMNryRudafRtR6DbmCH2r61s29esDp+H5nyELNoExw8NYitP5Z
 fnY3qsyk/h6th1xZL+9eMcVKCqhcbZn1R6ohKPc=
X-Google-Smtp-Source: APXvYqw6dkP3FpbWRddQ96QVJAiiTPvgI18vgQaVewrbrBgFk7NwzmrgB/94Q+BFkCvWo9DPpaDiVAnXWQvZ+5swDfg=
X-Received: by 2002:a67:f303:: with SMTP id p3mr11428563vsf.166.1557990294356; 
 Thu, 16 May 2019 00:04:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190515090722.696531131@linuxfoundation.org>
 <20190515090731.364702401@linuxfoundation.org>
In-Reply-To: <20190515090731.364702401@linuxfoundation.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 16 May 2019 09:04:41 +0200
Message-ID: <CAMuHMdVFaQLbH7F=Ard5MzUzG1FTfwLH=7xz=LpA3YaZyj2+Zg@mail.gmail.com>
Subject: Re: [PATCH 4.4 247/266] cpu/speculation: Add mitigations= cmdline
 option
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ben Hutchings <ben@decadent.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_000455_784470_F007C828 
X-CRM114-Status: GOOD (  21.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.217.66 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Paul Mackerras <paulus@samba.org>,
 "H . Peter Anvin" <hpa@zytor.com>, Andrea Arcangeli <aarcange@redhat.com>,
 linux-s390 <linux-s390@vger.kernel.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Steven Price <steven.price@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Waiman Long <longman@redhat.com>,
 Linux-Arch <linux-arch@vger.kernel.org>, Will Deacon <will.deacon@arm.com>,
 Jiri Kosina <jikos@kernel.org>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Josh Poimboeuf <jpoimboe@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Jon Masters <jcm@redhat.com>, Phil Auld <pauld@redhat.com>,
 Jiri Kosina <jkosina@suse.cz>, Randy Dunlap <rdunlap@infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 stable <stable@vger.kernel.org>, Tyler Hicks <tyhicks@canonical.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Greg, Ben,

On Wed, May 15, 2019 at 1:12 PM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
> From: Josh Poimboeuf <jpoimboe@redhat.com>
>
> commit 98af8452945c55652de68536afdde3b520fec429 upstream.
>
> Keeping track of the number of mitigations for all the CPU speculation
> bugs has become overwhelming for many users.  It's getting more and more
> complicated to decide which mitigations are needed for a given
> architecture.  Complicating matters is the fact that each arch tends to
> have its own custom way to mitigate the same vulnerability.
>
> Most users fall into a few basic categories:
>
> a) they want all mitigations off;
>
> b) they want all reasonable mitigations on, with SMT enabled even if
>    it's vulnerable; or
>
> c) they want all reasonable mitigations on, with SMT disabled if
>    vulnerable.
>
> Define a set of curated, arch-independent options, each of which is an
> aggregation of existing options:
>
> - mitigations=off: Disable all mitigations.
>
> - mitigations=auto: [default] Enable all the default mitigations, but
>   leave SMT enabled, even if it's vulnerable.
>
> - mitigations=auto,nosmt: Enable all the default mitigations, disabling
>   SMT if needed by a mitigation.
>
> Currently, these options are placeholders which don't actually do
> anything.  They will be fleshed out in upcoming patches.
>
> Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>

> [bwh: Backported to 4.4:
>  - Drop the auto,nosmt option which we can't support

This doesn't really stand out. I.e. I completely missed it, and started
wondering why "auto,nosmt" was not documented in
kernel-parameters.txt below...

> --- a/Documentation/kernel-parameters.txt
> +++ b/Documentation/kernel-parameters.txt
> @@ -2173,6 +2173,25 @@ bytes respectively. Such letter suffixes
>                         in the "bleeding edge" mini2440 support kernel at
>                         http://repo.or.cz/w/linux-2.6/mini2440.git
>
> +       mitigations=
> +                       Control optional mitigations for CPU vulnerabilities.
> +                       This is a set of curated, arch-independent options, each
> +                       of which is an aggregation of existing arch-specific
> +                       options.
> +
> +                       off
> +                               Disable all optional CPU mitigations.  This
> +                               improves system performance, but it may also
> +                               expose users to several CPU vulnerabilities.
> +
> +                       auto (default)
> +                               Mitigate all CPU vulnerabilities, but leave SMT
> +                               enabled, even if it's vulnerable.  This is for
> +                               users who don't want to be surprised by SMT
> +                               getting disabled across kernel upgrades, or who
> +                               have other ways of avoiding SMT-based attacks.
> +                               This is the default behavior.
> +
>         mminit_loglevel=
>                         [KNL] When CONFIG_DEBUG_MEMORY_INIT is set, this
>                         parameter allows control of the logging verbosity for

> --- a/kernel/cpu.c
> +++ b/kernel/cpu.c
> @@ -842,3 +842,16 @@ void init_cpu_online(const struct cpumas
>  {
>         cpumask_copy(to_cpumask(cpu_online_bits), src);
>  }
> +
> +enum cpu_mitigations cpu_mitigations = CPU_MITIGATIONS_AUTO;
> +
> +static int __init mitigations_parse_cmdline(char *arg)
> +{
> +       if (!strcmp(arg, "off"))
> +               cpu_mitigations = CPU_MITIGATIONS_OFF;
> +       else if (!strcmp(arg, "auto"))
> +               cpu_mitigations = CPU_MITIGATIONS_AUTO;

Perhaps

    else
            pr_crit("mitigations=%s is not supported\n", arg);

?

Actually that makes sense on mainline, too.
Cooking a patch...

> +
> +       return 0;
> +}
> +early_param("mitigations", mitigations_parse_cmdline);

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
