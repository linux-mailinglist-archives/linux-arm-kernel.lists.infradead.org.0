Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 475691FBEEB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 21:25:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dnCoHuWjgoh/yIv0oqj9z+uOKlRAkpHN42acK2sh4sk=; b=MvZekQPAuDyhzz
	3zNh+Crj1dCri6dgJIV3taD08CmTyCiiM9zSuYQ08iv21/WyszWZA4UOrWZRgxA1sxNm0/rkAQ7vx
	7sdy5yn+vGIuYNVX0fpUdIeO0RTaQRvWo8pYFTcbxXR9zniyCEarunIBZBpASa4R4REMXK/6q5i2I
	+BmjPyP1bbVL5yW1tvkRSs29GE/qA51PVJ1Ds6OBACSMnovAW9NMuejmEyjiZgiwSASaYH2uPOuXF
	T2cv+qVDVOhXYMpcAiI+XxlhRDnENxo29Qj4fhjFSfCRi35kuhtGJzbmfSXyzm5P0hZGgwZ6L9Ec2
	WbTKUwhapEYPr2coKmcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlHCl-0005a4-4z; Tue, 16 Jun 2020 19:25:07 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlHCE-0005Wk-Go
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 19:24:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1592335471;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=yJJchc/3/oiBSyYGsoPh65MH8REAAPcH1btCjP0IdhE=;
 b=NUjK/Mi3yiuufjHIM7/ux4mH3yrbkZcInfJ+crngYwBlyEtU9HjDwbwP0wrwqjrTxP/T5L
 WOEiMxCtrcMrbB1Q0se7YgYzf0z+FYiX3gSY69dgTma3v6R5BQL04Re/jYHN/OGjqJ02d7
 3a62Zwxmqhq1pCP1Y5STfcca3idbOZQ=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-202-wBb3a6bZPQSSAzgRK-ABhQ-1; Tue, 16 Jun 2020 15:24:28 -0400
X-MC-Unique: wBb3a6bZPQSSAzgRK-ABhQ-1
Received: by mail-qv1-f70.google.com with SMTP id f18so16267974qvr.22
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 12:24:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yJJchc/3/oiBSyYGsoPh65MH8REAAPcH1btCjP0IdhE=;
 b=HUwqIOwi1upn/npwELjXuOTa0paZmed5SPBqRWzuiwTW1/yVWQeYBT9UGzQlnx9LTG
 pBJ3fKUAgAtxiTBkoIg+jD1+OpJMpKiCKXtsc1idqbQOOZov52ecL/mAw9oSxN/d736Q
 /+XgmYeyKAhU+ZWXoIWTbpxUfesg14hZHqNS1D3wq2z+m8nPZq3HHudzz8HiwrzfjchB
 Cfz1gAnpqMhN+2fp9eduX5+D3iobEAuO46mRW+U6kxWIzozuMMkdUx1ljwDqgDvl531a
 vvK307T1tr8DPCDi3u4j555X6520rTIvz+lBzbIxYoRzeoEUfXKY3G7xydfwJYTr2N/n
 Ukng==
X-Gm-Message-State: AOAM533PTeD4jIP19zVB6xsMGjbVTpj+kfbo5DPso6wrejmjaRKlwQf8
 6ElpzdVWYbicz7aQJfDzDA0oydW9ZrBDyjZeesG4QKGW/eOMGptwN4whfHLy+b1un0QGtu9Q29e
 f3YLEZ2rq3XCfApgtQOJLJ/j3p6oPuf368IrRTdmJv01ofQYD/i8=
X-Received: by 2002:a37:b9c7:: with SMTP id
 j190mr21239272qkf.210.1592335467532; 
 Tue, 16 Jun 2020 12:24:27 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyRLKhrAT5D0qef/kb/5pjAggc0Bv6Aa9Iba08kzEC4wcbjXgabWHE5L9Sz4tsPkKCI+kvj6hKhM6AGD6pGoDk=
X-Received: by 2002:a37:b9c7:: with SMTP id
 j190mr21239229qkf.210.1592335467195; 
 Tue, 16 Jun 2020 12:24:27 -0700 (PDT)
MIME-Version: 1.0
References: <1575057559-25496-1-git-send-email-bhsharma@redhat.com>
 <1575057559-25496-3-git-send-email-bhsharma@redhat.com>
 <63d6e63c-7218-d2dd-8767-4464be83603f@arm.com>
 <af0fd2b0-99db-9d58-bc8d-0dd9d640b1eb@redhat.com>
 <f791e777-781c-86ce-7619-1de3fe3e7b90@arm.com>
 <351975548.1986001.1578682810951.JavaMail.zimbra@redhat.com>
 <04287d60-e99e-631b-c134-d6dc39e6a193@redhat.com>
 <974f3601-25f8-f4e6-43a8-ff4275e9c174@arm.com>
 <CACi5LpOK6Q3ud3M3zakexLJNOtHy9TODHyYSHVwE3JHVakKzqA@mail.gmail.com>
 <d401b003-af3e-c525-ba00-0de48486b7a0@broadcom.com>
 <f644ddb6fdb926606bb376a9f491ee79@mail.gmail.com>
