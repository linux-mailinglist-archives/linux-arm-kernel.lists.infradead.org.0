Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 737A81AAC23
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 17:44:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S4q39/FHlD0CJyUfHd5Cp3gtuLt6Z/MGa1j7BizbcQQ=; b=ZxRt1cdyg1IsR6
	76mqxNcYUWdgGCIe8hKTG3dJmZMl9MOFWx2qwevADiEMBMSWxQPrMQp721VG1fc11pcHIfY3S40D3
	PGvLm/cJ8TJIamyQU1ezEa2S0Hdhivy6wHrYtONnkb/62cGrJyHoCZUZ3bqfcWXxGJ6jHJVN2Nrq6
	XxDGWnTtPi9H3VwUa9HUbmnZbcGNnDF11sD+UYEezVy0kyhyxsVRV0vMwL/zlnyiK1owr6CzPJicL
	EdhF/xLi0QjAAe3aUghXQYO1t4a5p50c/Fl50oiPmy54o0pjxt0jodNISqvS3vJZc/6Nx+3v66ldd
	bQS4qj3Bcgpvs5mZk5mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOkDV-0000d6-El; Wed, 15 Apr 2020 15:44:45 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOkDG-0000bU-FZ
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 15:44:33 +0000
Received: by mail-pj1-x1043.google.com with SMTP id e16so19460pjp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 08:44:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=W+ikqrmBIBEKvVkXBn0UllA+OtUbb2X28KHF+kd9Sus=;
 b=AKVoTgD+v3LRySKFXD0u43wjuBan3xtaU0vntmRP548nKCKRJn0SCAgfW2hl+sug79
 xeeqyfuxOZgKSwZexJXDW24RXk+8RRO3rl1fPT5DUYrHkg6LRxn2QntT1+3CxgcBplIQ
 PlGTKYDsfv4jrzvd5bekUSg8KqL742ven3KBA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=W+ikqrmBIBEKvVkXBn0UllA+OtUbb2X28KHF+kd9Sus=;
 b=j40J2sqIXX4+IoDAw2tZfYxOwA3kHaxCh/iH5SsxD7E3/RT0NtyT2syxKwLfS3Y8fB
 Hh+W+Vm1QArvu0Vz9Y+nWaFnN0s3YluUK1XijdJ/Kz+yAYlHk835udmj0yAVhRkqoPqs
 Zllz/4gcFDY6ZG5RSz1tGTgqTFTOgV5RwibYACgybcmpr6CejAwpkYGRIaANyc7b+Mo0
 /YqoJ15sWR3mkmbETjxKLXcyBUdLE9LwHdkF+hJPkjwSiZt7nJhz9lZEn5nXxWF1cYan
 3iwOiqZz5+Ee2W0doACvEC0FGw/9NHq+UgAEo8tlVdDlGrETpOziY1k40bB27EgjxCoA
 tpkw==
X-Gm-Message-State: AGi0PuYetHCFNGHrJZgfLHKZmEVvJ5SuVi+1bhvFeBESbDxP4jV/4KpB
 MJkbSr+tE4QRe9Ea0vIRdvFKFg==
X-Google-Smtp-Source: APiQypIpRyHaEbePO5FqjfTHo4ISu3LJ/Zlc8dY0TXjNWuA2eQxr4cd+H9NX2VZ+/N1gu6NTS64z9g==
X-Received: by 2002:a17:902:9b8f:: with SMTP id
 y15mr5654954plp.169.1586965468363; 
 Wed, 15 Apr 2020 08:44:28 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id f30sm15052172pje.29.2020.04.15.08.44.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 08:44:27 -0700 (PDT)
Date: Wed, 15 Apr 2020 08:44:26 -0700
From: Kees Cook <keescook@chromium.org>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH] ARM: do not assemble iwmmxt.S with LLVM toolchain
Message-ID: <202004150833.E2E9A89E0@keescook>
References: <20200409232728.231527-1-caij2003@gmail.com>
 <CAK8P3a3uj7AHbAo4sNzr6KQx5Fk6v99k4ZixCgKo1tUuGoat9Q@mail.gmail.com>
 <CAMj1kXGXNxXGiC4dmNXHkZ6n=J0Fhim3oSwNx4Bz5m9fEphJvQ@mail.gmail.com>
 <20200410123301.GX25745@shell.armlinux.org.uk>
 <CAMj1kXFpknCfwb6JMdk_SHopnGqMswgSqaQUeAUEh5yaV10vJg@mail.gmail.com>
 <CAKwvOdk-xwuppJzxd1+5sfsC8jYiP3t8D=aTNaYxnFCRDiEUmQ@mail.gmail.com>
 <CAMj1kXFHb8th0rv1yjrsr=c1o-g9_ERPUy4itnrVN13fcQcXag@mail.gmail.com>
 <CAKwvOdm5aawsa2-=atB8z6W8zo8YVgdDEVbU3i4evDcpo1_AxQ@mail.gmail.com>
 <202004141258.6D9CB92507@keescook>
 <CAMj1kXG6_CO6pzeJCSeWiCDyLfWw+ZMuvkv_DLxe-si00fLd1Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMj1kXG6_CO6pzeJCSeWiCDyLfWw+ZMuvkv_DLxe-si00fLd1Q@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_084430_559057_7D9575C7 
X-CRM114-Status: GOOD (  16.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Nick Desaulniers <ndesaulniers@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Patrick Bellasi <patrick.bellasi@arm.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>, Tejun Heo <tj@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 15, 2020 at 12:32:17PM +0200, Ard Biesheuvel wrote:
> To reiterate my point: I strongly prefer minor asm surgery over
> elaborate Kconfig plumbing if it means we can retain the functionality
> even when using LLVM tools. In particular, the use of macros to
> implement missing ISA support should be considered before any other
> solution, as these are already being used widely across architectures
> to fill in such gaps.

Yeah, this seems like the right place to start from. It sounded like
there were cases where the people with knowledge needed to accomplish
the macro creation were not always immediately available. But, yes,
let's get iwmmxt fixed up.

> This code has been around since 2004. It has never been possible to
> assemble it with Clang's assembler. So the only thing this patch gives
> you is the ability to switch from a .config where IWMMXT was disabled
> by hand to one where it gets disabled automatically by Kconfig.

Right -- I meant "let's fix iwmmxt with macro magic" not "let's disable
it". I did want to point out the Kconfig disabling may be needed in
other cases.

> So what hard-won ground are we losing here? Did IWMMXT recently get
> enabled in a defconfig that you care about?

It's a CI's ability to do randconfig builds to catch new stuff. (i.e.
where "disabled by hand" isn't part of the process.) Since there are
multiple CIs doing multi-architecture builds we need to get these things
fixed upstream, not a CI's local patch stacks or Kconfig whitelists,
etc. And when the expertise isn't available to fix arch-specific stuff,
Kconfig negative depends seems like a reasonable middle ground. I, too,
prefer fixes that allow Clang to do its work without wrecking things
for GNU as.

> I am not disagreeing with you here, and I have worked with Nick,
> Nathan and Stefan on numerous occasions to get Clang related build
> issues solved.

Yup! Totally; this thread just looked very familiar to me from doing
treewide stuff and I didn't want what I thought looked like the core
points to get lost in the details. :)

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
