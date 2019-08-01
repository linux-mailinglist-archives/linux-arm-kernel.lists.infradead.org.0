Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD25C7E164
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 19:51:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RUs1W5H32r/IH2YG3iqnr8+z5mO3t8TLs2DqUEeR0MQ=; b=hgvmgz05nE28xZ
	73W3gY8sUu9PX7ZyfW7vHlc4g2WoRMTOEMX3dkzaA7z7rpMNQtclB1BMEwSSPwvVKQLF8RCEbdCa/
	r6aFzzceNJofDDHJ1KdwPm0IhNqNqBytCPgQRPHmTP5HH6OClg1gCKR3waUkFhm2AQo5OiwEIR19y
	ciO6TUch5EyPhdjXcXCaS0E9KA2Zv7/R69g0N/ImZbmhdpqgZNx0+6gLAT4jG6s2sykCAYFtdbh/7
	MnpNngy8uvETyElCfhWwSm5x3Gl1Y9zosDbp/dCHVi/j4N3FkV+FZ+V1bqu4rs4QiSNt/R3ryN8he
	aefL979YFuUpY+8+XbqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htFF2-0002J6-C4; Thu, 01 Aug 2019 17:51:52 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htFEu-0002DK-F1
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 17:51:46 +0000
Received: by mail-ua1-x942.google.com with SMTP id v20so28692075uao.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 10:51:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TZhU7oDbGIucTFa2/0PHRnSvNzjHQYp3wll5K+i26zA=;
 b=QGm304SuF84GCdAE+jUVIayAd5mqyBEETTjqGB7u6OTkonheTcr5QdX7rTq3NOrjMV
 wPJaYVr83j+cqAx4KsbprLJOW87ZCNA/DSaIDj91JVP0h6DsfDIYe+P2t/ZPZp3X6gZE
 rfkx+7w2pdhvAksn5yMvZ30VrwAb3ZRpJTteYNNFY0TGuzMOpAJibf+bhyUhfDYAW9pn
 PuecfhsfQxcKYHgpYJDvHJSpgyhL3zqWlgU24/YgQxLoa9MT8vqmgFk+gkcjOiSbgJg9
 WHuz9qFkv4JSh7zdUXsMY5bVNmNdDjTGY6tiZsqBdcij41mG8szmb35I5u/XRUdVF17v
 AHYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TZhU7oDbGIucTFa2/0PHRnSvNzjHQYp3wll5K+i26zA=;
 b=N+bv+cVpOKOmmGgVC2oahGiQrqzmoCp+4AF8JkvWeoG4sDh50fPhia0KLAYO4b7+hw
 LNHuwZAKo8M4MgJvVCnSf0l6D8B2pHn3TZaMVJ9qKfMBAdPF7p5ZV5M099DZ9etqBhjE
 Msh8FhLlJNY5UBJY+jFau5mJCPPdjWRLg7SFFHy6b0kWWSW0q7A29WIQy0INQVv2ZxzD
 xTYH+E9kNSI+aPdD/Lb6LemW80fP0fUXKMbF8P1SoSOO7e+ganDYo1SlR7lAdWyKXsbH
 3haokPLqKPy8vOHfNa7SVNHJzGZJMAcJqGUlUkOmISi6/OBMof7BUIFTcTZkosP+Imtz
 dvIQ==
X-Gm-Message-State: APjAAAUIVkxreNElaPyQEQ9BXnTSs2fJeAEXIw+PMt52NCKSN3Gop+hg
 6Kl5e6A/tEJXPD7fcXCfWtPPZbgFcjy8C+fmJPthMg==
X-Google-Smtp-Source: APXvYqxBRdU6/ygjMPOoly/etYGfCckYuopMgsvIFdFDJ37PpjGeLrGoF3OIsp5Ge1he557cBGLRFRvnAFmmSQSazv4=
X-Received: by 2002:ab0:6198:: with SMTP id h24mr18873126uan.41.1564681901893; 
 Thu, 01 Aug 2019 10:51:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190712193846.174893-1-pcc@google.com>
 <20190801011842.199786-1-pcc@google.com>
 <20190801120516.pe6vzl2bmko6hhk6@willie-the-truck>
