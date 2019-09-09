Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB07AD90D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 14:33:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zfQHsm9gwP/KFIfrePxi08WoLmruUv9VeYd21WBiR04=; b=NZbuXJ/9VAiMPQ
	vleYSG1626tbOAw9D+I7iRM9TleiAxVVwxU1L1/S/Jan6r9LThiP1HeXrqinnKovpIMOdPuncSnCY
	Zi/h3E7zaWajBV71h60vfP2AKcQcP140CIeWynSQm5ZPzrmkLTKyRPCAskzjXzQlWjTpqGl5+6XXI
	8GkT+J9xz8FqcoWUlUOoXzTW2bZXimroiiudnV9xuJBG74BOgk0g+MhBBTjG1V4rJ5lJKfk/N8T6c
	QO6gvApXDW1s3hzd1yVVFxaCKNL5zRT9nT+K2O04n2RyQmi/c8OhO7biYq1Z8s6TbLpsDDYoAmpkU
	xDGSgd/3Qd/XyS7Rj7cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7Ir1-0005t7-20; Mon, 09 Sep 2019 12:33:11 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7Iqp-0005sh-DI
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 12:33:00 +0000
Received: by mail-oi1-x243.google.com with SMTP id x7so10300105oie.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 05:32:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IIxHAy0QnMK1JeOi+9yFV5EQe5jacPRZgTyfcGLGtzw=;
 b=DPcZzXq0Fi8SYQC9n8cOe3Cgnc8n/fEiHxy+vnuJ9rC0l9KMr6wtq3XVugUCEZazO7
 8I/07g0aZrLtKD5N0FV1pDp7SUW/9I9S6zRNt92x/XBzNTc5EDV0+skY1huQyAg80Y01
 XTFUAnG2bmUEtMMAGtjdZLIaXPdnca+YYTKtuU4kPJpcMPDuy8pDoLzUabG1kjthryct
 9Zk9D89b4opo9mVMMgmVSlIjR1aU2kKbaWD6tTolfllWbpFI+NGpVQ1iXb6/s9LZYlUl
 G+H42UXEeS7/MYvhx41VHd7Qw8orLUsEpgZHpPSnzsYRggcU6oh3vvHf8NmoPKl7xHbQ
 DU3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IIxHAy0QnMK1JeOi+9yFV5EQe5jacPRZgTyfcGLGtzw=;
 b=ftXutEzPiHfBql6v44SvB+AXZx+GrCe7zHY1Ph5I1HvaJRm6MfnQYHvsdn2Une992a
 ICLibvcFE0tmYgGAlxoD5Duz5XO3MS5z6K5aC4LlfVHz6HNjuUs/52L7FkvFjIC5r+NG
 +YSrd8MLFrXW6zybnEJaiGc6KBQym8aa+fBLdLoDQiJLLFRhtUNlHZq0ZyMrL4whhmsC
 t7z4f0JHBEdLmZLuzDLjpyYveko24/B2WSDxY0IjpaCB8KOLYY+R3wojvvywwCPkur9W
 Rmy3HgRsfeHSGJoVEZuzZV0eB5ih8w5JZ1LTypGjB+7MXnmDmrPLd756PPzrjLz2qOfy
 CIqQ==
X-Gm-Message-State: APjAAAWrhsBLY7tiXr0YM9ouoGBE6WzU1J99n4c5n5nN37qqz+3FMk9P
 9jwaNHfnSLBYkN9EPZWUThSpd/Teb7jadsKqSOX2hvrKSVo=
X-Google-Smtp-Source: APXvYqzB2IrJ3RRb0qlkq03of3InYNWVtBic1CpwBCxnfwEyJO1lx6vl3XeAkPqh/hnlOU4hQKAVlTIVJsgpGKbumBg=
X-Received: by 2002:aca:50d8:: with SMTP id e207mr16226748oib.48.1568032377654; 
 Mon, 09 Sep 2019 05:32:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190909121337.27287-1-christoffer.dall@arm.com>
 <20190909121337.27287-3-christoffer.dall@arm.com>
In-Reply-To: <20190909121337.27287-3-christoffer.dall@arm.com>
From: Peter Maydell <peter.maydell@linaro.org>
Date: Mon, 9 Sep 2019 13:32:46 +0100
Message-ID: <CAFEAcA8WcQNJV27q5WJ-SMhOyjFZyh1Pz7H7duK6zW1wiAvqKQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] KVM: arm/arm64: Allow user injection of external data
 aborts
