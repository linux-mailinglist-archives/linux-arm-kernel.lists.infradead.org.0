Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 234481A6C72
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 21:26:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SBHaOAwwGP7EUaon3k8RLsEsDBcmpP+YlUtsk/gF+8g=; b=EpyvWvBBWzXpqs
	lwWxoGcXUjP85Hs0i+8TieMOAT7NHleSQBr1ykhwuAlICS9+NeV746pc7zhNZgx0JRS6ThP7aBwqx
	4/Jk2dHiXQtH7+GA9WU4W5UizfSJqpqW9/CpZ7EX88N7TF4X8C7XQ3rsVC6jxcFGHC0kZonuEKDPq
	433xr/dIX+jYVgZDPlPQHazO2iaVZ47rga+k0EqBto28x7mCNCv3kdHNbZJ0rCSE/Xo1umcaPQNPO
	tyi4reKbW8/7r8fIofhbo/LrcXHInDZfYh8PK+AO5uqGMk/eot2dkakmH+vTDLu2ShxFHt+R6FGLA
	0EoNiDycRW794EHa+xOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO4j8-0004lk-I3; Mon, 13 Apr 2020 19:26:38 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO4iz-0004kd-Du
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 19:26:30 +0000
Received: by mail-pf1-x444.google.com with SMTP id l1so4950196pff.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Apr 2020 12:26:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KdK0zPwtveoXwIU/pJ0It4FhLQkN9xabxjzAbXM7HUg=;
 b=pCeStENdG/6hj1L+u+cxwBd+lxmKze8JFGF8eG5T6Rojz3ubtHvutlqKjh1KPf6A1O
 aVJALpWYIoX41Wh69ZxBMS5ZrlWERrkzwlEgCrDO/r+22JmIYx76G5gf1ZTL97p90L07
 RaKonfqiZWxrjLkWbK3up26Zr9TpJVztjD7fmUypSnBONt4CK8hKMTgKAlUz4vTqWPR9
 m1vmfM8NjyP7tp1Wr6BPswfx8rXp27YDEOmnMAHKaw2g6gy0HL1RmN/M2oftUt8BZq+N
 xfxfpd+p8cC/w61Ukhm/QDEtNS9d35nxOgPWvBQrgI3bs8FgJwfqoHaCQNESYpmQj60s
 LIBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KdK0zPwtveoXwIU/pJ0It4FhLQkN9xabxjzAbXM7HUg=;
 b=pe3hQr5xfrBsZ62kWyI/82/ynT8u9ezA4VCVrm+KYHUJoh8L5mtrWjm7Jk34Vcd1eP
 NRinFTvbi6yVhKkRIM5rLJw7MAGDSaMeFQetFIpR66kbhrFzre0l53rdxZpoMRcXiYQj
 UiXtc4RO1ldgfAZSNYNFX9vHsyg/ZbPBm8hZap50m8tgC5svCe/A3i3CHN9Qbao7J81b
 /4m4hV1sRO571/gx/KgtDAqsRH2HRCWh5OqvHZa6R9bpQGFmczt4FS+raayXWuMLshE8
 sfrA/L9hqkMz9lARBKGwLWGVlBQ84WUx5GF4ttZlT55G0Ysnp/EC7XiSr7LdlMZ9Lks/
 fnlQ==
X-Gm-Message-State: AGi0PuZsxt4e28+RR0ipVsxceE/ab3K4O2ODNNTfo+hsP7ct9yjdFVvA
 LUwbP60WVkcvKKrYM5AU+8RAzDZY9mT/9WlYHhrYoA==
X-Google-Smtp-Source: APiQypIUhqWcYiDcyMcc+YPUUWgJ1hH3x1WwMExIHnVSN2oF/LeLDnug09prydJRjw+z6TLAVtOg78Y4PPWpvE+OoMg=
X-Received: by 2002:a63:6546:: with SMTP id z67mr6229011pgb.10.1586805988175; 
 Mon, 13 Apr 2020 12:26:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200409232728.231527-1-caij2003@gmail.com>
 <20200410165948.GD448831@lunn.ch>
 <20200410183420.GE25745@shell.armlinux.org.uk>
In-Reply-To: <20200410183420.GE25745@shell.armlinux.org.uk>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Mon, 13 Apr 2020 12:26:16 -0700
Message-ID: <CAKwvOd=SusRJxzKqq=tBGgjq0tdcgeA1ukK79PyMjadWB8w=Qw@mail.gmail.com>
Subject: Re: [PATCH] ARM: do not assemble iwmmxt.S with LLVM toolchain
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_122629_491319_E672BD48 
X-CRM114-Status: GOOD (  20.19  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
Cc: Andrew Lunn <andrew@lunn.ch>, Linus Walleij <linus.walleij@linaro.org>,
 Peter Smith <Peter.Smith@arm.com>, Stefan Agner <stefan@agner.ch>,
 David Howells <dhowells@redhat.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Manoj Gupta <manojgupta@google.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 "Joel Fernandes \(Google\)" <joel@joelfernandes.org>,
 Jian Cai <caij2003@gmail.com>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Ilie Halip <ilie.halip@gmail.com>, Masahiro Yamada <masahiroy@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Sami Tolvanen <samitolvanen@google.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 "Steven Rostedt \(VMware\)" <rostedt@goodmis.org>,
 Jian Cai <jiancai@google.com>, Doug Anderson <armlinux@m.disordat.com>,
 Dan Williams <dan.j.williams@intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Patrick Bellasi <patrick.bellasi@arm.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>, Tejun Heo <tj@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 10, 2020 at 11:34 AM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Fri, Apr 10, 2020 at 06:59:48PM +0200, Andrew Lunn wrote:
> > On Thu, Apr 09, 2020 at 04:27:26PM -0700, Jian Cai wrote:
> > > iwmmxt.S contains XScale instructions
> >
> > Dumb question....
> >
> > Are these Xscale instructions? My understanding is that they are an
> > instruction set of their own, implementing something similar to IA-32
> > MMX.
> >
> > Would it be more accurate to say CLANG does not support the iwmmxt
> > instruction set?
>
> Yes, because the XScale core on its own (otherwise known as 80200)
> doesn't support iWMMXT.
>
> It's worth pointing out that the iWMMXT instruction set uses the
> co-processor #1 instruction space as defined by the ARMv5 ARM ARM,
> which is also the FPA (floating point accelerator) instruction
> space - which is the FP instruction set prior to VFP.

Reusing instruction encoding space? :-X  I'll have to look and see how
we define cases like this in LLVM.

>
> The LDFP and similar instructions that binutils decodes the opcodes
> as are FPA instructions, and the LDC2 instructions are their "generic
> co-processor" versions where there's no FPA instruction that matches
> the op-code.
>
> I'll also point out that the reason the iWMMXT code has never been
> ported to Thumb2 is because there are no equivalents for the
> co-processor instructions in the Thumb2 instruction set defined in
> ARMv5.  Hence why the file has a .arm.  So, the fact the file hasn't
> changed for a long time and hasn't been updated with "improvements"
> such as Thumb2 kernels is because that's completely irrelevent to
> the ISA.
>
> It is an example of code that has become stable and mature, and
> requires no maintanence with GNU toolchains.

I agree.  I think this is something we can mark broken for our
toolchain in Kconfig for the time being, and revisit once we have more
resources to implement (leaving the sources as is).

-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
