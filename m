Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8A0B1A3D3A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 02:12:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ARRJdI9S//GgI/VsUwDKfAaYv8L+Z1eEAV+h91YnUPA=; b=c8GFWG5GWxsQWq
	9QsdcrYbZKToO5Jt+c08eWk/DQaZFM1EiGGR8u8H+b2koZzDYSWGJkEqeA/NtXQTwA6PhPCkdoeXT
	vacbV+Sth0dFsVk3Sze/71J6WEKQ4/Yb74EKp0sTKkHfFov5lA4TTXmUh9/vVOsNBISYxNcIDP3Wz
	2XGqQFkCunsrGI3SqaDzQXV8AiGHYZSViWD04NLVXTPuKtmztJJbWFBTORzXjjK1E9BiudrONThaX
	w4z77S33GqOfBIfGDewmsXcHFEd/0YcKQ6Hq5mTljq+FvvkmyJ6zyh3E7WeadC3QUHQL4EfCIQCbl
	ILg8aAXtX4okaf6Pv1Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMhHL-0007wP-Pp; Fri, 10 Apr 2020 00:12:15 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMhHF-0007va-3P
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 00:12:10 +0000
Received: by mail-oi1-x244.google.com with SMTP id w2so165783oic.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 17:12:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=JjCg+0ZKVUEU3m1mtuE7C2U4b9dMYk265cCmLvmPh20=;
 b=ZRsrd9foGs0GWEd9amU602pwhj9SzLnjEnilwCYt8UiT2smbNEbJlYImi6QRkHncC8
 AaS9xP6V3zjvdz1p8XPHlz+BL+on5msn1cCcROxTzceDs5y54LB6YEJxRJ6bYZNCQT1V
 SrS4DieBPjvUhoQnk6YbFcJf0LPyQw4d13Djak7JeOyYl/CUlfSqpZZFr4pQgp7TTHP8
 umlC6iW+1U7zKs5p0/2D8Z/R6mO263qt1PvyDno367L24yUnOcLbk5EBLnHhUkh8xewV
 tpGCi6ZwJO8yqZfZ9nsskBfoG1zMklLNkGnH2+5bQdTeOY/021d+DsTPRx+2qGOIDiv5
 zf1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=JjCg+0ZKVUEU3m1mtuE7C2U4b9dMYk265cCmLvmPh20=;
 b=gC4zTnh3YCsAqyeCl7ge+FABqRRRwMXSUdYiBeYeX6G8jI6/B85XBmFtoDk2NDAUXF
 Vjkq9wfpbbpF0/S7ZtYwiwB2fTBk+HaeYHRfJbMf4E2XblIbsJW4/cH3E+UEGeUb837/
 g5+zrW1gAkNTA23twBv40bykKmGdbust5UxJwJ/+dYQdpLxtsmmaYvh/kDdiAx7IHhfu
 LOTXCoCZyMcVajoYsSbQR0hJWvOfuGoB015hqZQR+pVFGi3WCKtt2APGO9Gm8akE70Zv
 QkE3WfYu+wJ72b/cmd18tElgWZLXllc2C8LzrcJV8hcs01iAEuBMdisLY1KE3sF/bP+u
 ECtg==
X-Gm-Message-State: AGi0PuYs15CD4AlK2nZCPSIOCgmCa1RjBx7OJ5Tv5+GYIfRM2j6xdlUI
 RCGwM/uPtmXQli/jWWSTxh8=
X-Google-Smtp-Source: APiQypLi1t8vlbkrqsMgkH03bKYkFF/ExZPKQY8Aok71iKZxs/zkBasvqvoTdonteG/ffgwudiljlQ==
X-Received: by 2002:aca:c311:: with SMTP id t17mr1528797oif.169.1586477524193; 
 Thu, 09 Apr 2020 17:12:04 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::3])
 by smtp.gmail.com with ESMTPSA id 186sm307290ooi.30.2020.04.09.17.12.03
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 09 Apr 2020 17:12:03 -0700 (PDT)
Date: Thu, 9 Apr 2020 17:12:01 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH] ARM: do not assemble iwmmxt.S with LLVM toolchain
Message-ID: <20200410001201.GA15303@ubuntu-s3-xlarge-x86>
References: <20200409232728.231527-1-caij2003@gmail.com>
 <CAKwvOdkot0Q7FSCMKGm6ti4hhvD3N+AMUK4Xv2Xxiiu3+pURgQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKwvOdkot0Q7FSCMKGm6ti4hhvD3N+AMUK4Xv2Xxiiu3+pURgQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_171209_170000_9CCB4465 
