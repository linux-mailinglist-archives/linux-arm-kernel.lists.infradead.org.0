Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CD2E64A21
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 17:53:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ze2TjdrotdOkVl0mbsBF4QbciVqdtzr1YmkY0KHADJo=; b=uyZXGZAkmVvekj
	83gCsODwk+8NoaSYdbpdWlH8cQvhWlUNdliXsWhgik4I5q8DnMxyprGhMrAk85P56zVLJz1A1lCQ/
	mQ/OT3vrgSjGCm+72EvVqojZ/JSv64G6GENB/52vYhOBg0kSsKraHCtTUC2jiT53fkSgCHHZomYoA
	T3wVTDAxtYXvzBVxaixoWjebxt1mbbbt0HmNC44hMx5MYabEQ2B9Cc4f0cJ9K7pNhzrcoiC/sGp1i
	3KHiioUCr9WiJeAfakzc5aq81kY8GBTLfpSE7uG7rY1IiOjkkvu6hAdN7jE99wXAyq/yCvpPl45S4
	Nhb4yFxxjL0uqHQl+AqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlEuQ-000611-7S; Wed, 10 Jul 2019 15:53:30 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlEu9-0005zD-56
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 15:53:14 +0000
Received: by mail-ed1-x533.google.com with SMTP id e2so2641030edi.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jul 2019 08:53:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OooCPJ+TfmCiIkPVCQN9rBe4Zl+T7uS7oe42m2m8dO8=;
 b=NDu1fs3Jx5NnJxsIJXbuNNaTY9DeNvY++yCZH2Aqe/HCWCLe0jW0MSpBbjrkQ3HVdh
 uxtulPIk/CNjS0NRv1JMzmYodopKY/+CANbJ9grsV8q3Sn48x93g5QYRcjv6aOZ7sxUN
 99tk+HQN99ShqhLlvW4RAYTOM8pl+1SCJtKjilRR5H1lijlbXBbReR/YgW3ifQCsFIlV
 znzAj3ymqFOeEuooUCLRv9BhhsUSrftPWhTW9SKEzhoTFv3JdKPwXjDmopcHpA9ABmb9
 M+1GSzxxVDUtgogYv358LkymKGrRnRIgU61uxTZHbwe2dMH2ljUmEAlx5upSYZZnSaeE
 mchg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OooCPJ+TfmCiIkPVCQN9rBe4Zl+T7uS7oe42m2m8dO8=;
 b=mfB1hV76h3mgP7UmuN0cFgyPGwC9bvVGDtIIF6vjDEAwMCMXQgj55QpknKaF5TwGlK
 1OAZ14k3fleYABN+6lt8HoMaYjjGZlqW5wVfCygw5sCJ2odO8U++CgQd5hfYZ9xjAYeg
 +Q5i0TLlj1JcaAkH373y/dCNT09Gi9kgi3vvcFvaTpGsA1Nkx3GKKuPnBIahQxdHU3US
 SxTE5LG0XExxeRPAxGTBUQdnFbiAhVR2+JprWiuMtMCoOHWDoVQYw7q1T4Q7IZW01QzC
 ZGtruE4CKRj01y8rVTZ5EOTt4SmLtBaLD148GG353hbAvuYkkURcDWGnUYzX7b864WGH
 hoTg==
X-Gm-Message-State: APjAAAV2BRgEIHkzwsKPVL8Dw2cp3sY+k4xCPiGx1g023QjjVvD+/z55
 GW2CneSk4FRY4E/CVbd50eRo8AnJYnsMnsuB70hrOA==
X-Google-Smtp-Source: APXvYqwRyg+PK6CmK98TU5RngQ5JLVQLW1ax1AQSLUknwWFZptyHZ0BZxbGoMORI2mU52aMjJ96sVgompk4jkkn7/ao=
X-Received: by 2002:a17:906:b203:: with SMTP id
 p3mr27035845ejz.223.1562773991171; 
 Wed, 10 Jul 2019 08:53:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190709182014.16052-1-pasha.tatashin@soleen.com>
 <20190710065953.GA4744@localhost.localdomain>
In-Reply-To: <20190710065953.GA4744@localhost.localdomain>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Wed, 10 Jul 2019 11:53:00 -0400
Message-ID: <CA+CK2bAC2371999HMMCv6TCf1351u_nV4R1gBLc=79dpLakhHA@mail.gmail.com>
Subject: Re: [v2 0/5] arm64: allow to reserve memory for normal kexec kernel
To: Dave Young <dyoung@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_085313_379902_3362CB95 
X-CRM114-Status: GOOD (  15.38  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:533 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 LKML <linux-kernel@vger.kernel.org>, James Morris <jmorris@namei.org>,
 "Eric W. Biederman" <ebiederm@xmission.com>, will@kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> The crashkernel reservation for kdump is a must, there are already a lot
> of different problems need to consider, for example the low and high
> memory issues, and a lot of other things.  I'm not convinced to enable
> this for kexec reboot.
>
> This really looks to workaround the arm64 issue and move the
> complication to kernel.

I will be working on MMU arm64 kernel relocation solution.

Pasha

>
> > On, the other hand hibernate does something similar already, but there
> > MMU never needs to be disabled, and also by the time machine_kexec()
> > is called, allocator is not available, as we can't fail to do reboot,
> > so page table must be pre-allocated during kernel load time.
> >
> > Note: the above time is relocation time only. Purgatory usually also
> > computes checksum, but that is skipped, because --no-check is used when
> > kernel image is loaded via kexec.
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
> >
> >
> > _______________________________________________
> > kexec mailing list
> > kexec@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/kexec
>
> Thanks
> Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
