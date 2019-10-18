Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B37C8DD07B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 22:38:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=6fBVKeKVVCGcoiKHsD1UPCxM8wzipJAipHxh7Ray7a4=; b=tA5/ZV6mfK5bFNoQmgtmFoAx7
	xad9yeTLkWcHOXrje6YWpGhggxGOtamZimHUcl3SVx1Oh2XV+9MD8ueI8BaOhQ91ZxPYnEl6+wVY9
	/yQIO+Nr7rg6jP9G+elQFNoNUz9xyGMdNkWK3j/Nn/1zWSI9Ehs5Wqp2jqFWXNnTPjgw2nkex0eWI
	JOKlfOFj1qKU8zig7t7QeX+2QQSdYhOqWHEMpMMx+m6jlJplkypsYKAOFr/34+YzO2qYngsqNYOv7
	kR6Q+My+DlAlSdi7S9eyP2BRNpPGnqit7dwLxEUe2OlNop9J370uLQGEEVtXp/XQFuihoQDlwnrEh
	qmWvNOqIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLZ0y-0003gd-1U; Fri, 18 Oct 2019 20:38:24 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLZ0k-0003g3-Lt
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 20:38:12 +0000
Received: by mail-pl1-x642.google.com with SMTP id d22so3395116pll.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 13:38:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=Js8UyXKzcNoEJJmDg2fB7ETZw1UXZrdaUdx46TnSzV4=;
 b=PmFQYioVvRr2wRTUyHxpUOWHMVdu2thIjey8wW+t1W0rNA8gV8xD+qzVNMJgwsoJ+s
 0vY1RJJoS5FGWiyKZ0yzgg4GvAK997c+qFIJ7rda8sls+g72uwDctwaE9TgXDCSGCNRB
 673GKj5l/F5sgl/YxgqJD3cG2/ziJBAzhM7pJFcqjOlGlgykC+mTzeLDbc/ZsX63X4NR
 JvARjArPuTkFdVl7WNt3JU/En33mF6//9NP6rkGcJ6wsBWuPfYWYI2NQxniixZcLot4g
 a7vvRgCmgXXN77Sacj+NOQVObFJHbEaZIxAqegMjy8bGOiid9UwyAJuG3Rqb3PllEgJn
 RMRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=Js8UyXKzcNoEJJmDg2fB7ETZw1UXZrdaUdx46TnSzV4=;
 b=MtXJ8hwfrGM8O9FKiLhDrLA/EytAMosXjaQpPnzvCug2xtocIg1VCfp7g0HY/KAiOr
 oYOceWuxMiQ/jqQKpwkiMI0kqJSPkS66cBpXzzfLI5Xa4X6FkLTTy2Na39IGl9Hstxqf
 miLnsRmEZXcB6Cb+e6O7zsBP41fx3+MiMFd2GMxYzhTAmr7zxPgVTuSYF4P0Q0qQ2GvF
 0Ui9Kdse89ra4l6rXBu+meJI2eLEkQoYHV/B+gLxaVE/9dFLw7Z+vJFRh69BTWKpXa9o
 LQzV/TOBSBbBKJPX5UC/A8Y9RiXP6eKpCjnXUP9iifsh9kiCxSTpYAbqTtzb868Qf6I3
 viFg==
X-Gm-Message-State: APjAAAWcLcq0/Skax5yxGMbPJ+bhr58yFHL+GMfGaYq1TqquxfXdnI+a
 whukFCZuzykA9V0R/BbbSPvKDw==
X-Google-Smtp-Source: APXvYqx2jdlimEr6T3ephzi5HPyQ4wjtemZopyPGMNsdL8fHGE93OsN+AwxNxupLGPcLH65It1Ds+g==
X-Received: by 2002:a17:902:fe04:: with SMTP id
 g4mr4203122plj.58.1571431089200; 
 Fri, 18 Oct 2019 13:38:09 -0700 (PDT)
Received: from localhost ([152.179.112.46])
 by smtp.gmail.com with ESMTPSA id bb15sm6704697pjb.2.2019.10.18.13.38.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 13:38:08 -0700 (PDT)
Date: Fri, 18 Oct 2019 13:38:08 -0700 (PDT)
X-Google-Original-Date: Fri, 18 Oct 2019 13:36:06 PDT (-0700)
Subject: Re: [PATCH v10 3/3] mm: fix double page fault on arm64 if PTE_AF is
 cleared
