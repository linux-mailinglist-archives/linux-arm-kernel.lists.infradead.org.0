Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C686AE668
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 11:13:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KPBn81qqBZth0fe9T0h5sk0c/BVkv69poh/XOitFkm4=; b=lhhgpyvdga1kwC
	4QPdSiMdb61xDbUHBiud06ERx4V4sNmSmaQugUzDYG3T//3w6Vez/sagsk6MkWDhLJZXcRejSdakq
	yoz+0zgfkd01q7O77YnBIQ0lErfWBUnZYMaiacGwoe5tLq0kBvJ5OYMGZpGhGLJKsqYsvuilVZA3v
	9bopz0LhkKwKNbXo91uNW9LsD+zQNQWc89VgZ8x7UcGLoS6F3USV+7PpChPJoP6elWmFAzWNoy5WL
	HCCyNE1KxyOuuUuN1n27pQV5114tpRtJseNydSB4oxk+rAvJEGABHPAKNbiS8KhPj6++pMwnJz4cv
	L70pVQZAmdA6WFRH/Jog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7cDT-0006Cc-HS; Tue, 10 Sep 2019 09:13:39 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7cCx-0005zg-Lz
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 09:13:09 +0000
Received: by mail-ed1-x544.google.com with SMTP id c19so16300996edy.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 02:13:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jbBZuUfX3eYzsTIc3XZwtrg9Htc+jzFYCQ9N85/KvC8=;
 b=Z5OxgccHbfn9g3PIB8bPABfGmcCaxxb1J7F7+yr0+pGuVMBBQo8ANum7+26tfvS4RC
 G9MhvM4u2bE+JEv+ewuotVeHnoUnEMymJcCm6fbOq3w5MhGsy0hCiKquBnVNH+5tUTJe
 KVSszKycXH/ARdNzK93YM+Nr1islpESB3U2PpA44vFenbEcXrBvdSr1Jl8cKPONV0f7t
 lMNh/HHY7OgbawBfOYH5CmxcbwMInVqOQydF3uyjVPuhXfy8POmejGJXwNpdOnq1ZnwW
 ChZVNZGSzPgQe1quf1GT8CWiuf1xFhGrKS5XKkCrtKg005TW0Ma1UYXs8TgHunhNocL4
 4rYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jbBZuUfX3eYzsTIc3XZwtrg9Htc+jzFYCQ9N85/KvC8=;
 b=MJzHPYbTnVMFdb0jk43AwOO86xeKFW/kLTILllLV3ohehJaxz9pQRWDB3PMRXBx7su
 JZHaY4eTskJvWRX6p+fwAKifJ8XkzBSQDQ6NWS0ZsQ0A8EbanIjFjkBuBvUHV9Tbrk7f
 +NJW0jTgN6on+XwWmvksnnHIcfMNyr0qV8cyLbwF+7b+1KW1tALcPUpa/F1z3quMM2PG
 i6sDlWdVetneTa86GFm0Ug5AGdl7MZ/z6eWq6Lg8SSKMvnZkxj8ieShOefKivZ7Jqy6S
 QSxZcx1kPj5sUIg4PWs1Fzt9idSER5X9Z7PZHmt89YnK4aJCdG6+u9ZF38BjzQG2SLan
 DW9A==
X-Gm-Message-State: APjAAAU0irExKVCmn5ZWtToBY4RHYkcI4B9xsgsbVPSsESvH3niV5FQ+
 G7oMgF8OWOJBem5dz6CFr+AvgIBZEbolZdU5mdWUJQ==
X-Google-Smtp-Source: APXvYqwiy51QDBEUeHPFO4jWirM5BDZX1zPUw+Hne5qlRbnCZgObrJm78xql+txsNxH8uVTBgiORMGERQfs9UNrBN84=
X-Received: by 2002:a17:906:414:: with SMTP id
 d20mr23875393eja.165.1568106785200; 
 Tue, 10 Sep 2019 02:13:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190909181221.309510-1-pasha.tatashin@soleen.com>
 <20190909181221.309510-6-pasha.tatashin@soleen.com>
 <9135be3e-cf7e-821d-928d-db98aa3ec9c8@suse.com>
