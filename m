Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E8B439696
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 22:14:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Aggm4eICaUgqM1uXq2ZgQSN+4vN38OEXC4dmjjUjSo0=; b=EKhnLJlAlp3xvN
	xczMcPqTT2e3fXQVncXrfaRIB3DCuYwCH9RslZwFZF2T8N0DbE0uq3t4QUDIqUVQGfQuRivX8Iwv6
	TdhQNeFYspiKQLoRMCrytwrfn19ynfnrvhvYQiWUL+D2dTpxhdwzSc76ATQZ8iePfoxAzYs2Ylkft
	rPQMysVf95HgAkyP+nSXYnt8FTTWLBJmXPPGG7kenIOd+abZEpVosO0gA37jILSqwsQT5FAn1MXap
	JmknTSj6V/lMN/1gVBcwzWGqYaYY8XpooSYrEIX+h1M5B6eJQiFNNrgilSifaFD6P2JqxZQ13Ld4F
	fLyGPCoElRc1dQOprTuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZLG4-0003FC-4D; Fri, 07 Jun 2019 20:14:40 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZLFt-0003En-8J
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 20:14:30 +0000
Received: by mail-lj1-x242.google.com with SMTP id m15so2780790ljg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 13:14:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oUEu5wST+UHrWo914sEu5kjdDbXuNNjK9ZP+p24WTJk=;
 b=BCH3+i2RkSQKcHf+jy2IJ/CTFV2fxPDMCV0yygfkoiboPb59bnWZMo807PibOJ2plD
 Uzjrx+QO3Nq0MQ317FiYIxzStxeM1kuEVYh+K84ZNuWFKtAvM5wPFRvOkAKdLL7zeJ6A
 bzrmNyaYZqOEIK+oJwa8qi4l+leu534qbZlrw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oUEu5wST+UHrWo914sEu5kjdDbXuNNjK9ZP+p24WTJk=;
 b=M1D8XBPgXGugfxo5TYgwoeqekagC7Br7SidIhU5YO/QS31CJQhc/EPm7PkH8+Oi4b3
 Unzh81XhPPqGN8NH61tp8ssEgel74/EsndsZ5vrMb5gtNKx8vNX7XLHaWGxKNiAliMuj
 qYK+vOG6MFz7MDzjcP5XcmJpVm/ASn/PKGypJ2+ODOP/Kp2EoXxtHXRPI+as5w5yPiiy
 /Y9ZiGAqJooABDjIr9dILvR6w5qgVxF6j5yjkadGwamM7hNsfwaC+wW6Us3QNrxxmuCX
 lqk4w+5/Z6K5+buyff6KT2aexjIfvFimovoapwzx84Y38YrkUgWU1eMjD0Ihj+91yG9R
 gMvw==
X-Gm-Message-State: APjAAAVXPN1kOvYi+T6gBXzikbdlpWi8oDwef1r2zFERQ2NN9YboPfAQ
 z/LX6o7tPN4vvWMlujHni/R996+HXlI=
X-Google-Smtp-Source: APXvYqwRflMGuRHpAVDMoXlnxuzg17IHh11KoAjutQvSTjFrcWpGuU5hQ18QJbAlILQ9Lcf4re5rJQ==
X-Received: by 2002:a2e:5dc4:: with SMTP id v65mr20174238lje.138.1559938466747; 
 Fri, 07 Jun 2019 13:14:26 -0700 (PDT)
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com.
 [209.85.208.179])
 by smtp.gmail.com with ESMTPSA id h10sm568716lfj.10.2019.06.07.13.14.25
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Fri, 07 Jun 2019 13:14:25 -0700 (PDT)
Received: by mail-lj1-f179.google.com with SMTP id i21so2813893ljj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 13:14:25 -0700 (PDT)
X-Received: by 2002:a2e:6109:: with SMTP id v9mr29356668ljb.205.1559938465306; 
 Fri, 07 Jun 2019 13:14:25 -0700 (PDT)
MIME-Version: 1.0
References: <CAHk-=wjPqcPYkiWKFc=R3+18DXqEhV+Nfbo=JWa32Xp8Nze67g@mail.gmail.com>
 <20190605134849.28108-1-jglauber@marvell.com>
 <CAHk-=whPbMBGWiTdC3wqXMGMaCCHQ4WQh5ObB5iwa9gk-nCtzA@mail.gmail.com>
 <20190606080317.GA10606@hc> <20190606094154.GB6795@fuggles.cambridge.arm.com>
 <20190606102803.GA15499@hc> <20190607072652.GA5522@hc>
In-Reply-To: <20190607072652.GA5522@hc>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 7 Jun 2019 13:14:08 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjwgOUP8ihvxcDmP4dr6gjSv-y9sJ4MzXM5NQFe0B7-pg@mail.gmail.com>
Message-ID: <CAHk-=wjwgOUP8ihvxcDmP4dr6gjSv-y9sJ4MzXM5NQFe0B7-pg@mail.gmail.com>
Subject: Re: [PATCH] lockref: Limit number of cmpxchg loop retries
To: Jan Glauber <jglauber@marvell.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_131429_300342_26F8666B 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>,
 Linux List Kernel Mailing <linux-kernel@vger.kernel.org>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 Jan Glauber <jglauber@cavium.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 7, 2019 at 12:27 AM Jan Glauber <jglauber@marvell.com> wrote:
>
> To clarify, with 224 threads & CPUs queued_spin_lock_slowpath is the top hit
> even without a retry limit in lockref. This could be unrelated to the lockref
> fallback, it looks like it's coming from the spinlock in:
>         do_sys_open -> get_unused_fd_flags -> __alloc_fd

At some point I stop worrying about microbenchmarks just because it's
easy to hit some locking paths in them, without it necessarily being
relevant in real loads.

But I'll apply the lockref patch because I think the "limit cmpxchg
loop" is conceptually a valid model, and while I think the "hitting
the same dentry lockref over and over again" is likely also an
artifact of a microbenchmark, I could at least imagine that it happens
with some common dentries (root, cwd) in some situations.

                   Linus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
