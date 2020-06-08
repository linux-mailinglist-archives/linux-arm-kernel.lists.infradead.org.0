Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAB011F20B4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 22:30:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q7f6eTwrh0L4SZiEdBM3P0x78PBwIMmycr134ixYc9I=; b=eXGq4WtOIt9zUe
	ADeBzrRCOHM8Y+Q82HvOs+Nuh7ZVsQMJ0huoHqlqmaD9w9S0B95f3PamPeoIjwlypsftG7sc9kqPt
	l32aMYRldQuiLeSDLfuEqLf7MCmbhNhofxXi5Ohc+GML3F4k2S0Pmx42QGYd0bH7s5qmBKf/vEoBA
	6beJQmXjCJQ2pIwimDiYeKp7ho7NDlcNQ0ffGA6sPdYfGdIJv48NmV/jyMjUXxy2SkYSLn3BLVQFr
	corQ/Gks90y0bsIVc7JSiDxT72gFb+R+mdr40mHYJx1HjI04ElW3LT9ECAyUxa1GFo0gxv/oY2BtL
	gsM4UvSYcY9/ljB+FPTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiOPO-0007Kp-TZ; Mon, 08 Jun 2020 20:30:14 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiOP9-0006yN-Dv
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 20:30:01 +0000
Received: by mail-pj1-x1043.google.com with SMTP id s88so326365pjb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jun 2020 13:29:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9/ePEPr3ygUN4g38F3++3TkPRxfaceUs+kBlSlUSKY0=;
 b=pw8Bxdhl9XS8tPgtRzulSMnEvJeKhw67A+rrpfiRgoNRVcVxkndGIyj1Htofn7jVH4
 QQfC8wwV1c2hsbd3F+BArgJJLlVJygelysnZp9v8OWukz4LhpZm+mPNjLH12Rd6OrYqv
 FEepyuJwLd31BVubTZVtn1FwTiI9AReTM8JynaA0xsEGX3ndHt2r47Zqeq30tgQZ8wVC
 8g6XsZLQuN3A2UBO1Vc4xRfN66xu2jdQFy7ZOSpEIlWqwg+LIA2MCYx82el77wcfvMaA
 K7z7TSrp13wbs0s5jkpBtBoquIhBmNnU+rdDHrJolRI2C6P7l78M4Jbr0MihSflNPFXb
 +zfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9/ePEPr3ygUN4g38F3++3TkPRxfaceUs+kBlSlUSKY0=;
 b=tAkYtgwGtwtYcq0sOvjgfl2J4XQkpLOF9lh7vKejkhb0bPnbVJwNIN0wb4zFV0csRc
 hyW/HRzsDX7lctKjvsVjzjx6kE1TUcYuDtp3z5XsBHaHLukH1g2KavR30RsD+mWWN5zT
 Cq6kH6KEdH8ir6goz/2tB5yV4HvJCCb3lGmjSztX/x8QGu0x2LjioSZYAm1Cu6iN9m5j
 HOr6186n4tGKM+Tt2kbGctSn4xBkc2z9nK1FPZoXL3osqeLKExEmkidAUiBp/vPPBXeQ
 KIJTLldfnfWesnDh7j7CcXtsmVQzBLOAXBxHPe/VZ5eK1k1G9+g3RLAjFlXXYPhr0VsR
 kPEw==
X-Gm-Message-State: AOAM533/cTMyuN17ezzrewW0OAnf1XTmg5YwIIacbUci/V8rsfM6CwBV
 15ghTRnnOT3LJ/7c03zHKk+baYeGNJuUFobzINaAFQ==
X-Google-Smtp-Source: ABdhPJxqTvjFFkKCm0i/uL4/XPDo2bwuLtgj0Uxawq6E2pFoZqBvslwKDi6qgeiJF1A8ll3duqQhBNh0BQd5R/EezHw=
X-Received: by 2002:a17:90a:e2c4:: with SMTP id
 fr4mr1046413pjb.32.1591648195517; 
 Mon, 08 Jun 2020 13:29:55 -0700 (PDT)
MIME-Version: 1.0
References: <CAMj1kXErFuvOoG=DB6sz5HBvDuHDiKwWD8uOyLuxaX-u8-+dbA@mail.gmail.com>
 <20200601231805.207441-1-ndesaulniers@google.com>
 <BYAPR11MB30969737340044437013BF44F08B0@BYAPR11MB3096.namprd11.prod.outlook.com>
 <CAKwvOdmsCmPFiDOq7AYUyEx=60B=qo8u9yhnJDQ6nd6Ew7xDkQ@mail.gmail.com>
 <20200608145150.GA7418@willie-the-truck>