In-Reply-To: <f644ddb6fdb926606bb376a9f491ee79@mail.gmail.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Wed, 17 Jun 2020 00:54:14 +0530
Message-ID: <CACi5LpO-x6M4WYYoKUW0G_so5dusDY6AJwz84kLFUS2dA+sNRA@mail.gmail.com>
Subject: Re: Re: [RESEND PATCH v5 2/5] arm64/crash_core: Export TCR_EL1.T1SZ
 in vmcoreinfo
To: Bharat Gooty <bharat.gooty@broadcom.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_122434_646945_1F8DAA75 
X-CRM114-Status: GOOD (  39.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.139.110.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 kexec mailing list <kexec@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ray Jui <ray.jui@broadcom.com>, linuxppc-dev@lists.ozlabs.org,
 Kazuhito Hagio <k-hagio@ab.jp.nec.com>, James Morse <james.morse@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Amit Kachhap <amit.kachhap@arm.com>, Dave Anderson <anderson@redhat.com>,
 bhupesh linux <bhupesh.linux@gmail.com>, Will Deacon <will@kernel.org>,
 Scott Branden <scott.branden@broadcom.com>,
 Steve Capper <steve.capper@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Bharat,

On Wed, Jun 10, 2020 at 10:17 PM Bharat Gooty <bharat.gooty@broadcom.com> wrote:
>
> Hello Bhupesh,
> V6 patch set on Linux 5.7, did not help.
> I have applied makedump file
> http://lists.infradead.org/pipermail/kexec/2019-November/023963.html changes
> also (makedump-1.6.6). Tried to apply it on makedumpfile 1.6.7.  Patch set_2
> failed. Would like to know, if you have V5 patch set for makedump file
> changes. With makedump 1.6.6, able to collect the vmore file.
> I used latest crash utility
> (https://www.redhat.com/archives/crash-utility/2019-November/msg00014.html
> changes are present)
> When I used crash utility, following is the error:
>
> Thanks,
> -Bharat
>
>
> -----Original Message-----
> From: Scott Branden [mailto:scott.branden@broadcom.com]
> Sent: Thursday, April 30, 2020 4:34 AM
> To: Bhupesh Sharma; Amit Kachhap
> Cc: Mark Rutland; x86@kernel.org; Will Deacon; Linux Doc Mailing List;
> Catalin Marinas; Ard Biesheuvel; kexec mailing list; Linux Kernel Mailing
> List; Kazuhito Hagio; James Morse; Dave Anderson; bhupesh linux;
> linuxppc-dev@lists.ozlabs.org; linux-arm-kernel; Steve Capper; Ray Jui;
> Bharat Gooty
> Subject: Re: Re: [RESEND PATCH v5 2/5] arm64/crash_core: Export TCR_EL1.T1SZ
> in vmcoreinfo
>
> Hi Bhupesh,
>
> On 2020-02-23 10:25 p.m., Bhupesh Sharma wrote:
> > Hi Amit,
> >
> > On Fri, Feb 21, 2020 at 2:36 PM Amit Kachhap <amit.kachhap@arm.com> wrote:
> >> Hi Bhupesh,
> >>
> >> On 1/13/20 5:44 PM, Bhupesh Sharma wrote:
> >>> Hi James,
> >>>
> >>> On 01/11/2020 12:30 AM, Dave Anderson wrote:
> >>>> ----- Original Message -----
> >>>>> Hi Bhupesh,
> >>>>>
> >>>>> On 25/12/2019 19:01, Bhupesh Sharma wrote:
> >>>>>> On 12/12/2019 04:02 PM, James Morse wrote:
> >>>>>>> On 29/11/2019 19:59, Bhupesh Sharma wrote:
> >>>>>>>> vabits_actual variable on arm64 indicates the actual VA space size,
> >>>>>>>> and allows a single binary to support both 48-bit and 52-bit VA
> >>>>>>>> spaces.
> >>>>>>>>
> >>>>>>>> If the ARMv8.2-LVA optional feature is present, and we are running
> >>>>>>>> with a 64KB page size; then it is possible to use 52-bits of
> >>>>>>>> address
> >>>>>>>> space for both userspace and kernel addresses. However, any kernel
> >>>>>>>> binary that supports 52-bit must also be able to fall back to
> >>>>>>>> 48-bit
> >>>>>>>> at early boot time if the hardware feature is not present.
> >>>>>>>>
> >>>>>>>> Since TCR_EL1.T1SZ indicates the size offset of the memory region
> >>>>>>>> addressed by TTBR1_EL1 (and hence can be used for determining the
> >>>>>>>> vabits_actual value) it makes more sense to export the same in
> >>>>>>>> vmcoreinfo rather than vabits_actual variable, as the name of the
> >>>>>>>> variable can change in future kernel versions, but the
> >>>>>>>> architectural
> >>>>>>>> constructs like TCR_EL1.T1SZ can be used better to indicate
> >>>>>>>> intended
> >>>>>>>> specific fields to user-space.
> >>>>>>>>
> >>>>>>>> User-space utilities like makedumpfile and crash-utility, need to
> >>>>>>>> read/write this value from/to vmcoreinfo
> >>>>>>> (write?)
> >>>>>> Yes, also write so that the vmcoreinfo from an (crashing) arm64
> >>>>>> system can
> >>>>>> be used for
> >>>>>> analysis of the root-cause of panic/crash on say an x86_64 host using
> >>>>>> utilities like
> >>>>>> crash-utility/gdb.
> >>>>> I read this as as "User-space [...] needs to write to vmcoreinfo".
> >>> That's correct. But for writing to vmcore dump in the kdump kernel, we
> >>> need to read the symbols from the vmcoreinfo in the primary kernel.
> >>>
> >>>>>>>> for determining if a virtual address lies in the linear map range.
> >>>>>>> I think this is a fragile example. The debugger shouldn't need to
> >>>>>>> know
> >>>>>>> this.
> >>>>>> Well that the current user-space utility design, so I am not sure we
> >>>>>> can
> >>>>>> tweak that too much.
> >>>>>>
> >>>>>>>> The user-space computation for determining whether an address lies
> >>>>>>>> in
> >>>>>>>> the linear map range is the same as we have in kernel-space:
> >>>>>>>>
> >>>>>>>>      #define __is_lm_address(addr)    (!(((u64)addr) &
> >>>>>>>> BIT(vabits_actual -
> >>>>>>>>      1)))
> >>>>>>> This was changed with 14c127c957c1 ("arm64: mm: Flip kernel VA
> >>>>>>> space"). If
> >>>>>>> user-space
> >>>>>>> tools rely on 'knowing' the kernel memory layout, they must have to
> >>>>>>> constantly be fixed
> >>>>>>> and updated. This is a poor argument for adding this to something
> >>>>>>> that
> >>>>>>> ends up as ABI.
> >>>>>> See above. The user-space has to rely on some ABI/guaranteed
> >>>>>> hardware-symbols which can be
> >>>>>> used for 'determining' the kernel memory layout.
> >>>>> I disagree. Everything and anything in the kernel will change. The
> >>>>> ABI rules apply to
> >>>>> stuff exposed via syscalls and kernel filesystems. It does not apply
> >>>>> to kernel internals,
> >>>>> like the memory layout we used yesterday. 14c127c957c1 is a case in
> >>>>> point.
> >>>>>
> >>>>> A debugger trying to rely on this sort of thing would have to play
> >>>>> catchup whenever it
> >>>>> changes.
> >>>> Exactly.  That's the whole point.
> >>>>
> >>>> The crash utility and makedumpfile are not in the same league as other
> >>>> user-space tools.
> >>>> They have always had to "play catchup" precisely because they depend
> >>>> upon kernel internals,
> >>>> which constantly change.
> >>> I agree with you and DaveA here. Software user-space debuggers are
> >>> dependent on kernel internals (which can change from time-to-time) and
> >>> will have to play catch-up (which has been the case since the very
> >>> start).
> >>>
> >>> Unfortunately we don't have any clear ABI for software debugging tools -
> >>> may be something to look for in future.
> >>>
> >>> A case in point is gdb/kgdb, which still needs to run with KASLR
> >>> turned-off (nokaslr) for debugging, as it confuses gdb which resolve
> >>> kernel symbol address from symbol table of vmlinux. But we can
> >>> work-around the same in makedumpfile/crash by reading the 'kaslr_offset'
> >>> value. And I have several users telling me now they cannot use gdb on
> >>> KASLR enabled kernel to debug panics, but can makedumpfile + crash
> >>> combination to achieve the same.
> >>>
> >>> So, we should be looking to fix these utilities which are broken since
> >>> the 52-bit changes for arm64. Accordingly, I will try to send the v6
> >>> soon while incorporating the comments posted on the v5.
> >> Any update on the next v6 version. Since this patch series is fixing the
> >> current broken kdump so need this series to add some more fields in
> >> vmcoreinfo for Pointer Authentication work.
> > Sorry for the delay. I was caught up in some other urgent arm64
> > user-space issues.
> > I am preparing the v6 now and hopefully will be able to post it out
> > for review later today.
>
> Did v6 get sent out?

Like I mentioned in a different thread reply, I did not put out the
user-space changes just yet, since we are waiting for the kernel
patches to be accepted first.

In the last review cycle (v5) we had inconsistencies between the
user-space and kernel as user-space utilities like crash accepted the
v5 patches while we had to respin the v6 for the kernel side.

But since a few other Red Hat arm partners have asked for the same,
please find below my public github trees (with prescribed branches),
which you can use for testing the v6 kernel patchset:

1. makedumpfile:
<https://github.com/bhupesh-sharma/makedumpfile/tree/52-bit-va-support-via-vmcore-upstream-v6-rebase>
2. crash-utility:
<https://github.com/bhupesh-sharma/crash/tree/52-bit-va-support-via-vmcore-upstream-v6-rebase>

Hope this helps.

Thanks,
Bhupesh


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
