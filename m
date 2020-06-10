Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77E5C1F5EB4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 01:29:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xqP3JwzAW0L93Vq1+ieWuV6A1uFWOsK1Y/0QwqUHYOc=; b=BuPzyxzzP2bnCV
	rYGhO4WfsgdvLy1UsiACBluqYPer5JDoE6XyucKRqFdaJaX9Balqep5sBlFl5ntrPYZcIcolwDoAk
	kjCodHOP7yXao2/sCP4Wj+zhh2GaDyptTINwa+XD3wDe1ynyL0xfzgH+lasIDxfTgMn4X1CzNUPAa
	IOg9DVj8CNgqi8lrCCmGeAsB9r2KPQImpqQXV7a8f5owtn6eluPcyJ1Ujr/EIY/HyPOOCuwuBZTfU
	sav9IuIz2ULf3RjR9z6bPYIrGsRTOG5+Y/rhetVzQ/Pzp2yqfp1ANU2+b4AooW4+xlzBXUuzIGBHJ
	Jl412OnXQU3lCCPlcAgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjA9u-0002ZZ-5d; Wed, 10 Jun 2020 23:29:26 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjA9k-0002Z4-Jy
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 23:29:18 +0000
Received: by mail-pg1-x544.google.com with SMTP id n23so1663000pgb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 16:29:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6TzxZ6stD3PZjH0rWRteIpP64wnrZhSQ8+LWOmjBhiU=;
 b=lj2HOLr9iGR0sii8IdZYZlccMRuGca3x5VcEhEGrSh34BhdgEFcSdgBk8bJsoYMUx1
 prS9LECFeLy4xxl5E9OYJaZeRZpY9gzb3EnaA4hxO4bXaCi++Ob5GRDUsGLykemwPyVX
 UCoDPMAPXBGy+ZPUg+DDgKVgcdUabL38lJ7bLWewlJFB+xJ5OhsDY/M99TZgcX3gaZX+
 UlsHEGmjL0mK8c2UP2x7t8h4JyvX2ZxL4Ghf5SL74brwo/8Ypi1sZIKuhz9L2/57OAaN
 4foUYKfm3kChXnBkT6NdsxYwXfo5a3FWsfWFQhINnYsk+NZwJ/itpj+c+hGLboSWCgwT
 l0lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6TzxZ6stD3PZjH0rWRteIpP64wnrZhSQ8+LWOmjBhiU=;
 b=XO3OgCLKu8METmLQ4qvvx4JsvahK+qc94KH8wuVvXlFyqZ8VaV4CFGsjbUsLgqEdVN
 mx0ohvqfQGKGfXpmgyOwrSR+CuOORwOeDrpZ11tUQ63r8+YGTK6iklR0URzHBnfmU2xY
 FNrVKxS3fjSMMzLWuqLWFNVol1SJPjvwyrJM34fovrJFQmDRSuw6d+bKSl2CtUACaUSl
 gXOXTGABfoXGq0YeWRvGchzT8ZR3eMMTza3v6gL5vc1Hsq/gt7vRxXhvaOXdoPC89PtF
 RweQ6CMRplN67seBwWaDRIoBJNN34W7vaxIB+n4n9V7oohxN3JwMJltBJY3VT5Ispedp
 NZew==
X-Gm-Message-State: AOAM531F3d6MKUljRZE3X17jlPpU7VS8MYNOC9eKufgWEcBk1dMMD/4t
 kaomLIIWy6PgQCn2XdweaoXxHju3HpqG6g4Pu6AV+A==
X-Google-Smtp-Source: ABdhPJxQRDNnAU0Fg7jLTwWaxkipk37vBBsJBUw1TBH6wYrDUsNqKgyiSXPYWOFrzX3DfS/Sn15K1bfnQtN/cMO4w5M=
X-Received: by 2002:a63:5644:: with SMTP id g4mr4354362pgm.381.1591831754212; 
 Wed, 10 Jun 2020 16:29:14 -0700 (PDT)
