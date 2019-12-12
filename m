Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1140A11C938
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 10:34:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YaeTd3Z1RO+mFnYXm0aXCDLr6/ikMlZJttI/O3FyU5M=; b=R8tYE2AfYBxdAG
	+vsvGEu3bZ2X9/8ZnSKP733YwvpG/0MqxGcYSeIf5qOUY87jSIQ7Ani1/gQd7o44cSGrOMKpCMGsp
	Z0dIRX/WSkiCVpiz6cJlj0BJBUCC31Z5UOqMajlbjr0iCV+KE9NCZumdOj0aJieKqkRGn2THoiKE2
	PLWXG3g3ReijxHhbelndV53/AK8Up8/bbXpcQdoF/3Os2gM7gdrnNJKxk20YXIzXRBPynsk7fZZg2
	Ab+uxd1Y/V7igr8yNqxczqIjHEN4YWqq+Su1EDhcHRxDjeqL/n3Iv/YsMJe6VReAcIsEj2d1UR5hi
	wtIBMXLq7LxPQ9NUlcow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifKro-0005yA-7p; Thu, 12 Dec 2019 09:34:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifKrg-0005xb-GO
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 09:34:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AB8CA328;
 Thu, 12 Dec 2019 01:34:30 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 047A83F6CF; Thu, 12 Dec 2019 01:34:28 -0800 (PST)
Date: Thu, 12 Dec 2019 09:34:26 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 12/22] arm64: mte: Add specific SIGSEGV codes
Message-ID: <20191212093425.GA18258@arrakis.emea.arm.com>
References: <20191211184027.20130-1-catalin.marinas@arm.com>
 <20191211184027.20130-13-catalin.marinas@arm.com>
 <CAK8P3a1-eaR7NddhDce65vXKCGeZD3xUMrTTAWN4U3oW0ecN=g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a1-eaR7NddhDce65vXKCGeZD3xUMrTTAWN4U3oW0ecN=g@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_013432_639228_F2500B5D 
X-CRM114-Status: GOOD (  17.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arch <linux-arch@vger.kernel.org>,
 Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>, Marc Zyngier <maz@kernel.org>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Linux-MM <linux-mm@kvack.org>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Al Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 08:31:28PM +0100, Arnd Bergmann wrote:
> On Wed, Dec 11, 2019 at 7:40 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
> >
> > From: Vincenzo Frascino <vincenzo.frascino@arm.com>
> >
> > Add MTE-specific SIGSEGV codes to siginfo.h.
> >
> > Note that the for MTE we are reusing the same SPARC ADI codes because
> > the two functionalities are similar and they cannot coexist on the same
> > system.
> >
> > Cc: Arnd Bergmann <arnd@arndb.de>
> > Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> > [catalin.marinas@arm.com: renamed precise/imprecise to sync/async]
> > Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> > ---
> >  include/uapi/asm-generic/siginfo.h | 9 +++++++--
> >  1 file changed, 7 insertions(+), 2 deletions(-)
> >
> > diff --git a/include/uapi/asm-generic/siginfo.h b/include/uapi/asm-generic/siginfo.h
> > index cb3d6c267181..a5184a5438c6 100644
> > --- a/include/uapi/asm-generic/siginfo.h
> > +++ b/include/uapi/asm-generic/siginfo.h
> > @@ -227,8 +227,13 @@ typedef struct siginfo {
> >  # define SEGV_PKUERR   4       /* failed protection key checks */
> >  #endif
> >  #define SEGV_ACCADI    5       /* ADI not enabled for mapped object */
> > -#define SEGV_ADIDERR   6       /* Disrupting MCD error */
> > -#define SEGV_ADIPERR   7       /* Precise MCD exception */
> > +#ifdef __aarch64__
> > +# define SEGV_MTEAERR  6       /* Asynchronous MTE error */
> > +# define SEGV_MTESERR  7       /* Synchronous MTE exception */
> > +#else
> > +# define SEGV_ADIDERR  6       /* Disrupting MCD error */
> > +# define SEGV_ADIPERR  7       /* Precise MCD exception */
> > +#endif
> 
> SEGV_ADIPERR/SEGV_ADIDERR were added together with SEGV_ACCADI,
> it seems a bit odd to make only two of them conditional but not the others.

Ah, I missed this. I think we should drop the #ifdef entirely. There is
no harm in having two different macros with the same value.

> I think we are generally working towards having the same constants
> across architectures even for features that only exist on one of them.

I'd rather keep both the ARM and SPARC naming here as the behaviour may
be subtly different between the two architectures. IIUC, the disrupting
SPARC MCD error on means a memory corruption trap sent to the
hypervisor. On ARM MTE, the asynchronous tag check fault is a pretty
much benign setting of a status flag. The kernel, when detecting this
flag, injects a SIGSEGV on the ret_to_user path. If there's no switch
into the kernel, a user program cannot become aware of the asynchronous
MTE tag check fault.

We also don't have the equivalent of ACCADI.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
