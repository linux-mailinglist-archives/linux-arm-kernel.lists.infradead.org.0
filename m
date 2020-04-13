Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82FFA1A6C66
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 21:21:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9229W3Vt7arrxt9r6QIJnnZ+uk4RSmcRHl4nGQQTiRk=; b=VQWPV534Sc/mRE
	LWi9X4EQKCercDzyS7/fn54ILN3E5NUBB0OPaBd2fNvI1RqdunfqTZk27PVZvzvZGqIGWSXtxjPmI
	mElrkLEDlbnJoY4mwAU8EFn/uwLVHA6BkbDMRum/UlcfjfGlMHGicwQVQk9IUArTK3/JoqsvxXIAg
	hbegEoblTh5OCZ2ip1JW9Tb7rHqg6QjQeipVilX3IEP3P2ZI4ExuspY9W7aRIwMGSmEdiNa4dKSsb
	sedWwpbX96qrRBocCsAUoaOOXhB/s77qca2p69UIVV0U8vSweZuASVT2UQTNLTIQXlgv7TgawH+OR
	8r1wYX+KG6Q01VGT1zPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO4dz-0001UJ-7D; Mon, 13 Apr 2020 19:21:19 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO4dr-0001Tr-Qh
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 19:21:14 +0000
Received: by mail-pf1-x441.google.com with SMTP id k15so4955230pfh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Apr 2020 12:21:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=E3v3lMYX71OYS7ExZ5JtALb3DwWrKTziHCm5gwOcJBM=;
 b=U+GilTzgZn485m/gVVQKl0E/vydgYV4Oo0+zwr4XwvKuxpKqL+QwXG2ln/L4Mn74YF
 h/HlvMXQhjsvO7mPI0nEp602ii5l2JuMg7rMSQDxXIlJT7OQ0frEfnM7qr23+3INNBlu
 vpXRHGk4Mzlw9bNmhJa85wmgows5iO/doPGu6Zh2Le+wKvxVZTwvM6ZnqPpphhE1mGQl
 2kn7v5XayBdAr+5YOJJdYgKr1hX+PpNd/opcHTYr1mhYApKBa/Qvn6nPTUIESjHR53+q
 z5t+/rP/XvHjSVbYR7CBlvnzv/vk9ywknCKwWQfoyRSAYHql/TrK1VMXYj+N/D7tWsqj
 3TSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=E3v3lMYX71OYS7ExZ5JtALb3DwWrKTziHCm5gwOcJBM=;
 b=b0BnsLPL/jzw5VYdYcf4Uq6NwP4G3D9EuuexeK6Lt0wI1J/j9pSrgoTM9qSxMvm4Gx
 YDYFfaAgvJs9qnbP1x9TpeYTDYXsq2W3cB/sCIJ+qcGIdY5A2dZHVYOYeIWCkNCyV130
 spzqnHh3HnV0nPPsAtayd3Aqrlmdc6MSgg/oS5bl8MKM0WBJJ76zGTbnl+RawlMxb2Lx
 2Yt/jYkUVivqdVYKez/uyCzSZDw6AfkNDLc8L5+UogGoQbwT14KStlU/5ggkZgFqq6xp
 lpNaws7fnAfNHOJ7XDsp6SnUElyelRtxSZj4mVDUmhJfuf2PZApA0UJQhj7XveAmdez5
 Q5rw==
X-Gm-Message-State: AGi0PuaoJJ/eUhq0g+vmXejceE8Z2zEVxNMGv2E1AYJQgiIpl4psQRld
 ZNdfOcVzPj+06m4dJQNVF1QW7BBYa9fB44dAtqNO1A==
X-Google-Smtp-Source: APiQypLc2bGWndwrv130fbQvw2IFcVCXMnlN7wZcX+BhWB/S4mwUuLNY4H7yB7zdGhQFDGWjmd3oMw6khE9rZUz1Pws=
X-Received: by 2002:aa7:919a:: with SMTP id x26mr19063745pfa.39.1586805669240; 
 Mon, 13 Apr 2020 12:21:09 -0700 (PDT)
MIME-Version: 1.0
References: <20200409232728.231527-1-caij2003@gmail.com>
 <CAK8P3a3uj7AHbAo4sNzr6KQx5Fk6v99k4ZixCgKo1tUuGoat9Q@mail.gmail.com>
In-Reply-To: <CAK8P3a3uj7AHbAo4sNzr6KQx5Fk6v99k4ZixCgKo1tUuGoat9Q@mail.gmail.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Mon, 13 Apr 2020 12:20:57 -0700
Message-ID: <CAKwvOdnpW0VSRdD6958xyWh-tDbuVTti265aqOpvfhvh6iQEXQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: do not assemble iwmmxt.S with LLVM toolchain
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_122111_887845_3F9C1877 
X-CRM114-Status: GOOD (  16.06  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
 Jian Cai <caij2003@gmail.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Ilie Halip <ilie.halip@gmail.com>, Masahiro Yamada <masahiroy@kernel.org>,
 Russell King <linux@armlinux.org.uk>, Krzysztof Kozlowski <krzk@kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Sami Tolvanen <samitolvanen@google.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 "Steven Rostedt \(VMware\)" <rostedt@goodmis.org>,
 Jian Cai <jiancai@google.com>, Doug Anderson <armlinux@m.disordat.com>,
 Dan Williams <dan.j.williams@intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Patrick Bellasi <patrick.bellasi@arm.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Tejun Heo <tj@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 10, 2020 at 2:56 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Fri, Apr 10, 2020 at 1:28 AM Jian Cai <caij2003@gmail.com> wrote:
> >
> > iwmmxt.S contains XScale instructions LLVM ARM backend does not support.
> > Skip this file if LLVM integrated assemmbler or LLD is used to build ARM
> > kernel.
> >
> > Signed-off-by: Jian Cai <caij2003@gmail.com>
>
> It clearly makes sense to limit the Kconfig option to compilers that
> can actually build it.
> A few questions though:
>
> - Given that Armada XP with its PJ4B was still marketed until fairly
> recently[1],
>   wouldn't it make sense to still add support for it? Is it a lot of work?

Sorry, can you help me verify from that link that PJ4B uses XSCALE?  I
didn't see references to either in the link provided.  Also, given the
history of XSCALE as noted by Russell, I'm surprised to see Marvell in
the mix.

>
> - Why does the linker have to understand it, rather than just the assembler?

It doesn't, just the assembler is the problem.

>
> [1] http://web.archive.org/web/20191015165247/https://www.marvell.com/embedded-processors/armada/index.jsp



-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
