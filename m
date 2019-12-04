Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E683112CEF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 14:52:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1VV4I5Nsv60B0xbBr4DWn2WLyvqkP8ABdPU1SwxPvSs=; b=WBH/i+YjP6a8j+
	bB6o9G3VTboN3/P+PA53hMR8vt43HcFq4zLYalevSJ2vqXM5zWCDZ8LQsu3b1ctbsboaIjxTPL7sL
	vaRxE5pJgXMcD7FrWjZcXtGPJAt79y1S6Bh5nOsexQg234UpELLStY2azr2clNl4oO9opFoln7YyG
	lXTdu0iigscmzLosPIQFvkwmBjD1W19XaPjkx1BHiy6fvFc3rtk5kt5rJrEAwQS32gKKj/h26fXvN
	WhrVrqCqlcLc7uZJBxstu2KAUbT3pIPlTaICeKdwe+EzbiqycSfO2DYi50e3RB7e2w55fPfsTskq9
	rrmAvGhW2+D91dcllMQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icV4c-0007YW-Oa; Wed, 04 Dec 2019 13:52:10 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icV4V-0007Y5-56
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 13:52:04 +0000
Received: by mail-pf1-x444.google.com with SMTP id q8so3683070pfh.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 05:52:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=TbJ9lT2HAjMyDE1SH6CunT8N4kMbxtVJWep3/Ofx1Bc=;
 b=iQxO6lcpt1bJ5gN8Y4kXPU0dr1c6ATyxgAG3EI+vfRJjoJwHwrwXLUiEJaKIQTeWiJ
 F3UYh0AiufKF1rKIvNQHINl9+iu83Ghb6/HciDylFzE+lqA/Y05uht95p5Ml9dMsmiBW
 LmVhvC1WqxEHyDikQtRY5aa/DLzmEzUGP3WajcYRhfSuSWiCmhqQJofWgjUUxhimvZSn
 izg4tZ21p1IIh8YQpHrKl/rgkij20CilbOG/R4QdRrqb9CPVgj9rh5hJ4dp5NTjNgINr
 9RXoUsxYqHRo0g6+BYKJsFgzQZChPUtfJBJ/0BM1AuCvPjydaTIWFhouEQ4evipa6UdD
 kFyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=TbJ9lT2HAjMyDE1SH6CunT8N4kMbxtVJWep3/Ofx1Bc=;
 b=SGk7hwKMwNz/UHxDEcCgyEV3Z4sghyNBd/tYu9cGa0s+3fpeOOllir64eMUaTBIZpT
 Uc90qGSx3P0myUGUL7jvxoAdgema2OCcmyWGc+YREWar5muMSyZLwL9NflMfYjG35+M/
 xC/Sg5ADYaE7mDrzSpp/bw1rFSWnqXHSPZ+OqAtfJ1fg6X0rFl4tntz0UOnLVggE2rYw
 SCi64XEaqzrI7QJqg0Yd/bqCFqJnbG1WG2P0GNyvqjfohr4FyM7qxggJbbYHKsQfm0DM
 uvf7A956ZVgLt3lx/ZXOUgZLGxBbMHcReT8/19SnoIiWXBms/wN8a9UG+ir65sXbyfG3
 DmGw==
X-Gm-Message-State: APjAAAV4KtDGs5x2b6WS+EjsSL+o4uz0lUuLkPvQnRpWU32FKigMUnsu
 7XMNxmm3l0JtBVYhsBQfF/E=
X-Google-Smtp-Source: APXvYqyoPrSep/q/DUOv+zINoePEiuZB7UyBS8bmOBLu+0j65jHVO2r6iBhfr9RUckMGjFizXhOFLg==
X-Received: by 2002:a63:66c6:: with SMTP id a189mr3327547pgc.401.1575467521937; 
 Wed, 04 Dec 2019 05:52:01 -0800 (PST)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id in19sm6642985pjb.11.2019.12.04.05.52.00
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 04 Dec 2019 05:52:01 -0800 (PST)
Date: Wed, 4 Dec 2019 05:51:59 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v7 16/25] arm: Add support for generic vDSO (causing crash)
Message-ID: <20191204135159.GA7210@roeck-us.net>
References: <20190621095252.32307-1-vincenzo.frascino@arm.com>
 <20190621095252.32307-17-vincenzo.frascino@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190621095252.32307-17-vincenzo.frascino@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_055203_197582_6B8D1CDD 
X-CRM114-Status: GOOD (  14.22  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-arch@vger.kernel.org, Shuah Khan <shuah@kernel.org>,
 Shijith Thotton <sthotton@marvell.com>,
 Andre Przywara <andre.przywara@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Huw Davies <huw@codeweavers.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 linux-mips@vger.kernel.org, Dmitry Safonov <0x7f454c46@gmail.com>,
 Paul Burton <paul.burton@mips.com>, linux-kselftest@vger.kernel.org,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Russell King <linux@armlinux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 Mark Salyzyn <salyzyn@android.com>, Peter Collingbourne <pcc@google.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 10:52:43AM +0100, Vincenzo Frascino wrote:
> The arm vDSO library requires some adaptations to use to take advantage
> of the newly introduced generic vDSO library.
> 
> Introduce the following changes:
>  - Modification vdso.c to be compliant with the common vdso datapage
>  - Use of lib/vdso for gettimeofday
>  - Implementation of elf note
> 
> Cc: Russell King <linux@armlinux.org.uk>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>

This patch causes a crash with qemu's mcimx6ul-evk emulation while running
imx_v6_v7_defconfig.

[   19.976852] Run /sbin/init as init process
[   20.044931] Kernel panic - not syncing: Attempted to kill init! exitcode=0x00000004

There is nothing else useful in the log, unfortunately.

Reverting the following three patches fixes the problem.

74d06efb9c2f ARM: 8932/1: Add clock_gettime64 entry point
052e76a31b4a ARM: 8931/1: Add clock_getres entry point
20e2fc42312f ARM: 8930/1: Add support for generic vDSO

Guenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
