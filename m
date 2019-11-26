Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8507E109F8D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 14:51:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=U8Oym8Hu8f+YaVLfqjXzFfXDJRSxqS1jvUtu+SlegoI=; b=Rp/LJPN/lKSByZH4PCBZ7wWw54
	wwHEVqNQn7rzGvqdlTo30hswKKp97ZvEsVDbHysbLqzGKNLyvkbhPWqH8k+wy58muul1aOCrPl6QA
	JYffuKeShL27KzhwL6W2cNFBxeBskQ6A+sPVOGiD/Ie+sFNS4jdwk9nRWCwm5717eHwybJP4ryFNH
	WPW2K3cdj+U53Rp4wUgvSBUIdLXyKdPT6vlIcy0o9MpMTjYZ3SOUgOcVduz78ZLsTiqLHx73LuN5i
	gncJOv0d7qmsV/926qkkFAplacTYQGko/5jng65OmBbAYiuqlI+ETpPc1K2OqiEuRJuK4ZjT6vIlr
	KDBh1rWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZbFI-0001r5-Fq; Tue, 26 Nov 2019 13:51:12 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZbF1-0001GK-Rs
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 13:50:57 +0000
Received: by mail-ed1-x542.google.com with SMTP id t11so16374491eds.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 Nov 2019 05:50:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=foSPG5b4GPTiNos5d2D1hghgoaS4XZmJhqxcKaf1/hY=;
 b=NcZl5aItp0okvqh8ywht5GEbFHQZpvRbSaZteZaOWnTT/+3a+lqpOUwD+y6lvbHc1+
 F2Z2YoeOlFbNXRkr+vLnML3XTByfa2aIyOkcK0G8uLGU4pVD+Hd34aEwxocvQEJ4pLxn
 a2CPLiynWbHRi3CWvIdJxAZs6uVKA+lLqEFVW2uolPSWZMwTxIJKAkFcBR7kz3aNDVzl
 KtHOYj9JRUMMIPasIqtmFYJLCsbKu59xf4XFl1EpCl8z3CSwNu9uZPH+ZC895N42pqwL
 k60YdofUhXq5ooa12uqxPihOwOLMlpzTIeJfF7lkUUyEvsHJ4Th6MvG6MR+6jjmd6M/z
 3JKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=foSPG5b4GPTiNos5d2D1hghgoaS4XZmJhqxcKaf1/hY=;
 b=p7VOhhtHzGzOldsZmQJxxdO3V3hwx+vFVKa2w5ipln9nK85ISogE/Lzg8N3rY65c20
 Ie2hqoO4i32/yIsb3cKQk/sdhYu4ZNq7GcEPSNEIacvSFbnZiSC9Sa8mXVpjKsucGgez
 idpYVFzAPA9eNDlZbJcXhQzv3xOWVLhy/mMfJS+XfETWvXrAbADvkWXsvu1lwjEVfOAa
 UuPyADxCJ1/xyhhmcm20XDcAU1U2h5u5HjiQmfdTRmoidgKtYoTpKq7hQMeR6/JUkWPm
 X3P3RIg/7bsVS7KXbF8upZj/XGbIp1YqoCkylGS3RN39Y67oDKMmOVpWH8NGbSJ/y8kx
 P5rw==
X-Gm-Message-State: APjAAAUdZlOgVaDFiU7z0kPISbrEPnIdbSyW1XFW6ziBkCXjwAuUqdVN
 TdjDmUiQKNU1+/Qz5V5teDfnxFI8PSoBTdfuXOfAfA==
X-Google-Smtp-Source: APXvYqx/73kewLKTGG9V8bY7IVdZRVMPs089swKOBpgQRPlsJfFEGLkEpyKXCfAg+91rOQYdzSAPGhELagFggc29VvU=
X-Received: by 2002:aa7:cc0f:: with SMTP id q15mr24919188edt.71.1574776253232; 
 Tue, 26 Nov 2019 05:50:53 -0800 (PST)
