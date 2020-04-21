Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D86DB1B1B20
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 03:12:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m94xtaNo3+YUcoj1RNACNPWYu+NzgRMtFF/C3xBqooU=; b=KUNhaHmxX+7gyj
	KGtd0NTUd3Y+VBhCuoTeX886Ixy/1eVYNtoCkRjq8yWZgFL6GAqt77pwuzwGmjzsAcsfAqv/Jwu5s
	pkGjIx1bAkaxS3SzCx1f+kNdHHeU3imlgaHFBC1BsDslekSagcBrK0ORdHf6Ad65ZBR0XipjBMOhd
	TWcB0c4+pNGGayphAWTZ8/uyIgB+2f+WEAZyYpQThb8/wHDvVCUDCUbblihVzo/saGW5U2GfsK8Sz
	9LcMhrU3+5DVEeWQ4kNl++X0lTORxm/QqNx4ZqWIVy6uDXvWSwlbZZN4wV2wymFKV7H3i5shocJrq
	wh5hh0uSI2jrDF1z+ilA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQhSS-0007XP-JC; Tue, 21 Apr 2020 01:12:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQhSH-0007Wz-Od
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 01:12:07 +0000
Received: from oasis.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0534E2078C;
 Tue, 21 Apr 2020 01:12:02 +0000 (UTC)
Date: Mon, 20 Apr 2020 21:12:01 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v11 01/12] add support for Clang's Shadow Call Stack (SCS)
Message-ID: <20200420211201.7fea9561@oasis.local.home>
In-Reply-To: <20200420171727.GB24386@willie-the-truck>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200416161245.148813-1-samitolvanen@google.com>
 <20200416161245.148813-2-samitolvanen@google.com>
 <20200420171727.GB24386@willie-the-truck>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_181205_823164_331E49D7 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, Juri Lelli <juri.lelli@redhat.com>,
 kernel-hardening@lists.openwall.com, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Marc Zyngier <maz@kernel.org>,
 Masahiro Yamada <masahiroy@kernel.org>, clang-built-linux@googlegroups.com,
 Ingo Molnar <mingo@redhat.com>, Sami Tolvanen <samitolvanen@google.com>,
 Laura Abbott <labbott@redhat.com>, Dave Martin <Dave.Martin@arm.com>,
 Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 linux-arm-kernel@lists.infradead.org, Michal Marek <michal.lkml@markovi.net>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 James Morse <james.morse@arm.com>, Masami Hiramatsu <mhiramat@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 20 Apr 2020 18:17:28 +0100
Will Deacon <will@kernel.org> wrote:

> > +ifdef CONFIG_SHADOW_CALL_STACK
> > +CC_FLAGS_SCS	:= -fsanitize=shadow-call-stack
> > +KBUILD_CFLAGS	+= $(CC_FLAGS_SCS)
> > +export CC_FLAGS_SCS
> > +endif  
> 
> CFLAGS_SCS would seem more natural to me, although I see ftrace does it this
> way.

The CC_FLAGS_FTRACE was added by Heiko Carstens, and the "CC_FLAGS_"
appears to be a common usage in s390 :-)

That said, I like the CC_FLAGS_ notation, because the Linux build
system uses CFLAGS_* as commands:

  CFLAGS_foo.o = x
  CFLAGS_REMOVE_foo.o = y

And "CC_FLAGS_" is only for new flags and easy to search for.

-- Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