In-Reply-To: <20200608145150.GA7418@willie-the-truck>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Mon, 8 Jun 2020 13:29:44 -0700
Message-ID: <CAKwvOdnBhHnhUZ9MHgqEQ4nEyzHWUH+DPV-J0KoYyWNEnsDHbg@mail.gmail.com>
Subject: Re: [PATCH] ACPICA: fix UBSAN warning using __builtin_offsetof
To: Will Deacon <will@kernel.org>, "Moore, Robert" <robert.moore@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_132959_516022_541673D8 
X-CRM114-Status: GOOD (  24.48  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, "Wysocki,
 Rafael J" <rafael.j.wysocki@intel.com>, "Kaneda, Erik" <erik.kaneda@intel.com>,
 "rjw@rjwysocki.net" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "glider@google.com" <glider@google.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "guohanjun@huawei.com" <guohanjun@huawei.com>,
 "devel@acpica.org" <devel@acpica.org>, "pcc@google.com" <pcc@google.com>,
 Ard Biesheuvel <ardb@kernel.org>, "dvyukov@google.com" <dvyukov@google.com>,
 Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 8, 2020 at 7:51 AM Will Deacon <will@kernel.org> wrote:
>
> Hey Nick,
>
> On Tue, Jun 02, 2020 at 11:46:31AM -0700, Nick Desaulniers wrote:
> > On Mon, Jun 1, 2020 at 5:03 PM Kaneda, Erik <erik.kaneda@intel.com> wrote:
> > > > Will reported UBSAN warnings:
> > > > UBSAN: null-ptr-deref in drivers/acpi/acpica/tbfadt.c:459:37
> > > > UBSAN: null-ptr-deref in arch/arm64/kernel/smp.c:596:6
> > > >
> > > > Looks like the emulated offsetof macro ACPI_OFFSET is causing these. We
> > > > can avoid this by using the compiler builtin, __builtin_offsetof.
> > >
> > > I'll take a look at this tomorrow
> > > >
> > > > The non-kernel runtime of UBSAN would print:
> > > > runtime error: member access within null pointer of type for this macro.
> > >
> > > actypes.h is owned by ACPICA so we typically do not allow compiler-specific
> > > extensions because the code is intended to be compiled using the C99 standard
> > > without compiler extensions. We could allow this sort of thing in a Linux-specific
> > > header file like include/acpi/platform/aclinux.h but I'll take a look at the error as well..
> >
> > If I'm not allowed to touch that header, it looks like I can include
> > <linux/stddef.h> (rather than my host's <stddef.h>) to get a
> > definition of `offsetof` thats implemented in terms of
> > `__builtin_offsetof`.  I should be able to use that to replace uses of
> > ACPI_OFFSET.  Are any of these off limits?
>
> It's not so much about not being allowed to touch the header, but rather
> that the kernel imports the code from a different project:
>
> https://acpica.org/community
>
> > $ grep -rn ACPI_OFFSET
> > arch/arm64/include/asm/acpi.h:34:#define ACPI_MADT_GICC_MIN_LENGTH
> > ACPI_OFFSET(  \
> > arch/arm64/include/asm/acpi.h:41:#define ACPI_MADT_GICC_SPE
> > (ACPI_OFFSET(struct acpi_madt_generic_interrupt, \
>
> I'm happy to take patches to the stuff under arch/arm64/, fwiw.

Not really sure how to untangle this.  Those two cases under
arch/arm64/ are straightforward to fix:
```
diff --git a/arch/arm64/include/asm/acpi.h
b/arch/arm64/include/asm/acpi.h
index b263e239cb59..a45366c3909b 100644
--- a/arch/arm64/include/asm/acpi.h
+++ b/arch/arm64/include/asm/acpi.h
@@ -12,6 +12,7 @@
 #include <linux/efi.h>
 #include <linux/memblock.h>
 #include <linux/psci.h>
+#include <linux/stddef.h>

 #include <asm/cputype.h>
 #include <asm/io.h>
@@ -31,14 +32,14 @@
  * is therefore used to delimit the MADT GICC structure minimum length
  * appropriately.
  */
-#define ACPI_MADT_GICC_MIN_LENGTH   ACPI_OFFSET(  \
+#define ACPI_MADT_GICC_MIN_LENGTH   offsetof(  \
        struct acpi_madt_generic_interrupt, efficiency_class)

 #define BAD_MADT_GICC_ENTRY(entry, end)
         \
        (!(entry) || (entry)->header.length < ACPI_MADT_GICC_MIN_LENGTH || \
        (unsigned long)(entry) + (entry)->header.length > (end))

-#define ACPI_MADT_GICC_SPE  (ACPI_OFFSET(struct acpi_madt_generic_interrupt, \
+#define ACPI_MADT_GICC_SPE  (offsetof(struct acpi_madt_generic_interrupt, \
        spe_interrupt) + sizeof(u16))

 /* Basic configuration for ACPI */
```

But for one of the warnings you reported, as an example:
UBSAN: null-ptr-deref in drivers/acpi/acpica/tbfadt.c:459:37

```
$ ag ACPI_FADT_V2_SIZE
include/acpi/actbl.h
394:#define ACPI_FADT_V2_SIZE       (u32) (ACPI_FADT_OFFSET
(minor_revision) + 1)

drivers/acpi/acpica/tbfadt.c
459:    if (acpi_gbl_FADT.header.length <= ACPI_FADT_V2_SIZE) {

$ ag ACPI_FADT_OFFSET
...
include/acpi/actbl.h
376:#define ACPI_FADT_OFFSET(f)             (u16) ACPI_OFFSET (struct
acpi_table_fadt, f)
...
```
So the use of ACPI_FADT_V2_SIZE in drivers/acpi/acpica/tbfadt.c is
triggering one of the warnings.  ACPI_FADT_V2_SIZE is defined in terms
of ACPI_FADT_OFFSET which is defined in terms of ACPI_OFFSET in
include/acpi/actbl.h.  From the link you posted, include/acpi/actbl.h
is from the project under source/include/.

Further, drivers/acpi/acpica/tbfadt.c seems to also be from the
upstream project under source/components/tables/tbfadt.c.

Regardless, the second of the two warnings is definitely fixed by my
above diff, so let me rephrase the previous commit message with that
diff and resend.
-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
