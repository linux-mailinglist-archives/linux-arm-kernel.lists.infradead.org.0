Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 488991EB247
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 01:38:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fah0/p8jAULwRDITLzW1HkKTqQsoLDdCg275yyfy4KU=; b=IidXCYJiboNQ23
	sJfETOUBFeEpL63anxDWl1BlFg1jVnMcd5X4x4JjJ2KfT2blJfAWoUQl7yH7v2RuGBTjUVJ5brn09
	NIm9DMQcEakrQodvDDs1dtKWpSBSR+wiPfZdG7/QLtqVWtkL0Nr3Igii8dYmJRJLf7nT7lgVqX2Qy
	FQzoYtMnj+VQzOJ8zgUGyJDrXIJLeKhbq90u0k1K6/DjkRiNDggUedRrE+AAMMWutGoWk8tLbBcmv
	7G1zLyHMPp/0JDh0nfX2CuKkCFitmLWIsyPd1Q9yO93SRt4O1Dy/u+9bi9O+wGb7IulFPThGGIw+7
	owQdAAHisFJIFvBPLWfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfu0L-0002TE-ON; Mon, 01 Jun 2020 23:38:05 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfu0F-0002SX-2W
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 23:38:00 +0000
Received: by mail-vs1-xe42.google.com with SMTP id r10so960466vsa.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jun 2020 16:37:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=h8sFjChvsOnugroGpTaalX2UTFDmVFNgsXBxH4Psjpo=;
 b=gy5WnoYjwVwT+AdnTnVAcMO6xsUKQ3HV+niGGFpzvpJ71eeOdaiZZSd7kfAobSbMVB
 XOrGkvuWpDYrUOFUBsilWffiTomQfNPW7uKYsoyR5y2XD36uCo2cUMgt6nHkaWzaO123
 T/6WbGm0oG6415mxA7zL7ifNyV53xlL8haCkWgNxo3DqkVlGD6vVClPWynqWqBMIFxOG
 CKMngEVfHsCMjzEGuOCRn2tiWiHx9PpwmVZzhCGVvXXb9ZRuJmjy4V3WDGb/sf8PFy6t
 YX4uEKTDgj/YpyQo0UeuDPOfsqKmCY+dYqlnG3yA7r72gF+ohPsap55WdgXcuBtl8nrm
 7LHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=h8sFjChvsOnugroGpTaalX2UTFDmVFNgsXBxH4Psjpo=;
 b=oC3eDJa6lv0FNqwwTHNjP+a+mBrXFycjdvbS1FarPcfjEycBYxFNy/0YfzTTu0AZVe
 QMbY0DAvuPzjY0OLoMRz13v0hnNkqfX1bPhfLunQ1TEDVVTGpQS01NCmOSLFgwIm/NEf
 Qpe9IuNUOj+mNjFC4qxAao51+D3kmLZpq3iJRpYmP/fsIdgOpRrNXhJhkHxVUELpLAZ2
 +a0Ic7t71kT0sXkPAcOcfOiqj2mo62AgEr2lBSwE1q375CBpTmkql0p+C2/Uh5ylFRDY
 X0lif8eWC8I1Do5PqHN1gByAfqiI009nPFIucwZYoNXvArRZ74OKUl8/mKnG9nXb+V5E
 /0Ew==
X-Gm-Message-State: AOAM533vEHcuSf4pMVo++l4ON6IfsqBPN+UdzJ8wMISnVeb3mJ9bA9Ty
 pNFC6OaxMlrx3TFNNiCQzTB84N3XK6yAEr5npi1l3g==
X-Google-Smtp-Source: ABdhPJzg702J1EkAo7ZILGUxg4+n2COylsnsv/n0Xy8wNQfF/OkYz+Zf11gC56/0p8tSEx58JooMPRVb9HRwD7H3vnE=
X-Received: by 2002:a67:ce86:: with SMTP id c6mr16538165vse.51.1591054676310; 
 Mon, 01 Jun 2020 16:37:56 -0700 (PDT)
MIME-Version: 1.0
References: <CAMj1kXErFuvOoG=DB6sz5HBvDuHDiKwWD8uOyLuxaX-u8-+dbA@mail.gmail.com>
 <20200601231805.207441-1-ndesaulniers@google.com>
In-Reply-To: <20200601231805.207441-1-ndesaulniers@google.com>
From: Peter Collingbourne <pcc@google.com>
Date: Mon, 1 Jun 2020 16:37:45 -0700
Message-ID: <CAMn1gO7MrbgpEzaAYZ3vNnbWPdSsHhMkDNXq9rZajur+sqtBsw@mail.gmail.com>
Subject: Re: [PATCH] ACPICA: fix UBSAN warning using __builtin_offsetof
To: Nick Desaulniers <ndesaulniers@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_163759_130018_7D60502D 
X-CRM114-Status: GOOD (  16.97  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Erik Kaneda <erik.kaneda@intel.com>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, rjw@rjwysocki.net,
 Robert Moore <robert.moore@intel.com>, stable@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-acpi@vger.kernel.org, lorenzo.pieralisi@arm.com,
 Alexander Potapenko <glider@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, guohanjun@huawei.com,
 devel@acpica.org, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>, Dmitry Vyukov <dvyukov@google.com>,
 Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 1, 2020 at 4:18 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> Will reported UBSAN warnings:
> UBSAN: null-ptr-deref in drivers/acpi/acpica/tbfadt.c:459:37
> UBSAN: null-ptr-deref in arch/arm64/kernel/smp.c:596:6
>
> Looks like the emulated offsetof macro ACPI_OFFSET is causing these. We
> can avoid this by using the compiler builtin, __builtin_offsetof.

Would it be better to s/ACPI_OFFSET/offsetof/g the existing users of
this macro and remove it? It looks like offsetof is already being used
pervasively in the kernel, and its definition comes from
<linux/stddef.h>.

Peter


Peter

> The non-kernel runtime of UBSAN would print:
> runtime error: member access within null pointer of type
> for this macro.
>
> Link: https://lore.kernel.org/lkml/20200521100952.GA5360@willie-the-truck/
> Cc: stable@vger.kernel.org
> Reported-by: Will Deacon <will@kernel.org>
> Suggested-by: Ard Biesheuvel <ardb@kernel.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  include/acpi/actypes.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/include/acpi/actypes.h b/include/acpi/actypes.h
> index 4defed58ea33..04359c70b198 100644
> --- a/include/acpi/actypes.h
> +++ b/include/acpi/actypes.h
> @@ -508,7 +508,7 @@ typedef u64 acpi_integer;
>
>  #define ACPI_TO_POINTER(i)              ACPI_CAST_PTR (void, (acpi_size) (i))
>  #define ACPI_TO_INTEGER(p)              ACPI_PTR_DIFF (p, (void *) 0)
> -#define ACPI_OFFSET(d, f)               ACPI_PTR_DIFF (&(((d *) 0)->f), (void *) 0)
> +#define ACPI_OFFSET(d, f)               __builtin_offsetof(d, f)
>  #define ACPI_PHYSADDR_TO_PTR(i)         ACPI_TO_POINTER(i)
>  #define ACPI_PTR_TO_PHYSADDR(i)         ACPI_TO_INTEGER(i)
>
> --
> 2.27.0.rc2.251.g90737beb825-goog
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
