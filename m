Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A71AE1F6C8E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 19:06:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MfZlhax2s4XJaevHakD6lMDGQpYcCDmnhNNQPwo72ww=; b=gmnfUvvNH3+7Dr
	YLbDLRbGEI7IQy9pK6HowPXTw6fnwvYQwZhA5bVC9svmRg9cPa5kGQPjYkkmUxPzwYjcaAeXaGXQ0
	kIexqfHchNrh/F66pa+DcBT25RfjTZUkidtUDBgKWS8jwdhn+m0XdPI3Qu1E999p03gR4EQhrMT2U
	XDl2GlcE+JUG2J+dhXjL3Vh/ieNZKqNBtZEg9GSWPdBoGIiPT4/rcNsYrAJuZqSSDTWiv87dnpDOJ
	1lvsVwUa2i/Xfe8TH15r9mDl/bpJqpiV/KreuEgqmfHuGM/8bJV2FB59bEBgKbwL9oUK/0wlwkR1M
	C76Ijy0K9coBfWvkUwjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjQf4-0003gO-Av; Thu, 11 Jun 2020 17:06:42 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjQev-0003cy-AQ
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 17:06:34 +0000
Received: by mail-pg1-x541.google.com with SMTP id r18so2778813pgk.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jun 2020 10:06:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pI2G9x8XySR9DruVGRJidO1nAqjYW7jZcLJ0jduQuLM=;
 b=NqEJ5GA/ehM6UXoHjGGuPNm3B3rfMC1cOHvni2EJcnW9zfClcUy4MFwL3d6X4Umn1G
 gf95qNdFanqgDq/iJc7qrRLil0x0D2wngwpf5nyMmOSpv1Miw+RLTpCnQCyf6U6A9UgB
 BIjwZ5q8ylSnAuU3U7wqC1G+YIOYg5ZQMEwwIqa27NlLx4wfBto6cqvEmfhOoIkAQg2D
 OcPRn7du2QLzn0LYY7+6DIXok09q0JSmnm0eTyfsKq7lCxHphLZiuK/LRFrgjljjDgV4
 ztCU39IhEGgwqTb3durCnfrOGlFCcAyCoaR7e4UepPjSEK/zT+pqQFMs2xMPU5fiE7jk
 MPbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pI2G9x8XySR9DruVGRJidO1nAqjYW7jZcLJ0jduQuLM=;
 b=Eqr/uZHqosU6dwH6bZuyufBc59fPea6wF/lcutR777i8wEsH4M35fhxEpLwOUueehv
 JwyoXYGHsa3uL9UUf6ZcqAsR0ClDWgmMMJqGpfPwy0cIlAmarZmlMxUqRSZjJe8gqoI3
 XZi8Blhg2FzUhDptDX7FbX4rM8ZO094GjYZWuXJ6d+r4Iv3AQANp56WHZD8jk9rL/AEx
 FiMy29wQLAsz47Pijujx74Jg7ghzNfVmH6GhCn6ozOM4vYpgd+nm+cXiQJO7ZQm7fjiJ
 BM7mbizHV+0TOkqlcL1K4/Wjz8kMvDwU1Y/q0NgDzo/adYl4l3JcPEqtRhh5KslID7c0
 FYIA==
X-Gm-Message-State: AOAM531CorOZ9eac90IoaRc3GsLTBu+a3veQYUp2BgLM56956Vxd6oBg
 pT9HRrgNIYWmktjjKourZxGUw5jLWi+rGtPR5uBRnA==
X-Google-Smtp-Source: ABdhPJwIaddzPZfkreOWkm5D3KkSKXIx2FEPb4DMs82rwvXYSe+SfQFOSBO/0V8ZUaC6ymLwx/6gIHy0Sny57CDe07w=
X-Received: by 2002:a62:7e95:: with SMTP id z143mr8049365pfc.108.1591895189671; 
 Thu, 11 Jun 2020 10:06:29 -0700 (PDT)
