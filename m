Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86D0C1F468F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 20:46:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ooUFoTSKJ3Tka+MnumhUOkAO5IyMz+wLwmv2P124Js=; b=u772ecPXEqzpCH
	2SnH6gw1BZFhpwvwQLsZexqk6i3k66LLGWGw6lc6tkGHUlQ/tc6ZxGzF5mXxC+Fg4E3XkqSMymp5G
	lIMVkb0aXXS5ZILah9I9ncO63929n7axIyK8+0w4hZzwnSUFZjqam8hWBtdVhe43AWz3aPJkywtXX
	LQrBYPVCx7ZBkzcKfJ1q4CojebTrGfaaVIpeX9MWDbWU4pZTSv8n8+A4cB+ujSa0iMcYrlDtiXTbl
	be3Z+4fFp4K4rDP7hpKA71+Tu21lqRmES5XWRYxztmb/blk5TFDP8HvUOP8CVsMhfb8g2xKeYNS3Y
	9MP3zE75SEfWgQLhQYjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jijGt-0001dv-0T; Tue, 09 Jun 2020 18:46:51 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jijGl-0001dU-5f
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 18:46:44 +0000
Received: by mail-pl1-x643.google.com with SMTP id q16so8389176plr.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 11:46:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=7dtLX6XP7HnlQbHJsaggWu4QmeqwjrddfqDvUbVDx4s=;
 b=U99j7JwkXu9xDjTaNwOqMNsfY/1JGbl0JiVGPVKaBXgK5sILh3SCCo6eu1pc4epTXg
 OFJZw9ln4TBPmUC0pW0XxrKMH3JsdoIHM3vcI+UatnP+BjixVR5jhLwwCKfajn4CK89/
 LsKyztUzZULA3YetUMhR5C2itWjI8K5031e9w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=7dtLX6XP7HnlQbHJsaggWu4QmeqwjrddfqDvUbVDx4s=;
 b=CG8f52CP1GMFN5A8qLOhzWvcFZpX5oe5o/Ypw/ku41q4mcNtl7nLKBX5o2EIGf6hMJ
 oqBc8pYR3mUDR9ZJYZmLH9LixA4an2rvCHod9Ko1v/tFRGQsBG7YdR8tqWgwhRvq4YFk
 oaPxhZxYkjNyawbo7LO15zA3s/Em3DB8ATd9u/1YzfEU4dEkvMYaRUDIn5Vm1c+2OeEh
 sxif6rcfhazkKGg64qo0v9vO6ugo97ikRpMhrx987jJ8y3SU7C1dA/U0cOy5lQIOl8B1
 aRJKDd4Ypfsk1SRpXdjBOY6CvAvxOd/4ojGz4A+CTwC0ssvVVe5Tk6TvXYZsyquxCkq/
 kZqw==
X-Gm-Message-State: AOAM5307Iayt3BMlumXlQx/ocSxMy621Vvz1lP7nU40+lPE4IVdGnAL7
 vucYYuqxhY3cthMJTxrIqCWlEA==
X-Google-Smtp-Source: ABdhPJwL5HN0U2KSWusdzlMqd2urfWL8t6YS0AxExIzAB1X6VceO1GflzGC9ecX1Ma+jdmYtMYrhFQ==
X-Received: by 2002:a17:90a:3489:: with SMTP id
 p9mr6357379pjb.56.1591728402460; 
 Tue, 09 Jun 2020 11:46:42 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id lt14sm3139209pjb.52.2020.06.09.11.46.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jun 2020 11:46:41 -0700 (PDT)
Date: Tue, 9 Jun 2020 11:46:40 -0700
From: Kees Cook <keescook@chromium.org>
To: Alexander Popov <alex.popov@linux.com>
Subject: Re: [PATCH 2/5] gcc-plugins/stackleak: Use asm instrumentation to
 avoid useless register saving
Message-ID: <202006091143.AD1A662@keescook>
References: <20200604134957.505389-1-alex.popov@linux.com>
 <20200604134957.505389-3-alex.popov@linux.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200604134957.505389-3-alex.popov@linux.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_114643_228682_AF598F84 
X-CRM114-Status: GOOD (  14.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kernel-hardening@lists.openwall.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Naohiro Aota <naohiro.aota@wdc.com>, Sven Schnelle <svens@stackframe.org>,
 Masahiro Yamada <masahiroy@kernel.org>, x86@kernel.org,
 Emese Revfy <re.emese@gmail.com>, Iurii Zaikin <yzaikin@google.com>,
 PaX Team <pageexec@freemail.hu>, Laura Abbott <labbott@redhat.com>,
 Mathias Krause <minipli@googlemail.com>, linux-kbuild@vger.kernel.org,
 Alexander Monakov <amonakov@ispras.ru>, Michal Marek <michal.lkml@markovi.net>,
 Thomas Gleixner <tglx@linutronix.de>, Peter Collingbourne <pcc@google.com>,
 linux-arm-kernel@lists.infradead.org, notify@kernel.org,
 Florian Weimer <fweimer@redhat.com>, gcc@gcc.gnu.org,
 Brad Spengler <spender@grsecurity.net>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Luis Chamberlain <mcgrof@kernel.org>, Jessica Yu <jeyu@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Thiago Jung Bauermann <bauerman@linux.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 04, 2020 at 04:49:54PM +0300, Alexander Popov wrote:
> Let's improve the instrumentation to avoid this:
> 
> 1. Make stackleak_track_stack() save all register that it works with.
> Use no_caller_saved_registers attribute for that function. This attribute
> is available for x86_64 and i386 starting from gcc-7.
> 
> 2. Insert calling stackleak_track_stack() in asm:
>   asm volatile("call stackleak_track_stack" :: "r" (current_stack_pointer))
> Here we use ASM_CALL_CONSTRAINT trick from arch/x86/include/asm/asm.h.
> The input constraint is taken into account during gcc shrink-wrapping
> optimization. It is needed to be sure that stackleak_track_stack() call is
> inserted after the prologue of the containing function, when the stack
> frame is prepared.

Very cool; nice work!

> +static void add_stack_tracking(gimple_stmt_iterator *gsi)
> +{
> +	/*
> +	 * The 'no_caller_saved_registers' attribute is used for
> +	 * stackleak_track_stack(). If the compiler supports this attribute for
> +	 * the target arch, we can add calling stackleak_track_stack() in asm.
> +	 * That improves performance: we avoid useless operations with the
> +	 * caller-saved registers in the functions from which we will remove
> +	 * stackleak_track_stack() call during the stackleak_cleanup pass.
> +	 */
> +	if (lookup_attribute_spec(get_identifier("no_caller_saved_registers")))
> +		add_stack_tracking_gasm(gsi);
> +	else
> +		add_stack_tracking_gcall(gsi);
> +}

The build_for_x86 flag is only ever used as an assert() test against
no_caller_saved_registers, but we're able to test for that separately.
Why does the architecture need to be tested? (i.e. when this flag
becomes supported o other architectures, why must it still be x86-only?)

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
