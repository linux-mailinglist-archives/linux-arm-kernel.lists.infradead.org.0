Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 329CF63499
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 12:56:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LFP/nuwMhCICTUa/1hdALTBxNl9+Z9DQU1jjSp5xCKw=; b=e1izSA9/QJzVuN
	mH3vSQE92VO9SxkDa2OawbA20HFXVHVEdO0J+XO8+IqHYec02f/DkpSzpdeNE+98XCl23a+00e9xc
	FeUrZukGVFNlA+itX83VCG4PYz4vnw4VQC8M4L07rHCSgbtpCdtkLHEWeeM72ftlgI5k6Eesz7Bf8
	EzJQzPZJJi/MZivfYpc0cfrPuV3HAH09vjIuAXr056j+QNEyt5HgxPCGpU+2UV29acEevM3tHXry1
	7rtXI1F4fvEyibkIN9/c40hmtmAtCvincpHhSEvBdeerwag0fZzizIOuL9pP5RiJBu6Ehhrez4pVY
	ZrmhrzlsmYNKdnaVLLFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hknnB-0001MG-GY; Tue, 09 Jul 2019 10:56:13 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hknmu-0001Ka-De
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 10:55:58 +0000
Received: by mail-ed1-x541.google.com with SMTP id k8so17299635edr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 03:55:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CuR0e69I7mgSfC2aZ+6Blt0AlnXi6b5+QGMHj0cl8wQ=;
 b=H3WlmKuijQsSU0a7TLuEFl5089i9cBj5bQlzW0gPvihWPMgP7G94S30SDDV2haeICa
 pGMt/tK8FnppDqzcxSyDW/ZGHEBCDZF9y+SItMZORqBsUrYu7gWSBoRGhqvDlsRgCk3L
 CJFf3ltd8JZY5lsUyIPS3BcsvbXDX+aEDXSYvTa69E4sO6vP3fGrxCVgD3jxFxcK3kWc
 7HgLFC117OAk1gqAJL9/arNhNxDJv5ZGq02OWiM5Qfyr+bIicJ4bYEBP7ydQ+0WcFv/L
 bDTQbUbW7RbXsY8zovPUrWR5ZXV+ttIdrqIfu0jz4gftf9++zkA4rDA/sSp6z/o/n0Et
 6f6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CuR0e69I7mgSfC2aZ+6Blt0AlnXi6b5+QGMHj0cl8wQ=;
 b=mhXg8j2d6Mt+YG6d4TF2co3lgH/4/OuZwcOjxm56BgaJHy+aRAO2Qrpw+umX//6MOT
 wqhzeNGNUZL0+HlmDFpVD7zfIcpv1SFOSXa5Os1uyAVa/sMdS4OcE9EMtPpUi344stN/
 +EFS0UfoNsuuhz9axRi8UWWQHD4LxGpthvftVg0c0ojY/rnEFQKVznXgN0h0wp0u4D5c
 6R+HeFkv89PkN6KvaIcIlkFJBpCZbuaSqbEwi7uSR+vumJ/flxKjSbwnYeDL9iJtLbFa
 zjG9rK1ygPOsvB4d0HRoN018hP8rrTjE8wYz7AYTwUW24WbGxkmijutoce61aOPvdMBV
 bxJg==
X-Gm-Message-State: APjAAAXTAB6yjsc9j8Wm3f4BztJyUEQ36l4wFyjk/miKyHIvlFrERoYX
 z8Y6VHnxlaBO5GYDnzvBV8wCIaISEpHWsBvCWYHCKA==
X-Google-Smtp-Source: APXvYqx/6vJ3gKcKwyl7lr8xaD9C3sEOSHeUsI11wzdsW0Z+TsR9S678RUXH+ItREyVctYyP5WUXtxp+9zz/FamrbHo=
X-Received: by 2002:a05:6402:782:: with SMTP id
 d2mr25261183edy.80.1562669754543; 
 Tue, 09 Jul 2019 03:55:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190708211528.12392-1-pasha.tatashin@soleen.com>
 <CACi5LpNGWhTnXyM8gB0Tn=682+08s-ppfDpX2SawfxMvue1GTQ@mail.gmail.com>
