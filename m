Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DFC131032
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 16:29:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DW4M/M5XvTPYCN+JC/sjYjA0bZLCczG2U22pRstU5ts=; b=oVHBVOmmMVJ8Bf
	aVFukIq8wT9jRU1fnU0jMtM+160vsefZ00UMzE1Mnm18NtJsYjmzz/rLjIv1QQe6leZFY/FulC5bh
	/V+vcxtb8Df0GjrCGTiTrRylhpkBtf2htxfQ02vE5suRy89JzLc9mN1jXKCyLXF8yq0/10DEoIOlt
	7Hv1PNktTrd7t247vRPalOYCYnP3cIxlWalSWn7XX5I4JnkZp2wrgcnp2IY5CMQAiNHlPzqfVWDws
	MxQwzuoCULzDUbQj+uumU0MPkvgkKpc+g8hhHWteBLiBdvswN/rlFE4jpa0KZL0GX7zumW7SQ+xTE
	XloKT2OYZpoKKHK30wWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWiXF-0004mG-Dn; Fri, 31 May 2019 14:29:33 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWiX8-0004lC-59
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 14:29:27 +0000
Received: by mail-pl1-x641.google.com with SMTP id g69so4089712plb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 May 2019 07:29:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=evy368hWiI+gBYUbtpZ/Z/NwaFGt0gP/Ku0Se7jRDIs=;
 b=sQG2/gyFbhvQgnnYVMoq8Kda68VVztjS6NpVGpn+TJ/0x1CnUPLFGI7CfwhDx4Acpv
 +b2SfJPlJiXKHOPX0vraeScgQBz7b7Nl6PyJKu6e145lCoysI0y6J5myuuCSNlucfPw4
 OziFqAsvBRMmxzPBSxXT6y9ZOWT1qftFo2UhubNHkIM+xAKIuSxRN1IDkqLlB5D+IEDh
 9Lbkk942zOUUnqGLz1d6wvbTAZV2QEf8AYds1RPyvHK7XFYBgL+gUTiPMyMH1+mL85z0
 rHLvvgL9h/d8SCsWwDzjC1mOEMEITHFigTDJGZoVkvgiZ6th+Bg/aZrVlKENNn6Dl+G9
 3qvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=evy368hWiI+gBYUbtpZ/Z/NwaFGt0gP/Ku0Se7jRDIs=;
 b=aTD14s+n/HPoggsIXUHyqgA13p0alGCXztNRJ/NSlYYIyXlB067nhXHpJA1QX9DvX/
 T/v/Vu3StNB+G9yxa8236cagNCMAarFu0DUtLxipw4m9eDJ2RLf/qZ0Bu1CA5wrmMjre
 PeDW2SElr5Q8wLG60pNOc9vSUBqHCn4sRLiGnv/z8XoFXCEg7vkGSIpF2ViTd/lP3UDm
 7nxXtidE8pmpDtOJtRKkRm0r0nvzMxtfXOXDcdorbeRa8coBfyNM3rF3o1CfEqQRxuYT
 a5qaLs0w0JKZoo0W/03w8bqLdJivqgLJ11OfblpsyGoe4W3ac3nbJXxi4VUPva+dcKRQ
 bzBA==
X-Gm-Message-State: APjAAAUZXKdIGtBwbv0qpJTwvXQMQ2qhZcUw84NtAjIL+LItzBMO9XVc
 X4wwtiVNj75aux79CHOZloLtYPqbyqTFrNN3w8u9DQ==
X-Google-Smtp-Source: APXvYqzZNq7ZmlghEU+anyWYnwjjhfBSO821IIVYI0unmJhzupp13rZUJ7jf2s8ZHPUTRKkSRgHsOXgkfcRcIwbO8eo=
X-Received: by 2002:a17:902:8609:: with SMTP id
 f9mr9244481plo.252.1559312961740; 
 Fri, 31 May 2019 07:29:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190517144931.GA56186@arrakis.emea.arm.com>
 <CAFKCwrj6JEtp4BzhqO178LFJepmepoMx=G+YdC8sqZ3bcBp3EQ@mail.gmail.com>
 <20190521182932.sm4vxweuwo5ermyd@mbp> <201905211633.6C0BF0C2@keescook>
 <6049844a-65f5-f513-5b58-7141588fef2b@oracle.com>
 <20190523201105.oifkksus4rzcwqt4@mbp>
 <ffe58af3-7c70-d559-69f6-1f6ebcb0fec6@oracle.com>
 <20190524101139.36yre4af22bkvatx@mbp>
 <c6dd53d8-142b-3d8d-6a40-d21c5ee9d272@oracle.com>
 <CAAeHK+yAUsZWhp6xPAbWewX5Nbw+-G3svUyPmhXu5MVeEDKYvA@mail.gmail.com>
 <20190530171540.GD35418@arrakis.emea.arm.com>
In-Reply-To: <20190530171540.GD35418@arrakis.emea.arm.com>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Fri, 31 May 2019 16:29:10 +0200
Message-ID: <CAAeHK+y34+SNz3Vf+_378bOxrPaj_3GaLCeC2Y2rHAczuaSz1A@mail.gmail.com>
Subject: Re: [PATCH v15 00/17] arm64: untag user pointers passed to the kernel
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_072926_209030_B1628ABC 
X-CRM114-Status: GOOD (  20.93  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 T_DKIMWL_WL_MED        DKIMwl.org - Medium sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org,
 Linux Memory Management List <linux-mm@kvack.org>,
 Khalid Aziz <khalid.aziz@oracle.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Dmitry Vyukov <dvyukov@google.com>, Dave Martin <Dave.Martin@arm.com>,
 Evgenii Stepanov <eugenis@google.com>, linux-media@vger.kernel.org,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Yishai Hadas <yishaih@mellanox.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>, LKML <linux-kernel@vger.kernel.org>,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, Elliott Hughes <enh@google.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 30, 2019 at 7:15 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> On Tue, May 28, 2019 at 04:14:45PM +0200, Andrey Konovalov wrote:
> > Thanks for a lot of valuable input! I've read through all the replies
> > and got somewhat lost. What are the changes I need to do to this
> > series?
> >
> > 1. Should I move untagging for memory syscalls back to the generic
> > code so other arches would make use of it as well, or should I keep
> > the arm64 specific memory syscalls wrappers and address the comments
> > on that patch?
>
> Keep them generic again but make sure we get agreement with Khalid on
> the actual ABI implications for sparc.

OK, will do. I find it hard to understand what the ABI implications
are. I'll post the next version without untagging in brk, mmap,
munmap, mremap (for new_address), mmap_pgoff, remap_file_pages, shmat
and shmdt.

>
> > 2. Should I make untagging opt-in and controlled by a command line argument?
>
> Opt-in, yes, but per task rather than kernel command line option.
> prctl() is a possibility of opting in.

OK. Should I store a flag somewhere in task_struct? Should it be
inheritable on clone?

>
> > 3. Should I "add Documentation/core-api/user-addresses.rst to describe
> > proper care and handling of user space pointers with untagged_addr(),
> > with examples based on all the cases seen so far in this series"?
> > Which examples specifically should it cover?
>
> I think we can leave 3 for now as not too urgent. What I'd like is for
> Vincenzo's TBI user ABI document to go into a more common place since we
> can expand it to cover both sparc and arm64. We'd need an arm64-specific
> doc as well for things like prctl() and later MTE that sparc may support
> differently.

OK.

>
> --
> Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
