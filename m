Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47D20E8EF8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 19:06:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KBplgedDY90lfLaL7u7OThs8+uMSwL4R5uE4zZZpcek=; b=pgLD6qhz0eElEp
	KAZbycUquVjnxXjCRN/bp/Tt8P47sOaGaTnupIJC87CkUgoIpon/I7VTBRWIHTMI9W/MLRS4LT1OJ
	MDeBlIKoWPYID1orHDo5G4ntf9xUe951YCntlm0EqiTiNqZNWe7AtcTW0thDTrnf8gczcThPK/tFd
	lu9vlLpdT52dA4MU1Dmxg778IZ4Gji3utmYD+SRYIiqXY9qJqniGOhPr3QpbdLEqih4lhxuSEY2F/
	aAEDfrI3725dF4fud5TF/RaXE/3yUKUsW9I0uquiG1DR1PHGE5XXjkcMCsK3MOOuTNCsGqJCN3M/L
	Fej9se+1A5Z83pFxkQEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPVtP-0007Co-Bs; Tue, 29 Oct 2019 18:06:55 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPVtE-0007CG-Rx
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 18:06:46 +0000
Received: by mail-vs1-xe41.google.com with SMTP id l5so9342206vsh.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 11:06:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mFw8F15ZQ3Xbg7xoMFqwMMbaKM4Z7mDJFWlKx02r/fU=;
 b=jnGz5ZBcGWY68OZAM0i8Lq8WshL9lPwPCKy46KW4Q4CqK1nT+2d8ZAARAMvS6PXKWF
 o7NG7xyF6xKh5LBKn0qUtI0281c0hmJ2dzLNzU/WP3USr8iMDHoA0fHhCuf+Y5KQIysf
 /gxPbdD9yymiy7mPrRQCpSe4/hjycluO7VWmE1bnlYKlYuee/Z6PSw8Q3v0Mc8Wi7hZ8
 2E+OE1apjm/pLB0iqvv0jz3P6BJ0NNgMR3y8PgkI3mLvUBKAsTMd1pFxzhZ05duV3AdK
 By0m5g7JzeYGXlIGp2w4GxLSQ2nwj8OLby9Tzo/kTFVRC8Fnbf+wgIcLkplHN7Gr/fSp
 9Cyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mFw8F15ZQ3Xbg7xoMFqwMMbaKM4Z7mDJFWlKx02r/fU=;
 b=Z7M3e34mA+/xiY/B9JmMC0EAy0dV0ddsvXR8nJgtaJr05hksqVDC9gaDyHgystxSoX
 JHW0sI5K8k2DZfWVYTu+MwjrbPuNZyTx8+BdUPSKj+sngK48OaSWhVdHhVxDIfup5HqZ
 GNzaI/Qd4AhEV+GFaj9UmdGL4kX8YJKdgjEd5/bizZhb9NJzpsJ6MFapiUFUhY/Rom2S
 Ri0JwSColuM7xgnoQVoWyPbVdMTJ3UbiTdaC2UNFVK0rbCyECYR5i6jJWJcBjcZ87pOL
 KsSwWJSDcpYJGNgXo0U2l3rATl0PAsrTuYLLZG6tPHuiz5Tp6JmqhNIVW7vMO9Jllbrw
 qHbw==
X-Gm-Message-State: APjAAAUMfAQ9yzD2Kd/RSoHvNgLhfdmJWhGYD+spQpvdtYxkRktYgqU2
 D8F/gkOhG7si75rj6JUQuST+YOwbdZruGoXQfQdmFg==
X-Google-Smtp-Source: APXvYqz97vwt703X1r3/ZAfNJZMwiiBLpjsPQNbPUEOndiJkJVVqLzY5YLBzfX1ehhjXGJ9HafNP7XMVii7jjKKfRBs=
X-Received: by 2002:a67:fe02:: with SMTP id l2mr2281254vsr.112.1572372402875; 
 Tue, 29 Oct 2019 11:06:42 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191024225132.13410-1-samitolvanen@google.com>
 <20191024225132.13410-6-samitolvanen@google.com>
 <20191025105643.GD40270@lakrids.cambridge.arm.com>
 <CABCJKuc+XiDRdqfvjwCF7y=1wX3QO0MCUpeu4Gdcz91+nmnEAQ@mail.gmail.com>
 <20191028163532.GA52213@lakrids.cambridge.arm.com>
 <201910281250.25FBA8533@keescook>
In-Reply-To: <201910281250.25FBA8533@keescook>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Tue, 29 Oct 2019 11:06:31 -0700
Message-ID: <CABCJKufubiN9JdOTGUSRgmmc_0bW3SRCnk9404+zmor4kh9ZCQ@mail.gmail.com>
Subject: Re: [PATCH v2 05/17] add support for Clang's Shadow Call Stack (SCS)
To: Kees Cook <keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_110644_926922_DA6D35BE 
X-CRM114-Status: GOOD (  22.12  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 28, 2019 at 12:57 PM Kees Cook <keescook@chromium.org> wrote:
> On Mon, Oct 28, 2019 at 04:35:33PM +0000, Mark Rutland wrote:
> > On Fri, Oct 25, 2019 at 01:49:21PM -0700, Sami Tolvanen wrote:
> > > To keep the address of the currently active shadow stack out of
> > > memory, the arm64 implementation clears this field when it loads x18
> > > and saves the current value before a context switch. The generic code
> > > doesn't expect the arch code to necessarily do so, but does allow it.
> > > This requires us to use __scs_base() when accessing the base pointer
> > > and to reset it in idle tasks before they're reused, hence
> > > scs_task_reset().
> >
> > Ok. That'd be worth a comment somewhere, since it adds a number of
> > things which would otherwise be unnecessary.
> >
> > IIUC this assumes an adversary who knows the address of a task's
> > thread_info, and has an arbitrary-read (to extract the SCS base from
> > thead_info) and an arbitrary-write (to modify the SCS area).
> >
> > Assuming that's the case, I don't think this buys much. If said
> > adversary controls two userspace threads A and B, they only need to wait
> > until A is context-switched out or in userspace, and read A's SCS base
> > using B.
> >
> > Given that, I'd rather always store the SCS base in the thread_info, and
> > simplify the rest of the code manipulating it.
>
> I'd like to keep this as-is since it provides a temporal protection.
> Having arbitrary kernel read and write at arbitrary time is a very
> powerful attack primitive, and is, IMO, not very common. Many attacks
> tend to be chains of bugs that give attackers narrow visibility in to the
> kernel at specific moments. I would say this design is more about stopping
> "current" from dumping thread_info (as there are many more opportunities
> for current to see its own thread_info compared to arbitrary addresses
> or another task's thread_info). As such, I think it's a reasonable
> precaution to take.

I'm not sure if always storing the base address in thread_info would
simplify the code that much. We could remove __scs_base() and
scs_task_reset(), which are both trivial, and drop a few instructions
in the arch-specific code that clear the field. I do agree that a
comment or two would help understand what's going on here though.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
