Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B72EFE09A8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 18:50:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WI3uCnrOWIsg7qcwlEBDzJRsZLX0FGxEIsu1PoqeOJ4=; b=dWXSOlxsDAbRbg
	P0q48zGn9Bo3vcBotlV1d1pBlCUkHB+inhaLhLjNlCXl3PFKBhr7G8DP++7sQl6xA6KSDeiWMv0Q2
	Se/hivdaje1yDX+NBpXmqkkpY/h753/44bE2ei/W3pRZ9VnOHltFQ8J5MNfHv/tJrV4FjHLQCuC5J
	n0XiHpqE3MC+fxEdv6g37j+JexmVUxZGzrXl4zEIQ21+T3S7Lbc4g0c0w0BEwz23vJHxVIPeDMqG2
	637tQXKRO+MKmvcP/0dYvN7hwsGAObRyYDyTJzcBxeQEWb38eAJDDwRjgePB3csHO6GU/7JxzYX04
	vmtfvvgEUuTXa2gURnDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMxMN-0003kQ-W9; Tue, 22 Oct 2019 16:50:16 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMxM5-0003jo-LG
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 16:49:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D4F914AE;
 Tue, 22 Oct 2019 09:49:45 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AEF0D3F71A;
 Tue, 22 Oct 2019 09:49:43 -0700 (PDT)
Date: Tue, 22 Oct 2019 17:49:36 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH 06/18] add support for Clang's Shadow Call Stack (SCS)
Message-ID: <20191022164936.GA1451@lakrids.cambridge.arm.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-7-samitolvanen@google.com>
 <20191022162826.GC699@lakrids.cambridge.arm.com>
 <201910220929.ADF807CC@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201910220929.ADF807CC@keescook>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_094957_740098_CEFB8A12 
X-CRM114-Status: GOOD (  13.73  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, kernel-hardening@lists.openwall.com,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>, clang-built-linux@googlegroups.com,
 Sami Tolvanen <samitolvanen@google.com>, Laura Abbott <labbott@redhat.com>,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 22, 2019 at 09:30:53AM -0700, Kees Cook wrote:
> On Tue, Oct 22, 2019 at 05:28:27PM +0100, Mark Rutland wrote:
> > On Fri, Oct 18, 2019 at 09:10:21AM -0700, Sami Tolvanen wrote:
> > > +ifdef CONFIG_SHADOW_CALL_STACK
> > > +KBUILD_CFLAGS	+= -fsanitize=shadow-call-stack
> > > +DISABLE_SCS	:= -fno-sanitize=shadow-call-stack
> > > +export DISABLE_SCS
> > > +endif
> > 
> > I think it would be preferable to follow the example of CC_FLAGS_FTRACE
> > so that this can be filtered out, e.g.
> > 
> > ifdef CONFIG_SHADOW_CALL_STACK
> > CFLAGS_SCS := -fsanitize=shadow-call-stack
>   ^^^ was this meant to be CC_FLAGS_SCS here
> 
> > KBUILD_CFLAGS += $(CFLAGS_SCS)
>                      ^^^ and here?

Whoops; yes in both cases...

> > export CC_FLAGS_SCS
> > endif
> > 
> > ... with removal being:
> > 
> > CFLAGS_REMOVE := $(CC_FLAGS_SCS)
> > 
> > ... or:
> > 
> > CFLAGS_REMOVE_obj.o := $(CC_FLAGS_SCS)
> > 
> > That way you only need to define the flags once, so the enable and
> > disable falgs remain in sync by construction.
            ^^^^^ "flags" here, too.

Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
