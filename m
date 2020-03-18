Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A1BB18A21E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 19:06:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6PoCXQDCwFgjGnsEHAopm+CLJ3pZHpY3CbUXb3GuETs=; b=bixR0/5ef5W9ln
	T5GQZDVoNjJal5omWif8x4HMBzt5MUrVdXkk9oWzDSDRZgV/4hK8y9BLmVkAHkdG0sKoJUCsvpt8g
	vN+Nbwtr9HrMdanvi+fXH6MCTBff2swe+KRymrFGmxxjWsa/aFi5nCDhtklINRfQasnql8f1AaA0J
	Jl53rcVmgnO8W4GakWcRE+aQiaTEJqV0qjw0JcSLx+CCYBk4D+Czg8KHKPAU2OeZV3ncyhxnn0Qxf
	zWOJvSLXPHbh3/YEvctNbI1D96wDvLIrlD3aJsxJYZbMq/wviyOwFNdAA2IZrnnM6JIIzXnDzNneG
	+XoQfZaxcewGi9275Rqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEd5Y-00088n-5g; Wed, 18 Mar 2020 18:06:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEd5P-000885-Oh
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 18:06:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 85E261FB;
 Wed, 18 Mar 2020 11:06:33 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 BB8FD3F67D; Wed, 18 Mar 2020 11:06:32 -0700 (PDT)
Date: Wed, 18 Mar 2020 18:06:30 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: =?iso-8859-1?Q?R=E9mi?= Denis-Courmont <remi@remlab.net>
Subject: Re: [PATCH 1/3] arm64: clean up trampoline vector loads
Message-ID: <20200318180630.GE94111@arrakis.emea.arm.com>
References: <20200316124046.103844-1-remi@remlab.net>
 <20200318175709.GD94111@arrakis.emea.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200318175709.GD94111@arrakis.emea.arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_110635_842373_DE518107 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, will@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 18, 2020 at 05:57:09PM +0000, Catalin Marinas wrote:
> On Mon, Mar 16, 2020 at 02:40:44PM +0200, R=E9mi Denis-Courmont wrote:
> > From: R=E9mi Denis-Courmont <remi.denis.courmont@huawei.com>
> > =

> > This switches from custom instruction patterns to the regular large
> > memory model sequence with ADRP and LDR. In doing so, the ADD
> > instruction can be eliminated in the SDEI handler, and the code no
> > longer assumes that the trampoline vectors and the vectors address both
> > start on a page boundary.
> > =

> > Signed-off-by: R=E9mi Denis-Courmont <remi.denis.courmont@huawei.com>
> =

> I queued the 3 trampoline patches for 5.7. Thanks.

... and removed. I applied them on top of arm64 for-next/asm-annotations
and with defconfig I get:

  LD      .tmp_vmlinux1
arch/arm64/kernel/entry.o: in function `tramp_vectors':
arch/arm64/kernel/entry.S:838:(.entry.tramp.text+0x43c): relocation truncat=
ed to fit: R_AARCH64_LDST64_ABS_LO12_NC against symbol `__entry_tramp_data_=
start' defined in .rodata section in arch/arm64/kernel/entry.o
ld: arch/arm64/kernel/entry.S:838: warning: one possible cause of this erro=
r is that the symbol is being referenced in the indicated code as if it had=
 a larger alignment than was declared where it was defined
arch/arm64/kernel/entry.S:839:(.entry.tramp.text+0x4bc): relocation truncat=
ed to fit: R_AARCH64_LDST64_ABS_LO12_NC against symbol `__entry_tramp_data_=
start' defined in .rodata section in arch/arm64/kernel/entry.o
ld: arch/arm64/kernel/entry.S:839: warning: one possible cause of this erro=
r is that the symbol is being referenced in the indicated code as if it had=
 a larger alignment than was declared where it was defined
arch/arm64/kernel/entry.S:840:(.entry.tramp.text+0x53c): relocation truncat=
ed to fit: R_AARCH64_LDST64_ABS_LO12_NC against symbol `__entry_tramp_data_=
start' defined in .rodata section in arch/arm64/kernel/entry.o
ld: arch/arm64/kernel/entry.S:840: warning: one possible cause of this erro=
r is that the symbol is being referenced in the indicated code as if it had=
 a larger alignment than was declared where it was defined
arch/arm64/kernel/entry.S:841:(.entry.tramp.text+0x5bc): relocation truncat=
ed to fit: R_AARCH64_LDST64_ABS_LO12_NC against symbol `__entry_tramp_data_=
start' defined in .rodata section in arch/arm64/kernel/entry.o
ld: arch/arm64/kernel/entry.S:841: warning: one possible cause of this erro=
r is that the symbol is being referenced in the indicated code as if it had=
 a larger alignment than was declared where it was defined
arch/arm64/kernel/entry.S:843:(.entry.tramp.text+0x638): relocation truncat=
ed to fit: R_AARCH64_LDST64_ABS_LO12_NC against symbol `__entry_tramp_data_=
start' defined in .rodata section in arch/arm64/kernel/entry.o
ld: arch/arm64/kernel/entry.S:843: warning: one possible cause of this erro=
r is that the symbol is being referenced in the indicated code as if it had=
 a larger alignment than was declared where it was defined
arch/arm64/kernel/entry.S:844:(.entry.tramp.text+0x6b8): relocation truncat=
ed to fit: R_AARCH64_LDST64_ABS_LO12_NC against symbol `__entry_tramp_data_=
start' defined in .rodata section in arch/arm64/kernel/entry.o
ld: arch/arm64/kernel/entry.S:844: warning: one possible cause of this erro=
r is that the symbol is being referenced in the indicated code as if it had=
 a larger alignment than was declared where it was defined
arch/arm64/kernel/entry.S:845:(.entry.tramp.text+0x738): relocation truncat=
ed to fit: R_AARCH64_LDST64_ABS_LO12_NC against symbol `__entry_tramp_data_=
start' defined in .rodata section in arch/arm64/kernel/entry.o
ld: arch/arm64/kernel/entry.S:845: warning: one possible cause of this erro=
r is that the symbol is being referenced in the indicated code as if it had=
 a larger alignment than was declared where it was defined
arch/arm64/kernel/entry.S:846:(.entry.tramp.text+0x7b8): relocation truncat=
ed to fit: R_AARCH64_LDST64_ABS_LO12_NC against symbol `__entry_tramp_data_=
start' defined in .rodata section in arch/arm64/kernel/entry.o
ld: arch/arm64/kernel/entry.S:846: warning: one possible cause of this erro=
r is that the symbol is being referenced in the indicated code as if it had=
 a larger alignment than was declared where it was defined
make[1]: *** [Makefile:1077: vmlinux] Error 1

I haven't bisected to see which patch caused this issue.

$ gcc --version
gcc (Debian 9.2.1-30) 9.2.1 20200224

$ ld --version
GNU ld (GNU Binutils for Debian) 2.34

-- =

Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
