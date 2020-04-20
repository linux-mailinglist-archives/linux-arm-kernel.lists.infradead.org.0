Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E66471B15DA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 21:23:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FfQo2KT7rK+sFllDyAMY44kOkTZYnb3+jF9BETBYYZ8=; b=VxMUe3RvvvI//C
	XymlmXKiL/z6k0MeAmv12tSpH13V/7WX8zPovqSdB3ysYh2h4oM1+Zciku9oxnE6XZOwxesUyLzgh
	dV20wGB/lEH9fk9K+ipeLxM0su/0kmgnXBClWJlUWz91qvBSxMzgBEGbrAriSuw5XLdsM44H5um14
	Xo609zzZw1CDcpujuhss8lOQqdpqohvV/Cuy5AliYE/27mYWfksGmvc5QVL47ram6AU1dmE0ynnsT
	H1ukMgKsesrJCkQdI3KdNELuNBJRfCgcorBbkW/EJv+3IIVSnEiZKzF0ovl5aDMDSo/Cl/ziDH9qS
	sfWwCKkxZYbq0U+u6c9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQc0r-0003ME-DV; Mon, 20 Apr 2020 19:23:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQc0d-0003Kp-M5
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 19:23:13 +0000
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A3B5420736;
 Mon, 20 Apr 2020 19:23:07 +0000 (UTC)
Date: Mon, 20 Apr 2020 15:23:06 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v11 04/12] scs: disable when function graph tracing is
 enabled
Message-ID: <20200420152306.2d45e3c4@gandalf.local.home>
In-Reply-To: <20200417154613.GB9529@lakrids.cambridge.arm.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200416161245.148813-1-samitolvanen@google.com>
 <20200416161245.148813-5-samitolvanen@google.com>
 <20200417100039.GS20730@hirez.programming.kicks-ass.net>
 <20200417144620.GA9529@lakrids.cambridge.arm.com>
 <20200417152645.GH20730@hirez.programming.kicks-ass.net>
 <20200417154613.GB9529@lakrids.cambridge.arm.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_122311_742356_2F0B9999 
X-CRM114-Status: GOOD (  12.20  )
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
Cc: Juri Lelli <juri.lelli@redhat.com>, kernel-hardening@lists.openwall.com,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>,
 clang-built-linux@googlegroups.com, Ingo Molnar <mingo@redhat.com>,
 Sami Tolvanen <samitolvanen@google.com>, Laura Abbott <labbott@redhat.com>,
 Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, linux-arm-kernel@lists.infradead.org,
 Michal Marek <michal.lkml@markovi.net>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 James Morse <james.morse@arm.com>, Masami Hiramatsu <mhiramat@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 17 Apr 2020 16:46:14 +0100
Mark Rutland <mark.rutland@arm.com> wrote:

> > > > And doesn't BPF also do stuff like this?  
> > > 
> > > Can BPF mess with return addresses now!?  
> > 
> > At least on x86 I think it does. But what do I know, I can't operate
> > that stuff. Rostedt might know.  
> 
> Sounds like I might need to do some digging...

May want to ping Alexei. It appears that if BPF adds a direct hook to a
function, it will prevent the function graph tracer from tracing it. :-/

-- Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
