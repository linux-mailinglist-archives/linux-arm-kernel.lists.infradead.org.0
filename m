Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF8BD949C6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 18:25:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3XE3jqutmYN7bXYmh+2VtgWCiqUEPX8rIZmHsfQoScc=; b=WdGDj5nanjjYR4
	T5wpKL6eVsMMUgMDL8EE+GyYs8/0+tcKE27TcNQaAxy4KbrRWP7ZwTaCR+oDI2et4Q0rCJP843Zpl
	j1qYc/I4c5YiwozxzmRDPSoBUl5EGyHkzkQIg5OQB9RnkfwLQlBz7LO6svbxxC6qI8nSg+AbwKqfI
	9t+o/waMTcS6zst2jRseAQZoyeLNQmmFP9b8ijFgPJGtcnl9lvYIFX5MWfcLAoNPisHHdMxT1vWGT
	Wl3sh4WZvxIZPD7YxidrydLxNTFXYGybfhW8MXy1T980AVd1Wk//LZFI5h0/NH1zsP0lfpnEyto2o
	k4f6ohZIquwcGza/abvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzkTI-0001fr-Ku; Mon, 19 Aug 2019 16:25:28 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzkTA-0001eO-Tk
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 16:25:22 +0000
Received: by mail-ed1-x544.google.com with SMTP id f22so2230168edt.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 09:25:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FTybdQSbJYXviMaMHMnMLGJOZBBRUnDKBVwSpon3+iQ=;
 b=V6Ye+hp2Gl1Ax/97+paIXXGQgJ1el9suKrpEMODehYp5ZX9LIhVfYpDR2ESokcsHRS
 Aaz3p/FE/TRUrMt+RPQ6/lJGgzcI3HJwwQGGz10VNFg3QS8za2uv5R7hlAm4sQDIzvbD
 sDwE1+rbxFUH1L0rGmmn2OAaKuqDIESg6uehSYO2UG5pe45fYOj2I23wddTYtUzVCZzy
 r01SGTGDPR8juGpx0lo2cvmPh8F97yyRqb4hvMacpxOunjoc/ryvfLHdcgVmsStgU9zY
 KKgdk1hu/HOVk0nBmNczKcAHngdnw8qioLsHdDXAqNLoCV5Xng/kc6cOfjjEkbXgerKM
 kEJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FTybdQSbJYXviMaMHMnMLGJOZBBRUnDKBVwSpon3+iQ=;
 b=adiBEgr0LO6wWqJmiHDnlt6f5h+rRBT7HInGKjBfcDUI/9ICzMfPqHOMa6JKV0fFEu
 V3GfRcfCgpql8hB/YxC6+g/kJ0uKxDcVFN3dteokK5f4gOtyt6cbalNePaZ1BFgIe0sL
 dd7feEFuWeYOcJKLOe9Lcr5HbIoQN27/xOZIfrPlJtH2Xmyx9lQze3xb8ABtfcAlEBRH
 ZePATKNdMntzk0dxjIeQuwrSNiDX5Sp91ZPjXOskEZF44LdaXu5pWj0xyUzkjMp73AGD
 RnpUIuhOntEi8CiLSEZZZCB7tTRVem438VGel5SmFT5DlK4PUa7gsA+YE+jxLHN/T5Rw
 cBBQ==
X-Gm-Message-State: APjAAAWcUdIWjSm/XSdA1jJ2Hn/Ykr5bRfrqatuS4wQODb89zOvF+dA6
 BbfTrd9BuFUlvxhQ/k2x+EOQO4LRDSEQWCWk9Pd5Eg==
X-Google-Smtp-Source: APXvYqx6DaFjnU6QugCtFRq+z73auQsM7avscMrrbc99LuibAhGgZ9NPXOzVtge16aLCOwfiY8fafEF9yfKLFmVJPQk=
X-Received: by 2002:aa7:c552:: with SMTP id s18mr13639157edr.0.1566231918418; 
 Mon, 19 Aug 2019 09:25:18 -0700 (PDT)
