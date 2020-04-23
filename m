Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 939511B63CA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 20:29:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xbo5zojYxkHAH3YNJr89FIkubKf7yOAifbQP0s3kh6g=; b=kcvUnbxTwuTVs4
	UiCGMH/JlngMLhEafia88uIUT7OdBsjUmoDNL24CyxdTdM3CyeJzM3+VvkEzAsvgLzAzoygbCZMTx
	Ag27QtnBrXpkKmyOx0S2S28D4pcrEBNS2Zgv8dG+8G2WHBfMfTO1oXG99drBKhN+LM8aAGSFH3vrZ
	39oK0QTIcLc9+x796ijq9XxNyrofRwfC7+EeuD+uKkErR99fV7MAowUQIQ7e17VTrN5xWCxDWAZsm
	tz9jHGR5xO2HWFLNc8vx2MVNVbq6kXg/aLTwm/CAqQzrcE6vUkHDvmMUhr7VQtqx1Jpwp42D5q2nz
	BG4YE3lKMCGWWasbsDNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRgbN-0007O9-0n; Thu, 23 Apr 2020 18:29:33 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRgaZ-0006lG-T9
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 18:28:45 +0000
Received: by mail-pg1-x542.google.com with SMTP id d17so3317772pgo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Apr 2020 11:28:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=6Y/9ITAGgGN1ObZLXZNElUJooxFBQUxzx7tXw0tLGrw=;
 b=b6zdPxuhwvf6mbGggB4PksAI1ex0t7K0elOYcg58ZwrTjn8AjcWwZGTTkOt8xtEop1
 QgJUSGvj+wJ1HD5HRDh4RvxxaMJq6yj8Ef8yIBSVdRMjVYw9bGTWpKc07ah08JcYCbF3
 RdvWKOb7jr8FUoUPlrx507urw3KMBQUv7F7bI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=6Y/9ITAGgGN1ObZLXZNElUJooxFBQUxzx7tXw0tLGrw=;
 b=eZ2R9uVbf1bGBCtDgBYkPHvo8t5hmZW7F3G6du2Ong2H0KmUTmSbrXQsKnm9aXVVdi
 ssW6T9Gdiv2P93HruiBU9nOshc3768HrQ0KSXHGPeFLLEBx1YBRY+OguRTZcNNbP/wLW
 30JmzL76Fwgw8zmTqFcG0EY0yb161tJklFZfjlftgzVUDZp7nSdjpToJhZCo1UOcgxBy
 WSUiviwnzdWYSNFJILwsy+DT3cdT5CSuZHY5qEkhpsJLdpcGVjoHQThC5Zj4BcPA7Mtj
 r8L44QJeiO4rDLlHDIT+0US/1c2luAYo9afKIggo6zMMu9IYahJCWy89X1rkibdKH+HN
 DGuw==
X-Gm-Message-State: AGi0Puak9Pc8EUhNFHGQHB4UXeStIXzwnA+XJ1DA1M/k6ram7jksJZ3z
 WDgOiKjybs4QUVfSXUQ178LJWA==
X-Google-Smtp-Source: APiQypL3X1xlYzw2iOcrrAvDuDiryUSnxNiAeJYrDux+iWD+qj2k8HUN3EnuJVtWslaYhtMemGHUDw==
X-Received: by 2002:a62:1c97:: with SMTP id c145mr5322854pfc.68.1587666522523; 
 Thu, 23 Apr 2020 11:28:42 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id s44sm2954819pjc.28.2020.04.23.11.28.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Apr 2020 11:28:41 -0700 (PDT)
Date: Thu, 23 Apr 2020 11:28:40 -0700
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v11 01/12] add support for Clang's Shadow Call Stack (SCS)
Message-ID: <202004231121.A13FDA100@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200416161245.148813-1-samitolvanen@google.com>
 <20200416161245.148813-2-samitolvanen@google.com>
 <20200420171727.GB24386@willie-the-truck>
 <20200420211830.GA5081@google.com>
 <20200422173938.GA3069@willie-the-truck>
 <20200422235134.GA211149@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200422235134.GA211149@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_112844_009699_E3664797 
X-CRM114-Status: GOOD (  23.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Juri Lelli <juri.lelli@redhat.com>,
 kernel-hardening@lists.openwall.com, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>,
 clang-built-linux@googlegroups.com, Ingo Molnar <mingo@redhat.com>,
 Laura Abbott <labbott@redhat.com>, Dave Martin <Dave.Martin@arm.com>,
 Jann Horn <jannh@google.com>, Steven Rostedt <rostedt@goodmis.org>,
 linux-arm-kernel@lists.infradead.org, Michal Marek <michal.lkml@markovi.net>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 James Morse <james.morse@arm.com>, Masami Hiramatsu <mhiramat@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 22, 2020 at 04:51:34PM -0700, Sami Tolvanen wrote:
> On Wed, Apr 22, 2020 at 06:39:47PM +0100, Will Deacon wrote:
> > On Mon, Apr 20, 2020 at 02:18:30PM -0700, Sami Tolvanen wrote:
> > > On Mon, Apr 20, 2020 at 06:17:28PM +0100, Will Deacon wrote:
> > > > > +	 * The shadow call stack is aligned to SCS_SIZE, and grows
> > > > > +	 * upwards, so we can mask out the low bits to extract the base
> > > > > +	 * when the task is not running.
> > > > > +	 */
> > > > > +	return (void *)((unsigned long)task_scs(tsk) & ~(SCS_SIZE - 1));
> > > > 
> > > > Could we avoid forcing this alignment it we stored the SCS pointer as a
> > > > (base,offset) pair instead? That might be friendlier on the allocations
> > > > later on.
> > > 
> > > The idea is to avoid storing the current task's shadow stack address in
> > > memory, which is why I would rather not store the base address either.
> > 
> > What I mean is that, instead of storing the current shadow stack pointer,
> > we instead store a base and an offset. We can still clear the base, as you
> > do with the pointer today, and I don't see that the offset is useful to
> > an attacker on its own.
> 
> I see what you mean. However, even if we store the base address +
> the offset, we still need aligned allocation if we want to clear
> the address. This would basically just move __scs_base() logic to
> cpu_switch_to() / scs_save().

Okay, so, I feel like this has gotten off into the weeds, or I'm really
dense (or both). :) Going back to the original comment:

> > > > Could we avoid forcing this alignment it we stored the SCS
> > > > pointer as a (base,offset) pair instead? That might be friendlier
> > > > on the allocations later on.

I think there was some confusion about mixing the "we want to be able to
wipe the value" combined with the masking in __scs_base(). These are
unrelated, as was correctly observed with "We can still clear the base".

What I don't understand here is the suggestion to store two values:

Why is two better than storing one? With one, we only need a single access.

Why would storing the base be "friendlier on the allocations later on"?
This is coming out of a single kmem cache, in 1K chunks. They will be
naturally aligned to 1K (unless redzoing has been turned on for some
slab debugging reason). The base masking is a way to avoid needing to
store two values, and only happens at task death.

Storing two values eats memory for all tasks for seemingly no meaningful
common benefit. What am I missing here?

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