MIME-Version: 1.0
References: <20191122022406.590141-1-pasha.tatashin@soleen.com>
In-Reply-To: <20191122022406.590141-1-pasha.tatashin@soleen.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Tue, 26 Nov 2019 08:50:42 -0500
Message-ID: <CA+CK2bCBS2fKOTmTFm13iv3u5TBPwpoCsYeeP352DVE-gs9GJw@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] Use C inlines for uaccess
To: Pavel Tatashin <pasha.tatashin@soleen.com>,
 James Morris <jmorris@namei.org>, 
 Sasha Levin <sashal@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 steve.capper@arm.com, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marc Zyngier <marc.zyngier@arm.com>, 
 James Morse <james.morse@arm.com>, Vladimir Murzin <vladimir.murzin@arm.com>, 
 Mark Rutland <mark.rutland@arm.com>, Thomas Gleixner <tglx@linutronix.de>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, allison@lohutok.net,
 info@metux.net, 
 alexios.zavras@intel.com, Stefano Stabellini <sstabellini@kernel.org>, 
 boris.ostrovsky@oracle.com, jgross@suse.com, Stefan Agner <stefan@agner.ch>, 
 Masahiro Yamada <yamada.masahiro@socionext.com>, xen-devel@lists.xenproject.org,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Kees Cook <keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_055056_061223_2D94F83D 
X-CRM114-Status: GOOD (  16.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Kees Cook mentioned that it is a good idea to assert the PAN state
during disable/enable. Since, with this change everything is moved to
the same C place, if this hardening is something others also want to
see, I could add it in the next revision of this series. Here are the
options to choose from:
1. Do something similar to what is done in preempt with
CONFIG_PREEMPT_COUNT:  keep a boolean (could be optionally enabled by
a config) that is checked when uaccess_enable()/uaccess_disable() are
called. This way we will always check that state even on processors
with hardware PAN and UAO, however, there is going to be this extra
overhead of checking/storing the variable on userland enter/exits even
on systems which have these marcos set to nothing otherwise.
2. Check only in __uaccess_ttbr0_disable()/__uaccess_ttbr0_enable()
that ttbr0_el1 is in the expected state, or add another boolean  for
this purpose to thread_info.
3. Keep as is, and do not add extra overhead for this hardening.

Thank you,
Pasha

On Thu, Nov 21, 2019 at 9:24 PM Pavel Tatashin
<pasha.tatashin@soleen.com> wrote:
>
> Changelog
> v2:
>         - Addressed Russell King's concern by not adding
>           uaccess_* to ARM.
>         - Removed the accidental change to xtensa
>
> Convert the remaining uaccess_* calls from ASM macros to C inlines.
>
> These patches apply against linux-next. I boot tested ARM64, and
> compile tested ARM changes.
>
> Pavel Tatashin (3):
>   arm/arm64/xen: use C inlines for privcmd_call
>   arm64: remove uaccess_ttbr0 asm macros from cache functions
>   arm64: remove the rest of asm-uaccess.h
>
>  arch/arm/include/asm/assembler.h       |  2 +-
>  arch/arm/include/asm/xen/hypercall.h   | 10 +++++
>  arch/arm/xen/enlighten.c               |  2 +-
>  arch/arm/xen/hypercall.S               |  4 +-
>  arch/arm64/include/asm/asm-uaccess.h   | 60 --------------------------
>  arch/arm64/include/asm/cacheflush.h    | 38 ++++++++++++++--
>  arch/arm64/include/asm/xen/hypercall.h | 28 ++++++++++++
>  arch/arm64/kernel/entry.S              |  6 +--
>  arch/arm64/lib/clear_user.S            |  2 +-
>  arch/arm64/lib/copy_from_user.S        |  2 +-
>  arch/arm64/lib/copy_in_user.S          |  2 +-
>  arch/arm64/lib/copy_to_user.S          |  2 +-
>  arch/arm64/mm/cache.S                  | 31 +++++--------
>  arch/arm64/mm/context.c                | 12 ++++++
>  arch/arm64/mm/flush.c                  |  2 +-
>  arch/arm64/xen/hypercall.S             | 19 +-------
>  include/xen/arm/hypercall.h            | 12 +++---
>  17 files changed, 115 insertions(+), 119 deletions(-)
>  delete mode 100644 arch/arm64/include/asm/asm-uaccess.h
>
> --
> 2.24.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