To: Christoffer Dall <christoffer.dall@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_053259_458207_5E6AD9FC 
X-CRM114-Status: GOOD (  26.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: =?UTF-8?Q?Daniel_P=2E_Berrang=C3=A9?= <berrange@redhat.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Stefan Hajnoczi <stefanha@redhat.com>,
 Heinrich Schuchardt <xypron.glpk@gmx.de>, Alexander Graf <graf@amazon.com>,
 kvmarm@lists.cs.columbia.edu,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 9 Sep 2019 at 13:13, Christoffer Dall <christoffer.dall@arm.com> wrote:
>
> In some scenarios, such as buggy guest or incorrect configuration of the
> VMM and firmware description data, userspace will detect a memory access
> to a portion of the IPA, which is not mapped to any MMIO region.
>
> For this purpose, the appropriate action is to inject an external abort
> to the guest.  The kernel already has functionality to inject an
> external abort, but we need to wire up a signal from user space that
> lets user space tell the kernel to do this.
>
> It turns out, we already have the set event functionality which we can
> perfectly reuse for this.
>
> Signed-off-by: Christoffer Dall <christoffer.dall@arm.com>
> ---
>  Documentation/virt/kvm/api.txt    | 15 ++++++++++++++-
>  arch/arm/include/uapi/asm/kvm.h   |  3 ++-
>  arch/arm/kvm/guest.c              |  3 +++
>  arch/arm64/include/uapi/asm/kvm.h |  3 ++-
>  arch/arm64/kvm/guest.c            |  3 +++
>  arch/arm64/kvm/inject_fault.c     |  4 ++--
>  include/uapi/linux/kvm.h          |  1 +
>  virt/kvm/arm/arm.c                |  1 +
>  8 files changed, 28 insertions(+), 5 deletions(-)
>
> diff --git a/Documentation/virt/kvm/api.txt b/Documentation/virt/kvm/api.txt
> index 02501333f746..edd6cdc470ca 100644
> --- a/Documentation/virt/kvm/api.txt
> +++ b/Documentation/virt/kvm/api.txt
> @@ -955,6 +955,8 @@ The following bits are defined in the flags field:
>
>  ARM/ARM64:
>
> +User space may need to inject several types of events to the guest.
> +
>  If the guest accesses a device that is being emulated by the host kernel in
>  such a way that a real device would generate a physical SError, KVM may make
>  a virtual SError pending for that VCPU. This system error interrupt remains
> @@ -989,12 +991,23 @@ Specifying exception.has_esr on a system that does not support it will return
>  -EINVAL. Setting anything other than the lower 24bits of exception.serror_esr
>  will return -EINVAL.
>
> +If the guest performed an access to I/O memory which could not be handled by
> +user space, for example because of missing instruction syndrome decode
> +information or because there is no device mapped at the accessed IPA, then
> +user space can ask the kernel to inject an external abort using the address
> +from the exiting fault on the VCPU. It is a programming error to set
> +ext_dabt_pending at the same time as any of the serror fields, or to set
> +ext_dabt_pending on an exit which was not either KVM_EXIT_MMIO or
> +KVM_EXIT_ARM_NISV. This feature is only available if the system supports
> +KVM_CAP_ARM_INJECT_EXT_DABT;
> +
>  struct kvm_vcpu_events {
>         struct {
>                 __u8 serror_pending;
>                 __u8 serror_has_esr;
> +               __u8 ext_dabt_pending;
>                 /* Align it to 8 bytes */
> -               __u8 pad[6];
> +               __u8 pad[5];
>                 __u64 serror_esr;
>         } exception;
>         __u32 reserved[12];

This API seems to be missing support for userspace to specify
whether the ESR_ELx for the guest should have the EA bit set
(and more generally other syndrome/fault status bits). I think
if we have an API for "KVM_EXIT_MMIO but the access failed"
then it should either (a) be architecture agnostic, since
pretty much any architecture might have a concept of "access
gave some bus-error-type failure" and it would be nice if userspace
didn't have to special case them all in arch-specific code,
or (b) have the same flexibility for specifying exactly what
kind of fault as the architecture does. This sort of seems to
fall between two stools. (My ideal for KVM_EXIT_MMIO faults
would be a generic API which included space for optional
arch-specific info, which for Arm would pretty much just be
the EA bit.)

As and when we support nested virtualization, any suggestions
on how this API would extend to support userspace saying
"deliver fault to guest EL1" vs "deliver fault to guest EL2" ?

thanks
-- PMM

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
