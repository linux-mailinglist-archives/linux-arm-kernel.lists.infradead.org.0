Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B05F15B265
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 21:59:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=egZkTccImEU98LmXcsGIDOSygZEJq9mRkuFIv9gX544=; b=ZrlRzZ1cIStpFo
	fZKdxLplJPsSe3A9KC/3kJT6MtrKajMGgptd8kcEL74D0F+Rqpw0ZnNFNNPi9181dHI9y42JkaZUV
	UamldlwMZXlmn/5SAtXbDtE7stxTq5xzBlWxkw/hUPZ0ZPWd5mw3hdw0T1fOKrsPHwq+cJKK7PEIk
	QlkOxmlPt7dk69ZjUNndaDhIStcVxKm66/16udwoj+5eFCtzELl/Z6LfORHxEcqpkbK1TSnHSaPEz
	WbmBpBKBU/f3wqBB/QD5Jeb68CGa2pirfZ6g/7Mpo2v/VBs5ZJzmriAGtVjNnLrL0Yy9YlA75jmFZ
	zhEckqzGPQiaooVhfY2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1z6l-0003uW-Je; Wed, 12 Feb 2020 20:59:43 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1z6e-0003tV-4w
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 20:59:37 +0000
Received: by mail-vs1-xe44.google.com with SMTP id 7so2134018vsr.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Feb 2020 12:59:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dNT84lBczGzzOgb9OnM5Fdxg6SAeViGOzJlzxW7UwtM=;
 b=hqtkQWWMamX0OQO403fEmerDtGachsfSTpAQbGxOovOjrH4I6JJGU7ulCB6ab4JoT3
 KAyC6liLk8dJENInpS9tXLd0C/e4cO0xsfrq3v5JmxMDWdQPH4RtbIyUaPUEmFFncsnu
 NTRkAxc5qKDuK8ZfwFSsDYyfi27+i3eqlWyAZMw88Gui9+TfOwUOVnUpQC+aVOuJacyq
 8T1BF/3aw0pTkYZ2HCojO8/QDLI6PFgcL/LPPiCxdXK9F4wYD6vIQ7uMQfgPEsyj2YE5
 xyfVe+8nvsIELQ09/BO6sp4lG11/JqoDsbV7KjcyH1H3MR+bLO9ZJQVegNEKcfhvaktJ
 6iJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dNT84lBczGzzOgb9OnM5Fdxg6SAeViGOzJlzxW7UwtM=;
 b=devfxbX9EDXMa073yytQoEGY34OAJMFVcPdmObpRZDRe6e8ey58Xu6Vw/ME4XKwVP7
 5FUB57EXmnr3bHkZLnceZLe5cjTtLKR8zVY25lReLs2FCwzzm0vSUiqVrsTREIw/0nbj
 l15tDBIPoiI4HsdgIVUPwJ1ENqKvp/mHlVAscxlVXRXPBGB3sdRGl75oPtJZTTdj9Yfi
 NJu29Et/3xHWpR2EUJ3aUCprwVRfMmhVq2FYzPI4Kt7KR+wyPSw/RPVZT60Rp4oV9ULp
 NniqKJMDDxUHrnqCnp+LvrwtcQ2FDbzofzQAO4wl18QsMB2EeIOSK/58hzFITizdKzKr
 eavA==
X-Gm-Message-State: APjAAAU3pU0gbp7stmlbxJ76WaH+3UcYewdabEEA777vF6tqzqJQf0L9
 kUys+uhYMUSTOEltfRGrYp3TTrwZ3AW7vW3Vq2Sa3Q==
X-Google-Smtp-Source: APXvYqwlqtMeW4JdpzouZL0DVTK633mlJLfXjD51WE9+E3ZvoUcyD8yDdtL0O1xkdRc9tJh+2nQxwQKr0i+z+9CR1Hg=
X-Received: by 2002:a67:2c15:: with SMTP id s21mr298736vss.104.1581541173587; 
 Wed, 12 Feb 2020 12:59:33 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200128184934.77625-1-samitolvanen@google.com>
 <20200128184934.77625-12-samitolvanen@google.com>
 <dbb090ae-d1ec-cb1a-0710-e1d3cfe762b9@arm.com>
In-Reply-To: <dbb090ae-d1ec-cb1a-0710-e1d3cfe762b9@arm.com>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Wed, 12 Feb 2020 12:59:22 -0800
Message-ID: <CABCJKudpeTDa4Ro1aCsCJ-=x97SG0qu5LGpj9ywj1aLOtboNkQ@mail.gmail.com>
Subject: Re: [PATCH v7 11/11] arm64: scs: add shadow stacks for SDEI
To: James Morse <james.morse@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_125936_214421_757D5F2B 
X-CRM114-Status: GOOD (  15.41  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 11, 2020 at 5:57 AM James Morse <james.morse@arm.com> wrote:
>
> Hi Sami,
>
> On 28/01/2020 18:49, Sami Tolvanen wrote:
> > This change adds per-CPU shadow call stacks for the SDEI handler.
> > Similarly to how the kernel stacks are handled, we add separate shadow
> > stacks for normal and critical events.
>
> Reviewed-by: James Morse <james.morse@arm.com>
> Tested-by: James Morse <james.morse@arm.com>

Thank you for taking the time to test this, James!

> > diff --git a/arch/arm64/kernel/scs.c b/arch/arm64/kernel/scs.c
> > index eaadf5430baa..dddb7c56518b 100644
> > --- a/arch/arm64/kernel/scs.c
> > +++ b/arch/arm64/kernel/scs.c
>
> > +static int scs_alloc_percpu(unsigned long * __percpu *ptr, int cpu)
> > +{
> > +     unsigned long *p;
> > +
> > +     p = __vmalloc_node_range(PAGE_SIZE, SCS_SIZE,
> > +                              VMALLOC_START, VMALLOC_END,
> > +                              GFP_SCS, PAGE_KERNEL,
> > +                              0, cpu_to_node(cpu),
> > +                              __builtin_return_address(0));
>
> (What makes this arch specific? arm64 has its own calls like this for the regular vmap
> stacks because it plays tricks with the alignment. Here the alignment requirement comes
> from the core SCS code... Would another architecture implement these
> scs_alloc_percpu()/scs_free_percpu() differently?)

You are correct, these aren't necessarily specific to arm64. However,
right now, we are not allocating per-CPU shadow stacks anywhere else,
so this was a natural place for the helper functions. Would you prefer
me to move these to kernel/scs.c instead?

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
