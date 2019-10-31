Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D52DEB632
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 18:35:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+HmClGK6UVftdYqTeYJ1AyT3ugoTH0tevgABTWwzPYk=; b=NTV2AG7rPmKJ+b
	hx7LOCsCY3AH6CWcIndQIArRnU6zcjHACdw0hnlJChAJCIIRWkSu64ni9cOpM3amtLhBxy5cdpM8r
	aLHC4oBuvcPgue8P2GJRBqgR2tPShatVyPuUW5pHstkd7HVILSTpajgc0eOC5nEZO7qa13sP30Eqo
	3np+394iQMrieqAZDB2Zy2ht7BMRYiHUCHl1/o4Ysm1G65abnIq0Ri2G4Cppap5SDpjCxVoa6lBsF
	frFHW3gTi5MZ5vVYp+jGBXYbikQiVctYXronLQJHPEORk5ysjmkD1aIzDS3k+1B/wZkW1JQsIjI3k
	8DyhcWpmtEREBR/794EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQELr-0008M4-M3; Thu, 31 Oct 2019 17:35:15 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQELi-0007wn-1K
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 17:35:07 +0000
Received: by mail-pg1-x544.google.com with SMTP id j30so1003232pgn.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 10:35:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6vxne2J2U+zueRlGB+uihx88K5obGcz7JfVVNIfE6MI=;
 b=Zkd+dczqhPUCvaVxq3B8963P3V8Y9R+M6ldUJWVSSAWMYKxKqeHtnfr2PdTP/xQu2b
 M24kRR6f+BemlR/4Y0IvK/z1JsB3EOLUV7taiH84F2Ii6S/051a5P0kFaw58bDYFmRYl
 aNg+ivt2iWFLU8ljqbd20wQiN/S62lqFSuUkwS/f02KuHQnSP26/xslqjUm0PxnUl/nM
 qI0N36UakRSXzfSUr6wSxS+I2jAHofRSRz2rGKpUptLXuoFXn9q5tA4/x48cLuSowzWM
 m7sGquCCjWRdIn+Z2H+0+h0T7us+31n+XfF8IpapK82l/iCdOiiKW9oFk4wdTg6QArPU
 kr1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6vxne2J2U+zueRlGB+uihx88K5obGcz7JfVVNIfE6MI=;
 b=QgAqrYmcARLKfIJZF1ix89Yl7jAMLwf355O0jEfF3DiXKSVexIOFZ4eGlEcJf2OlHH
 /6zqBpn6g8AeiT4XNBrRQW59WI+89TBg1mtDS4fiMJlGRCgnfY0ElHs/VzTD4HV97d/W
 LaAkLfmJl4h5VgQ8UKu5cFfp3BUvaZuCpKS6U9Rd4o8Z/6FHiI8kvJaMUobMaoUj82Q6
 JShFXvjKxdAOQmr6srA2QP/7yyWlhAAVBBvLvCRFVzAZNoiIZItsM23kpZ7LNSsnWZxr
 fuOKe8NJMwo+Jh61M9YG5GmM6fLekAO1PDI2ROP87UqTRliQsJpbSR5AAahZM873vq3w
 PsdQ==
X-Gm-Message-State: APjAAAWBfD2J+yKWxaRNwJ8faMl3i11sahttY/3+gNhTXxotm0fWLZuv
 Zt2p13+B5UpZbhhuNdd4RXtpbgUF5dlDJjHbbNRxAg==
X-Google-Smtp-Source: APXvYqz/lhCOKKkE7+XVjZtp5lyRajdclaBkyDSosLmDck7GxCYMMFfzkg348/A5b/zQnTjld0uu3Efy3NYsSqb59C8=
X-Received: by 2002:a17:90a:1f4b:: with SMTP id
 y11mr8889337pjy.123.1572543304777; 
 Thu, 31 Oct 2019 10:35:04 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com>
 <20191031164637.48901-14-samitolvanen@google.com>
 <CAKwvOd=kcPS1CU=AUjOPr7SAipPFhs-v_mXi=AbqW5Vp9XUaiw@mail.gmail.com>
 <CABCJKudb2_OH5CRFm64rxv-VVnuOrO-ZOrXRHg8hR98Vj+BzVw@mail.gmail.com>
In-Reply-To: <CABCJKudb2_OH5CRFm64rxv-VVnuOrO-ZOrXRHg8hR98Vj+BzVw@mail.gmail.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Thu, 31 Oct 2019 10:34:53 -0700
Message-ID: <CAKwvOd=dO2QjiRWegjCtnMmVguaJ2YHacJRP3SbVVy9jhx-BWw@mail.gmail.com>
Subject: Re: [PATCH v3 13/17] arm64: preserve x18 when CPU is suspended
To: Sami Tolvanen <samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_103506_121598_CEB73155 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 10:27 AM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> On Thu, Oct 31, 2019 at 10:18 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> > > +#ifdef CONFIG_SHADOW_CALL_STACK
> > > +       ldr     x18, [x0, #96]
> > > +       str     xzr, [x0, #96]
> >
> > How come we zero out x0+#96, but not for other offsets? Is this str necessary?
>
> It clears the shadow stack pointer from the sleep state buffer, which
> is not strictly speaking necessary, but leaves one fewer place to find
> it.

That sounds like a good idea.  Consider adding comments or to the
commit message so that the str doesn't get removed accidentally in the
future.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
