Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C4061F4669
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 20:39:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=huXqPH6tXdvdWZjhmt4JMIHzQKooN1M9P2xtXWwy3wg=; b=RnVf32bEuo9bvV
	uZXZA8seq8Xb/i5jbrPVNtvTJ4sjvr5xKIEa+xe0ArrxTmcyAyaXk/PXQ9KhalU2MJg33CeBKIHo6
	pyyyrvvfYTcR+DtD9mQ/cnJRJZoV9noh8rexPYAJloVzbNn2hZtP9QNdStj3PYuX+TfRztZrheFvd
	ROsNT6XB8YWoA98nmmQcxj4rfxataKCzoVIW0G72b0ichR5a8Cm5/YPSllVF+uxY28cx1vFEiwOx3
	d5btZbQvpIDmr5SlXyGDo7ih0SrojPF7e51lfto28M00TMUCujTz7rgGsULpH6K8tYxg4yKBI+wMz
	19N7f0YG1yaSebhJZ4Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jij9f-0003jE-0Z; Tue, 09 Jun 2020 18:39:23 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jij9W-0003iJ-Ev
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 18:39:16 +0000
Received: by mail-pj1-x1041.google.com with SMTP id a45so1254385pje.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 11:39:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=oUUlKxLjSlKhbNUJ+/fS04FbBkWKQBhciBLdETtik1Q=;
 b=muEdWnYfglQpo6mlvoIfHWOj2y/b2HPEYx/I/P/+afdRB9/f6IdVu5VnGI/3lcvXLS
 I9FafGnjLFcRGiW36DCgnPzai2sfXVCBdgJRXMrqAW3e7b14inpyi/jwHBpjdNDnVDY1
 GBTg1KJ1wEa1aW+kWXIDPsZzAOyVi1GSGs3y4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=oUUlKxLjSlKhbNUJ+/fS04FbBkWKQBhciBLdETtik1Q=;
 b=AUyXCzSd8avroT+r3umGQ0m/EkWWSwFRYSgRga5S8fr7aFZhzc7cotDmvB8BTKlEzK
 aZg+U1IpXXFtoFYZ09JTfnky86OHHaP10Xm7kP4Aa0HSrKhOa1s9EaMZJ/rNj/Ly3IVB
 RfPUOu9nTwXLIu5G2B40+wdrLNdzpvrd+o0HY+f7zIbwomgaLnreyxFJDwncadk1RyLM
 L+b4AyHoOnwkbIMdtDB/+iop9AFPB1iOvsaPng5kHX8HPfrXsxf6aF1NoNaOrgfmYxyh
 /PxD9ygTieUyriC+3LcANtTdBK6VNTCw4nTbLZ+kjEtTVtBequ2mYXTR9XXEipwmywrT
 DV+A==
X-Gm-Message-State: AOAM533d5CJcagqUICjfybAyv1UCzCRjekxtfw9yB3HE2KmCkqb1UpLj
 Zf33GCGI/J5uEgO3ySHecxwEdw==
X-Google-Smtp-Source: ABdhPJwtO8ctv+axOrlGnu6BhxO/Dmuz6uhavpkS9vfR+Ml1dYIGadDqm0xyQLuzwR4BmnGnulrmGw==
X-Received: by 2002:a17:90b:4d10:: with SMTP id
 mw16mr6182260pjb.143.1591727953613; 
 Tue, 09 Jun 2020 11:39:13 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id u14sm11238034pfk.211.2020.06.09.11.39.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jun 2020 11:39:12 -0700 (PDT)
Date: Tue, 9 Jun 2020 11:39:11 -0700
From: Kees Cook <keescook@chromium.org>
To: Alexander Popov <alex.popov@linux.com>
Subject: Re: [PATCH 1/5] gcc-plugins/stackleak: Exclude alloca() from the
 instrumentation logic
Message-ID: <202006091133.412F0E89@keescook>
References: <20200604134957.505389-1-alex.popov@linux.com>
 <20200604134957.505389-2-alex.popov@linux.com>
 <CAG48ez05JOvqzYGr3PvyQGwFURspFWvNvf-b8Y613PX0biug8w@mail.gmail.com>
 <70319f78-2c7c-8141-d751-07f28203db7c@linux.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <70319f78-2c7c-8141-d751-07f28203db7c@linux.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_113914_522825_38875792 
X-CRM114-Status: GOOD (  20.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
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
Cc: the arch/x86 maintainers <x86@kernel.org>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Elena Reshetova <elena.reshetova@intel.com>,
 Naohiro Aota <naohiro.aota@wdc.com>, Sven Schnelle <svens@stackframe.org>,
 Masahiro Yamada <masahiroy@kernel.org>, linux-kbuild@vger.kernel.org,
 Emese Revfy <re.emese@gmail.com>, PaX Team <pageexec@freemail.hu>,
 Iurii Zaikin <yzaikin@google.com>, Mathias Krause <minipli@googlemail.com>,
 Jann Horn <jannh@google.com>, Alexander Monakov <amonakov@ispras.ru>,
 Brad Spengler <spender@grsecurity.net>, Thomas Gleixner <tglx@linutronix.de>,
 Peter Collingbourne <pcc@google.com>, Laura Abbott <labbott@redhat.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, notify@kernel.org,
 Florian Weimer <fweimer@redhat.com>, gcc@gcc.gnu.org,
 Michal Marek <michal.lkml@markovi.net>,
 kernel list <linux-kernel@vger.kernel.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Luis Chamberlain <mcgrof@kernel.org>, Jessica Yu <jeyu@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Thiago Jung Bauermann <bauerman@linux.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 04, 2020 at 06:23:38PM +0300, Alexander Popov wrote:
> On 04.06.2020 17:01, Jann Horn wrote:
> > On Thu, Jun 4, 2020 at 3:51 PM Alexander Popov <alex.popov@linux.com> wrote:
> >> Some time ago Variable Length Arrays (VLA) were removed from the kernel.
> >> The kernel is built with '-Wvla'. Let's exclude alloca() from the
> >> instrumentation logic and make it simpler. The build-time assertion
> >> against alloca() is added instead.
> > [...]
> >> +                       /* Variable Length Arrays are forbidden in the kernel */
> >> +                       gcc_assert(!is_alloca(stmt));
> > 
> > There is a patch series from Elena and Kees on the kernel-hardening
> > list that deliberately uses __builtin_alloca() in the syscall entry
> > path to randomize the stack pointer per-syscall - see
> > <https://lore.kernel.org/kernel-hardening/20200406231606.37619-4-keescook@chromium.org/>.
> 
> Thanks, Jann.
> 
> At first glance, leaving alloca() handling in stackleak instrumentation logic
> would allow to integrate stackleak and this version of random_kstack_offset.

Right, it seems there would be a need for this coverage to remain,
otherwise the depth of stack erasure might be incorrect.

It doesn't seem like the other patches strictly depend on alloca()
support being removed, though?

> Kees, Elena, did you try random_kstack_offset with upstream stackleak?

I didn't try that combination yet, no. It seemed there would likely
still be further discussion about the offset series first (though the
thread has been silent -- I'll rebase and resend it after rc2).

> It looks to me that without stackleak erasing random_kstack_offset can be
> weaker. I mean, if next syscall has a bigger stack randomization gap, the data
> on thread stack from the previous syscall is not overwritten and can be used. Am
> I right?

That's correct. I think the combination is needed, but I don't think
they need to be strictly tied together.

> Another aspect: CONFIG_STACKLEAK_METRICS can be used for guessing kernel stack
> offset, which is bad. It should be disabled if random_kstack_offset is on.

Agreed.

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
