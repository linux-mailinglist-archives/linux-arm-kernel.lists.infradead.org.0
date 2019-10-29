Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D33E90D9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 21:36:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VL2gcRXmVZ1akOFgAUmchi02ggj7PNRjUXvDIlMIyd8=; b=FOp09RXFewLeoc
	Tw/YpFcGRKVLdGHo/+kU/mu92jsslnNbCWdX2ESLKn2jtxtYt8WIqR6EU/HLSfGPkrxnoHkWckiZE
	mqKwECf1FZVj1Mfuek102QExX+3/jX64kov02wqu89oHqVz9aRhmROcn6LfABTpm7EtZV2HKOOh61
	LLS7bm5PA+VUgX8h1G6d1JKo7ZKfr6NHV+/LRVXPDhCm583IFqd+OZ+uaskikIpHZ7ajvHn9beGw4
	/invQsr2xMX00WykPEXok+3XJXCg7lgODxn8N9ZsChEl8G+O9sWCVVTscBXzPL9iEoJqCHeSa8Uwd
	3E5OIIIudWmmLlX+JCFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPYDn-0008Co-4N; Tue, 29 Oct 2019 20:36:07 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPYDd-0008Bp-Qp
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 20:35:59 +0000
Received: by mail-pl1-x642.google.com with SMTP id v5so8245997ply.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 13:35:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=weRnPR6zYa479NAUpF9JwnzdoXArAq5BeasxBvL84nU=;
 b=XRKGIdWYXO3m1hY8XbcF6besNQxUfY5HowLorvgI06Il0r949+pXWQMiusqg7NW4bL
 n2NNmRL5tJyfSXfLwXr7irLEBpOMOdlwG+QXG7l00owKxPoCqxcVFS0Co7+QZnEhVhrx
 8hiqpPhiSobeO+7koU+UUdkIE7/OsB5eKgyfPEVzdKPlXsOqaBn4iJSkUSLvWYoQRQxk
 Si4ZeOrG1j0q/fl6GMEuuIYbz7P9KayVlQXJtPP+aorYT7EgrEvU87GvMYFOphF00Zmr
 DOXx0aTrS6kWE9mtAAA1s6aRq1rObI7RobGaMi6KzHKBxk/qXKTL4MMQ3U1t5+oBZe1Y
 +2PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=weRnPR6zYa479NAUpF9JwnzdoXArAq5BeasxBvL84nU=;
 b=T5Kx0evMazE6dH+zqgJ34beYPDG6QEvUwFRlhJfFayIbeM1IL8xj9FOD+btGiyCoCt
 fACMA4ICE1Z2qez7fY6jZXHc+8JDUBTMaNg3WOWYv7zgOZqd7YVapXIH1fDMlWHSYRtN
 i53OJME0goNTztKlj0FvDq4MPpKcktBP6mEcRKl2jKLEvWHcgpOtedivbf4IfotdWKDv
 iZd1tbKsgDlGBCiVb3bB3SmIKQZH08UUqw8CCXV/hQwdPtybPX1kzJMTiqKqNz5wJOrj
 o0DKpUW4HvzK8LdGhN0UgrbhOi6wDue+pGR7ju5UAin0SXsLMLQhJOWAKWkuwNdJbWfX
 H2LA==
X-Gm-Message-State: APjAAAWQfuGosWmI7bn35fMGMysLX4P+DcAdx0mXkRMGh5ZtkADsLtHa
 effEeMJRoRTcFt030r73H3qf2tlMJwChakNCMPdnNg==
X-Google-Smtp-Source: APXvYqw1QuYaZCWaZyhSYUpbUd82Cb158qMxFhGB8aJGfza75ZBKXzYxqXPG4i32Epk41OS84e6p4SgzgoHmtzZc06g=
X-Received: by 2002:a17:902:9b83:: with SMTP id
 y3mr579601plp.179.1572381353386; 
 Tue, 29 Oct 2019 13:35:53 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191024225132.13410-1-samitolvanen@google.com>
 <20191024225132.13410-10-samitolvanen@google.com>
 <20191025110313.GE40270@lakrids.cambridge.arm.com>
 <CABCJKud1xYEx_GVgfBHUuwNGKMxX+uVaE5TR6DEqo7CoSJJnNA@mail.gmail.com>
In-Reply-To: <CABCJKud1xYEx_GVgfBHUuwNGKMxX+uVaE5TR6DEqo7CoSJJnNA@mail.gmail.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Tue, 29 Oct 2019 13:35:40 -0700
Message-ID: <CAKwvOdkxrYB=HTmtQ6sejPmWZh-mwJ-gyWRGgtZDrUOjBMftzg@mail.gmail.com>
Subject: Re: [PATCH v2 09/17] arm64: disable function graph tracing with SCS
To: Mark Rutland <mark.rutland@arm.com>, Kristof Beyls <Kristof.Beyls@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_133557_894165_3E91BB55 
X-CRM114-Status: GOOD (  15.58  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Sami Tolvanen <samitolvanen@google.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 29, 2019 at 10:45 AM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> On Fri, Oct 25, 2019 at 4:03 AM Mark Rutland <mark.rutland@arm.com> wrote:
> > We have a similar issue with pointer authentication, and we're solving
> > that with -fpatchable-function-entry, which allows us to hook the
> > callsite before it does anything with the return address. IIUC we could
> > use the same mechanism here (and avoid introducing a third).
> >
> > Are there plans to implement -fpatchable-function-entry on the clang
> > side?
>
> I'm not sure if there are plans at the moment, but if this feature is
> needed for PAC, adding it to clang shouldn't be a problem. Nick, did
> you have any thoughts on this?

I didn't see anything explicitly in LLVM's issue tracker.  I also
didn't see -fpatchable-function-entry currently in -next other than
under arch/parisc.  Are there patches I can look at?

Has ARM's kernel team expressed the need to ARM's LLVM team?
-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
