Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B66C1B199B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 00:35:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pDthWWbzc1MvIm6jFFAS5NLYPQ/1LXKpkxMUtgJpTtU=; b=sf8qpuacS29gVu
	fpqy3grtWZwHtvWWw5yNPn965BsatfKcvlmdOdGo501wPoqqq5aKz5qT6y0g4FGob8xXbCDDuvhZ3
	+GFA7H09Ke7pDPjxnsmp1GtXu4LNz/GIKeEEjdvPH+d02riJoyRmlJoSE1mcVh+8sIVmYIC9t8gRO
	f7WEirO3qAUBKiRufYuVnwlIP/ePbz6Xi526GvFFqDnwhS/TslePKwykUaEvIM40uEjhmcYdgHrub
	60RBGz3SYwVAi0+WRxqMlw4sTHFgTmgtiYfRCTc3Mt3pDlDc2BROG/OSo/vOjHZyYctf+I/kbGVPQ
	9ln73j6pjWxCh9E+y1lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQf0Z-0008EC-Nz; Mon, 20 Apr 2020 22:35:19 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQf0G-0008BJ-1P
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 22:35:01 +0000
Received: by mail-pg1-x542.google.com with SMTP id x26so5797135pgc.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 15:34:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=gHx7qgEhMfCeRi4LwRcBINau80f3lsbADPFxDRDnQX8=;
 b=WaKFtBNjxAG6922c9M7PS6Sr9GtIoZi+Bab8wtI8WphnYmTcq8s4ZSzd4luipXOLU4
 jf4QK74nyiAcI85rmEUYpbI/hBAhRHU50KzAVjDVdJlDL1gU+m4RHq55dCtYvfJ4lxlT
 nAFclQvexr0WpO9w144f4pIlUT9r5MqSnjeTI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=gHx7qgEhMfCeRi4LwRcBINau80f3lsbADPFxDRDnQX8=;
 b=UxoMxfT5W/xowq7Sn+WuqcqSzcdkADJlfVz3YTBuYjUgc0HUOw9VN404dNbpLbQwji
 vJlroFmFfMWIMkNjEbaMZlwVS9iFGVwMmJvLzERT9m8XvFZy0BJOpVc0eWR5T+537823
 Q64wku4pO3us9etx8ZG8guauhOypS7jEmIbv4AQDfCWODDWRrpVJAsqel6FjK2YU+K2q
 QTqj77Thqtfq2tQwIeZt9U4bKK4lakvJ9+MHjDtJur4nzS8S/6dqspxzimSkjXBsehKA
 eoT4jbO+bSijADVjSgQzQibJM8Qgb4E0HOW0PiDy1jqMAS+xgMjJiZygTJV4wK9Kh4v3
 UaDA==
X-Gm-Message-State: AGi0PuZXrO7IuY1J1RV/j6WyRw0j2asBcuLRJpXIkKgPtWbrleTY7oZT
 ZwtwFlr57nFPHqdCxjkTlO6ZUQ==
X-Google-Smtp-Source: APiQypKAcbw6yPUzbM4nMMNMJKcG2W4526Isd/VpAs6Bq80MioCbLHvZ9ufOTrlBeRJfVRW8JpiX/g==
X-Received: by 2002:a63:602:: with SMTP id 2mr18621933pgg.383.1587422099130;
 Mon, 20 Apr 2020 15:34:59 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id x10sm373971pgq.79.2020.04.20.15.34.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2020 15:34:58 -0700 (PDT)
Date: Mon, 20 Apr 2020 15:34:57 -0700
From: Kees Cook <keescook@chromium.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2 5/5] arm64: entry: Enable random_kstack_offset support
Message-ID: <202004201529.BB787BB@keescook>
References: <20200324203231.64324-1-keescook@chromium.org>
 <20200324203231.64324-6-keescook@chromium.org>
 <20200420205458.GC29998@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200420205458.GC29998@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_153500_105126_A9F2A8F2 
X-CRM114-Status: GOOD (  14.19  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jann Horn <jannh@google.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Alexander Potapenko <glider@google.com>, linux-arm-kernel@lists.infradead.org,
 Andy Lutomirski <luto@kernel.org>, kernel-hardening@lists.openwall.com, "Perla,
 Enrico" <enrico.perla@intel.com>, Thomas Gleixner <tglx@linutronix.de>,
 Elena Reshetova <elena.reshetova@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 20, 2020 at 09:54:58PM +0100, Will Deacon wrote:
> On Tue, Mar 24, 2020 at 01:32:31PM -0700, Kees Cook wrote:
> > +	/*
> > +	 * Since the compiler chooses a 4 bit alignment for the stack,
> > +	 * let's save one additional bit (9 total), which gets us up
> > +	 * near 5 bits of entropy.
> > +	 */
> > +	choose_random_kstack_offset(get_random_int() & 0x1FF);
> 
> Hmm, this comment doesn't make any sense to me. I mean, I get that 0x1ff
> is 9 bits, and that is 4+5 but so what?

Er, well, yes. I guess I was just trying to explain why there were 9
bits saved here and to document what I was seeing the compiler actually
doing with the values. (And it serves as a comparison to the x86 comment
which is explaining similar calculations in the face of x86_64 vs ia32.)

Would something like this be better?

/*
 * Since the compiler uses 4 bit alignment for the stack (1 more than
 * x86_64), let's try to match the 5ish-bit entropy seen in x86_64,
 * instead of having needlessly lower entropy. As a result, keep the
 * low 9 bits.
 */

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