In-Reply-To: <20191016234607.626nzv5kf5fgz25x@willie-the-truck>
From: Palmer Dabbelt <palmer@sifive.com>
To: will@kernel.org
Message-ID: <mhng-265b415f-c8ff-4727-a8fa-2f3e51937ba6@palmer-si-x1c4>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_133810_775992_443E5087 
X-CRM114-Status: GOOD (  24.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark.Rutland@arm.com, Justin.He@arm.com, Kaly.Xin@arm.com,
 Catalin.Marinas@arm.com, linux-kernel@vger.kernel.org, willy@infradead.org,
 linux-mm@kvack.org, James.Morse@arm.com, linux-arm-kernel@lists.infradead.org,
 punitagrawal@gmail.com, maz@kernel.org, hejianet@gmail.com, tglx@linutronix.de,
 nd@arm.com, akpm@linux-foundation.org, kirill.shutemov@linux.intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 16 Oct 2019 16:46:08 PDT (-0700), will@kernel.org wrote:
> Hey Palmer,
>
> On Wed, Oct 16, 2019 at 04:21:59PM -0700, Palmer Dabbelt wrote:
>> On Tue, 08 Oct 2019 05:39:44 PDT (-0700), will@kernel.org wrote:
>> > On Tue, Oct 08, 2019 at 02:19:05AM +0000, Justin He (Arm Technology China) wrote:
>> > > > On Mon, Sep 30, 2019 at 09:57:40AM +0800, Jia He wrote:
>> > > > > diff --git a/mm/memory.c b/mm/memory.c
>> > > > > index b1ca51a079f2..1f56b0118ef5 100644
>> > > > > --- a/mm/memory.c
>> > > > > +++ b/mm/memory.c
>> > > > > @@ -118,6 +118,13 @@ int randomize_va_space __read_mostly =
>> > > > >  					2;
>> > > > >  #endif
>> > > > >
>> > > > > +#ifndef arch_faults_on_old_pte
>> > > > > +static inline bool arch_faults_on_old_pte(void)
>> > > > > +{
>> > > > > +	return false;
>> > > > > +}
>> > > > > +#endif
>> > > >
>> > > > Kirill has acked this, so I'm happy to take the patch as-is, however isn't
>> > > > it the case that /most/ architectures will want to return true for
>> > > > arch_faults_on_old_pte()? In which case, wouldn't it make more sense for
>> > > > that to be the default, and have x86 and arm64 provide an override? For
>> > > > example, aren't most architectures still going to hit the double fault
>> > > > scenario even with your patch applied?
>> > >
>> > > No, after applying my patch series, only those architectures which don't provide
>> > > setting access flag by hardware AND don't implement their arch_faults_on_old_pte
>> > > will hit the double page fault.
>> > >
>> > > The meaning of true for arch_faults_on_old_pte() is "this arch doesn't have the hardware
>> > > setting access flag way, it might cause page fault on an old pte"
>> > > I don't want to change other architectures' default behavior here. So by default,
>> > > arch_faults_on_old_pte() is false.
>> >
>> > ...and my complaint is that this is the majority of supported architectures,
>> > so you're fixing something for arm64 which also affects arm, powerpc,
>> > alpha, mips, riscv, ...
>> >
>> > Chances are, they won't even realise they need to implement
>> > arch_faults_on_old_pte() until somebody runs into the double fault and
>> > wastes lots of time debugging it before they spot your patch.
>>
>> If I understand the semantics correctly, we should have this set to true.  I
>> don't have any context here, but we've got
>>
>>                /*
>>                 * The kernel assumes that TLBs don't cache invalid
>>                 * entries, but in RISC-V, SFENCE.VMA specifies an
>>                 * ordering constraint, not a cache flush; it is
>>                 * necessary even after writing invalid entries.
>>                 */
>>                local_flush_tlb_page(addr);
>>
>> in do_page_fault().
>
> Ok, although I think this is really about whether or not your hardware can
> make a pte young when accessed, or whether you take a fault and do it
> by updating the pte explicitly.
>
> v12 of the patches did change the default, so you should be "safe" with
> those either way:
>
> http://lists.infradead.org/pipermail/linux-arm-kernel/2019-October/686030.html

OK, that fence is because we allow invalid translations to be cached, which is a 
completely different issue.

RISC-V implementations are allowed to have software managed accessed/dirty 
bits.  For some reason I thought we were relying on the firmware to handle 
this, but I can't actually find the code so I might be crazy.  Wherever it's 
done, there's no spec enforcing it so we should leave this true on RISC-V.

Thanks!

> Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
