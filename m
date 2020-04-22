Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FB401B5105
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 01:52:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J0O7k4nzUKRvuatgnrToyqqRhLTmafw+TzbuBU2gu08=; b=YqZLz7HknxVq0l
	AgD0WtVC9QEZ4m2pPungoyAbs9d+XcmXd3e3/fJj9NPTKeErhyGgG6SL4Fm5FjTJ1f8VdIEOzfrno
	WfsIaxEYHiLmAOz4eWLFHAzLcHU10Qk4cSlo1EGTV1UMFJHnMzcFwPdsGsJz5dTZuGtiFzr8Kw6DR
	mPtWnCL/NPh/T8Ihguqy1PD9jJwzUcQ48ahj6tvrDK/dCix4mBnqzB4SRfEJvSD2uhgUQc7TnkBVM
	An8uYgICgy56tr4JfU2n8LCi22dtmCTJ8inZRgcDT/ZxaIeguE0tPSE5uGIgjnRA0HRspg747sdnf
	QeT0jIrTFK0un5jQElrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRP9n-0002yM-TJ; Wed, 22 Apr 2020 23:51:56 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRP9d-0002xU-BN
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 23:51:46 +0000
Received: by mail-pl1-x643.google.com with SMTP id t4so1581597plq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Apr 2020 16:51:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=QgMVZz3XwLkExErntao4WLiI0VS/DsZOFmHjZC/Mbow=;
 b=b1xFmE2sV5VW4aIlU/whxS/awWX9vekQ0Ico8eQgciMKy7zuNVk5XtOpg39bOTWcKs
 gmE9IbR9W35bFsypZV4vL3HSs5YmoSf5fN8616fkMWbslDLfiUYdepcmXnGAGCT9UBow
 tcegupNB12V2vId+LwrLQi0D9fZMOT/3eaM73mrtZdPpGBHCbmDq0L+M54abVOxMotXA
 LxFAdJGBFIgJQJDG8i+fcobu58I88gq4sWg+B8YpHYN1E99k4GEnsYVLt9Kz7c/v8YvO
 1Ag5ItZ7vliNh16MSWpcpImUWRG2bw/nM3eiMhbI7Z3GgjX0L1CaNHTEcHJUd8nG/PfW
 SEpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=QgMVZz3XwLkExErntao4WLiI0VS/DsZOFmHjZC/Mbow=;
 b=jp7tHZEMtpR1yuh8Tp2FXppHPIRhTDaRoeN54k+18u1HKQM5wIFRh3uXJu14Li+GBz
 orYFYnNrf/J+CS1/eKQIBiNCiow1dKoGba+C2ihcWYJiSG4eP1Fc9OO2r9xHjhQCwcCC
 gdy3V7zhRdCUM8ya8H+WUNdphsnE112G7zkpZcVveHd8O7OeeaJLwlKFGArHLoyPIVRj
 oX5p+dMK0H5pbk5ZII4Pd9Giv0k0MXYZ4OsxCwAJTfScLagL35yeVzpJiipIZzgYd9xq
 EnzOPws2133NrQFQ3YGu//yfzqjevfEVTetRfylSYWG0k+t57UBWfv74zGLjZ4brkyhX
 /uGQ==
X-Gm-Message-State: AGi0PubXLXAkr5cSOpJ1btOJfjuTXycYS/nsswuySHaEPhkfWFxe7dWO
 SgpTjlKukU2quCMgGJ4OH97Uqg==
X-Google-Smtp-Source: APiQypKd8hMC33L8Wj5RKdsZ70cGbYI15nshdaNSvjex+B8eCij/WOOT64Lb2ePxq5TYoHX5bEGXjw==
X-Received: by 2002:a17:902:b097:: with SMTP id
 p23mr1161570plr.195.1587599501845; 
 Wed, 22 Apr 2020 16:51:41 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:ce90:ab18:83b0:619])
 by smtp.gmail.com with ESMTPSA id h11sm621261pfo.120.2020.04.22.16.51.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Apr 2020 16:51:40 -0700 (PDT)
Date: Wed, 22 Apr 2020 16:51:34 -0700
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v11 01/12] add support for Clang's Shadow Call Stack (SCS)
Message-ID: <20200422235134.GA211149@google.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200416161245.148813-1-samitolvanen@google.com>
 <20200416161245.148813-2-samitolvanen@google.com>
 <20200420171727.GB24386@willie-the-truck>
 <20200420211830.GA5081@google.com>
 <20200422173938.GA3069@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200422173938.GA3069@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_165145_413939_9050925C 
X-CRM114-Status: GOOD (  20.89  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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

On Wed, Apr 22, 2020 at 06:39:47PM +0100, Will Deacon wrote:
> On Mon, Apr 20, 2020 at 02:18:30PM -0700, Sami Tolvanen wrote:
> > On Mon, Apr 20, 2020 at 06:17:28PM +0100, Will Deacon wrote:
> > > > +	 * The shadow call stack is aligned to SCS_SIZE, and grows
> > > > +	 * upwards, so we can mask out the low bits to extract the base
> > > > +	 * when the task is not running.
> > > > +	 */
> > > > +	return (void *)((unsigned long)task_scs(tsk) & ~(SCS_SIZE - 1));
> > > 
> > > Could we avoid forcing this alignment it we stored the SCS pointer as a
> > > (base,offset) pair instead? That might be friendlier on the allocations
> > > later on.
> > 
> > The idea is to avoid storing the current task's shadow stack address in
> > memory, which is why I would rather not store the base address either.
> 
> What I mean is that, instead of storing the current shadow stack pointer,
> we instead store a base and an offset. We can still clear the base, as you
> do with the pointer today, and I don't see that the offset is useful to
> an attacker on its own.

I see what you mean. However, even if we store the base address +
the offset, we still need aligned allocation if we want to clear
the address. This would basically just move __scs_base() logic to
cpu_switch_to() / scs_save().

> But more generally, is it really worthwhile to do this clearing at all? Can
> you (or Kees?) provide some justification for it, please? We don't do it
> for anything else, e.g. the pointer authentication keys, so something
> feels amiss here.

Like Kees pointed out, this makes it slightly harder to locate the
current task's shadow stack pointer. I realize there are other useful
targets in thread_info, but we would rather not make this any easier
than necessary. Is your primary concern here the cost of doing this,
or just that it doesn't sufficiently improve security?

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
