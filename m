Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B532169E5D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 07:26:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rWH4+u5VZ6fgw4QTL506o2DYmivcVFeRsuyL2/tZMyk=; b=uF0QqWSTwFBdf1
	fvvbtHZAv9fFaD0CsRvEFLjmZJ+Tw5XBMAHtPiIebMFamemOiVPs+waaU28noR4ZFK/ir3yDx0JNW
	g0b2ft2eWeR6m/Fp+U3ePoEzLZ6ih9L1odioZVpVgvclEorZmbZ6cFpqjcTmPygzIIjI9H7AMRDWp
	bUWeDiraqEolGvS4D/z8W9sJKHaH4+0QFo216xVjKH9mimfp4Z2R6dV8YEH5P3kVZm5Q80KHZ0bxc
	1Td3y6OY2OFIOx3Qr7129LK/9wR1BmlKQAooxLqhsHeIQym/Lf5R5KkDFBH/YXx0DWHcg9OoJ4xT1
	o9ykFyWDfWI/bhr006gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j67C2-000321-Rd; Mon, 24 Feb 2020 06:26:14 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j67Br-00030e-1b
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 06:26:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1582525561;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=CjqxRZHSo8X8I7NzxQEu+Tymmt/ghwg/SLEiDBOhiic=;
 b=Djyj4wHRJFqK3aBt8ayxqCjn9vP0fu/yuIyI6k28qA24jyqDiMmvQrOQ7o6cZctL5SQYyr
 QNJl3OmM3HNHv2dLo3gM8NCTaEMXuHyYN/awAm0DEQCc9gr4+gYmEfX5JSnat6uiymLEyO
 sHglsthLWPo/Onv8bMw2EollTZGhP0I=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-478-b2dIXv__PyaIT9TnifuHPA-1; Mon, 24 Feb 2020 01:25:49 -0500
X-MC-Unique: b2dIXv__PyaIT9TnifuHPA-1
Received: by mail-wr1-f72.google.com with SMTP id d9so1889082wrv.21
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 23 Feb 2020 22:25:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dckTTjxyBibi0/eHSJpegNMnKv/ZFpoC0SMhoS98gYQ=;
 b=H0b1B9FHS21mOH1MbLmr+lEEcyP7CY9m877waT6gkHIGp5aqmHEghNsRNm69io+RGl
 N7/pas0rQUb//1Inkuc6WlMFLzKL2W9bjlpBraBYvcS5X1c51n54r6NFratbCMxQAaVM
 2voh7g3dILP4QM9oe2OyxUYZkPgRWz20c5ba1YhRqozpbj62GKp6XHGoncUhNh8Sdo4Z
 daU3p76MT4y6Lw1Fwj5DTpOb3gBaYbU90UoOWJb9EOzXQnmqpPb3CCpVMrn6io5w4ScF
 56lh48JLSHmEol0Fx7Dbhh33sskO16lSiA+I01cDIKFRPACAxqyh7HKRZsXGaMCdw0pV
 Oixw==
X-Gm-Message-State: APjAAAVKabBSuyyQIFIRL5BQ/5T0cm8YK0P7bOs+G5FPnPyjRFgmEMrp
 Ynq93hnbV9qdEOt75CNzmLcBBoI/e2jHxDHnqx5+umB8Kz+NBcL/9QklxzEuFLO3gUDQZdmvcG3
 jpD+OyIXf62tRnesMNFIN66zNNTgS1yKCvPmmakBndJuDdVJ51qw=
X-Received: by 2002:a1c:6755:: with SMTP id b82mr20610990wmc.126.1582525547931; 
 Sun, 23 Feb 2020 22:25:47 -0800 (PST)
X-Google-Smtp-Source: APXvYqyxA5kdvYr5b57CvBHEyg7SYwjy39EA3KJkD+2t/YLueVtODgOYqrVfSMUaLHTeag8+AJUU1fdINXjmJPOfgzU=
X-Received: by 2002:a1c:6755:: with SMTP id b82mr20610946wmc.126.1582525547617; 
 Sun, 23 Feb 2020 22:25:47 -0800 (PST)
MIME-Version: 1.0
References: <1575057559-25496-1-git-send-email-bhsharma@redhat.com>
 <1575057559-25496-3-git-send-email-bhsharma@redhat.com>
 <63d6e63c-7218-d2dd-8767-4464be83603f@arm.com>
 <af0fd2b0-99db-9d58-bc8d-0dd9d640b1eb@redhat.com>
 <f791e777-781c-86ce-7619-1de3fe3e7b90@arm.com>
 <351975548.1986001.1578682810951.JavaMail.zimbra@redhat.com>
 <04287d60-e99e-631b-c134-d6dc39e6a193@redhat.com>
 <974f3601-25f8-f4e6-43a8-ff4275e9c174@arm.com>
In-Reply-To: <974f3601-25f8-f4e6-43a8-ff4275e9c174@arm.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Mon, 24 Feb 2020 11:55:35 +0530
Message-ID: <CACi5LpOK6Q3ud3M3zakexLJNOtHy9TODHyYSHVwE3JHVakKzqA@mail.gmail.com>
Subject: Re: [RESEND PATCH v5 2/5] arm64/crash_core: Export TCR_EL1.T1SZ in
 vmcoreinfo
