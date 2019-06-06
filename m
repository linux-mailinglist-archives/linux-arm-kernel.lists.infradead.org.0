Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34C8E379D9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 18:38:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=genots2WkKd9rA3ounp+NNoQPWADxMru1mi4OaQdqGo=; b=Pf49f6l/aC5eYeI2P04esbLIv
	Ifju3A72/+SWc7MkItPmSbjk0ugjmzqokZWl54OUnO99Vce9vGyf4JYA2feSSYFbDkCsQkQ1mSGOs
	THZblkLdJwhg3KJ5QSxR//Vnl7zkK+WeXPIAqRxTFUeQld04Adq0G9UehpKy8wxcvJwtbWD1jedYA
	Bjj+Ay+J/G6AUSYmT+X8kMXVkcjbenXAgAR9Zz78QqviIbW/dvBAs8d7fC64AS/jYiiDuWn6c55je
	clQ0KbxMrRi4xWeyK5GZu3spkzwdSAhUnDT1lZ4m2xxQLWTiJWJWgYK8wal1FbYylh+bx8295N/hq
	zLDfgdKtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYvOm-0003U9-1k; Thu, 06 Jun 2019 16:37:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYvOd-0003Tn-OL
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 16:37:49 +0000
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D882A206BB;
 Thu,  6 Jun 2019 16:37:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559839067;
 bh=SBlCYXjXf9Dmv/1zjLqy5l9A1C3/vFnxMgdVK5+kQww=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ieLpvDzWcm5ztonnfpaX04Bf5XtKdgUmixTRnLfue8zPzBFlHhb0bdxXJ0QUOI8hC
 m390QKwAJBsuYwTCBnC6dbDKIrWmrnCmIuIzIC6i23+8X0Jg2W9R3FozjfKP9deUz5
 OEpzhHSWIZ/ihC8lYmNu8MNLNJEYCpggsMCjdmw0=
Date: Thu, 6 Jun 2019 12:37:45 -0400
From: Sasha Levin <sashal@kernel.org>
To: Michael Kelley <mikelley@microsoft.com>
Subject: Re: [PATCH v3 0/2] Drivers: hv: Move Hyper-V clock/timer code to
 separate clocksource driver
Message-ID: <20190606163745.GL29739@sasha-vm>
References: <1558969089-13204-1-git-send-email-mikelley@microsoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1558969089-13204-1-git-send-email-mikelley@microsoft.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_093747_821345_5FF8670C 
X-CRM114-Status: GOOD (  16.88  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "linux-hyperv@vger.kernel.org" <linux-hyperv@vger.kernel.org>,
 "marc.zyngier@arm.com" <marc.zyngier@arm.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "jasowang@redhat.com" <jasowang@redhat.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "marcelo.cerri@canonical.com" <marcelo.cerri@canonical.com>,
 "olaf@aepfle.de" <olaf@aepfle.de>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "apw@canonical.com" <apw@canonical.com>, vkuznets <vkuznets@redhat.com>,
 KY Srinivasan <kys@microsoft.com>, Sunil Muthuswamy <sunilmut@microsoft.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 02:59:07PM +0000, Michael Kelley wrote:
>This patch series moves Hyper-V clock/timer code to a separate Hyper-V
>clocksource driver. Previously, Hyper-V clock/timer code and data
>structures were mixed in with other Hyper-V code in the ISA independent
>drivers/hv code as well as in arch dependent code. The new Hyper-V
>clocksource driver is ISA independent, with a just few dependencies on
>arch specific functions. The patch series does not change any behavior
>or functionality -- it only reorganizes the existing code and fixes up
>the linkages. A few places outside of Hyper-V code are fixed up to use
>the new #include file structure.
>
>This restructuring is in response to Marc Zyngier's review comments
>on supporting Hyper-V running on ARM64, and is a good idea in general.
>It increases the amount of code shared between the x86 and ARM64
>architectures, and reduces the size of the new code for supporting
>Hyper-V on ARM64. A new version of the Hyper-V on ARM64 patches will
>follow once this clocksource restructuring is accepted.
>
>The code is diff'ed against Linux 5.2.0-rc1-next-20190524.
>
>Changes in v3:
>* Removed boolean argument to hv_init_clocksource(). Always call
>sched_clock_register, which is needed on ARM64 but a no-op on x86.
>* Removed separate cpuhp setup in hv_stimer_alloc() and instead
>directly call hv_stimer_init() and hv_stimer_cleanup() from
>corresponding VMbus functions.  This more closely matches original
>code and avoids clocksource stop/restart problems on ARM64 when
>VMbus code denies CPU offlining request.
>
>Changes in v2:
>* Revised commit short descriptions so the distinction between
>the first and second patches is clearer [GregKH]
>* Renamed new clocksource driver files and functions to use
>existing "timer" and "stimer" names instead of introducing
>"syntimer". [Vitaly Kuznetsov]
>* Introduced CONFIG_HYPER_TIMER to fix build problem when
>CONFIG_HYPERV=m [Vitaly Kuznetsov]
>* Added "Suggested-by: Marc Zyngier"
>
>Michael Kelley (2):
>  Drivers: hv: Create Hyper-V clocksource driver from existing
>    clockevents code
>  Drivers: hv: Move Hyper-V clocksource code to new clocksource driver
>
> MAINTAINERS                          |   2 +
> arch/x86/entry/vdso/vclock_gettime.c |   1 +
> arch/x86/entry/vdso/vma.c            |   2 +-
> arch/x86/hyperv/hv_init.c            |  91 +---------
> arch/x86/include/asm/hyperv-tlfs.h   |   6 +
> arch/x86/include/asm/mshyperv.h      |  81 ++-------
> arch/x86/kernel/cpu/mshyperv.c       |   2 +
> arch/x86/kvm/x86.c                   |   1 +
> drivers/clocksource/Makefile         |   1 +
> drivers/clocksource/hyperv_timer.c   | 321 +++++++++++++++++++++++++++++++++++
> drivers/hv/Kconfig                   |   3 +
> drivers/hv/hv.c                      | 156 +----------------
> drivers/hv/hv_util.c                 |   1 +
> drivers/hv/hyperv_vmbus.h            |   3 -
> drivers/hv/vmbus_drv.c               |  42 ++---
> include/clocksource/hyperv_timer.h   | 105 ++++++++++++
> 16 files changed, 484 insertions(+), 334 deletions(-)
> create mode 100644 drivers/clocksource/hyperv_timer.c
> create mode 100644 include/clocksource/hyperv_timer.h

Queued for hyperv-next, thanks!

--
Thanks,
Sasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
