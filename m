Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC9C556EDA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 18:33:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cpQPQ+tIpC1HJ9CH9nMbbpLX3DPhoAbrx0lYkqN6xAw=; b=CPrnnq5vvCrd5c
	GPvzs+oNleI+j732hFIShr1GVC5mgYu0NY8Dj8LgGTqBWnaTPeiA069BRkQG6eRrdKPwPCynMmV+n
	LueDFk82BNsmYMXxmKZTYu6uDs7xjLyq8ZziCntXOwCMOx7lNhV336gAZxJFL4m3A/3btS47Kxe3k
	pdsUr4hzfUoaQc9vcfxPzb4qIVAK8d+0KJtUCFxwcmSEcx/iqOMbs65XChSi2tonaQQqupHjHhg2o
	SpxpR241jTyLMeyIwiBmYslZGsVtFNKcEYvEOJBO8uACfRE7KIXUXoes3LzT4W5I0ltqEqtxSQolF
	91yOboi79k+uQxCQ6b4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgArB-0005I2-My; Wed, 26 Jun 2019 16:33:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgApj-0004kH-29
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 16:31:46 +0000
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
 [209.85.128.49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 167C3217F9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 16:31:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561566701;
 bh=oU6jaBrSnygplxLUyMyEroKctG9J2Ei1tNH+gSDLVAk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=QgWp2Kq0om1VdQ9V/HwshKaxvMVEWZtAeUAw6z7hc0QFNz6whhSWt/PwQ0JGsE3PZ
 +seWqralH37FOI19PNx5AAKRJCdn/h7Umb8/kZtWR0QiWcUTx8j31mA0/W/+UCzOkE
 FS/1Ksn3MM2uhGyacJfoGf9ERdF+PN9RwHfbihTs=
Received: by mail-wm1-f49.google.com with SMTP id w9so5036502wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 09:31:41 -0700 (PDT)
X-Gm-Message-State: APjAAAXz9ndi1gEZmdxwZMuSPutv6B0AxBQl7li2JHiTZSnPI0fwHdp+
 px6TGHjispkY9ccyZfaW6Wh1IIoKdjryNRHMjmRDgA==
X-Google-Smtp-Source: APXvYqx/2ylJRZBTN4py1K7MyVeOZWZ6QdrhNVtJzeb0bKAaChEP0NR5KWyGfaLK5cttoijS9AYPMt8eZnUj0uGv15Q=
X-Received: by 2002:a7b:c450:: with SMTP id l16mr3515337wmi.0.1561566697863;
 Wed, 26 Jun 2019 09:31:37 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.DEB.2.21.1906240142000.32342@nanos.tec.linutronix.de>
 <tip-e70980312a946a56173843cbc0104b3b0e57a0c7@git.kernel.org>
In-Reply-To: <tip-e70980312a946a56173843cbc0104b3b0e57a0c7@git.kernel.org>
From: Andy Lutomirski <luto@kernel.org>
Date: Wed, 26 Jun 2019 09:31:26 -0700
X-Gmail-Original-Message-ID: <CALCETrWaUEnnTiyh-xDoywji1GdfoeoSmy635MYcXMe9CgYkCA@mail.gmail.com>
Message-ID: <CALCETrWaUEnnTiyh-xDoywji1GdfoeoSmy635MYcXMe9CgYkCA@mail.gmail.com>
Subject: Re: [tip:timers/vdso] MAINTAINERS: Add entry for the generic VDSO
 library
To: "H. Peter Anvin" <hpa@zytor.com>, Andrew Lutomirski <luto@kernel.org>,
 Mark Salyzyn <salyzyn@android.com>, 
 Dmitry Safonov <0x7f454c46@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
 Catalin Marinas <catalin.marinas@arm.com>, Ingo Molnar <mingo@kernel.org>, 
 Andrey Vagin <avagin@openvz.org>, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Dmitry Safonov <dima@arista.com>, 
 Peter Collingbourne <pcc@google.com>, Will Deacon <will.deacon@arm.com>,
 Paul Burton <paul.burton@mips.com>, 
 Michael Kelley <mikelley@microsoft.com>, Shuah Khan <shuah@kernel.org>, 
 Shijith Thotton <sthotton@marvell.com>, Sasha Levin <sashal@kernel.org>, 
 Andre Przywara <andre.przywara@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Huw Davies <huw@codeweavers.com>, Ralf Baechle <ralf@linux-mips.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Russell King <linux@armlinux.org.uk>, LKML <linux-kernel@vger.kernel.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
 Thomas Gleixner <tglx@linutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_093144_480029_1E001DC1 
X-CRM114-Status: GOOD (  16.11  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-tip-commits@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 5:37 AM tip-bot for Thomas Gleixner
<tipbot@zytor.com> wrote:
>
> Commit-ID:  e70980312a946a56173843cbc0104b3b0e57a0c7
> Gitweb:     https://git.kernel.org/tip/e70980312a946a56173843cbc0104b3b0e57a0c7
> Author:     Thomas Gleixner <tglx@linutronix.de>
> AuthorDate: Mon, 24 Jun 2019 02:34:24 +0200
> Committer:  Thomas Gleixner <tglx@linutronix.de>
> CommitDate: Wed, 26 Jun 2019 07:28:11 +0200
>
> MAINTAINERS: Add entry for the generic VDSO library
>
> Assign the following folks in alphabetic order:
>
>  - Andy for being the VDSO wizard of x86 and in general. He's also the
>    performance monitor of choice and the code in the generic library is
>    heavily influenced by his previous x86 VDSO work.
>
>  - Thomas for being the dude who has to deal with any form of time(r)
>    nonsense anyway
>
>  - Vincenzo for being the poor sod who went through all the different
>    architecture implementations in order to unify them. A lot of knowledge
>    gained from VDSO implementation details to the intricacies of taming the
>    build system.
>
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>
> Cc: linux-arch@vger.kernel.org
> Cc: LAK <linux-arm-kernel@lists.infradead.org>
> Cc: linux-mips@vger.kernel.org
> Cc: linux-kselftest@vger.kernel.org
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will.deacon@arm.com>
> Cc: Arnd Bergmann <arnd@arndb.de>
> Cc: Russell King <linux@armlinux.org.uk>
> Cc: Ralf Baechle <ralf@linux-mips.org>
> Cc: Paul Burton <paul.burton@mips.com>
> Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
> Cc: Mark Salyzyn <salyzyn@android.com>
> Cc: Peter Collingbourne <pcc@google.com>
> Cc: Shuah Khan <shuah@kernel.org>
> Cc: Dmitry Safonov <0x7f454c46@gmail.com>
> Cc: Rasmus Villemoes <linux@rasmusvillemoes.dk>
> Cc: Huw Davies <huw@codeweavers.com>
> Cc: Shijith Thotton <sthotton@marvell.com>
> Cc: Andre Przywara <andre.przywara@arm.com>
> Cc: Dmitry Safonov <dima@arista.com>
> Cc: Andrei Vagin <avagin@openvz.org>
> Cc: Linus Torvalds <torvalds@linux-foundation.org>
> Cc: Andy Lutomirski <luto@kernel.org>
> Cc: Michael Kelley <mikelley@microsoft.com>
> Cc: Sasha Levin <sashal@kernel.org>
> Link: https://lkml.kernel.org/r/alpine.DEB.2.21.1906240142000.32342@nanos.tec.linutronix.de
>
> ---
>  MAINTAINERS | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index d0ed735994a5..13ece5479167 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -6664,6 +6664,18 @@ L:       kvm@vger.kernel.org
>  S:     Supported
>  F:     drivers/uio/uio_pci_generic.c
>
> +GENERIC VDSO LIBRARY:
> +M:     Andy Lutomirksi <luto@kernel.org>

s/ksi/ski :)

Yes, it's a mouthful.

--Andy

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
