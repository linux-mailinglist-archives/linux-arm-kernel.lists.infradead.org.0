Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D992E1A8CE6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 22:54:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=slvFkGkutW8z9rNYTT5/PiRCRMmrYWlcxnl3E20IiuA=; b=Cfvq1I7W8bNLuW
	TOgFX/fJjdGqty01asQXpvqZJdVK8jO1fMCDxAdYTj71+ws/LIdGCYIabZwSso/6sOb3effcBpJ18
	nfppRGPUF3C+CtNXPBZcwMU6baFVlVXC0jaRx5HZqwJxEnMg3c//GwMys7UePdflo+Jcz0w6VKTFt
	ghEzsOPPd73otC4PK5uY8gSTApiCh9uMSnjiFNyQ5KqTZL49JnGrQeb3+xkCxlb7Ks+OieBZhjuBO
	Ss+2+cpFMzD1AqTTihcXc+cvzzhuJNzNpmFDimP/dtIGMY+UzaCV7pVF6cHeHIo7BsOGVyxeuWBrN
	aDlawM9P6dcAfy1nYzVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOSZ8-0008Tp-77; Tue, 14 Apr 2020 20:53:54 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOSYz-0008TU-SW
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 20:53:47 +0000
Received: by mail-pl1-x644.google.com with SMTP id k18so399436pll.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 13:53:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=K0jdNDYsyVBKVJ8vrSclC2i6UhecRADdZccibZZW3Fk=;
 b=CSqlXQVETewXhgi7NEbLvyqtymrdv4KHSnaV7YJrij7Z94Wt9M/LRF+hI64VHazJtJ
 1OEaNJd60jfAh5LIyE1CGhu25SP010BksVkq1wrNNHfLFFEZ61/P7rUnVcuhRDEqhcNY
 df4JRfjYorbuTTNhpo8Q3kiPlE4PL/0KJw86w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=K0jdNDYsyVBKVJ8vrSclC2i6UhecRADdZccibZZW3Fk=;
 b=UTAM2H37I/rqQfYl4UPa0mhvdPw01imGbf59IQm+WdEtVwFln6SLSh/2pWBG4kYyrX
 XrA4JM/vzMgFwoHvzQJtZAbmTn5CCUBb6SpFdvSCQZWgS1LzQUlpquvmuQ0rhwIAVldf
 mzZyBSicSSUrzzj8s8kphb+ttQ/onW0YOeoEvd7lFxcRpb1vL41ubYPG1W46LlEGaYz6
 A6cW95/aTKAngNQ0kXsp4Ne7GNHMJMjK8lB9vDNNmXphKHb8r+KtCqv5nydZ6Kn7Ul2o
 tf1xn/CHDHH77qJyMu/0D0dEojb1D+7FuU3qLaimBPZEmjGXSy0WMt70yxpOxq4EdKJ5
 RGgw==
X-Gm-Message-State: AGi0PubqDccZGOiXzT+fPAgO9dehXt/UB3MJBP+GALwTzYatJ0h/telS
 YWhoAd7vg6pyuG086ZVdmXpbNw==
X-Google-Smtp-Source: APiQypLdGMmw7NvSuzoHy8mBNVlipdBTPHcElNsahD9loveLyoxd/GXH2+3BqDp98wZz9NH2Z0oODA==
X-Received: by 2002:a17:90a:e2c1:: with SMTP id
 fr1mr2244175pjb.124.1586897623282; 
 Tue, 14 Apr 2020 13:53:43 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id a1sm11810795pfl.188.2020.04.14.13.53.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 13:53:42 -0700 (PDT)
Date: Tue, 14 Apr 2020 13:53:41 -0700
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>,
 Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH] ARM: do not assemble iwmmxt.S with LLVM toolchain