To: Amit Kachhap <amit.kachhap@arm.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_222603_165889_2DB1B055 
X-CRM114-Status: GOOD (  35.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, x86@kernel.org,
 Will Deacon <will@kernel.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 kexec mailing list <kexec@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Kazuhito Hagio <k-hagio@ab.jp.nec.com>, James Morse <james.morse@arm.com>,
 Dave Anderson <anderson@redhat.com>, bhupesh linux <bhupesh.linux@gmail.com>,
 linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Steve Capper <steve.capper@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Amit,

On Fri, Feb 21, 2020 at 2:36 PM Amit Kachhap <amit.kachhap@arm.com> wrote:
>
> Hi Bhupesh,
>
> On 1/13/20 5:44 PM, Bhupesh Sharma wrote:
> > Hi James,
> >
> > On 01/11/2020 12:30 AM, Dave Anderson wrote:
> >>
> >> ----- Original Message -----
> >>> Hi Bhupesh,
> >>>
> >>> On 25/12/2019 19:01, Bhupesh Sharma wrote:
> >>>> On 12/12/2019 04:02 PM, James Morse wrote:
> >>>>> On 29/11/2019 19:59, Bhupesh Sharma wrote:
> >>>>>> vabits_actual variable on arm64 indicates the actual VA space size,
> >>>>>> and allows a single binary to support both 48-bit and 52-bit VA
> >>>>>> spaces.
> >>>>>>
> >>>>>> If the ARMv8.2-LVA optional feature is present, and we are running
> >>>>>> with a 64KB page size; then it is possible to use 52-bits of address
> >>>>>> space for both userspace and kernel addresses. However, any kernel
> >>>>>> binary that supports 52-bit must also be able to fall back to 48-bit
> >>>>>> at early boot time if the hardware feature is not present.
> >>>>>>
> >>>>>> Since TCR_EL1.T1SZ indicates the size offset of the memory region
> >>>>>> addressed by TTBR1_EL1 (and hence can be used for determining the
> >>>>>> vabits_actual value) it makes more sense to export the same in
> >>>>>> vmcoreinfo rather than vabits_actual variable, as the name of the
> >>>>>> variable can change in future kernel versions, but the architectural
> >>>>>> constructs like TCR_EL1.T1SZ can be used better to indicate intended
> >>>>>> specific fields to user-space.
> >>>>>>
> >>>>>> User-space utilities like makedumpfile and crash-utility, need to
> >>>>>> read/write this value from/to vmcoreinfo
> >>>>>
> >>>>> (write?)
> >>>>
> >>>> Yes, also write so that the vmcoreinfo from an (crashing) arm64
> >>>> system can
> >>>> be used for
> >>>> analysis of the root-cause of panic/crash on say an x86_64 host using
> >>>> utilities like
> >>>> crash-utility/gdb.
> >>>
> >>> I read this as as "User-space [...] needs to write to vmcoreinfo".
> >
> > That's correct. But for writing to vmcore dump in the kdump kernel, we
> > need to read the symbols from the vmcoreinfo in the primary kernel.
> >
> >>>>>> for determining if a virtual address lies in the linear map range.
> >>>>>
> >>>>> I think this is a fragile example. The debugger shouldn't need to know
> >>>>> this.
> >>>>
> >>>> Well that the current user-space utility design, so I am not sure we
> >>>> can
> >>>> tweak that too much.
> >>>>
> >>>>>> The user-space computation for determining whether an address lies in
> >>>>>> the linear map range is the same as we have in kernel-space:
> >>>>>>
> >>>>>>     #define __is_lm_address(addr)    (!(((u64)addr) &
> >>>>>> BIT(vabits_actual -
> >>>>>>     1)))
> >>>>>
> >>>>> This was changed with 14c127c957c1 ("arm64: mm: Flip kernel VA
> >>>>> space"). If
> >>>>> user-space
> >>>>> tools rely on 'knowing' the kernel memory layout, they must have to
> >>>>> constantly be fixed
> >>>>> and updated. This is a poor argument for adding this to something that
> >>>>> ends up as ABI.
> >>>>
> >>>> See above. The user-space has to rely on some ABI/guaranteed
> >>>> hardware-symbols which can be
> >>>> used for 'determining' the kernel memory layout.
> >>>
> >>> I disagree. Everything and anything in the kernel will change. The
> >>> ABI rules apply to
> >>> stuff exposed via syscalls and kernel filesystems. It does not apply
> >>> to kernel internals,
> >>> like the memory layout we used yesterday. 14c127c957c1 is a case in
> >>> point.
> >>>
> >>> A debugger trying to rely on this sort of thing would have to play
> >>> catchup whenever it
> >>> changes.
> >>
> >> Exactly.  That's the whole point.
> >>
> >> The crash utility and makedumpfile are not in the same league as other
> >> user-space tools.
> >> They have always had to "play catchup" precisely because they depend
> >> upon kernel internals,
> >> which constantly change.
> >
> > I agree with you and DaveA here. Software user-space debuggers are
> > dependent on kernel internals (which can change from time-to-time) and
> > will have to play catch-up (which has been the case since the very start).
> >
> > Unfortunately we don't have any clear ABI for software debugging tools -
> > may be something to look for in future.
> >
> > A case in point is gdb/kgdb, which still needs to run with KASLR
> > turned-off (nokaslr) for debugging, as it confuses gdb which resolve
> > kernel symbol address from symbol table of vmlinux. But we can
> > work-around the same in makedumpfile/crash by reading the 'kaslr_offset'
> > value. And I have several users telling me now they cannot use gdb on
> > KASLR enabled kernel to debug panics, but can makedumpfile + crash
> > combination to achieve the same.
> >
> > So, we should be looking to fix these utilities which are broken since
> > the 52-bit changes for arm64. Accordingly, I will try to send the v6
> > soon while incorporating the comments posted on the v5.
>
> Any update on the next v6 version. Since this patch series is fixing the
> current broken kdump so need this series to add some more fields in
> vmcoreinfo for Pointer Authentication work.

Sorry for the delay. I was caught up in some other urgent arm64
user-space issues.
I am preparing the v6 now and hopefully will be able to post it out
for review later today.

Thanks,
Bhupesh


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
