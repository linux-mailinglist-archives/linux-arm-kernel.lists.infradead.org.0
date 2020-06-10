Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 834C11F5293
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 12:45:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rABS+JEqIPeHVtDYvxpQIAyXti+s87jVBHA40orztEA=; b=PcuXMvpzFidS7E
	7JDd4M45TQy0Lebp08nOUYlFFH0gOT75EDYZwuovY2n4RrZElSdlVq9pCua6FRA9GuWWb+vnLc0p8
	XxuqBxV4zM772V9SlnDWhQWqlVgNpLCSJ4qRhmlazx7IQ1ExohUALAtsH16J4NDYFy5UesKXjqRmz
	LOzNkAgJ2raxu9Znp+z5ZJ/L0mCsds3pdFg9iyOkiPhh/TDHofdkdExY58U97D6CNNXnXRctRIAA6
	nv+4clE6h6saTEY7fN0Zyb47vBnbu49EMea7uw8xkfi1CoipuiohaGsdsM6h8RvIMYvhQZVFOF/qa
	2tiLJjSw21TMrouKc0UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiyEM-0000OG-Cs; Wed, 10 Jun 2020 10:45:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiyE1-0000NA-W4
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 10:44:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3B2F81FB;
 Wed, 10 Jun 2020 03:44:50 -0700 (PDT)
Received: from [10.37.8.208] (unknown [10.37.8.208])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8E87D3F66F;
 Wed, 10 Jun 2020 03:44:47 -0700 (PDT)
Subject: Re: [PATCH v2] arm64: Enable perf events based hard lockup detector
To: Sumit Garg <sumit.garg@linaro.org>, Stephen Boyd <swboyd@chromium.org>
References: <1591272551-21326-1-git-send-email-sumit.garg@linaro.org>
 <159175395730.242598.3354488505981092317@swboyd.mtv.corp.google.com>
 <CAFA6WYNnx+aEfMKmWxwesj2JQga-6H3pOOdBpspkBkLhTdpihQ@mail.gmail.com>
From: Alexandru Elisei <alexandru.elisei@arm.com>
Message-ID: <5c7da179-a878-d544-03af-2053e6a1dff1@arm.com>
Date: Wed, 10 Jun 2020 11:45:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <CAFA6WYNnx+aEfMKmWxwesj2JQga-6H3pOOdBpspkBkLhTdpihQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_034454_075507_CFB6568D 
X-CRM114-Status: GOOD (  13.84  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Daniel Thompson <daniel.thompson@linaro.org>, Will Deacon <will@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Douglas Anderson <dianders@chromium.org>, acme@kernel.org,
 alexander.shishkin@linux.intel.com, mingo@redhat.com,
 julien.thierry.kdev@gmail.com, namhyung@kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, jolsa@redhat.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 6/10/20 6:02 AM, Sumit Garg wrote:
> On Wed, 10 Jun 2020 at 07:22, Stephen Boyd <swboyd@chromium.org> wrote:
>> Quoting Sumit Garg (2020-06-04 05:09:11)
>>> With the recent feature added to enable perf events to use pseudo NMIs
>>> as interrupts on platforms which support GICv3 or later, its now been
>>> possible to enable hard lockup detector (or NMI watchdog) on arm64
>>> platforms. So enable corresponding support.
>>>
>>> One thing to note here is that normally lockup detector is initialized
>>> just after the early initcalls but PMU on arm64 comes up much later as
>>> device_initcall(). So we need to re-initialize lockup detection once
>>> PMU has been initialized.
>>>
>>> Signed-off-by: Sumit Garg <sumit.garg@linaro.org>
>>> ---
>>>
>>> This patch is dependent on perf NMI patch-set [1].
>>>
>>> [1] https://patchwork.kernel.org/cover/11047407/
>> That patch series is from last year. Any progress on it?
>>
> Alexandru (in Cc) has been working on rebasing and reworking this
> patch-set with WIP-pmu-nmi branch [1]. For more information refer to
> this thread [2].
>
> [1] http://www.linux-arm.org/git?p=linux-ae.git;a=shortlog;h=refs/heads/WIP-pmu-nmi
> [2] https://lkml.org/lkml/2020/5/20/431
>
I have pushed the newest version of the patches to the same branch, not many
changes. I've tested it on the model, and everything works fine.

On all my boards, TFA clears SCR_EL3.FIQ, which Linux doesn't support, so right
now I'm searching for a board that I can use for testing.

Thanks,
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