Message-ID: <202004141258.6D9CB92507@keescook>
References: <20200409232728.231527-1-caij2003@gmail.com>
 <CAK8P3a3uj7AHbAo4sNzr6KQx5Fk6v99k4ZixCgKo1tUuGoat9Q@mail.gmail.com>
 <CAMj1kXGXNxXGiC4dmNXHkZ6n=J0Fhim3oSwNx4Bz5m9fEphJvQ@mail.gmail.com>
 <20200410123301.GX25745@shell.armlinux.org.uk>
 <CAMj1kXFpknCfwb6JMdk_SHopnGqMswgSqaQUeAUEh5yaV10vJg@mail.gmail.com>
 <CAKwvOdk-xwuppJzxd1+5sfsC8jYiP3t8D=aTNaYxnFCRDiEUmQ@mail.gmail.com>
 <CAMj1kXFHb8th0rv1yjrsr=c1o-g9_ERPUy4itnrVN13fcQcXag@mail.gmail.com>
 <CAKwvOdm5aawsa2-=atB8z6W8zo8YVgdDEVbU3i4evDcpo1_AxQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKwvOdm5aawsa2-=atB8z6W8zo8YVgdDEVbU3i4evDcpo1_AxQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_135345_947101_686A60E1 
X-CRM114-Status: GOOD (  22.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Kristof Beyls <Kristof.Beyls@arm.com>, Jian Cai <caij2003@gmail.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Ilie Halip <ilie.halip@gmail.com>, Masahiro Yamada <masahiroy@kernel.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Sami Tolvanen <samitolvanen@google.com>, Luis Lozano <llozano@google.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 "Steven Rostedt \(VMware\)" <rostedt@goodmis.org>,
 Jian Cai <jiancai@google.com>, Stephen Hines <srhines@google.com>,
 Doug Anderson <armlinux@m.disordat.com>,
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

I don't know if this will help, but I feel like folks might be talking
past each other a little here. I see two primary issues that are
colliding, and I just want to call them out specifically...

On Tue, Apr 14, 2020 at 1:59 AM Ard Biesheuvel <ardb@kernel.org> wrote:
> On Mon, 13 Apr 2020 at 22:45, Nick Desaulniers <ndesaulniers@google.com> wrote:
> > 1. continuous integration and randconfigs.  We need CI to help us spot
> > where things are still broken, and help us from regressing the ground
> > we've fought for.  We can't expect kernel developers to test with
> > LLVM.  Currently, we have LLVM builds in numerous kernel continuous

First, is this one. To paraphrase, "we don't want to lose hard-won
ground."

> To be honest with you, I don't actually think iwmmxt is that
> important. But I have already demonstrated how we can use a couple of
> macros to emit the same instructions without resorting to bare
> opcodes, so there is really no need to disable pieces left and right
> because the Clang assembler does not support them outright - it just
> needs someone to care enough about this, rather than rush through the
> list with a tick the box attitude, and rip out the pieces that look a
> bit too complicated.

The second is this one. To paraphrase, "we can just fix things instead
of disabling them."

This feels a lot to me like the pain I (and plenty of others) have felt
when doing treewide changes (adding full compiler support is kind of a
treewide change). The above two points were really strongly felt when we
were trying to remove VLAs. In our case, we didn't even have the option
to disable stuff, so the pain was even worse: VLAs were being added to
the kernel faster than we could remove them.

What's a good middle ground here? For VLAs, I ended up getting akpm's
help by having him add -Wvla to his local builds and send nag emails
to people when they added VLAs. That's not really a thing here, but it
seems like there should be a way to avoid losing ground (in this case,
it's the erosion of attention: repeated known-issue warnings means the
CI gets ignored for the warnings on newly added issues). It does seem
to me like adding the negative depends is a reasonable first step: it
marks what hard things need fixing later without losing coverage for
things that can be more easily fixed now with available resources.

For the specific iwmmxt.S case, perhaps the solution is the suggested
changes? I imagine it should be possible to do a binary diff to see zero
changes before/after.

For others, is a negative depends acceptable? Given how responsive
Nick, Nathan, and others are, I don't think there is any real risk of a
"slippery slope" of things just getting swept under the rug forever.
Everyone here wants to see the kernel be awesome. :)

-Kees

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