MIME-Version: 1.0
References: <CAMj1kXErFuvOoG=DB6sz5HBvDuHDiKwWD8uOyLuxaX-u8-+dbA@mail.gmail.com>
 <20200601231805.207441-1-ndesaulniers@google.com>
 <BYAPR11MB3096A0EA2D03BCB76C91F80AF0830@BYAPR11MB3096.namprd11.prod.outlook.com>
 <CAKwvOdnh6Zh+P9SM_qFiy-9u7Y21fn=byTJtG4fTTRJqqU9bcQ@mail.gmail.com>
 <9f4322a5-eea6-fb65-449c-90f3d85f753e@FreeBSD.org>
 <BYAPR11MB3096904AD67CC83A67A38215F0800@BYAPR11MB3096.namprd11.prod.outlook.com>
In-Reply-To: <BYAPR11MB3096904AD67CC83A67A38215F0800@BYAPR11MB3096.namprd11.prod.outlook.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Thu, 11 Jun 2020 10:06:19 -0700
Message-ID: <CAKwvOdndPdAWVSJ530mgT5onG4zsHExqO79=QvvLvpz51D8LsQ@mail.gmail.com>
Subject: Re: [Devel] Re: [PATCH] ACPICA: fix UBSAN warning using
 __builtin_offsetof
To: "Kaneda, Erik" <erik.kaneda@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_100633_410171_84ACE7F6 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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
 "rjw@rjwysocki.net" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 "glider@google.com" <glider@google.com>, Jung-uk Kim <jkim@freebsd.org>,
 "pcc@google.com" <pcc@google.com>, Ard Biesheuvel <ardb@kernel.org>,
 "dvyukov@google.com" <dvyukov@google.com>,
 "devel@acpica.org" <devel@acpica.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 11, 2020 at 9:45 AM Kaneda, Erik <erik.kaneda@intel.com> wrote:
>
> > From: Jung-uk Kim <jkim@FreeBSD.org>
> >
> > Actually, I think we should let platform-specific acfoo.h decide what to
> > do here, i.e.,
>
> That's a better solution. For Linux, it would look something like this:
>
> --- a/include/acpi/actypes.h
> +++ b/include/acpi/actypes.h
> @@ -508,10 +508,15 @@ typedef u64 acpi_integer;
>
>  #define ACPI_TO_POINTER(i)              ACPI_CAST_PTR (void, (acpi_size) (i))
>  #define ACPI_TO_INTEGER(p)              ACPI_PTR_DIFF (p, (void *) 0)
> -#define ACPI_OFFSET(d, f)               ACPI_PTR_DIFF (&(((d *) 0)->f), (void *) 0)
>  #define ACPI_PHYSADDR_TO_PTR(i)         ACPI_TO_POINTER(i)
>  #define ACPI_PTR_TO_PHYSADDR(i)         ACPI_TO_INTEGER(i)
>
> +/* Platforms may want to define their own ACPI_OFFSET */
> +
> +#ifndef ACPI_OFFSET
> +#define ACPI_OFFSET(d, f)               ACPI_PTR_DIFF (&(((d *) 0)->f), (void *) 0)
> +#endif
> +
>  /* Optimizations for 4-character (32-bit) acpi_name manipulation */
>
>  #ifndef ACPI_MISALIGNMENT_NOT_SUPPORTED
> diff --git a/include/acpi/platform/aclinux.h b/include/acpi/platform/aclinux.h
> index 987e2af7c335..5d1ca6015fce 100644
> --- a/include/acpi/platform/aclinux.h
> +++ b/include/acpi/platform/aclinux.h
> @@ -71,6 +71,11 @@
>  #undef ACPI_DEBUG_DEFAULT
>  #define ACPI_DEBUG_DEFAULT          (ACPI_LV_INFO | ACPI_LV_REPAIR)
>
> +/* Use gcc's builtin offset instead of the default */
> +
> +#undef ACPI_OFFSET
> +#define ACPI_OFFSET(a,b)            __builtin_offsetof(a,b)
> +
>  #ifndef CONFIG_ACPI
>

Looks good at first glance.  Wouldn't actypes.h need to include
platform/acenv.h first though?  Otherwise you put some header
inclusion order dependency on folks who include actypes.h to first
include acenv.h otherwise we're not getting the definition in terms of
__builtin_offsetof.

-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
