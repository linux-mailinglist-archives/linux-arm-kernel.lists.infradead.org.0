Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A4F3DE456
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 08:12:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zs86Birioh6JFxp1KioZyQzM+ApU/Slb+/ErJ3LTRQc=; b=s7Zx+AMgapl6lG
	4Lc6LlMHMdBPe8iLZ5UutLDrlg5/T+MRZ+YiAiqeCpQ7mN1iY2krOjMMf6f1ZCiMcTjsVeyGq26AV
	ZkYDhLdNBNPj5A01erhWPYjnpU0Vm4emPhIGWPbsSEPIvGBhtGJd9ZxWOiqXSf5Rqh6WSKwDKEFR1
	KzoW9+LqHB/1HiG5nt4PsjcMDe4VRWwDwZ74sPwarUJ8UnybtySXFUe5s2AjW6GAqMmuACMQe0IHu
	WATtdTWaiGJkbKKuFP11N26rzKDurTvbwL/5sA8QBXd8PolxjK71dFG+gzipXTdFV++qzBkJ6oNmJ
	gSNldNUjkkU/0TXTWqAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMQvz-0007NL-Gq; Mon, 21 Oct 2019 06:12:51 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMQvq-0007MS-CR
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 06:12:43 +0000
Received: by mail-wr1-x443.google.com with SMTP id r1so2548182wrs.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 20 Oct 2019 23:12:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=azBxEHDWCdsU7wz/faY/PPe9l3d9cjGBlYkkkxlsXNw=;
 b=qTUTQ4ZTdm9DHInhDE6X3VmBqT/KyH/eg44Ie2ZyppNJ+Mq7Gzf0scMCqvZQU3nPkq
 9RuuuXt9ohJ5GGZ8h2flwhyvHo+h+mwCU3HJf+NkGF1ALj5/Q88VB5OWwPcY/IliqH+l
 L56F8Nihrbg51/Fsns1XWsTOeLYFw3fUNOlGzbLGBm3uO+epkCWsGR+NC1kxNQYUTroR
 SzEk6Ha++yb8a85i+5pTuUxz2bAL3RQbU/K5HeDKEBB8dlhFE55Qgv18UJrCUJZZh8vr
 uJ/G08ebShEM/n6IRWP8xr4T4msq/l2sffgnnJdXZSAWT/ipDYKo74mYhYFdnpTIOzIk
 VfLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=azBxEHDWCdsU7wz/faY/PPe9l3d9cjGBlYkkkxlsXNw=;
 b=dwpOFV2J1uYuL/1enl4O7QPU/5BjuvAq4g/e+FfVkMFVVMLeqK8CaYc+x+OBL3fWEy
 aY5+cLuVpH3A4BRTi0L6Xp6mzKVUO6imGQaYNLxKjqUMKmiAjiUJAYR1ksh3fzVxAudQ
 L8uH23lu9Ah/TNaHH1fuZRhgxZ7BwRYvtQtIshFba6uAbTzPUr5Twgcs9a9XBQxlWBW5
 Bly8MRXgUdZq4cHUW3qdV66PuoWwZ6MNr3S8OvY5RpCR30H6cyD/qTSffKjGM0mDznDo
 KSPPf5MF52yVJ3dRoUDoPZfWUxJ44x4is16EvxNjPvX1/ksmqijsvr2S0y82PF5Erxea
 msFg==
X-Gm-Message-State: APjAAAWjPtt9+CzChZXDiueHfQa4LqMvRof1POkQbt6yftTDRmI5XkSP
 p3buFvu518NZoenHv53UTQQgRrdCtAIuSjsTKbckVQ==
X-Google-Smtp-Source: APXvYqxnJb93TF5nD3jcoXnbupalitg5Dj+VYy2V93E3Z3QMw/jysu5nCOppGEaOWgZsmIzV8081S3I2H2bbczBjiHs=
X-Received: by 2002:a5d:6b0a:: with SMTP id v10mr17063430wrw.32.1571638357257; 
 Sun, 20 Oct 2019 23:12:37 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-6-samitolvanen@google.com>
 <CAKwvOd=SZ+f6hiLb3_-jytcKMPDZ77otFzNDvbwpOSsNMnifSg@mail.gmail.com>
 <CABCJKuf1cTHqvAC2hyCWjQbNEdGjx8dtfHGWwEvrEWzv+f7vZg@mail.gmail.com>
In-Reply-To: <CABCJKuf1cTHqvAC2hyCWjQbNEdGjx8dtfHGWwEvrEWzv+f7vZg@mail.gmail.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Mon, 21 Oct 2019 08:12:26 +0200
Message-ID: <CAKv+Gu92eR81+W1iXOXZHWgub-fNPcKaa+NCpGS_Yy4K4=7t+Q@mail.gmail.com>
Subject: Re: [PATCH 05/18] arm64: kbuild: reserve reg x18 from general
 allocation by the compiler
To: Sami Tolvanen <samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_231242_454867_839EC8C3 
X-CRM114-Status: GOOD (  17.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 18 Oct 2019 at 21:00, Sami Tolvanen <samitolvanen@google.com> wrote:
>
> On Fri, Oct 18, 2019 at 10:32 AM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> > > and remove the mention from
> > > the LL/SC compiler flag override.
> >
> > was that cut/dropped from this patch?
> >
> > >
> > > Link: https://patchwork.kernel.org/patch/9836881/
> >
> > ^ Looks like it. Maybe it doesn't matter, but if sending a V2, maybe
> > the commit message to be updated?
>
> True. The original patch is from 2017 and the relevant part of
> arm64/lib/Makefile no longer exists. I'll update this accordingly.
>
> > I like how this does not conditionally reserve it based on the CONFIG
> > for SCS.  Hopefully later patches don't wrap it, but I haven't looked
> > through all of them yet.
>
> In a later patch x18 is only reserved with SCS. I'm fine with dropping
> that patch and reserving it always, but wouldn't mind hearing thoughts
> from the maintainers about this first.
>

Why would you reserve x18 if SCS is disabled? Given that this is a
choice that is made at code generation time, there is no justification
for always reserving it, since it will never be used for anything. (Of
course, this applies to generated code only - .S files should simply
be updated to avoid x18 altogether)

Also, please combine this patch with the one that reserves it
conditionally, no point in having both in the same series.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