In-Reply-To: <CACi5LpNGWhTnXyM8gB0Tn=682+08s-ppfDpX2SawfxMvue1GTQ@mail.gmail.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Tue, 9 Jul 2019 06:55:43 -0400
Message-ID: <CA+CK2bBrwBHhD-PFO_gVnDYoFi0Su6t456WNdtBWpOe4qM+oww@mail.gmail.com>
Subject: Re: [v1 0/5] allow to reserve memory for normal kexec kernel
To: Bhupesh Sharma <bhsharma@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_035556_879303_56B53042 
X-CRM114-Status: GOOD (  25.66  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Sasha Levin <sashal@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 kexec mailing list <kexec@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 James Morris <jmorris@namei.org>, Eric Biederman <ebiederm@xmission.com>,
 will@kernel.org, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 9, 2019 at 6:36 AM Bhupesh Sharma <bhsharma@redhat.com> wrote:
>
> Hi Pavel,
>
> On Tue, Jul 9, 2019 at 2:46 AM Pavel Tatashin <pasha.tatashin@soleen.com> wrote:
> >
> > Currently, it is only allowed to reserve memory for crash kernel, because
> > it is a requirement in order to be able to boot into crash kernel without
> > touching memory of crashed kernel is to have memory reserved.
> >
> > The second benefit for having memory reserved for kexec kernel is
> > that it does not require a relocation after segments are loaded into
> > memory.
> >
> > If kexec functionality is used for a fast system update, with a minimal
> > downtime, the relocation of kernel + initramfs might take a significant
> > portion of reboot.
> >
> > In fact, on the machine that we are using, that has ARM64 processor
> > it takes 0.35s to relocate during kexec, thus taking 52% of kernel reboot
> > time:
> >
> > kernel shutdown 0.03s
> > relocation      0.35s
> > kernel startup  0.29s
> >
> > Image: 13M and initramfs is 24M. If initramfs increases, the relocation
> > time increases proportionally.
> >
> > While, it is possible to add 'kexeckernel=' parameters support to other
> > architectures by modifying reserve_crashkernel(), in this series this is
> > done for arm64 only.
> >
> > Pavel Tatashin (5):
> >   kexec: quiet down kexec reboot
> >   kexec: add resource for normal kexec region
> >   kexec: export common crashkernel/kexeckernel parser
> >   kexec: use reserved memory for normal kexec reboot
> >   arm64, kexec: reserve kexeckernel region
> >
> >  .../admin-guide/kernel-parameters.txt         |  7 ++
> >  arch/arm64/kernel/setup.c                     |  5 ++
> >  arch/arm64/mm/init.c                          | 83 ++++++++++++-------
> >  include/linux/crash_core.h                    |  6 ++
> >  include/linux/ioport.h                        |  1 +
> >  include/linux/kexec.h                         |  6 +-
> >  kernel/crash_core.c                           | 27 +++---
> >  kernel/kexec_core.c                           | 50 +++++++----
> >  8 files changed, 127 insertions(+), 58 deletions(-)
> >
> > --
> > 2.22.0
>
> This seems like an issue with time spent while doing sha256
> verification while in purgatory.
>
> Can you please try the following two patches which enable D-cache in
> purgatory before SHA verification and disable it before switching to
> kernel:
>
> http://lists.infradead.org/pipermail/kexec/2017-May/018839.html
> http://lists.infradead.org/pipermail/kexec/2017-May/018840.html

Hi Bhupesh,

The verification was taking 2.31s. This is why it is disabled via
kexec's '-i' flag. Therefore 0.35s is only the relocation part where
time is spent, and with my patches the time is completely gone.
Actually, I am glad you showed these patches to me because I might
pull them and enable verification for our needs.

>
> Note that these were not accepted upstream but are included in several
> distros in some form or the other :)

Enabling MMU and D-Cache for relocation  would essentially require the
same changes in kernel. Could you please share exactly why these were
not accepted upstream into kexec-tools?

Thank you,
Pasha

>
> Thanks,
> Bhupesh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