In-Reply-To: <9135be3e-cf7e-821d-928d-db98aa3ec9c8@suse.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Tue, 10 Sep 2019 10:12:54 +0100
Message-ID: <CA+CK2bCGgAXDdjDVS1KYj8uYWmeBM6cTJ3Y-DXZ_8+93uCiV7w@mail.gmail.com>
Subject: Re: [PATCH v4 05/17] arm64: hibernate: remove gotos in
 create_safe_exec_page
To: Matthias Brugger <mbrugger@suse.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_021307_768505_102830CF 
X-CRM114-Status: GOOD (  16.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-mm <linux-mm@kvack.org>, James Morse <james.morse@arm.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>, will@kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> On 09/09/2019 20:12, Pavel Tatashin wrote:
> > Usually, gotos are used to handle cleanup after exception, but
> > in case of create_safe_exec_page there are no clean-ups. So,
> > simply return the errors directly.
> >
>
> While at it, how about also cleaning up swsusp_arch_resume() which has the same
> issue.

Thank you for suggestion. I will do cleanups in swsusp_arch_resume() as well.

Pasha

>
> Regards,
> Matthias
>
> > Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
> > Reviewed-by: James Morse <james.morse@arm.com>
> > ---
> >  arch/arm64/kernel/hibernate.c | 34 +++++++++++-----------------------
> >  1 file changed, 11 insertions(+), 23 deletions(-)
> >
> > diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
> > index 47a861e0cb0c..7bbeb33c700d 100644
> > --- a/arch/arm64/kernel/hibernate.c
> > +++ b/arch/arm64/kernel/hibernate.c
> > @@ -198,7 +198,6 @@ static int create_safe_exec_page(void *src_start, size_t length,
> >                                unsigned long dst_addr,
> >                                phys_addr_t *phys_dst_addr)
> >  {
> > -     int rc = 0;
> >       pgd_t *trans_pgd;
> >       pgd_t *pgdp;
> >       pud_t *pudp;
> > @@ -206,47 +205,37 @@ static int create_safe_exec_page(void *src_start, size_t length,
> >       pte_t *ptep;
> >       unsigned long dst = get_safe_page(GFP_ATOMIC);
> >
> > -     if (!dst) {
> > -             rc = -ENOMEM;
> > -             goto out;
> > -     }
> > +     if (!dst)
> > +             return -ENOMEM;
> >
> >       memcpy((void *)dst, src_start, length);
> >       __flush_icache_range(dst, dst + length);
> >
> >       trans_pgd = (void *)get_safe_page(GFP_ATOMIC);
> > -     if (!trans_pgd) {
> > -             rc = -ENOMEM;
> > -             goto out;
> > -     }
> > +     if (!trans_pgd)
> > +             return -ENOMEM;
> >
> >       pgdp = pgd_offset_raw(trans_pgd, dst_addr);
> >       if (pgd_none(READ_ONCE(*pgdp))) {
> >               pudp = (void *)get_safe_page(GFP_ATOMIC);
> > -             if (!pudp) {
> > -                     rc = -ENOMEM;
> > -                     goto out;
> > -             }
> > +             if (!pudp)
> > +                     return -ENOMEM;
> >               pgd_populate(&init_mm, pgdp, pudp);
> >       }
> >
> >       pudp = pud_offset(pgdp, dst_addr);
> >       if (pud_none(READ_ONCE(*pudp))) {
> >               pmdp = (void *)get_safe_page(GFP_ATOMIC);
> > -             if (!pmdp) {
> > -                     rc = -ENOMEM;
> > -                     goto out;
> > -             }
> > +             if (!pmdp)
> > +                     return -ENOMEM;
> >               pud_populate(&init_mm, pudp, pmdp);
> >       }
> >
> >       pmdp = pmd_offset(pudp, dst_addr);
> >       if (pmd_none(READ_ONCE(*pmdp))) {
> >               ptep = (void *)get_safe_page(GFP_ATOMIC);
> > -             if (!ptep) {
> > -                     rc = -ENOMEM;
> > -                     goto out;
> > -             }
> > +             if (!ptep)
> > +                     return -ENOMEM;
> >               pmd_populate_kernel(&init_mm, pmdp, ptep);
> >       }
> >
> > @@ -272,8 +261,7 @@ static int create_safe_exec_page(void *src_start, size_t length,
> >
> >       *phys_dst_addr = virt_to_phys((void *)dst);
> >
> > -out:
> > -     return rc;
> > +     return 0;
> >  }
> >
> >  #define dcache_clean_range(start, end)       __flush_dcache_area(start, (end - start))
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
