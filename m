Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3729ABEEC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 19:41:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nma5CTaGmXsYLLD8EKAGv7PPgKHICFBPNpJmVwWzZMs=; b=LmE6e6S75lPkto
	51bHkzMCXv4MgQ7+QIMHeqMP+eaFMWv44isYTq1/8dUKjXy990UL9fxfXfaOy+4KA2U8IiBVXXqhS
	ERtW8XvMGts6RkViuYLyX3n2F9LSEssLK7zrfgBu8fwlmjh9ufNazR4kglYCUem8oaSjTWzNBBi5W
	K9rchiRe50978USEf1Yw75DETYw+1PztvfpjqtbT2ZSDdRclLpHGaJM0kInYHTNeSNdSYTIpkN7+B
	RoMBKGhzDAGntbBowttYJfw5UjdP5dR0p0yvGmVmy1N2JYc22TtpLT/WIvvtpdCj7UNOVglszcIO5
	DHWNpMavxgzdbeJUOMew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6IEx-00006r-Qo; Fri, 06 Sep 2019 17:41:44 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6IEk-0008WO-Dy
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 17:41:32 +0000
Received: by mail-ed1-x543.google.com with SMTP id a23so4776253edv.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Sep 2019 10:41:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VBkiR/7BisGtZVmNVXhHtJrfmofi1qU8Pxcjpjv/ZgU=;
 b=KWbZvsNIkISQq4DJ0Jn0+DC13xFv36DJ+INz1iCwsDURlinnxi/FqltluIcUdyKEH+
 rohLlAAcGa9S/ZYLvc1vTaR6e7aQaHawkNyzLp29w4f6Au1gxqx6ccQi15xWrUysZLko
 l0O4EcJcNb3Zxrza5Xu2Cdd0Q8c1MNJiep4Y23PuKjCm1JHlOUjUXO3rjxiUgpMuxdBZ
 195WYeYAEX+sfEiPtjph8YRPHJ5jQAWbkYH6/UE6sgH5I3Tkdk2sSbsvvqd+Xnpv0uvu
 1ilSBFkcIXgD0EgHuYTfM1YDM5ly+poGMtxFMSDOaOGhgSkdDDpWTmBO4MBPmbtsnmHo
 MKVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VBkiR/7BisGtZVmNVXhHtJrfmofi1qU8Pxcjpjv/ZgU=;
 b=cmKFcmNiKWq6rmDe8AvsHC5uh40LaFT96WUw06KfwSZGOJXWSPm6wrDGPjkLoRw5n4
 x0MUGSH3NSeNEbzIjCNNdm/b7fBwt2rHkHy1Q3nBrV5/gmDWlTdgxrOg3LR1paKvh8ry
 w9j7MVGV5r5BtUKQviYUE376teTjCeYBudMkSGEIr1aBGEBMmGr5x0Uh4ugVsDVRKjEn
 pMqxecyGT2C1ouCT4W7MIvyK2GhFNuyCPeC/Q6PV8eRvSy3K3G5ifZxLUjU+ZFTkrqo1
 w9sY4rdINelsa+Dht8762VBb2m2ONTkPE/K/HnabOf6KFOEleFXpF5XKNMO685rUk2MM
 ZxkA==
X-Gm-Message-State: APjAAAVWNATkxHbsa00mLK9lfDA0CDKFamwYRXkiox7Y93PBcoCSb6V7
 xB70I5FD9UipJNkQMXyxCqt9l/nzC8T8LycNGmECGg==
X-Google-Smtp-Source: APXvYqzdydAQq2XsQ/paSb9m4rgwscf0/CCdiPGGGSWL+1ARUwePukKygj3cKHXfmSeUdjAS/Egx8Zb0S9m9dpj+AVQ=
X-Received: by 2002:aa7:c40c:: with SMTP id j12mr11037477edq.80.1567791688713; 
 Fri, 06 Sep 2019 10:41:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190821183204.23576-1-pasha.tatashin@soleen.com>
 <20190821183204.23576-8-pasha.tatashin@soleen.com>
 <f1db863a-de57-2d1a-6bec-6020b2130964@arm.com>
In-Reply-To: <f1db863a-de57-2d1a-6bec-6020b2130964@arm.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Fri, 6 Sep 2019 13:41:17 -0400
Message-ID: <CA+CK2bDTVGm6pNRGQx7eAyEP6m0xr9X1No_=qgUOTDAoL9uigw@mail.gmail.com>
Subject: Re: [PATCH v3 07/17] arm64, hibernate: move page handling function to
 new trans_pgd.c
To: James Morse <james.morse@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_104130_888056_6F86FBA5 
X-CRM114-Status: GOOD (  17.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Vladimir Murzin <vladimir.murzin@arm.com>, Jonathan Corbet <corbet@lwn.net>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, James Morris <jmorris@namei.org>,
 linux-mm <linux-mm@kvack.org>, "Eric W. Biederman" <ebiederm@xmission.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, will@kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 6, 2019 at 11:18 AM James Morse <james.morse@arm.com> wrote:
>
> Hi Pavel,
>
> On 21/08/2019 19:31, Pavel Tatashin wrote:
> > Now, that we abstracted the required functions move them to a new home.
> > Later, we will generalize these function in order to be useful outside
> > of hibernation.
>
> > diff --git a/arch/arm64/mm/trans_pgd.c b/arch/arm64/mm/trans_pgd.c
> > new file mode 100644
> > index 000000000000..00b62d8640c2
> > --- /dev/null
> > +++ b/arch/arm64/mm/trans_pgd.c
> > @@ -0,0 +1,211 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +
> > +/*
> > + * Copyright (c) 2019, Microsoft Corporation.
> > + * Pavel Tatashin <patatash@linux.microsoft.com>
>
> Hmmm, while line-count isn't a useful metric: this file contains 41% of the code that was
> in hibernate.c, but has stripped the substantial copyright-pedigree that the hibernate
> code had built up over the years.
> (counting lines identified by 'cloc' as code, not comments or blank)
>
> If you are copying or moving a non trivial quantity of code, you need to preserve the
> copyright. Something like 'Derived from the arm64 hibernate support which has:'....

I will do that.  The copyright thing was meant to appear in
"generalization" patch that comes later, where I unified most of the
code to be symmetric.
So, I will add it there, and also do the derived message that you suggested.

>
>
> > + */
> > +
> > +/*
> > + * Transitional tables are used during system transferring from one world to
> > + * another: such as during hibernate restore, and kexec reboots. During these
> > + * phases one cannot rely on page table not being overwritten.
>
> I think you need to mention that hibernate and kexec are rewriting memory, and may
> overwrite the live page tables, therefore ...

Will add, thank you.

Pasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
