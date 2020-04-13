Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F36D31A6C6D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 21:24:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pspESVkFl/EFVefTGTm8eGgIU2UTntlXwegJlC3MerU=; b=r/ZRLnfyR0hYxL
	BjWv9ZLxw8e62evK0paXdlEYfwxR8B/Y7emQ18/8IhjmvszQVzMane+GVueCdJVrhjh9nq5zBHfD/
	NGOG/T7R4+GpYUz+jCTSOWsx5K1+fH4tYTGm/lDqHcfARQUrseYcAF4WchGuDkzZv6YihKQpyptQu
	mPxRnNKP/fRRyRA1DRm4Ni+kKxg0RwLSE6PPjQZpQYCm8k3loteVLmZ6epDWy0b8o4B0plLKa+sUH
	thsIQKtWdz+iDnvo3bilT9EiomFBcReV8RC9/XcQCe3i3NyHI7GAGlWWsbahL8NUC6QqqN9SdiieV
	MBZbCyttsuqsAhrkFYWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO4gc-0001sK-F0; Mon, 13 Apr 2020 19:24:02 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO4gS-0001ro-2t
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 19:23:54 +0000
Received: by mail-pj1-x1043.google.com with SMTP id np9so4258263pjb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Apr 2020 12:23:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8lE32io1NRyqSa7MHqCZDRttxoRhAaBAKKn04pJslSA=;
 b=BvE9X5S9Y0cIXImu51NYc31tHh4aVt0KseCDiyJkR7OZzY2JlIRDMkyDZdTNOPuC4R
 9IYJkyCLyatQ9MCEd+g3PH5wq3a+NdnlcnQwJGnU5WCj0BtJz72G8SPSDblVjuOUBKvh
 yhtI9Co6zz/+w4Y2ZsWWLZBcNOjxZAl0nlqk8AeM04HBptMq3I/aR+OocaBYkQ8aIM1n
 jmagVkld4noTl+Up7eXZH2LGLT23dOn9qhWpW7udKYuYLNiClPgVQu0sh/zlvqTdjr7c
 AkUSLYive4wNiDPW4Iix+C1+FjWDB6jiNv3afz3djTNXVT9cjCdb3G9SfKdliIBkFdtZ
 CXhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8lE32io1NRyqSa7MHqCZDRttxoRhAaBAKKn04pJslSA=;
 b=c1/nzdaobY/8vMp3SJvpQ3JAuMNJGSaQDEzsvxIAsmbUnQoLT1Zy48g7sWg3WUu+lP
 dY8RpO0ZEd0vMxfsLmt+wl/r4NJ+CGKuyiwTfgSoON4aPO4HDvPmvIoxjumTXmul+gj5
 xYTfQBouAXhR4vd5h91cJP1fcPSL3q7EehfXmERJVlpnQmR3cyBakh+sAm0pbJjajL1b
 Nj0mDO03hb3WUkFWDz4hI+w46CI6eIP4/ubkNmDgVUg25qdaN+X0E+DFxPSTrUGjfynZ
 wD2OWoe6xU0aDawEE3QOseev4H58NGv0HosX3LvYWJToCJzmo2fdkTkYW4/vkzqxx7Mn
 W8bw==
X-Gm-Message-State: AGi0PubONWlIaKMKo8P40oOmSL79htS755rokt1fSg8ux2dNI434EkCT
 GXm5B6wWCZ1MidvmCiHijKE2uSqCNBjzaUlF/VfxZA==
X-Google-Smtp-Source: APiQypKO1KUFCBfb3oR8QeV6GdNn+LL1TlznBqs1HPMQVZ+C86o3a66gINbmsxoBZH/I8gA95LPPPkmkWiOv+MWhxzc=
X-Received: by 2002:a17:90a:266c:: with SMTP id
 l99mr13602789pje.186.1586805830250; 
 Mon, 13 Apr 2020 12:23:50 -0700 (PDT)
MIME-Version: 1.0
References: <20200409232728.231527-1-caij2003@gmail.com>
 <CAK8P3a3uj7AHbAo4sNzr6KQx5Fk6v99k4ZixCgKo1tUuGoat9Q@mail.gmail.com>
 <CAMj1kXGXNxXGiC4dmNXHkZ6n=J0Fhim3oSwNx4Bz5m9fEphJvQ@mail.gmail.com>
 <20200410123301.GX25745@shell.armlinux.org.uk>
In-Reply-To: <20200410123301.GX25745@shell.armlinux.org.uk>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Mon, 13 Apr 2020 12:23:38 -0700
Message-ID: <CAKwvOd=-u3grX3O4CtBayJYhv=mmsxMrRTF=AMcKMbphN5Xkgg@mail.gmail.com>
Subject: Re: [PATCH] ARM: do not assemble iwmmxt.S with LLVM toolchain
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_122352_154964_69E43368 
X-CRM114-Status: GOOD (  17.20  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Linus Walleij <linus.walleij@linaro.org>, Peter Smith <Peter.Smith@arm.com>,
 Stefan Agner <stefan@agner.ch>, David Howells <dhowells@redhat.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Manoj Gupta <manojgupta@google.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 "Joel Fernandes \(Google\)" <joel@joelfernandes.org>,
 Jian Cai <caij2003@gmail.com>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Ilie Halip <ilie.halip@gmail.com>, Masahiro Yamada <masahiroy@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Sami Tolvanen <samitolvanen@google.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 "Steven Rostedt \(VMware\)" <rostedt@goodmis.org>,
 Jian Cai <jiancai@google.com>, Doug Anderson <armlinux@m.disordat.com>,
 Dan Williams <dan.j.williams@intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Patrick Bellasi <patrick.bellasi@arm.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>, Tejun Heo <tj@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 10, 2020 at 5:33 AM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> For older CPUs, it doesn't matter what the latest ARM ARM says, the
> appropriate version of the ARM ARM is the one relevant for the CPU
> architecture.  This is a mistake frequently made, and it's been pointed
> out by Arm Ltd in the past (before ARMv6 even came on the scene) that
> keeping older revisions is necessary if you want to be interested in
> the older architectures.

As if it never existed *waves hands*.  Interesting.  Does ARM still
distribute these older reference manuals? Do you keep copies of the
older revisions?

>
> However, there's an additional complication here: DEC's license from
> Arm Ltd back in the days of StrongARM allowed them to make changes to
> the architecture - that was passed over to Intel when they bought that
> part of DEC.  Consequently, these "non-Arm vendor" cores contain
> extensions that are not part of the ARM ARM.  iWMMXT is one such
> example, which first appeared in the Intel PXA270 SoC (an ARMv5
> derived CPU).
>
> In fact, several of the features found in later versions of the ARM
> architecture came from DEC and Intel enhancements.
>
> If your compiler/assembler only implements what is in the latest ARM
> ARM, then it is not going to be suitable for these older CPUs and
> alternate vendor "ARM compatible" CPUs.

This is a neat piece of history, thanks for sharing.
-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
