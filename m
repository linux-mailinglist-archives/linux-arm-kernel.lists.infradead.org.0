Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D33AC1DB293
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 14:01:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vQe1zwsDangEG0Q/5icKYLaYGeiMQuI0ADM1WikOk2E=; b=bLORwegYWSwlVH
	HKyOApdlGNiQEJ84FYNP38mb5fTsEDBdbNk+unsFBYTTwy3P8xWfROaYI9E++VviuTfKn1NffEQ4z
	vkBLeHxYs36u9UYadIWEDSL4gnsK48t9R3dJUs17PtM9VYZitqwLM+Zo5vq6OTuSsjdUl6dRQqULy
	AqtdY5RKf7FtJOa6BR24vFPtc9zuqK8qD0lVsS+akpHgCZqDXcAC+MI8CNrTHk2T9/XgjSThLLNRP
	v7H16xSbdODkoPsAftawDpgSE9rxgmWnP9OAFPMGRa6kBl1lyyguJiRx8XJErVz4UFD//ZRRx/BsW
	X+Z4OXwWKJV1CsSK0LTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbNPb-0003Ra-Qe; Wed, 20 May 2020 12:01:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbNPQ-0003QJ-Pf
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 12:01:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1560730E;
 Wed, 20 May 2020 05:01:14 -0700 (PDT)
Received: from [10.37.8.50] (unknown [10.37.8.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9F8003F52E;
 Wed, 20 May 2020 05:01:12 -0700 (PDT)
Subject: Re: [PATCH v3 0/6] arm64: add the time namespace support
To: Andrei Vagin <avagin@gmail.com>, Catalin Marinas
 <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
References: <20200416052618.804515-1-avagin@gmail.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <08e3ee73-8048-b84e-61b3-e87f3500e022@arm.com>
Date: Wed, 20 May 2020 13:02:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200416052618.804515-1-avagin@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_050116_871872_4EE80E99 
X-CRM114-Status: GOOD (  24.17  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Dmitry Safonov <dima@arista.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrei,

On 4/16/20 6:26 AM, Andrei Vagin wrote:
> Allocate the time namespace page among VVAR pages and add the logic
> to handle faults on VVAR properly.
> 
> If a task belongs to a time namespace then the VVAR page which contains
> the system wide VDSO data is replaced with a namespace specific page
> which has the same layout as the VVAR page. That page has vdso_data->seq
> set to 1 to enforce the slow path and vdso_data->clock_mode set to
> VCLOCK_TIMENS to enforce the time namespace handling path.
> 
> The extra check in the case that vdso_data->seq is odd, e.g. a concurrent
> update of the VDSO data is in progress, is not really affecting regular
> tasks which are not part of a time namespace as the task is spin waiting
> for the update to finish and vdso_data->seq to become even again.
> 
> If a time namespace task hits that code path, it invokes the corresponding
> time getter function which retrieves the real VVAR page, reads host time
> and then adds the offset for the requested clock which is stored in the
> special VVAR page.
> 
> v2: Code cleanups suggested by Vincenzo.
> v3: use OPTIMIZER_HIDE_VAR() instead of inline assembly in
>     __arch_get_timens_vdso_data.
> 

Nit: If you re-post, I would remove the OPTIMIZER_HIDE_VAR() reference because
it does not reflect the current status of the patches.

I tested it again with your latest change in the test code and it works for me
(thank you for sending a patch for the test as well).

With this:

Reviewed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>

> Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: Dmitry Safonov <dima@arista.com>
> 
> v3 on github (if someone prefers `git pull` to `git am`):
> https://github.com/avagin/linux-task-diag/tree/arm64/timens-v3
> 
> Andrei Vagin (6):
>   arm64/vdso: use the fault callback to map vvar pages
>   arm64/vdso: Zap vvar pages when switching to a time namespace
>   arm64/vdso: Add time napespace page
>   arm64/vdso: Handle faults on timens page
>   arm64/vdso: Restrict splitting VVAR VMA
>   arm64: enable time namespace support
> 
>  arch/arm64/Kconfig                            |   1 +
>  .../include/asm/vdso/compat_gettimeofday.h    |  11 ++
>  arch/arm64/include/asm/vdso/gettimeofday.h    |   8 ++
>  arch/arm64/kernel/vdso.c                      | 134 ++++++++++++++++--
>  arch/arm64/kernel/vdso/vdso.lds.S             |   3 +-
>  arch/arm64/kernel/vdso32/vdso.lds.S           |   3 +-
>  include/vdso/datapage.h                       |   1 +
>  7 files changed, 147 insertions(+), 14 deletions(-)
> 

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
