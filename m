Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E47CB1B5109
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 01:54:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rxn9dcZTNXt3afltVbtGKtW+NzgOBcrAsjUgsoHq+H4=; b=RqSohBXnLndU7P
	RCLzqi6LQRk2tLORoHunoRkB1W7vGUAoiWOvgpceI2jsPcbGDvzF25r7r+huppHKCH5lakdSRavpS
	p0rl0Oe4QCSpU98WBCNoHYV6rushCCCEb95NNpuYdbJPnEUNcDr59JmTGtlFpXhUSAPTd66SZAaTb
	1CwpTNJYbVu0lEWUvsWRCt6AxuodD6U1cF4QcvZX1Tlpyczje/QWaSG+a2snpQxJRAdrrQiv+7Cjg
	CRzzKYlf8FpZY0mKTbZh8xaiwN+Nd4TkzZ1ns/ksZzqIr/LSrsrAR7XTXe0faEh/WhXP6ncnKbTP5
	NoyfkaA55TAFpB8Gmx2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRPC4-0003T6-DI; Wed, 22 Apr 2020 23:54:16 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRPBs-0003Sb-RU
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 23:54:05 +0000
Received: by mail-pf1-x444.google.com with SMTP id p25so1963624pfn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Apr 2020 16:54:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=9yta31YHLGTtMTc3kimrMC0tNHi4fPt9ZpXXfvJokHE=;
 b=ul4AvjVQXbGe+67+07L6i6vBhv+ePFHnNv5wOIO5OLBqKwlga7zXiy6xS1d0X/n/tF
 6woOlNdImmOPZMJChQsUQyygz5ZseUPmnZAKczKpT7Y7lInJ6k/DDJqqloDP2VpGFDPw
 OFtrm1ALOx3/hCMPr/YQ3m1N7xm3tLJ/pl95K3DRTQoOWwlka1VKxTJhNX6t7x3uramm
 2dyep6SUwSuJ79qzMc80b3OzgAHRlzEcC+sG84d0mATYPxu/tkZ16ivMuXJA1CHS9gCY
 zZTcPJxWLKTN7QTPUPa2eVcTdjKumsRqOxjD1k+RVCHPaHKtuxR9qW1L8MlMmMCCFv+Y
 LkDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=9yta31YHLGTtMTc3kimrMC0tNHi4fPt9ZpXXfvJokHE=;
 b=A2xjjR5kJ+HK2Isz2u6ANFFnyusq7+jR+jlQL42s/Xr0soXwVvOaH4KdGebTVJVKke
 Se/VBx2MlW/5gGi0c5uSLKLaqHpYlqu2CStROT/SMj9BUdhVlwSebY4PnfDnPiZa6A08
 pQMFF9ao8hFPEpIHjPAXpcJ6/T5ZdN73QlM6jZgjdXCIypKUj9893CXbJzTUkjM/Ujz6
 R3678HVlfvYNQJSStsc7VA9Bc0oc9jEv3t3ajNjpLyTeLNljXT0G0/rN3IefKJiHune5
 1LKIgYAOgUZvLSX8r/aRpFQsTPxqSaPGLpKHzdBjLyi13s+oknqTpkIDB8+NmtJ/LsUf
 +ETA==
X-Gm-Message-State: AGi0PuatfBFcIS2OdUStqtOjPQfh40K7CJ+rmg6Gw2IvJXuw57BQQHsK
 Rcnwr9kV+pLDNhEyw+OtHKBJcQ==
X-Google-Smtp-Source: APiQypIxgD2CWLnytM507AIaoaby+Reth9qe8JpsU5Egogw5Wrog+ZS/v8kJIWI3ShghE5eGkNfP8g==
X-Received: by 2002:aa7:8118:: with SMTP id b24mr1011016pfi.321.1587599643609; 
 Wed, 22 Apr 2020 16:54:03 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:ce90:ab18:83b0:619])
 by smtp.gmail.com with ESMTPSA id d20sm360096pjs.12.2020.04.22.16.54.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Apr 2020 16:54:02 -0700 (PDT)
Date: Wed, 22 Apr 2020 16:53:56 -0700
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v12 03/12] scs: add support for stack usage debugging
Message-ID: <20200422235356.GA128062@google.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200421021453.198187-1-samitolvanen@google.com>
 <20200421021453.198187-4-samitolvanen@google.com>
 <20200422174602.GB3121@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200422174602.GB3121@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_165404_912044_4EB47EBA 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Juri Lelli <juri.lelli@redhat.com>,
 kernel-hardening@lists.openwall.com, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Marc Zyngier <maz@kernel.org>,
 Masahiro Yamada <masahiroy@kernel.org>, clang-built-linux@googlegroups.com,
 Ingo Molnar <mingo@redhat.com>, Laura Abbott <labbott@redhat.com>,
 Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>,
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

On Wed, Apr 22, 2020 at 06:46:02PM +0100, Will Deacon wrote:
> > +static void scs_check_usage(struct task_struct *tsk)
> > +{
> > +	static unsigned long highest;
> > +	unsigned long used = __scs_used(tsk);
> > +	unsigned long prev;
> > +	unsigned long curr = highest;
> > +
> > +	while (used > curr) {
> > +		prev = cmpxchg(&highest, curr, used);
> 
> I think this can be cmpxchg_relaxed(), since we don't care about ordering
> here afaict.

Sure, I'll change this in v13. Thanks.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
