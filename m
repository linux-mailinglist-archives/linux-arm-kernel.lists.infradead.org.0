Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 542F8199A75
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 17:57:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GoS2ykQudXJL29g+dOSYfF/oz2HewbWlSQLmsrbeNoM=; b=aQiSaUXOE7poOB
	+U8j+Eo+Mux35gZ99XKg9oKUE7iyXQ84XHqhJnhVMxA1cmlb9gU83RiQV/whH4CKuxw9VP9lCuRvL
	oDs4cJF05rhAXuMZWSPlbMXNjlhjzpFNbYQCGarihwKAfHWQrwLcSFzCV90bX3goiQLZ7ARBYt7En
	gbD9u13rOY1Qnj71OIjfqXZILfgkS402mNK/uSGP6MYZD3JnNTlKq7ABhDbkaCB5Iu1GMraEbQ6PZ
	bRqUWZIU6f7zw6UeJU1GCn/P+LaefitZLyrOzRN+QAZ1KTiv2ANBqOtwxiw6Jg+JnCTguIi79mAiY
	Or0pgQk8GL3tPonBbYbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJG5-0000eg-EH; Tue, 31 Mar 2020 15:56:57 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJDt-0005D3-Kv
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 15:54:43 +0000
Received: by mail-oi1-x241.google.com with SMTP id d63so19325100oig.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 08:54:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=zTyZUZyP+zXDM17uOl5EO7jnuzHUmLuralf0hD1C7uQ=;
 b=X+fgDi3MlKSPCh2sgIYL+gkLlsZfyMGWwuidp67Y/1xJSJpN6GiCrcKj4vscCntt5X
 AsoSD/y4zBkHXejpqSRnno4P4EIdp8HhS1WuvfQUKvsUfsyvyJIqVP5BNhp1WI9YXqSe
 Z6QL0bcqJwst77oznDjNOVFNBeNpNp6rUlFeQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=zTyZUZyP+zXDM17uOl5EO7jnuzHUmLuralf0hD1C7uQ=;
 b=k/0k7yVVqP1a59+4zl0hqGv9K1JvP/XNU8yN1+EyYYe1U36iaqe/XPiXefq0FODa4A
 Ur8M97XoDCf+5egRzIN0C67D0gV6b7JGkJKy+zaRo6Y4WAQPbOGnCZatLs0/tkf9B0xp
 2ndr2hU9OXlvINIQHQWwElyFRVgv4UxIhxfMnE66BIWvk34i9CgtTNG78I0Aaipzbhoo
 xuCqrsqV7c9TFjo8hcGlTFwZ26pZN8aeX6I/YRj5opx9kCZ4Y8xopHAQ68qbPcCeLB5t
 csZZUy8Mcwl7LCZoF+Cq1ErJcquZZSmvTd83+dJjRwOpZCWyrv+AMJhGvw4BgYjF6V7Y
 E+AA==
X-Gm-Message-State: ANhLgQ2vdr/UlfrP2uxHmBmS1om+Qi2k3qbrD6Z+Ob+cCKSv/3KesUru
 ejg31DuFtqGJBu3HVg4HUA8dZEt5R9g=
X-Google-Smtp-Source: APiQypIT3n7KLf8ko7LebvhJ17T7gGW5sDePBsyltHCF4aEdKZNxQ/m3qhCvFd7PBcLmqZTusgipUw==
X-Received: by 2002:a17:90a:202f:: with SMTP id
 n44mr4330392pjc.150.1585664122467; 
 Tue, 31 Mar 2020 07:15:22 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id c10sm5076661pgh.48.2020.03.31.07.15.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Mar 2020 07:15:21 -0700 (PDT)
Date: Mon, 30 Mar 2020 11:18:40 -0700
From: Kees Cook <keescook@chromium.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v2 3/5] stack: Optionally randomize kernel stack offset
 each syscall
Message-ID: <202003301116.081DB02@keescook>
References: <20200324203231.64324-1-keescook@chromium.org>
 <20200324203231.64324-4-keescook@chromium.org>
 <20200330112536.GD1309@C02TD0UTHF1T.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200330112536.GD1309@C02TD0UTHF1T.local>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_085441_803351_FCEF2435 
X-CRM114-Status: GOOD (  14.80  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.8 DATE_IN_PAST_12_24     Date: is 12 to 24 hours before Received: date
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jann Horn <jannh@google.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Alexander Potapenko <glider@google.com>, linux-arm-kernel@lists.infradead.org,
 Andy Lutomirski <luto@kernel.org>, kernel-hardening@lists.openwall.com, "Perla,
 Enrico" <enrico.perla@intel.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Elena Reshetova <elena.reshetova@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 30, 2020 at 12:25:36PM +0100, Mark Rutland wrote:
> On Tue, Mar 24, 2020 at 01:32:29PM -0700, Kees Cook wrote:
> > +/*
> > + * Do not use this anywhere else in the kernel. This is used here because
> > + * it provides an arch-agnostic way to grow the stack with correct
> > + * alignment. Also, since this use is being explicitly masked to a max of
> > + * 10 bits, stack-clash style attacks are unlikely. For more details see
> > + * "VLAs" in Documentation/process/deprecated.rst
> > + */
> > +void *__builtin_alloca(size_t size);
> > +
> > +#define add_random_kstack_offset() do {					\
> > +	if (static_branch_maybe(CONFIG_RANDOMIZE_KSTACK_OFFSET_DEFAULT,	\
> > +				&randomize_kstack_offset)) {		\
> > +		u32 offset = this_cpu_read(kstack_offset);		\
> > +		char *ptr = __builtin_alloca(offset & 0x3FF);		\
> > +		asm volatile("" : "=m"(*ptr));				\
> 
> Is this asm() a homebrew OPTIMIZER_HIDE_VAR(*ptr)? If the asm
> constraints generate metter code, could we add those as alternative
> constraints in OPTIMIZER_HIDE_VAR() ?

Hah, yes, it is. And this produces identical asm, so I've replaced it
with OPTIMIZER_HIDE_VAR() now. Now if I could figure out how to hide it
from stack protector. :(

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
