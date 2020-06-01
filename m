Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 421EF1EB25F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 01:49:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YTp30Rdhza8A7k2slq4DlmuJjlRMOQ6kwTlFfHGO8WQ=; b=F6/oJQDPKkxoW8
	TMYc1D1Gv+TCLc6Z4mHEeGkSL8M8taOShraREExFNzafk0z4llnNBfph+uELyUtd76qi9hcekJNgf
	SSI4q3jxYtcak2QCpZ4qvr9tNElK+1s+uTR/+boSMPu1eNWbj7uVmvQB8dP8Va3Q9vC+jFy2GXTNr
	LtBRWCdo71R68CjvbVIwIFBEr2bj6wlJ2C64rK5Fby0GEaxMbl1n+sLTc30mQX2HRl/ydEA5Mm797
	0wodg9F+ShYbVYbox+/loVDg+f0EOHXTE1fdz2hqisbP7Gj8EwwMBS7X5uSNPlcDAOZ105CPwaW4N
	Be8LALfQbp105/NY4TMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfuAk-0000Sh-54; Mon, 01 Jun 2020 23:48:50 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfuAe-0000SE-6E
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 23:48:45 +0000
Received: by mail-pj1-x1041.google.com with SMTP id m2so547104pjv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jun 2020 16:48:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dNBmHiSKwvMr5X38foIQI0sKfyxQ431ExlrJTn0/i7Y=;
 b=JP+Lp/jNYkdXX/HqPZKX2SgK5X0i+zDFGOg2ww7dtjG0sp6+PGSQ9bK3jx7AAwgHgJ
 o4FT4hVdzYCxXc0WH1nFHjqoOyqVRS88r7xLjnMssWgONz5eA+xjJ69RP6XO0zAq2X7M
 XJ3HbDqOKrcI58B5+9jcBtMDajE5h35bKOQBKIVMzttYj+uUId6KcRVn55gYO9ZYTHIJ
 90CfC5AreAzmnRK53W2uiqONvL5NPR53F8EQR6ykK0w6XL51XbB86M2HVM8mWb/FGgEn
 JR5eXLsDjabEHuSKeT8o+NWzFLtsVkkP2y157PXkg56HkTU0VZ0WhUg8vG3zI/f55YC8
 01Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dNBmHiSKwvMr5X38foIQI0sKfyxQ431ExlrJTn0/i7Y=;
 b=Qxfl99/ZCBLRThrux+heYB55xI1wgt9Uile9wSVkfLsmtrHkT2X2SNJ8zOWynilQbi
 CuqTLbmBZF/XpGdPZoIryWcNkyCEGVh9fmPlS5HCY2mlMTUNwg4XTzrHaqseK20e2oU0
 eRszUgAQSLrEjp+N4+7ILJvjuvnMqqZVT3nRLMiRSpibCTwhTS28+6O+XnPZ0NUD5jkg
 7mWwo9Vhm6V7C58so/2X5jmYvZvxc8SvmkQ8kd56KXVdrKzRvSfRwBFrBK4J8BPpy/uS
 6OReHX3BU4oZxBaWIxYBPOzA4ZNo6IYXrsTvV67JMU20Ai+gtaa3lx3LfNcFD29U5C3v
 mc7Q==
X-Gm-Message-State: AOAM532AhXIejaBc3K/yORI/KSmBQNT0cN8M+ZOhAVXnj3CHtljDFd97
 5gzqBdNz7CFDubLEWR3wQrrjuV5ui+AsiNYhcN35uA==
X-Google-Smtp-Source: ABdhPJzPdil5JHB2JFiBUPImTahZQgK7CsLdhBg5zRviWYOCKk53kYc+N0bKVKMXxkL7FCDBIFnYLwHPPms3V0bgy48=
X-Received: by 2002:a17:902:724a:: with SMTP id
 c10mr22127472pll.223.1591055321894; 
 Mon, 01 Jun 2020 16:48:41 -0700 (PDT)
MIME-Version: 1.0
References: <CAMj1kXErFuvOoG=DB6sz5HBvDuHDiKwWD8uOyLuxaX-u8-+dbA@mail.gmail.com>
 <20200601231805.207441-1-ndesaulniers@google.com>
 <CAMn1gO7MrbgpEzaAYZ3vNnbWPdSsHhMkDNXq9rZajur+sqtBsw@mail.gmail.com>
In-Reply-To: <CAMn1gO7MrbgpEzaAYZ3vNnbWPdSsHhMkDNXq9rZajur+sqtBsw@mail.gmail.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Mon, 1 Jun 2020 16:48:29 -0700
Message-ID: <CAKwvOd=BgiaiWWkHX=Z4OX927KNGu1CTnvVkhKRJ=vRTQKbu8Q@mail.gmail.com>
Subject: Re: [PATCH] ACPICA: fix UBSAN warning using __builtin_offsetof
To: Peter Collingbourne <pcc@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_164844_229855_B22FEC09 
X-CRM114-Status: GOOD (  12.67  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
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
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Robert Moore <robert.moore@intel.com>,
 "# 3.4.x" <stable@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-acpi@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Alexander Potapenko <glider@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Hanjun Guo <guohanjun@huawei.com>, devel@acpica.org,
 Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
 Dmitry Vyukov <dvyukov@google.com>, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 1, 2020 at 4:37 PM Peter Collingbourne <pcc@google.com> wrote:
>
> On Mon, Jun 1, 2020 at 4:18 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > Will reported UBSAN warnings:
> > UBSAN: null-ptr-deref in drivers/acpi/acpica/tbfadt.c:459:37
> > UBSAN: null-ptr-deref in arch/arm64/kernel/smp.c:596:6
> >
> > Looks like the emulated offsetof macro ACPI_OFFSET is causing these. We
> > can avoid this by using the compiler builtin, __builtin_offsetof.
>
> Would it be better to s/ACPI_OFFSET/offsetof/g the existing users of
> this macro and remove it? It looks like offsetof is already being used
> pervasively in the kernel, and its definition comes from
> <linux/stddef.h>.

I count only 9 uses in the tree, so not too bad a yak shave. Good
idea; I'll send tomorrow short of any other feedback.  I still think
we want the builtin, since we don't want to include stddef.h in the
kernel, I think.
-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