MIME-Version: 1.0
References: <CAMj1kXErFuvOoG=DB6sz5HBvDuHDiKwWD8uOyLuxaX-u8-+dbA@mail.gmail.com>
 <20200601231805.207441-1-ndesaulniers@google.com>
 <BYAPR11MB3096A0EA2D03BCB76C91F80AF0830@BYAPR11MB3096.namprd11.prod.outlook.com>
In-Reply-To: <BYAPR11MB3096A0EA2D03BCB76C91F80AF0830@BYAPR11MB3096.namprd11.prod.outlook.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Wed, 10 Jun 2020 16:29:02 -0700
Message-ID: <CAKwvOdnh6Zh+P9SM_qFiy-9u7Y21fn=byTJtG4fTTRJqqU9bcQ@mail.gmail.com>
Subject: Re: [PATCH] ACPICA: fix UBSAN warning using __builtin_offsetof
To: "Kaneda, Erik" <erik.kaneda@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_162916_675403_4594FFC7 
X-CRM114-Status: GOOD (  23.94  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "will@kernel.org" <will@kernel.org>, "Wysocki,
 Rafael J" <rafael.j.wysocki@intel.com>,
 "rjw@rjwysocki.net" <rjw@rjwysocki.net>, "Moore,
 Robert" <robert.moore@intel.com>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 "glider@google.com" <glider@google.com>, Jung-uk Kim <jkim@freebsd.org>,
 "guohanjun@huawei.com" <guohanjun@huawei.com>,
 "devel@acpica.org" <devel@acpica.org>, "pcc@google.com" <pcc@google.com>,
 Ard Biesheuvel <ardb@kernel.org>, "dvyukov@google.com" <dvyukov@google.com>,
 Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 10, 2020 at 4:07 PM Kaneda, Erik <erik.kaneda@intel.com> wrote:
>
> +JKim (for FreeBSD's perspective)
>
> > -----Original Message-----
> > From: Nick Desaulniers <ndesaulniers@google.com>
> > Sent: Monday, June 1, 2020 4:18 PM
> > To: Moore, Robert <robert.moore@intel.com>; Kaneda, Erik
> > <erik.kaneda@intel.com>; Wysocki, Rafael J <rafael.j.wysocki@intel.com>;
> > Len Brown <lenb@kernel.org>
> > Cc: Ard Biesheuvel <ardb@kernel.org>; dvyukov@google.com;
> > glider@google.com; guohanjun@huawei.com; linux-arm-
> > kernel@lists.infradead.org; linux-kernel@vger.kernel.org;
> > lorenzo.pieralisi@arm.com; mark.rutland@arm.com;
> > ndesaulniers@google.com; pcc@google.com; rjw@rjwysocki.net;
> > will@kernel.org; stable@vger.kernel.org; linux-acpi@vger.kernel.org;
> > devel@acpica.org
> > Subject: [PATCH] ACPICA: fix UBSAN warning using __builtin_offsetof
> >
> > Will reported UBSAN warnings:
> > UBSAN: null-ptr-deref in drivers/acpi/acpica/tbfadt.c:459:37
> > UBSAN: null-ptr-deref in arch/arm64/kernel/smp.c:596:6
> >
> Hi,
>
> > Looks like the emulated offsetof macro ACPI_OFFSET is causing these. We
> > can avoid this by using the compiler builtin, __builtin_offsetof.
> >
> This doesn't really fly because __builtin_offsetof is a compiler extension.
>
> It looks like a lot of stddef.h files do this:
>
> #define offsetof(a,b) __builtin_offset(a,b)
>
> So does anyone have objections to ACPI_OFFSET being defined to offsetof()?
>
> This will allow a host OS project project to use their own definitions of offsetof in place of ACPICA's.
> If they don't have a definition for offsetof, we can supply the old one as a fallback.
>
> Here's a patch:
>
> --- a/include/acpi/actypes.h
> +++ b/include/acpi/actypes.h
> @@ -504,11 +504,17 @@ typedef u64 acpi_integer;
>  #define ACPI_SUB_PTR(t, a, b)           ACPI_CAST_PTR (t, (ACPI_CAST_PTR (u8, (a)) - (acpi_size)(b)))
>  #define ACPI_PTR_DIFF(a, b)             ((acpi_size) (ACPI_CAST_PTR (u8, (a)) - ACPI_CAST_PTR (u8, (b))))
>
> +/* Use an existing definiton for offsetof */

s/definiton/definition/

> +
> +#ifndef offsetof
> +#define offsetof(d,f)                   ACPI_PTR_DIFF (&(((d *) 0)->f), (void *) 0)
> +#endif

If this header doesn't explicitly include <stddef.h> or
<linux/stddef.h>, won't translation units that include
<acpi/actypes.h> get different definitions of ACPI_OFFSET based on
whether they explicitly or transitively included <stddef.h> before
including <acpi/actypes.h>?  Theoretically, a translation unit in the
kernel could include actypes.h, have no includes of linux/stddef.h,
then get UBSAN errors again from using this definition?

I don't mind using offsetof in place of the builtin (since it
typically will be implemented in terms of the builtin, or is at least
for the case specific to the Linux kernel). But if it's used, we
should include the header that defines it properly, and we should not
use the host's <stddef.h> IMO.  Is there a platform specific way to
include the platform's stddef.h here?

Maybe linux/stddef.h should be included in
include/acpi/platform/aclinux.h, then include/acpi/platform/acenv.h
included in include/acpi/actypes.h, such that ACPI_OFFSET is defined
in terms of offsetof defined from that transitive dependency of
headers? (or do we get a circular inclusion trying to do that?)

> +
>  /* Pointer/Integer type conversions */
>
>  #define ACPI_TO_POINTER(i)              ACPI_CAST_PTR (void, (acpi_size) (i))
>  #define ACPI_TO_INTEGER(p)              ACPI_PTR_DIFF (p, (void *) 0)
> -#define ACPI_OFFSET(d, f)               ACPI_PTR_DIFF (&(((d *) 0)->f), (void *) 0)
> +#define ACPI_OFFSET(d, f)               offsetof (d,f)
>  #define ACPI_PHYSADDR_TO_PTR(i)         ACPI_TO_POINTER(i)
>  #define ACPI_PTR_TO_PHYSADDR(i)         ACPI_TO_INTEGER(i)
>
> Thanks,
> Erik
>
> > The non-kernel runtime of UBSAN would print:
> > runtime error: member access within null pointer of type for this macro.
> >
> > Link: https://lore.kernel.org/lkml/20200521100952.GA5360@willie-the-truck/
> > Cc: stable@vger.kernel.org
> > Reported-by: Will Deacon <will@kernel.org>
> > Suggested-by: Ard Biesheuvel <ardb@kernel.org>
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > ---
> >  include/acpi/actypes.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/include/acpi/actypes.h b/include/acpi/actypes.h index
> > 4defed58ea33..04359c70b198 100644
> > --- a/include/acpi/actypes.h
> > +++ b/include/acpi/actypes.h
> > @@ -508,7 +508,7 @@ typedef u64 acpi_integer;
> >
> >  #define ACPI_TO_POINTER(i)              ACPI_CAST_PTR (void, (acpi_size) (i))
> >  #define ACPI_TO_INTEGER(p)              ACPI_PTR_DIFF (p, (void *) 0)
> > -#define ACPI_OFFSET(d, f)               ACPI_PTR_DIFF (&(((d *) 0)->f), (void *)
> > 0)
> > +#define ACPI_OFFSET(d, f)               __builtin_offsetof(d, f)
> >  #define ACPI_PHYSADDR_TO_PTR(i)         ACPI_TO_POINTER(i)
> >  #define ACPI_PTR_TO_PHYSADDR(i)         ACPI_TO_INTEGER(i)
> >
> > --
> > 2.27.0.rc2.251.g90737beb825-goog
>


-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