In-Reply-To: <20190801120516.pe6vzl2bmko6hhk6@willie-the-truck>
From: Peter Collingbourne <pcc@google.com>
Date: Thu, 1 Aug 2019 10:51:30 -0700
Message-ID: <CAMn1gO5nMo5973kn12Cotq3B54dEz7NoFo9tU_xJBb+NUd8dOA@mail.gmail.com>
Subject: Re: [PATCH v3] arm64: Add support for relocating the kernel with RELR
 relocations
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_105144_530819_131E0A90 
X-CRM114-Status: GOOD (  22.19  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 1, 2019 at 5:05 AM Will Deacon <will@kernel.org> wrote:
>
> On Wed, Jul 31, 2019 at 06:18:42PM -0700, Peter Collingbourne wrote:
> > RELR is a relocation packing format for relative relocations.
> > The format is described in a generic-abi proposal:
> > https://groups.google.com/d/topic/generic-abi/bX460iggiKg/discussion
> >
> > The LLD linker can be instructed to pack relocations in the RELR
> > format by passing the flag --pack-dyn-relocs=relr.
> >
> > This patch adds a new config option, CONFIG_RELR. Enabling this option
> > instructs the linker to pack vmlinux's relative relocations in the RELR
> > format, and causes the kernel to apply the relocations at startup along
> > with the RELA relocations. RELA relocations still need to be applied
> > because the linker will emit RELA relative relocations if they are
> > unrepresentable in the RELR format (i.e. address not a multiple of 2).
> >
> > Enabling CONFIG_RELR reduces the size of a defconfig kernel image
> > with CONFIG_RANDOMIZE_BASE by 3.5MB/16% uncompressed, or 550KB/5%
> > compressed (lz4).
> >
> > Signed-off-by: Peter Collingbourne <pcc@google.com>
> > Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> > Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> > ---
> >
> > Notes:
> >     Changes in v3:
> >     - Move Kconfig/Makefile logic to arch-independent location
> >     - Tweak CONFIG_RELR documentation to remove "currently"
>
> Excellent, thanks. Queued for 5.4.

Thanks.

> One more question: is there any benefit to supporting this for loadable
> modules as well?

It looks like there would be, but it would be much smaller than the
kernel itself, as well as being smaller than the benefit of building
modules as shared objects instead of object files, which as I
mentioned to Nick is a prerequisite for the linker to be able to emit
RELR relocations. The kernel appears to proportionally contain many
more RELATIVE relocations than the modules, probably because of
__ksymtab which is almost entirely RELATIVE relocations. Shared
objects should help significantly with binary size because the linker
would then be able to statically resolve relocations between sections,
avoiding the need to store them explicitly in the module, but they
have the downside of requiring PIC which could hurt performance.

As a quick experiment I did:

diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index d3776c945a173..015898faba590 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -65,7 +65,7 @@ endif

 KBUILD_CFLAGS  += -mgeneral-regs-only $(lseinstr) $(brokengasinst)
$(compat_vdso)
 KBUILD_CFLAGS  += -fno-asynchronous-unwind-tables
-KBUILD_CFLAGS  += $(call cc-disable-warning, psabi)
+KBUILD_CFLAGS  += $(call cc-disable-warning, psabi) -fPIC
 KBUILD_AFLAGS  += $(lseinstr) $(brokengasinst) $(compat_vdso)

 KBUILD_CFLAGS  += $(call cc-option,-mabi=lp64)

and built a defconfig kernel. I then did:

$ for i in **/*.ko ; do ld.lld -shared -o ${i}.so $i -Bsymbolic  -N
2>/dev/null ; done
$ for i in **/*.ko ; do ld.lld -shared -o ${i}.relr.so $i -Bsymbolic
-N --pack-dyn-relocs=relr 2>/dev/null ; done

That gave me 494 out of 525 modules that can currently be linked as
shared objects, and 491 that can be linked with RELR (looks like
there's an LLD bug preventing linking the other 3). The binary sizes
are:

$ cat `ls  **/*.ko.relr.so | sed -e 's/\.ko\.relr\.so$/.ko/g'` | wc -c
279730136
$ cat `ls  **/*.ko.relr.so | sed -e 's/\.ko\.relr\.so$/.ko.so/g'` | wc -c
134944384
$ cat **/*.ko.relr.so | wc -c
134617216

So that's roughly >50% size improvement from shared objects and 0.3% from RELR.

Peter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