MIME-Version: 1.0
References: <20190817024629.26611-1-pasha.tatashin@soleen.com>
 <20190817024629.26611-3-pasha.tatashin@soleen.com>
 <20190819155014.GD9927@lakrids.cambridge.arm.com>
In-Reply-To: <20190819155014.GD9927@lakrids.cambridge.arm.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Mon, 19 Aug 2019 12:25:07 -0400
Message-ID: <CA+CK2bCnGVdNS=1wRBFhzKTkQJoi1=uD0Kof=pcePfG2eKHUYw@mail.gmail.com>
Subject: Re: [PATCH v2 02/14] arm64, hibernate: create_safe_exec_page cleanup
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_092520_968365_FE663B54 
X-CRM114-Status: GOOD (  22.70  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sasha Levin <sashal@kernel.org>, Vladimir Murzin <vladimir.murzin@arm.com>,
 Jonathan Corbet <corbet@lwn.net>, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, James Morris <jmorris@namei.org>,
 linux-mm <linux-mm@kvack.org>, James Morse <james.morse@arm.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, will@kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

Thank you for your review comments. My replies below:

On Mon, Aug 19, 2019 at 11:50 AM Mark Rutland <mark.rutland@arm.com> wrote:
>
> On Fri, Aug 16, 2019 at 10:46:17PM -0400, Pavel Tatashin wrote:
> > create_safe_exec_page() is going to be split into two parts in preparation
> > of moving page table handling code out of hibernate.c
> >
> > Remove allocator parameter, and rename dst to page. Also, remove the
> > goto's, as we can return directly without cleanups.
>
> It would be nice if you could do the goto/allocator/rename changes as
> separate patches, since it's vastly easier to verify each change in
> isolation that way.

Sure, I will split these changes into separate patches in the next
version of this patch series.

>
> What's the point of the rename? It's inconsistent with the phys_dst_addr
> that you leave as-is, so I'm not sure that's worthwhile.

dst_addr, phys_dst_addr VA/PA destination addresses. But, page is a
buffer in the current VA space (hence changed to void *), dst looked
confusing as it seemed as it was part of the
destination addresses.

>
> >
> > Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
> > ---
> >  arch/arm64/kernel/hibernate.c | 60 +++++++++++++++--------------------
> >  1 file changed, 26 insertions(+), 34 deletions(-)
> >
> > diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
> > index 9341fcc6e809..96b6f8da7e49 100644
> > --- a/arch/arm64/kernel/hibernate.c
> > +++ b/arch/arm64/kernel/hibernate.c
> > @@ -196,57 +196,51 @@ EXPORT_SYMBOL(arch_hibernation_header_restore);
> >   */
> >  static int create_safe_exec_page(void *src_start, size_t length,
> >                                unsigned long dst_addr,
> > -                              phys_addr_t *phys_dst_addr,
> > -                              void *(*allocator)(gfp_t mask),
> > -                              gfp_t mask)
> > +                              phys_addr_t *phys_dst_addr)
> >  {
> > -     int rc = 0;
> > +     void *page = (void *)get_safe_page(GFP_ATOMIC);
> > +     pgd_t *trans_table;
>
> The addition of this trans_table variable wasn't mentioned in the commit
> message...
>
> > +     trans_table = (void *)get_safe_page(GFP_ATOMIC);
> > +     if (!trans_table)
> > +             return -ENOMEM;
> >
> > -     pgdp = pgd_offset_raw(allocator(mask), dst_addr);
> > +     pgdp = pgd_offset_raw(trans_table, dst_addr);
>
> > -     write_sysreg(phys_to_ttbr(virt_to_phys(pgdp)), ttbr0_el1);
> > +     write_sysreg(phys_to_ttbr(virt_to_phys(trans_table)), ttbr0_el1);
>
>
> ... and I guess you're trying to ensure that we program the TTBR with
> the correct base address, without the offset of whatever pgd entry we
> happen to have plumbed in?
>
> I think that's a fix, and should come before any other cleanup or
> rework.

Yes.

>
> If you can respin that specific change with s/trans_table/pgdir/, that
> would make sense to me.

I will split this patch into several changes. I will describe
trans_table rational in different e-mail. There we will decide what
namespace to use.

Thank you,
Pasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
