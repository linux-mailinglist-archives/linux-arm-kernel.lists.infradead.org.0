Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9C6A1B4C26
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 19:51:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BQ4ygPt7Ga+8M2Kp88XWFaiKqYDJVkF8cUjZNFzpSsw=; b=XKkNJn3slxolc+
	+rUaBNu9eyY2DYlvegYyEnGtUrvUJKg/avscblE94+2AEgD+H1JiRmpybhw+7HAN2jRN774RV3Asm
	VzkmQ1ijIaY0c3p5nvJWff4YGmTbbV31TrxqeRJ3vnXOATuuetfpfIoBpeaQEK+Zs+gqzx+vgErmJ
	hkRfjY8kGWyykaTZUE15CLNE3IgYf5az5240t7bcQp1KOuODUuGSqeR5FsRhSxp0BEkXo41nlOcei
	I6qkTBNmZY40I1q+gS22QgyMohEBdJeO2QTJdiSmZAwyWEokEwd2HEUVRd7wKOkfILjIJJYVRlJuQ
	Ws968BQY2mKgFP2IvUSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRJWo-0000ve-LJ; Wed, 22 Apr 2020 17:51:18 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRJWc-0000uU-Bc
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 17:51:10 +0000
Received: by mail-pf1-x443.google.com with SMTP id f7so1464234pfa.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Apr 2020 10:51:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ZF6h4B8lRkEW+PGdoi5ViWh9NdqvBm+plj3edg+BLxs=;
 b=SbiBDMBjNOJtZvz674h6CaZCEGdmafbK0qSIOSSMTCWnqd5jMXbDXqcct8K8mtTChe
 4BmBYx34rurFf5imZkH6NB9jvIu0M0140rWbXixJsCfD/+8yfkJPCm/IHIsm3ZoRWfwb
 VIyeJQzY1bEBF+t0X5Jqa/2kR8k/V4WASdOqg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ZF6h4B8lRkEW+PGdoi5ViWh9NdqvBm+plj3edg+BLxs=;
 b=JQhxV1KHvBhjJCmCgtzjEn1eVm2tG/7e+qfbpOakKUhe4/lllsc7Fne/6zNys1D1ZR
 RzmZxX2S6bHrTDRJs5jRS/7baXyPL98B9EvHKppKqMzPqajXk/6m92vgjKdFZkCXp82u
 eUN1Rj8ewhAPi3CdYdKggpGNtZh6aKco4s+nhz1tEAS8KSzVDEB/zu+4YnH4QIEn7yDZ
 /txLzIcz7BnJG8bmbSg/+2qsAnmJm0VEzR3hzn2V44ddaPgPODLbCxsSU0ifSgmYQGCZ
 iPW30O23EqVH0zKar8IcTf8r2M3pD2JXTFeXz3wzE7CSnXtXFyHzFcCVnN3QOMd/+oYn
 qqSA==
X-Gm-Message-State: AGi0PuYNfKYBnKpdyyoGVqrd1ZdHUQHby5p7YPWr+kKLUpiOZfMHD9/t
 hKGWqeGXTPrLtXH+IUSXFvAkrA==
X-Google-Smtp-Source: APiQypKgukJRS2MpdwcmV4gR8X/qlLkQhVOoNqLyqZFCT1UTaoEDKt7OxFkygmvQ9SLxUbFYDjP/kg==
X-Received: by 2002:a63:9e54:: with SMTP id r20mr141098pgo.301.1587577864965; 
 Wed, 22 Apr 2020 10:51:04 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id e4sm5917509pjv.30.2020.04.22.10.51.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Apr 2020 10:51:04 -0700 (PDT)
Date: Wed, 22 Apr 2020 10:51:02 -0700
From: Kees Cook <keescook@chromium.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v11 01/12] add support for Clang's Shadow Call Stack (SCS)
Message-ID: <202004221047.3AEAECC1@keescook>
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
X-CRM114-CacheID: sfid-20200422_105106_419868_E3AB1C4B 
X-CRM114-Status: GOOD (  19.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Ingo Molnar <mingo@redhat.com>, Sami Tolvanen <samitolvanen@google.com>,
 Laura Abbott <labbott@redhat.com>, Dave Martin <Dave.Martin@arm.com>,
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
> 
> But more generally, is it really worthwhile to do this clearing at all? Can
> you (or Kees?) provide some justification for it, please? We don't do it
> for anything else, e.g. the pointer authentication keys, so something
> feels amiss here.

It's a hardening step to just reduce the lifetime of a valid address
exposed in memory. In fact, since there is a cache, I think it should be
wiped even in scs_release().

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
