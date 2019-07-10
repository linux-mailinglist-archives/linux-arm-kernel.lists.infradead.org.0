Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 030D6641A7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 09:06:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6zOCYMFHu3C/3bRTV2+h3k7LNXeB3MYApGjxQYkvTS8=; b=Du/Mn2N+XzgrWf
	nUsuBDEdkSg5FO6WR7avHookZIciJZLZfy0oxj/A//zk98Q7EG3W8d1lK8D736tc7cevwe8Dknr9j
	GmUjKL6NpGxnZfi2ZGUu+vGy1iR5LQmy3JSHAyvLTdWjRCv4tz7pGSZxBYm/qQrObwNpucWcthpuz
	OTWfF/y2Z5sBmCFd4cQVPqnvH7ehrpag7y1iVjZXnhkuhFa1z6YEXoyO07G4eqzskcgh2DeWObvH8
	jai1w0eYdPa1FoziRJ1rYMX4Cq/eKQVOJvD51ajqNbSqo1UyXqJDo49TskkuGKN2WMqizeVR+nZZ5
	cuLW/ovFYV4Cr9wC0Smw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl6g4-0004Yi-26; Wed, 10 Jul 2019 07:06:08 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl6fT-0004XX-DG; Wed, 10 Jul 2019 07:05:34 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4D9FC30832E9;
 Wed, 10 Jul 2019 07:00:06 +0000 (UTC)
Received: from localhost.localdomain (ovpn-12-116.pek2.redhat.com
 [10.72.12.116])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id C014092D43;
 Wed, 10 Jul 2019 07:00:00 +0000 (UTC)
Date: Wed, 10 Jul 2019 14:59:53 +0800
From: Dave Young <dyoung@redhat.com>
To: Pavel Tatashin <pasha.tatashin@soleen.com>
Subject: Re: [v2 0/5] arm64: allow to reserve memory for normal kexec kernel
Message-ID: <20190710065953.GA4744@localhost.localdomain>
References: <20190709182014.16052-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190709182014.16052-1-pasha.tatashin@soleen.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Wed, 10 Jul 2019 07:00:06 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_000531_705671_6C07FA2D 
X-CRM114-Status: GOOD (  24.82  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: sashal@kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 linux-doc@vger.kernel.org, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, jmorris@namei.org, ebiederm@xmission.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 07/09/19 at 02:20pm, Pavel Tatashin wrote:
> Changelog
> v1 - v2
> 	- No changes to patches, addressed suggestion from James Morse
> 	  to add "arm64" tag to cover letter.
> 	- Improved cover letter information based on discussion.
> 
> Currently, it is only allowed to reserve memory for crash kernel, because
> it is a requirement in order to be able to boot into crash kernel without
> touching memory of crashed kernel is to have memory reserved.
> 
> The second benefit for having memory reserved for kexec kernel is
> that it does not require a relocation after segments are loaded into
> memory.
> 
> If kexec functionality is used for a fast system update, with a minimal
> downtime, the relocation of kernel + initramfs might take a significant
> portion of reboot.
> 
> In fact, on the machine that we are using, that has ARM64 processor
> it takes 0.35s to relocate during kexec, thus taking 52% of kernel reboot
> time:
> 
> kernel shutdown	0.03s
> relocation	0.35s
> kernel startup	0.29s
> 
> Image: 13M and initramfs is 24M. If initramfs increases, the relocation
> time increases proportionally.
> 
> While, it is possible to add 'kexeckernel=' parameters support to other
> architectures by modifying reserve_crashkernel(), in this series this is
> done for arm64 only.
> 
> The reason it is so slow on arm64 to relocate kernel is because the code
> that does relocation does this with MMU disabled, and thus D-Cache and
> I-Cache must also be disabled.
> 
> Alternative solution is more complicated: Setup a temporary page table
> for relocation_routine and also for code from cpu_soft_restart. Perform
> relocation with MMU enabled, do cpu_soft_restart where MMU and caching
> are disabled, jump to purgatory. A similar approach was suggested for
> purgatory and was rejected due to making purgatory too complicated.

The crashkernel reservation for kdump is a must, there are already a lot
of different problems need to consider, for example the low and high
memory issues, and a lot of other things.  I'm not convinced to enable
this for kexec reboot.

This really looks to workaround the arm64 issue and move the
complication to kernel.

> On, the other hand hibernate does something similar already, but there
> MMU never needs to be disabled, and also by the time machine_kexec()
> is called, allocator is not available, as we can't fail to do reboot,
> so page table must be pre-allocated during kernel load time.
> 
> Note: the above time is relocation time only. Purgatory usually also
> computes checksum, but that is skipped, because --no-check is used when
> kernel image is loaded via kexec.
> 
> Pavel Tatashin (5):
>   kexec: quiet down kexec reboot
>   kexec: add resource for normal kexec region
>   kexec: export common crashkernel/kexeckernel parser
>   kexec: use reserved memory for normal kexec reboot
>   arm64, kexec: reserve kexeckernel region
> 
>  .../admin-guide/kernel-parameters.txt         |  7 ++
>  arch/arm64/kernel/setup.c                     |  5 ++
>  arch/arm64/mm/init.c                          | 83 ++++++++++++-------
>  include/linux/crash_core.h                    |  6 ++
>  include/linux/ioport.h                        |  1 +
>  include/linux/kexec.h                         |  6 +-
>  kernel/crash_core.c                           | 27 +++---
>  kernel/kexec_core.c                           | 50 +++++++----
>  8 files changed, 127 insertions(+), 58 deletions(-)
> 
> -- 
> 2.22.0
> 
> 
> _______________________________________________
> kexec mailing list
> kexec@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/kexec

Thanks
Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
