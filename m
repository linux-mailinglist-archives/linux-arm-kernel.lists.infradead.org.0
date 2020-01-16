Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 226BD13FBAE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 22:45:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tp3XFFGxACIGwuih0lrzPCG5JCDhPxlSE8hZCv2UoJE=; b=lEhRRTGlDJ3hor
	7HDkQQflQpkx70aBW8DAQBgaj4QtYxrH1AXs8rZQGYF5oZgjr+ul7/V5TNDAU+KbcZLXAIljLKpdZ
	SxZN2FrmrKuRKBF5v3W232NMh4Ai/dyJ/dxipVrvUu29pe2s02aGRIlWbbA+ukTHZ0u2L4glmxz3G
	XM6ZMrgHDLPa3127ZjcZN4cZ6zUn6XMf6g/lFw0EY3mH9xDJT7u5Skf8aU3Y6MP9TiK76olyUz+eI
	lX1XzVLjJUmiCQ3tdBK5wzGSjAFdwE+vPIwt2b3nSX2aZsfU+AmwLSJUWZBq75tGnGG3+lZzgBJty
	jZ/H8bZpclChkBuWz20A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isCxI-0000G7-HC; Thu, 16 Jan 2020 21:45:32 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isCx8-0000FD-Jh
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 21:45:25 +0000
Received: by mail-ua1-x941.google.com with SMTP id f7so8209911uaa.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 13:45:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tkSAt1Pw50rKdG/hn5morljVtZomrkNl/2z5xne6PRw=;
 b=tYITaZrsivqfC+GdC03l8Z8h3bZpMk/AxRJZ5m3Cq3lP1GhjDNlzuzFHH0Pn2+w9Bp
 7hq+CoXS8VEDdhnMjKVZPNodzvjOUAaKuYJ/ddFf8vOlsJnqSle+AlNiaLEcRnwKSGTP
 5gI69wlRAJP+9qKZcEhtfjYhon9km/BJzdEnZr70+1XtamA4m5kF7Ynuucv4V82zyCFO
 H2TlLCrfyCjDGPgKEI6sEsRnApccctQO8D2j+8EC7xolfZWg7J4pQivRrN9lRA6P8BUk
 bMbwCjGUJxwYv2NA596Hgs8T4QOpc3vlL/TpIEXN+OH+nuTnqjTX9Bzg6hCJI8tqaUMO
 EkDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tkSAt1Pw50rKdG/hn5morljVtZomrkNl/2z5xne6PRw=;
 b=cMma2AasoRrghFn8Gfpn4MmhgL+XwyRq92XrqwJ80PU9pJXy+LeEeiZowoMROFsZ5F
 8XcvFQ9/BYmgpYtMpxxLmKQe/D4mjwUghGJ6SM9ku2ho00rH2L0370AUEINuJJYIDvwj
 hoIye42X2aN/O2RinADzN+ZJ99OMR/IazABKdJ97kn8FlGZC7kvQMHC26dzj92SyOR88
 b+u+wXVuC8TgwOsLuNigU793JayRwg0BOsn6+VvenwTecoHms0pTloXg8MFAmLN+1so6
 sBKz3yK6TCa0AzsRHblDj1lxyamjmWUWvejfPJWL2XIPWrRdn4A7SnhRgh4ElxC1uA8N
 Y0Ag==
X-Gm-Message-State: APjAAAW/NI8OuK5YeheIKeHR6MMU9HuMuUwGgmyEhTYXHuMxzhfaOpcx
 0pO1Md5HC1DfT9Ti75refAg+HVhe9dddK02EosPDaw==
X-Google-Smtp-Source: APXvYqx9xgh+f+ErpWs3BksSZ71jt7xPPMU4gWghLYUHcYc41EpoUSU/qL8aa7KJUXqJ40wX1Da/EhNZbQRobWoILhU=
X-Received: by 2002:ab0:618a:: with SMTP id h10mr19510791uan.53.1579211120670; 
 Thu, 16 Jan 2020 13:45:20 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191206221351.38241-1-samitolvanen@google.com>
 <20191206221351.38241-9-samitolvanen@google.com>
 <20200116173950.GB21396@willie-the-truck>
In-Reply-To: <20200116173950.GB21396@willie-the-truck>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Thu, 16 Jan 2020 13:45:09 -0800
Message-ID: <CABCJKuduRyBBr1qZQj35nMCOLv3my22wRQXb4-i39n07qdL4Yg@mail.gmail.com>
Subject: Re: [PATCH v6 08/15] arm64: disable function graph tracing with SCS
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_134522_674421_645FFCF1 
X-CRM114-Status: GOOD (  12.18  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Laura Abbott <labbott@redhat.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 16, 2020 at 9:39 AM Will Deacon <will@kernel.org> wrote:
>
> On Fri, Dec 06, 2019 at 02:13:44PM -0800, Sami Tolvanen wrote:
> > diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> > index b1b4476ddb83..49e5f94ff4af 100644
> > --- a/arch/arm64/Kconfig
> > +++ b/arch/arm64/Kconfig
> > @@ -149,7 +149,7 @@ config ARM64
> >       select HAVE_FTRACE_MCOUNT_RECORD
> >       select HAVE_FUNCTION_TRACER
> >       select HAVE_FUNCTION_ERROR_INJECTION
> > -     select HAVE_FUNCTION_GRAPH_TRACER
> > +     select HAVE_FUNCTION_GRAPH_TRACER if !SHADOW_CALL_STACK
> >       select HAVE_GCC_PLUGINS
> >       select HAVE_HW_BREAKPOINT if PERF_EVENTS
> >       select HAVE_IRQ_TIME_ACCOUNTING
>
> I think this is the wrong way around, as we support the graph tracer
> today and so I think SHADOW_CALL_STACK should depend on !GRAPH_TRACER
> and possibly even EXPERT until this is resolved.

Sure, sounds reasonable. I'll change this in the next version.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
