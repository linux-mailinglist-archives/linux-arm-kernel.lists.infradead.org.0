Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4025F203D6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 12:46:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9SEjbk/wYKp+GM1g1/zAZVzzhAuiCuByEIUJAVrErhI=; b=XbnAq4WaVjdCKe
	V0TX4TEsyAeYlOmuDZNVbnlKr5HnotTuPYXiG2G2/V/5AOyuuywhdJwzpvLhCBv4oonnAAcLCYFSO
	/ZiEPF2X5eHK6eIpMl7CwU1fnzH0n5aVWB20GSrSuVmR5eTNSiEpWFk2fLFHxurIWtKClTVv5LgKi
	N5OO1wyyXw04O0uRGge6GDi+tQPIocFt6HT/IWKr5Ir6s7jRauB5eGSyKIalOXZ70n793P0lQQdS4
	LUGGLlfADsxX+EvewZYVwmtAx827P/Q16hwa3kYgn78Fs3YQ9FkHi9HLqvAnNcOiSWqu7PaYZzLsn
	uZOLVmPEBUBiAy4goRRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRDuE-0004nn-JV; Thu, 16 May 2019 10:46:34 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRDu7-0004nN-8u
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 10:46:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4AE9519BF;
 Thu, 16 May 2019 03:46:25 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5EA4F3F703;
 Thu, 16 May 2019 03:46:24 -0700 (PDT)
Date: Thu, 16 May 2019 11:46:19 +0100
From: Will Deacon <will.deacon@arm.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH] arm64: vdso: Explicitly add build-id option
Message-ID: <20190516104619.GA29705@fuggles.cambridge.arm.com>
References: <20190515194824.5641-1-labbott@redhat.com>
 <CAK7LNASZnRrSsZSrnw41kintGfmpyj3iz-Vjduk7w3k9iSih-w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK7LNASZnRrSsZSrnw41kintGfmpyj3iz-Vjduk7w3k9iSih-w@mail.gmail.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_034627_319515_ACA973B8 
X-CRM114-Status: GOOD (  19.23  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Laura Abbott <labbott@redhat.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 01:58:56PM +0900, Masahiro Yamada wrote:
> On Thu, May 16, 2019 at 4:51 AM Laura Abbott <labbott@redhat.com> wrote:
> >
> > Commit 691efbedc60d ("arm64: vdso: use $(LD) instead of $(CC) to
> > link VDSO") switched to using LD explicitly. The --build-id option
> > needs to be passed explicitly, similar to x86. Add this option.
> >
> > Fixes: 691efbedc60d ("arm64: vdso: use $(LD) instead of $(CC) to link VDSO")
> > Signed-off-by: Laura Abbott <labbott@redhat.com>
> > ---
> >  arch/arm64/kernel/vdso/Makefile | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
> > index 744b9dbaba03..ca209103cd06 100644
> > --- a/arch/arm64/kernel/vdso/Makefile
> > +++ b/arch/arm64/kernel/vdso/Makefile
> > @@ -13,6 +13,7 @@ targets := $(obj-vdso) vdso.so vdso.so.dbg
> >  obj-vdso := $(addprefix $(obj)/, $(obj-vdso))
> >
> >  ldflags-y := -shared -nostdlib -soname=linux-vdso.so.1 \
> > +               $(call ld-option, --build-id) \
> >                 $(call ld-option, --hash-style=sysv) -n -T
> >
> >  # Disable gcov profiling for VDSO code
> 
> 
> I missed that. Sorry.
> 
> You can add  --build-id without $(call ld-option,...)
> because it is supported by our minimal version of toolchain.
> 
> See commit log of 1e0221374e for example.

Ok, so I'm ok folding in the diff below on top?

Will

--->8

diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
index ca209103cd06..fa230ff09aa1 100644
--- a/arch/arm64/kernel/vdso/Makefile
+++ b/arch/arm64/kernel/vdso/Makefile
@@ -12,9 +12,8 @@ obj-vdso := gettimeofday.o note.o sigreturn.o
 targets := $(obj-vdso) vdso.so vdso.so.dbg
 obj-vdso := $(addprefix $(obj)/, $(obj-vdso))
 
-ldflags-y := -shared -nostdlib -soname=linux-vdso.so.1 \
-		$(call ld-option, --build-id) \
-		$(call ld-option, --hash-style=sysv) -n -T
+ldflags-y := -shared -nostdlib -soname=linux-vdso.so.1 --hash-style=sysv \
+		--build-id -n -T
 
 # Disable gcov profiling for VDSO code
 GCOV_PROFILE := n

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
