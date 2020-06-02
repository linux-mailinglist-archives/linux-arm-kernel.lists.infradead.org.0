Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A2031EC218
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 20:47:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zCTTG+LGSgGIlqKoHRCLi2A80fWCWTYOogqil2F41LI=; b=TvQ729ynf4jnJA
	z0Z1Ebi8UhMH8NrsafjRXSTP4DV3YC2dJJFfPLUKAu3DMWFyz+jfr5B7Q05rnlSTlg/sHaHqWaSnD
	9xaa1EgSh+hSW+vJAKT/HuBpL8kRmuYbswMOjqT593/7uMKJCDMPhAhTxb4RCMIOavtO8K084fnDL
	8UXBZL3ozlaby4UwdLT9XZnptoe6Wu8HOlKxK0VMqcSsmiw66WJXEEJLRAwd9t4x80rZxirfXeqwi
	uVJhIf3C4bZYtg0Rvq9P//8GaTAwEWpdkst5KuFNFq5wFbjxjq/xB6UZJnLHe1uv7nODg3wTLTXbV
	7FEoY43nDfwz7M2DkiKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgBw8-0004Jw-MT; Tue, 02 Jun 2020 18:46:56 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgBvw-0004GL-Bv
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 18:46:45 +0000
Received: by mail-pj1-x1042.google.com with SMTP id ga6so1863803pjb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jun 2020 11:46:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=d4Fn6K9sSJmLeIDx+5ZYAe4QSbvn6y+nwpagCeGiUag=;
 b=eKdiwwUZgObjzDiAaWXu1fITlLXmWFNVxyer43d44+MrNvL++Xiz3qSBGvd3qGRHjI
 Tttx99hIYk/PtTW7oaCImk873psV+O0OzGhBXZ/uP9j5e0HmzUb/zO/QWkfmFl2vI2Kx
 PJB9AzlQsUHdGfyk1Q1wimhqFQbpxBSBHlBtOPR+Jsot0TQVv/8KFMZ0z76tCvV50LQW
 DWjAQ0Dr3AHCr/t/5eDi1u7XwiAkTtGOa01iij+qy8b+nONExiTZz0fOchK5yF/tO5zp
 hVKs02MSt1EtfZRUA3Qu/ce5Dk2Z/2sDkv60pJ4ehO06t140xSTjfjem19mVvbE+RZte
 VtDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=d4Fn6K9sSJmLeIDx+5ZYAe4QSbvn6y+nwpagCeGiUag=;
 b=QHUG8udVZMFja/0AiPmX38xsRrAu6Km05gsLtLkUOE0CJIsrUTbVHoYxC62GnuIkcm
 a37YzpoNaaLQ7g/9uUgziPi8qhRh/+t15xlpETe3UsU0p+5GkfMQ96dunjzgHgOT6rAd
 HmwAorLm2ud5bnzPG9+YNoSho+euY5rsHNXhx7nn7/mrzqpplcT8nzSov3mzm1+5Toiu
 lLQf3ozb/VT7Y2JdL6236+pWFuwhfYxhphMm+v/eMTP53t/Eb/TfsrzSp+uW4e1i4Q2S
 vKJcf6xN7qtB+8tAvNAt5+LwO2ZMPSreAfFc1BhnJHSQMFycow3X5KSI2KjgdrIKfatZ
 crWg==
X-Gm-Message-State: AOAM533gOFCzHCoCnww+KfeOSfu0Flc4iMgGuajk6Fq5N/793poZGeK3
 l3CRHU/qu9gbIfvQkXsL5ODV2gMIuw7pNg9g5A3ToA==
X-Google-Smtp-Source: ABdhPJxnlzDD9LjX8NOXuBt0jcdY2ooVkC2hieTEZiEeTaqVi66E5hIZf0OS4CPzGdPPb39vpov2an7eKEIF2KO3vvA=
X-Received: by 2002:a17:902:341:: with SMTP id
 59mr24917643pld.119.1591123603136; 
 Tue, 02 Jun 2020 11:46:43 -0700 (PDT)
