Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5AA3EC8D1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 20:02:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pt3NRANnmw76MrmWm0h0FR2uyM+Yeo2xP652GwUHH1s=; b=L5BQN2F9nulE7/
	DefhJysnqI2y/XHYHRR1fWfX8e9OJCE6n2SaIaIweDN8vutjxWEvUQegwW9LiBy5WDkkRPbUBuZgm
	B5IP/0mCKXQycCfmyvbsviqELYS/LiBJEil77dlj8hQxq/szQomo4yDnycdkT5mzjo7sff4aj3npT
	lV3YNZzwkqPo6bNnUdpBjUFAv1voVu+khwnBdtVnxG9YvgRrkDWls645barIWjfoIt4ZTEUDUXuJH
	9cNApHFE+hCEQzHVXq9DXVVsnplQHCWUaBHIglXx3wxk4JrN9G7yGlKU+3yEclUW14h15oPOkz9G0
	8pXAZvCAzEhbCvnpiUaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQcBk-0007al-C6; Fri, 01 Nov 2019 19:02:24 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQcBc-0007aI-Fu
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 19:02:18 +0000
Received: by mail-pg1-x543.google.com with SMTP id j30so3547827pgn.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 12:02:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=2fG4DzCLulQ+v7huA1kdMQ2RtRpH3xT6PP3dcQOR3YM=;
 b=FdSEwR9X5l9Wqc+/eshiHPMlZ+qbVGkM0VrADZRZNoPKl47i8lf6Ah2ogK43O9mLBz
 C38lxuGZvsa0tFqnuBBHY2YWJOfGOTokdGNGz6+UQ9XWtZ1Qp16zcUsqtprBYXlv+ny5
 fD8DNC5oZHJ6AV27OHsxTC/ul2AuGnuvtGGk4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=2fG4DzCLulQ+v7huA1kdMQ2RtRpH3xT6PP3dcQOR3YM=;
 b=c963nYv+xEeuRtvxpMCYKdp703GXyB+O7BFOc2SAGlqWEE9A9lEuw0RRNRU/o/Acpb
 GLyAzIQfKYlhPqfFfZLMnOho63V8UMdENpuOgXZVZd90sYsiCq5mr2ddDyZo3KbDIt4V
 fiGFoYf1w5Ch7o7Fytt4RIZzYXHvHXVCBTJTbUZL96HwPh8ToojekNmgZ4bkTeUv5JLM
 +HL+DJ1uq9cJkzEG/KYtEvwvWJhp/9MigpBg01VcSuR+M6q3nMpFic+As7R4sntvpfv2
 1xdF3uJZjKnLNhQZG7GfDRZLfpoyvIsp5FrSmYO5UoDwOPBPeFzPmFSPapyHi3GQUCzM
 yF8g==
X-Gm-Message-State: APjAAAX8AbacOA68xlAK9tzOrfbFy4SZ8snsztIkgoR8dyVfZ9RMcbz4
 fTHc4pulRm6kt7YMv3w2d/VMHQ==
X-Google-Smtp-Source: APXvYqzEjD8mlyAQagoCql+H8OD47PXOJ5YDq8BZhhrYFD67Vj1PkcdsuEn3Dl9QXx9NFWLOxoUDbw==
X-Received: by 2002:a65:5a06:: with SMTP id y6mr15317180pgs.9.1572634935932;
 Fri, 01 Nov 2019 12:02:15 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id w10sm7985756pjq.3.2019.11.01.12.02.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Nov 2019 12:02:14 -0700 (PDT)
Date: Fri, 1 Nov 2019 12:02:13 -0700
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v3 07/17] scs: add support for stack usage debugging
Message-ID: <201911011201.A070D143D@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com>
 <20191031164637.48901-8-samitolvanen@google.com>
 <201910312054.3064999E@keescook>
 <CABCJKueAf3f-rHw8AXJKKi=kfnh+nBMpJP2Vb2DVqLUWZVmFqQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABCJKueAf3f-rHw8AXJKKi=kfnh+nBMpJP2Vb2DVqLUWZVmFqQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_120216_864934_EA45AD54 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 01, 2019 at 09:32:54AM -0700, Sami Tolvanen wrote:
> On Thu, Oct 31, 2019 at 8:55 PM Kees Cook <keescook@chromium.org> wrote:
> >
> > On Thu, Oct 31, 2019 at 09:46:27AM -0700, samitolvanen@google.com wrote:
> > > Implements CONFIG_DEBUG_STACK_USAGE for shadow stacks.
> >
> > Did I miss it, or is there no Kconfig section for this? I just realized
> > I can't find it. I was going to say "this commit log should explain
> > why/when this option is used", but then figured it might be explained in
> > the Kconfig ... but I couldn't find it. ;)
> 
> It's in lib/Kconfig.debug. But yes, I will add a commit message in v4.

Oh duh -- it's an existing option. Cool; I'm all good. :)

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
