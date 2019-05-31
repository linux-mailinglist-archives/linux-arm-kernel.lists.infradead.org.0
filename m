Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF94630AB1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 10:54:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7r6qGSRgvLz3siB/62nsJehsiQP+yOWMjKA+rJBCPrk=; b=TreFm8NkK7K8uh
	OBGKH0VMbXNwodXsGwghyXS4yujuI6lC4GSS/WojhjSa1+XVt2xZ0z6MEJAYiCTBhiI2HRAbZJPAL
	p6k6zw36+tzuQZRMZTuczIB2SnhdPsKGyx6lJCY8PyGeVP/5xQjdmTEVfG4zsNwFNSh0ncKZQ/Sfx
	vgmsLHvuq27iJelsWv+IuxV5++as0ZJU1xUtBfXeaICvi4xik1UyQy5u6n7maL3WL3wS6frqBsZPK
	qb04DfzFJi1fE844sa4fZMYDw4IZkPtnuHnkXDfTUIIJnI5BXZwc2UQCpXVHGdZujVeCliDy30mu8
	+9Qc3S/G7KlstWndY2xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWdIa-0001Fr-OH; Fri, 31 May 2019 08:54:04 +0000
Received: from mail-qt1-f195.google.com ([209.85.160.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWdIS-0001FC-Q6
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 08:53:58 +0000
Received: by mail-qt1-f195.google.com with SMTP id y57so10472455qtk.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 May 2019 01:53:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PLETH2OB3IxfKN1eggOuRioC9EOnLLXN9MFUnFFew5s=;
 b=nqoXu3AEWtDjhyhvDXmQQZiNePT04KNXflx7aIJ9f/4N+IeUEsMK7JHGvoQvv0EMFT
 Tuu64P96AFfODH+Pj/8nQ4dJwTc+m8Umkw0S4QJaiT0Yw7k0kAFhzq1W77nzQcwPPhbK
 MJjuFPRdWtR3aoknnBXJnrXY01pFP9vUPf6xTXr+0ahAXRmDI05sWqSpDTQE7t0gRn1Z
 +Ywb/VEpo1+un6kAqQElksoGVOIC+eDGNjzV2iILx9nfYdpGvK8FUv/VTzS1cHBdABB0
 IjUF6mq8ZV9zct0JCol8j3ZlPpqqTfIH/egqJfdaIxhTTD68VmWRD+1TJFy+ZXNpPrkU
 j+Dw==
X-Gm-Message-State: APjAAAU/puz6hMfEQSUVHDbmtKdccC3hOTkc/dQ+B5N768UZxoht4PSr
 viTaUHw4w7hNFiQ9pVbjZ8SY2FPNzg3lx7Wgrbo=
X-Google-Smtp-Source: APXvYqzU7iWArqELb2azzCaYfon35mBi7acUgoO6bIp937zY6y9ykUj3bD/yvsjRGY3UDM715ORpT4Efor58s/vfKbs=
X-Received: by 2002:a0c:9e0f:: with SMTP id p15mr7638581qve.176.1559292835687; 
 Fri, 31 May 2019 01:53:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190530141531.43462-1-vincenzo.frascino@arm.com>
 <20190530141531.43462-20-vincenzo.frascino@arm.com>
In-Reply-To: <20190530141531.43462-20-vincenzo.frascino@arm.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 31 May 2019 10:53:39 +0200
Message-ID: <CAK8P3a3Z=wWQDu4aqV73J5PR2jNb3GzyWzYGT3dUp-F81H8mzQ@mail.gmail.com>
Subject: Re: [PATCH v6 19/19] kselftest: Extend vDSO selftest
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_015356_843446_34652457 
X-CRM114-Status: GOOD (  12.09  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arch <linux-arch@vger.kernel.org>, Shuah Khan <shuah@kernel.org>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Huw Davies <huw@codeweavers.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Will Deacon <will.deacon@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, linux-mips@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Russell King <linux@armlinux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 Mark Salyzyn <salyzyn@android.com>, Peter Collingbourne <pcc@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 30, 2019 at 4:16 PM Vincenzo Frascino
<vincenzo.frascino@arm.com> wrote:

> +/*
> + * ARM64's vDSO exports its vDSO implementation with different names and
> + * a different version from other architectures, so we need to handle it
> + * as a special case.
> + */
> +#if defined(__aarch64__)
> +const char *version = "LINUX_2.6.39";
> +const char *name[4] = {
> +       "__kernel_gettimeofday",
> +       "__kernel_clock_gettime",
> +       "__kernel_time",
> +       "__kernel_clock_getres",
> +};
> +#else
> +/* Tested on x86, arm, mips */
> +const char *version = "LINUX_2.6";
> +const char *name[4] = {
> +       "__vdso_gettimeofday",
> +       "__vdso_clock_gettime",
> +       "__vdso_time",
> +       "__vdso_clock_getres",
> +};
> +#endif

I see the __kernel_* name used on arm64, powerpc and s390, whiel the __vdso_*
name is used on arm, mips, nds32, riscv, sparc, and x86.

Also the versions have more variants:

$ git ls-files arch | grep vdso | xargs grep
'\(LINUX_[2345]\|VDSO_VERSION_STRING\)'
arch/arm/vdso/vdso.lds.S:    LINUX_2.6 {
arch/arm64/kernel/vdso/vdso.lds.S:    LINUX_2.6.39 {
arch/mips/vdso/vdso.lds.S:    LINUX_2.6 {
arch/nds32/kernel/vdso/vdso.lds.S:    LINUX_4 {
arch/powerpc/include/asm/vdso.h:#define VDSO_VERSION_STRING    LINUX_2.6.15
arch/powerpc/kernel/vdso32/vdso32.lds.S:    VDSO_VERSION_STRING {
arch/powerpc/kernel/vdso64/vdso64.lds.S:    VDSO_VERSION_STRING {
arch/riscv/kernel/vdso/vdso.lds.S:    LINUX_4.15 {
arch/s390/include/asm/vdso.h:#define VDSO_VERSION_STRING    LINUX_2.6.29
arch/s390/kernel/vdso32/vdso32.lds.S:    VDSO_VERSION_STRING {
arch/s390/kernel/vdso64/vdso64.lds.S:    VDSO_VERSION_STRING {
arch/sparc/vdso/vdso.lds.S:    LINUX_2.6 {
arch/sparc/vdso/vdso32/vdso32.lds.S:    LINUX_2.6 {
arch/x86/entry/vdso/vdso.lds.S:    LINUX_2.6 {
arch/x86/entry/vdso/vdso32/vdso32.lds.S:    LINUX_2.6 {
arch/x86/entry/vdso/vdso32/vdso32.lds.S:    LINUX_2.5 {
arch/x86/entry/vdso/vdsox32.lds.S:    LINUX_2.6 {
arch/x86/um/vdso/vdso.lds.S:    LINUX_2.6 {

Maybe change the test case to just try all combinations of the
above (and __vdso_clock_gettime64 as well) and stop checking
the architecture?

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