MIME-Version: 1.0
References: <CAMj1kXErFuvOoG=DB6sz5HBvDuHDiKwWD8uOyLuxaX-u8-+dbA@mail.gmail.com>
 <20200601231805.207441-1-ndesaulniers@google.com>
 <BYAPR11MB30969737340044437013BF44F08B0@BYAPR11MB3096.namprd11.prod.outlook.com>
In-Reply-To: <BYAPR11MB30969737340044437013BF44F08B0@BYAPR11MB3096.namprd11.prod.outlook.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Tue, 2 Jun 2020 11:46:31 -0700
Message-ID: <CAKwvOdmsCmPFiDOq7AYUyEx=60B=qo8u9yhnJDQ6nd6Ew7xDkQ@mail.gmail.com>
Subject: Re: [PATCH] ACPICA: fix UBSAN warning using __builtin_offsetof
To: "Kaneda, Erik" <erik.kaneda@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_114644_414651_9559BFF8 
X-CRM114-Status: GOOD (  15.01  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "will@kernel.org" <will@kernel.org>, "Wysocki,
 Rafael J" <rafael.j.wysocki@intel.com>,
 "rjw@rjwysocki.net" <rjw@rjwysocki.net>, "Moore,
 Robert" <robert.moore@intel.com>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
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

On Mon, Jun 1, 2020 at 5:03 PM Kaneda, Erik <erik.kaneda@intel.com> wrote:
>
>
> Hi,
>
> > Will reported UBSAN warnings:
> > UBSAN: null-ptr-deref in drivers/acpi/acpica/tbfadt.c:459:37
> > UBSAN: null-ptr-deref in arch/arm64/kernel/smp.c:596:6
> >
> > Looks like the emulated offsetof macro ACPI_OFFSET is causing these. We
> > can avoid this by using the compiler builtin, __builtin_offsetof.
>
> I'll take a look at this tomorrow
> >
> > The non-kernel runtime of UBSAN would print:
> > runtime error: member access within null pointer of type for this macro.
>
> actypes.h is owned by ACPICA so we typically do not allow compiler-specific
> extensions because the code is intended to be compiled using the C99 standard
> without compiler extensions. We could allow this sort of thing in a Linux-specific
> header file like include/acpi/platform/aclinux.h but I'll take a look at the error as well..

If I'm not allowed to touch that header, it looks like I can include
<linux/stddef.h> (rather than my host's <stddef.h>) to get a
definition of `offsetof` thats implemented in terms of
`__builtin_offsetof`.  I should be able to use that to replace uses of
ACPI_OFFSET.  Are any of these off limits?

$ grep -rn ACPI_OFFSET
arch/arm64/include/asm/acpi.h:34:#define ACPI_MADT_GICC_MIN_LENGTH
ACPI_OFFSET(  \
arch/arm64/include/asm/acpi.h:41:#define ACPI_MADT_GICC_SPE
(ACPI_OFFSET(struct acpi_madt_generic_interrupt, \
include/acpi/actbl.h:376:#define ACPI_FADT_OFFSET(f)             (u16)
ACPI_OFFSET (struct acpi_table_fadt, f)
drivers/acpi/acpica/acresrc.h:84:#define ACPI_RS_OFFSET(f)
  (u8) ACPI_OFFSET (struct acpi_resource,f)
drivers/acpi/acpica/acresrc.h:85:#define AML_OFFSET(f)
  (u8) ACPI_OFFSET (union aml_resource,f)
drivers/acpi/acpica/acinterp.h:17:#define ACPI_EXD_OFFSET(f)
(u8) ACPI_OFFSET (union acpi_operand_object,f)
drivers/acpi/acpica/acinterp.h:18:#define ACPI_EXD_NSOFFSET(f)
(u8) ACPI_OFFSET (struct acpi_namespace_node,f)
drivers/acpi/acpica/rsdumpinfo.c:16:#define ACPI_RSD_OFFSET(f)
 (u8) ACPI_OFFSET (union acpi_resource_data,f)
drivers/acpi/acpica/rsdumpinfo.c:17:#define ACPI_PRT_OFFSET(f)
 (u8) ACPI_OFFSET (struct acpi_pci_routing_table,f)

-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