X-CRM114-Status: GOOD (  29.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [natechancellor[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Jian Cai <caij2003@gmail.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Ilie Halip <ilie.halip@gmail.com>, Masahiro Yamada <masahiroy@kernel.org>,
 Russell King <linux@armlinux.org.uk>, Krzysztof Kozlowski <krzk@kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Sami Tolvanen <samitolvanen@google.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>, Arnd Bergmann <arnd@arndb.de>,
 "Steven Rostedt \(VMware\)" <rostedt@goodmis.org>,
 Jian Cai <jiancai@google.com>, Doug Anderson <armlinux@m.disordat.com>,
 Dan Williams <dan.j.williams@intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Patrick Bellasi <patrick.bellasi@arm.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Tejun Heo <tj@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 09, 2020 at 05:01:33PM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
> On Thu, Apr 9, 2020 at 4:28 PM Jian Cai <caij2003@gmail.com> wrote:
> >
> > iwmmxt.S contains XScale instructions LLVM ARM backend does not support.
> > Skip this file if LLVM integrated assemmbler or LLD is used to build ARM
> 
> Hi Jian, thank you for the patch.  It's pretty much spot on for what I
> was looking for.  Some notes below:
> 
> s/assemmbler/assembler
> 
> :set spell
> 
> ;)
> 
> Also, could use a link tag, ie.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/975
> 
> (Always include the link tag to help us track when and where patches land).
> 
> Finally, I think the hunks for the two different files should be
> split; the init/Kconfig change should be it's own dedicated change
> that goes to Masahiro, the maintainer of the Kbuild tree.  Then when
> we have that, the dependent configs should go separately.  Would you
> mind splitting this patch in two, and re-sending just the Kbuild patch
> for now?  Since you used Sami's patch for inspiration
> (https://github.com/ClangBuiltLinux/linux/issues/975#issuecomment-611694153,
> https://github.com/samitolvanen/linux/commit/fe9786cb52a0100273c75117dcea8b8e07006fde),
> it would be polite to Sami to add a tag like:
> 
> Suggested-by: Sami Tolvanen <samitolvanen@google.com>
> 
> or maybe better yet, take Sami's patch, add your signed off by tag
> (maintaining him as the git author, see `git log --pretty=fuller`),
> then rebase your AS_IS_CLANG hunk on top, make that a second patch,
> then finally have the arm change as a third patch.
> 
> This change is exactly what I'm looking for, so these are just process concerns.

I think that they can be sent as a series that is picked up by Masahiro
with an ack from an ARM maintainer.

> > kernel.
> >
> > Signed-off-by: Jian Cai <caij2003@gmail.com>
> > ---
> >  arch/arm/Kconfig | 2 +-
> >  init/Kconfig     | 6 ++++++
> >  2 files changed, 7 insertions(+), 1 deletion(-)
> >
> > diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> > index 66a04f6f4775..39de8fc64a73 100644
> > --- a/arch/arm/Kconfig
> > +++ b/arch/arm/Kconfig
> > @@ -804,7 +804,7 @@ source "arch/arm/mm/Kconfig"
> >
> >  config IWMMXT
> >         bool "Enable iWMMXt support"
> > -       depends on CPU_XSCALE || CPU_XSC3 || CPU_MOHAWK || CPU_PJ4 || CPU_PJ4B
> > +       depends on !AS_IS_CLANG && !LD_IS_LLD && (CPU_XSCALE || CPU_XSC3 || CPU_MOHAWK || CPU_PJ4 || CPU_PJ4B)
> >         default y if PXA27x || PXA3xx || ARCH_MMP || CPU_PJ4 || CPU_PJ4B
> >         help
> >           Enable support for iWMMXt context switching at run time if
> > diff --git a/init/Kconfig b/init/Kconfig
> > index 1c12059e0f7e..b0ab3271e900 100644
> > --- a/init/Kconfig
> > +++ b/init/Kconfig
> > @@ -19,6 +19,12 @@ config GCC_VERSION
> >  config CC_IS_CLANG
> >         def_bool $(success,$(CC) --version | head -n 1 | grep -q clang)
> >
> > +config AS_IS_CLANG
> > +       def_bool $(success,$(AS) --version | head -n 1 | grep -q clang)

$(AS) is being replaced with $(LLVM_IAS). That line should be:

    def_bool $(success,test $(LLVM_IAS) -eq 1)

I think. That depends on a commit in Masahiro's for-next branch [1] so
it should be based/tested against that.

Otherwise, I agree with Nick's comment about being split into two
patches (one for the init/Kconfig change and one for the ARM change) and
adding the Link tag.

I ran about 75 randconfigs with LD=ld.lld and LLVM_IAS=1 and I did not
see any Kconfig warnings from this and CONFIG_IWMMXT was unset in every
one. Should prevent the errors that you encountered. Feel free to apply
the following tags to any follow up revisions.

Tested-by: Nathan Chancellor <natechancellor@gmail.com> # randconfig
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

[1]: https://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git

> > +config LD_IS_LLD
> > +       def_bool $(success,$(LD) --version | head -n 1 | grep -q LLD)
> > +
> >  config CLANG_VERSION
> >         int
> >         default $(shell,$(srctree)/scripts/clang-version.sh $(CC))
> > --
> 
> -- 
> Thanks,
> ~Nick Desaulniers
> 

Cheers,
Nathan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
