Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D79FB1A34CA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 15:24:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rF1Wy3TdGP/fwNKDCl4xDz6+SijAv91lfKP+km6MRig=; b=S8dYMUEFNV0xAH
	HXuaKaaxTWSiiwjKFB4dXsBI9lZXdhTgbiEwU2O4dBjpN/X35Z4nbYPwx7DS4oF3V/oyQfYQlfz1R
	vIzHQ8ykABCTcZkeGQKbzoHc+g5W7tgeeDExKhRKOj9yckLuEqkf45irmpYYkhgN3AKrgGr8IMDzH
	fMrXuz86lhPyqS5U9yhYhkrOC+CB67ieHIombnQhCF1dUmr+1/WFOWHC4Gc3c3P5kUhffMMovGka8
	L39i5+/0ixid/5n+SatS4MBweBj0CKQLPiHslHyGWQZAeQD7luANWAtrwrMrgi0JGHQaXzKJCmkB3
	LH+jc9S1GPfEuGxZ23Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMXA7-0004kO-CV; Thu, 09 Apr 2020 13:24:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMX9x-0004ja-OY
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 13:24:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8A3A130E;
 Thu,  9 Apr 2020 06:23:55 -0700 (PDT)
Received: from [10.37.8.193] (unknown [10.37.8.193])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8F2233F73D;
 Thu,  9 Apr 2020 06:23:54 -0700 (PDT)
Subject: Re: [PATCH v2 0/6] arm64: add the time namespace support
To: Andrei Vagin <avagin@gmail.com>
References: <20200225073731.465270-1-avagin@gmail.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <1c1ab662-5475-9d8b-038b-8411b060202a@arm.com>
Date: Thu, 9 Apr 2020 14:24:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200225073731.465270-1-avagin@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_062357_845701_ADF4EC61 
X-CRM114-Status: GOOD (  20.52  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Thomas Gleixner <tglx@linutronix.de>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Dmitry Safonov <dima@arista.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrei,

On 2/25/20 7:37 AM, Andrei Vagin wrote:
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
> 

Sorry for the delay, I completed this morning the review of your patches and I
do not have anymore comments on them. Thank you for making the effort and
bringing the time namespace support to arm64.

I have though a question on something I encountered during the testing of the
patches: I noticed that all the tests related to CLOCK_BOOTTIME_ALARM fail on
arm64 (please find the results below the scissors). Is this expected?

--->8---

1..4
ok 1 clockid: 1 abs:0
ok 2 clockid: 1 abs:1
not ok 3 # error clock_gettime: Invalid argument
not ok 4 # error clock_gettime: Invalid argument
Bail out!
# Pass 2 Fail 0 Xfail 0 Xpass 0 Skip 0 Error 2
1..1
ok 1 exec
# Pass 1 Fail 0 Xfail 0 Xpass 0 Skip 0 Error 0
1..8
not ok 1 # error Warning: failed to find clock_gettime in vDSO

./timens.sh: line 5: 15382 Segmentation fault      (core dumped) ./gettime_perf
1..1
ok 1 Passed for /proc/uptime
# Pass 1 Fail 0 Xfail 0 Xpass 0 Skip 0 Error 0
1..10
ok 1 Passed for CLOCK_BOOTTIME (syscall)
ok 2 Passed for CLOCK_BOOTTIME (vdso)
not ok 3 # error syscall(SYS_clock_gettime(9)): Invalid argument
not ok 4 # error clock_gettime(9): Invalid argument
ok 5 Passed for CLOCK_MONOTONIC (syscall)
ok 6 Passed for CLOCK_MONOTONIC (vdso)
ok 7 Passed for CLOCK_MONOTONIC_COARSE (syscall)
ok 8 Passed for CLOCK_MONOTONIC_COARSE (vdso)
ok 9 Passed for CLOCK_MONOTONIC_RAW (syscall)
ok 10 Passed for CLOCK_MONOTONIC_RAW (vdso)
Bail out!
# Pass 8 Fail 0 Xfail 0 Xpass 0 Skip 0 Error 2
1..3
ok 1 clockid=7
ok 2 clockid=1
not ok 3 # error timerfd_create: Operation not supported
Bail out!
# Pass 2 Fail 0 Xfail 0 Xpass 0 Skip 0 Error 1
1..3
ok 1 clockid=7
ok 2 clockid=1
ok 3 clockid=9
# Pass 3 Fail 0 Xfail 0 Xpass 0 Skip 0 Error 0

[...]

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
