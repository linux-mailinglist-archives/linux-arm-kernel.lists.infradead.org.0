Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6FCCEECB5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 22:59:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YvJ4nSmQOH7gTqeiBdCIwVSyS3UMNUgM5BTyqsnRSmg=; b=HifoWD8Y3fSTCA
	ct6tLYwZK+xsmIYAcr3zZkUjovOR83vUlPwxAM9x6lMIs+pjU8tPMg9YLNWR7n/xs8qJaa7xTfeuX
	1OesH2EqVz+1UtcHfcaQJHYgoKgeb04iFM10EVxQXajho3tAUfgtvujK5ehTT1RU64ZtWMB8cHlI4
	RPcLenFp3BjOVHQBKotvB6/fFPt8CSASC7hhEtt9+yaiKVklvWBUCPCrzUhz6bejiLo7bgMNOT4gO
	Q2b5y5Ubv26PEhF+89O7Y7kb7WMiCJyAnRsd2h0bS0PLAihpgTsp4HoO3ISpTSZxXoBIWmRX2scfv
	Kbn+WrSEf8KDyKvnocNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRkOA-00007Q-Ff; Mon, 04 Nov 2019 21:59:54 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRkO4-00006a-7r
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 21:59:49 +0000
Received: by mail-pl1-x643.google.com with SMTP id w8so8290803plq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 13:59:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IymmwTl8Rrj9gY6nJ0vlwI8rMdE1BEoC3iBejCXtH+A=;
 b=MY8yAdahkSPgp2X7tfA/R8Kp3qQsk/vpyfIVoGibvQOAOpVG7dWCO1ps9OFVU/PeQ2
 xmCUqqZrBtMEkwUoAmhBOgtmsVlFUtt4OCkf9ato/mDIOtSnxyqBXmTQtUkeV2KN/cEu
 uLETcMkI4O4qIzY5Y306Ex+gLpUkIXvuSs9qEm5UsJ2LEV2IVanDbiKUASuI1nY+mtL5
 XBusqd+MqXtDJwvZY1fBBNTUs+KQ7gO7X40sMOLNuGkgG37V0sUUbLmt3BbeSAjcbBGt
 o5VvFFqzfhhGpTqKArM+xBeJCSm357VSXiFQchB69JrVAYDNCWNBhQSCeFCDVo42elwW
 9clQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IymmwTl8Rrj9gY6nJ0vlwI8rMdE1BEoC3iBejCXtH+A=;
 b=XQ/o9bnhiY1x1TnxbxBKo92rQZTD+tPyKUFUW19Gf3WrU852EIfp9Mf6zJMYEBlv8g
 FnNxegIJYcTbtpElVuw7uT2oChDt6whrzRksXkQVQZ+BrfRaIH6jwdvu4eQZGM5oWwac
 kYjX+xK9BMLez9f1+3L1FBngi2zBsvkASQJfEDmx6Pu0Kv9p10Dn8kT82gmQOgHvAHjS
 0ndZtbldQ+CCz81koqlynqIJemMl0xNKrkyJvMB+AzGmBmoQlTHZT3OrebGT3TrGdcLz
 Z/iTnJA5jh/s1AtYRV20FU2JfWofXmA9m/A1t0P2P/B2jFozKbrzOxyQoNwE+hKrRRxF
 escw==
X-Gm-Message-State: APjAAAWrjageP54yKhs4Ok9aYyIj/8SbF+soUsJXpj3Ipre/bvI8+5F0
 gTFmh/xE7LrSqUDbRf9f1j/ZVzyd5a6AF4XTguH5FA==
X-Google-Smtp-Source: APXvYqyvfbe4Rk74BEZhEbgv9KmXI2oczxNxkswGRQ3YxahRRLStSKtwQ3PlZ387iT14X5dnJ3JmqJ53a+0shRWL1lM=
X-Received: by 2002:a17:902:9b83:: with SMTP id
 y3mr29178135plp.179.1572904786995; 
 Mon, 04 Nov 2019 13:59:46 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com>
 <20191101221150.116536-14-samitolvanen@google.com>
 <02c56a5273f94e9d832182f1b3cb5097@www.loen.fr>
 <CABCJKucVON6uUMH6hVP7RODqH8u63AP3SgTCBWirrS30yDOmdA@mail.gmail.com>
In-Reply-To: <CABCJKucVON6uUMH6hVP7RODqH8u63AP3SgTCBWirrS30yDOmdA@mail.gmail.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Mon, 4 Nov 2019 13:59:35 -0800
Message-ID: <CAKwvOdkDbX4zLChH_DKrnOah1sJjTA-e3uZOXUP6nUs-EaJreg@mail.gmail.com>
Subject: Re: [PATCH v4 13/17] arm64: preserve x18 when CPU is suspended
To: Sami Tolvanen <samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_135948_305646_4F0DCB3C 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, Marc Zyngier <maz@kernel.org>,
 Jann Horn <jannh@google.com>, LKML <linux-kernel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <dave.martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 4, 2019 at 1:38 PM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> On Mon, Nov 4, 2019 at 5:20 AM Marc Zyngier <maz@kernel.org> wrote:
> > >  ENTRY(cpu_do_suspend)
> > >       mrs     x2, tpidr_el0
> > > @@ -73,6 +75,9 @@ alternative_endif
> > >       stp     x8, x9, [x0, #48]
> > >       stp     x10, x11, [x0, #64]
> > >       stp     x12, x13, [x0, #80]
> > > +#ifdef CONFIG_SHADOW_CALL_STACK
> > > +     str     x18, [x0, #96]
> > > +#endif
> >
> > Do we need the #ifdefery here? We didn't add that to the KVM path,
> > and I'd feel better having a single behaviour, specially when
> > NR_CTX_REGS is unconditionally sized to hold 13 regs.
>
> I'm fine with dropping the ifdefs here in v5 unless someone objects to this.

Oh, yeah I guess it would be good to be consistent.  Rather than drop
the ifdefs, would you (Marc) be ok with conditionally setting
NR_CTX_REGS based on CONFIG_SHADOW_CALL_STACK, and doing so in KVM?
(So 3 ifdefs, rather than 0)?

Without any conditionals or comments, it's not clear why x18 is being
saved and restored (unless git blame survives, or a comment is added
in place of the ifdefs in v6).
-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
