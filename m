Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AC741F46CF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 21:09:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iE7izaj62PhaBSalo9Hl+wXb1+AsVnN0C0G71U63hIc=; b=XxHW+UZDBJrgba
	MOK6QyNXwGs1TVHogwOC4fdlmrtIDh71dY/zKGNk1GNQhDHO1Jb4ABpWqoiGeUmUu9pWQUJkOWxhn
	q1LIFlPdAh64vxW6X4KolUSfR52yDtITGih8EmCZkdR0ZLtuY58u7A/lXv3mvO+MiXLZTR4dWXsuc
	CxtNuSmxEXvRZXigXOf4pSwbIvmtIu9ZJXqduQJcshZETFx1QbBFQSHQ5f2pssLc7pmz9d0p/cjTv
	mOczoboq97pQcx3ltAYhFLoMN8zwYc2POEuUagNrdGucuLPRLEzhPDX+jVcyp+/GwI6wryEUPL/ve
	G/JyvBJ+fiY1EFsZEG5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jijcw-0006rW-Np; Tue, 09 Jun 2020 19:09:38 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jijco-0006r5-7W
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 19:09:31 +0000
Received: by mail-pl1-x641.google.com with SMTP id bh7so8395529plb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 12:09:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=HQ56nm4mooZrZLgVMVr3lZPOBHVENmtQeTfjkfw/YJA=;
 b=jnaQZ8MEekRFeh3Jik9anJ+/Px5C4alE3zNqedi1bqR8jiPLxE/33C7/RiybjLNOsq
 AmQ9rdfd3Ze4Ax/HonsNV1UFkPQEvOwezedHn5AF5Jnzkw2BlAW1K5ep2YZIi8eWslnH
 VFv1//pXv1ACBo1/iRJVPWdY32ebVtXojWK9Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=HQ56nm4mooZrZLgVMVr3lZPOBHVENmtQeTfjkfw/YJA=;
 b=PgauC47qkj3M8GekutmkaO9PyaNDE5zH6n+loDMVepggnDfKPWHEYawPdhikXi4hLP
 0nlCCgyoADqFCCc83dWZe2wkXcs6J0wNxd9MFj4jz9z4FdKovxz9oKDhZKYJ4dffdYgr
 Y1HiPu1/AeY6uFlTytF0/uK62bXj2xVSXHjHuiQJzaLiIqBfa/5TftFQ1STbFjJDvJBY
 oXa08PiynF9/7jS14rbldFtaMIZVvaPvxyTkcFD45EUskGPTPbUo8BOti4oAdb5ibdT5
 VNT1tt4Z7viWe32WsldivGCIp1s8ewADv+buwcF/cOFc+jQ6pG4XZZOtx+1rTpm3Nlog
 038g==
X-Gm-Message-State: AOAM532gn2SOCcYWPpdeURXeFKwsQeP0FXU2po0IZZr0fm2fACYTD1vL
 JHp1eE9RUx9Iqu8UcvzexemCDQ==
X-Google-Smtp-Source: ABdhPJyKqh5iCm5EpXlVTd6GWynqUSgX0FSb3wwJXSw5Kt+fNblO4xqG/eduJstaxdLXws8XUiWjng==
X-Received: by 2002:a17:902:7896:: with SMTP id
 q22mr1188647pll.237.1591729769700; 
 Tue, 09 Jun 2020 12:09:29 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id r8sm10830771pfq.16.2020.06.09.12.09.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jun 2020 12:09:28 -0700 (PDT)
Date: Tue, 9 Jun 2020 12:09:27 -0700
From: Kees Cook <keescook@chromium.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 5/5] gcc-plugins/stackleak: Don't instrument
 vgettimeofday.c in arm64 VDSO
Message-ID: <202006091149.6C78419@keescook>
References: <20200604134957.505389-1-alex.popov@linux.com>
 <20200604134957.505389-6-alex.popov@linux.com>
 <20200604135806.GA3170@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200604135806.GA3170@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_120930_285828_82D86B43 
X-CRM114-Status: GOOD (  18.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Sven Schnelle <svens@stackframe.org>, Naohiro Aota <naohiro.aota@wdc.com>,
 Masahiro Yamada <masahiroy@kernel.org>, x86@kernel.org,
 Emese Revfy <re.emese@gmail.com>, Iurii Zaikin <yzaikin@google.com>,
 PaX Team <pageexec@freemail.hu>, Laura Abbott <labbott@redhat.com>,
 Mathias Krause <minipli@googlemail.com>,
 Alexander Popov <alex.popov@linux.com>, linux-kbuild@vger.kernel.org,
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

On Thu, Jun 04, 2020 at 02:58:06PM +0100, Will Deacon wrote:
> On Thu, Jun 04, 2020 at 04:49:57PM +0300, Alexander Popov wrote:
> > Don't try instrumenting functions in arch/arm64/kernel/vdso/vgettimeofday.c.
> > Otherwise that can cause issues if the cleanup pass of stackleak gcc plugin
> > is disabled.
> > 
> > Signed-off-by: Alexander Popov <alex.popov@linux.com>
> > ---
> >  arch/arm64/kernel/vdso/Makefile | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> > 
> > diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
> > index 3862cad2410c..9b84cafbd2da 100644
> > --- a/arch/arm64/kernel/vdso/Makefile
> > +++ b/arch/arm64/kernel/vdso/Makefile
> > @@ -32,7 +32,8 @@ UBSAN_SANITIZE			:= n
> >  OBJECT_FILES_NON_STANDARD	:= y
> >  KCOV_INSTRUMENT			:= n
> >  
> > -CFLAGS_vgettimeofday.o = -O2 -mcmodel=tiny -fasynchronous-unwind-tables
> > +CFLAGS_vgettimeofday.o = -O2 -mcmodel=tiny -fasynchronous-unwind-tables \
> > +		$(DISABLE_STACKLEAK_PLUGIN)
> 
> I can pick this one up via arm64, thanks. Are there any other plugins we
> should be wary of? It looks like x86 filters out $(GCC_PLUGINS_CFLAGS)
> when building the vDSO.

I didn't realize/remember that arm64 retained the kernel build flags for
vDSO builds. (I'm used to x86 throwing all its flags away for its vDSO.)

How does 32-bit ARM do its vDSO?

My quick run-through on plugins:

arm_ssp_per_task_plugin.c
	32-bit ARM only (but likely needs disabling for 32-bit ARM vDSO?)

cyc_complexity_plugin.c
	compile-time reporting only

latent_entropy_plugin.c
	this shouldn't get triggered for the vDSO (no __latent_entropy
	nor __init attributes in vDSO), but perhaps explicitly disabling
	it would be a sensible thing to do, just for robustness?

randomize_layout_plugin.c
	this shouldn't get triggered (again, lacking attributes), but
	should likely be disabled too.

sancov_plugin.c
	This should be tracking the KCOV directly (see
	scripts/Makefile.kcov), which is already disabled here.

structleak_plugin.c
	This should be fine in the vDSO, but there's not security
	boundary here, so it wouldn't be important to KEEP it enabled.

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
