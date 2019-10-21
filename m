Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 067A1DF26D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 18:07:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nc0s56pWqN4LIXQM9/8dqHCg6EnR3JjIIpr67Mhne8g=; b=Nhi2OCtjqRXymS
	Ts0DfVWmEICpF8KhXvFcsfA9xStnu4J7qoKw+4NaKdZsGnP1uezUK7/CyxQvdLL+kNpZdej+23bJA
	g4wP72FkKBrUA3r8wv6lmuJ3zO6dUODUpzo6LFLcp2QxJohNOCqjbYQ0vodeYGkEDnA7PTr6VfGE1
	EkW57HkfOTj+2kEzBYGdMfOBSxShzwqUO4z+zDkajgw2ugaVFLbUcVKDQgqpSZsplv/kKL2IEVFu7
	tSCDEmRSa3kYDUhQTc0XUgaOleJmyYWt5J1NTa2CXcp5DQMgzQ6+6bDTRNlPFFThiHRP7r+ABm9rN
	fDGC/f3Cr3YQ/qYMBhtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMaD7-00062f-Jg; Mon, 21 Oct 2019 16:07:09 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMaCz-00061U-0x
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 16:07:02 +0000
Received: by mail-pf1-x441.google.com with SMTP id y22so8714637pfr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 09:07:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=JE8U2Fghv6YjjweCRTqDn5FZUlMFhhM8tZP7QTcsL4M=;
 b=BXwbjyQHcxJWNiy0iXKopawMWLVVLer31/iixLJkLYJrr0DN6W/g3Yxd8AhYLMw4GY
 yaOOYp6clpQlM8wBCeAsr7WNscSUW0a/CNbCltgSRmtM67DKbQ4DtyJUrsqntno1wI5y
 6L8iL7u4BsmyrJM63Dgery3dZ3UK4EZQgDH+w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=JE8U2Fghv6YjjweCRTqDn5FZUlMFhhM8tZP7QTcsL4M=;
 b=tLCarH79VYTWVGHmvXhuWDrw5/0Bio+3gmdviG32h2IY5fwXxI7m427fHT7ckNaFii
 V3nEDbFo9SlBdPYarPAoSV6shBXheASwcMrDbyHQtOGLVV03v8ONaq5meHDhKHudaKhl
 utQch1ZWhUw+tqv1H6C5OaoQFSa7WwAqYPJGzBIO2yxXKdhVC7wvcU0iD5Bcm4fM2GCR
 pSn1bCQRLmLOLjG66J/Ay+AxnnZ1myfzp2kZqA+8TrkD/AzvCK0Gfyy9SDtlo7xlILHo
 Jkwv7AfM3lb/u+oI12H+fOLgV6uqulYPOjlPKsACvgYn364KTYj8gBeAwsdnLLbWcKsx
 pG1w==
X-Gm-Message-State: APjAAAU9ymmG8lR3UYugd1BfzCX1lv4nOFCZDoNMAoeKoeT3Yh6JV/kY
 2QpmMspz2+L7gaMK45w1RaeQHg==
X-Google-Smtp-Source: APXvYqwJTcp7CnYya1sildKDZQhELifTwgg5siNr/xx7tKpVABk+cPNBC7anzYKvXWswmQ1TD7x5Qg==
X-Received: by 2002:aa7:96a9:: with SMTP id g9mr23757769pfk.147.1571674020135; 
 Mon, 21 Oct 2019 09:07:00 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id x139sm18509941pgx.92.2019.10.21.09.06.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 09:06:59 -0700 (PDT)
Date: Mon, 21 Oct 2019 09:06:58 -0700
From: Kees Cook <keescook@chromium.org>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH 16/18] arm64: kprobes: fix kprobes without
 CONFIG_KRETPROBES
Message-ID: <201910210905.7494C5C@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-17-samitolvanen@google.com>
 <CAKv+Gu-88USO+fbjBgj35B4fUQ7A_t9nHO_swyN=T1q1G2wViA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKv+Gu-88USO+fbjBgj35B4fUQ7A_t9nHO_swyN=T1q1G2wViA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_090701_089631_41BA035F 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Sami Tolvanen <samitolvanen@google.com>, Laura Abbott <labbott@redhat.com>,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 21, 2019 at 08:21:48AM +0200, Ard Biesheuvel wrote:
> On Fri, 18 Oct 2019 at 18:11, Sami Tolvanen <samitolvanen@google.com> wrote:
> >
> > This allows CONFIG_KRETPROBES to be disabled without disabling
> > kprobes entirely.
> >
> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> 
> Can we make kretprobes work with the shadow call stack instead?

I've been viewing that as "next steps". This series is the first step:
actually gaining the feature and clearly indicating where future
improvements can live.

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
