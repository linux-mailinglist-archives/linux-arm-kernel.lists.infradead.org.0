Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A3284EF6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 16:41:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ujGdLJYTXhrDYpmNpLtq0y0f5xl5Rhuxbo9fl78yeyU=; b=Xp+rt/O3pLxbGcZilSuJ30fuP
	r55qWRSzz+IruaOU7/zF3ADDRq07QsbTz9dBLa37Z14ZvNZUwmG+omto7kySvBi1hTuvZZNsiRE8I
	CotQDy34ryOJOSJwFTSbRYKnprgjkz0p56Hp6MSccdrZ3D1yNXvrsfPoFz1efOtMQAJNIz3r8UMbb
	EOmjYzTEv9TS754ZazIbJypwXgaqcsJAwH1JExfmHqKGs+edRCPVN7xhiLIUJMzEzE9Pg1Nw6gPLp
	/w0AbWGcrLiQlVAMFn49xgLlUr+IZzImEd8a0IOvqxslUTMlcxgnMLD+/weoIwZcGqimenHv0nzCx
	JW7JJQFjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvN8J-0000wC-Ut; Wed, 07 Aug 2019 14:41:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvN85-0000vq-IW
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 14:41:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 29116344;
 Wed,  7 Aug 2019 07:41:28 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D2D603F706;
 Wed,  7 Aug 2019 07:41:26 -0700 (PDT)
Subject: Re: [PATCH] arm64: Disable big endian builds with clang
To: Mark Brown <broonie@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>
References: <20190806183918.41078-1-broonie@kernel.org>
 <CAKwvOdkvFowCWP6cpKoMOz+EWojBXJWs3TzuTvn4180sVu4ayw@mail.gmail.com>
 <CAKwvOdkBhuzJ9L6L=+_PxSc4u3soB0VsiNUsjt=J55LgdYddnw@mail.gmail.com>
 <20190807123809.GA4048@sirena.co.uk>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <ec7bef46-7dcf-d165-b772-b4fd6055d964@arm.com>
Date: Wed, 7 Aug 2019 15:41:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190807123809.GA4048@sirena.co.uk>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_074129_652502_C4373703 
X-CRM114-Status: GOOD (  20.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Tri Vo <trong@google.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Nathan Huckleberry <nhuck@google.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Nathan Chancellor <natechancellor@gmail.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 07/08/2019 13:38, Mark Brown wrote:
> On Tue, Aug 06, 2019 at 04:47:23PM -0700, Nick Desaulniers wrote:
>> On Tue, Aug 6, 2019 at 2:25 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>>> On Tue, Aug 6, 2019 at 11:39 AM Mark Brown <broonie@kernel.org> wrote:
> 
>> +Huck
>> Huck notes that the device eventually boots in qemu, it just takes on
>> the order of 165 seconds to boot.  What's the timeout on KernelCI?
> 
> It's not a timeout in kernelci, it's the kernel timing out being unable
> to find something in userspace being booted it can use as /init (there's
> a timeout in that process to cope with network filesystems).  IIRC it's
> about 2 minutes.  You can see this clearly in the logs I pointed you at:
> 
> | You can see a bunch of reports here (all the big endian failures):
> 
> |         https://kernelci.org/boot/all/job/next/branch/master/kernel/next-20190730/
> 
> For example:
> 
> 	https://storage.kernelci.org/next/master/next-20190730/arm64/defconfig+CONFIG_CPU_BIG_ENDIAN=y/clang-8/lab-baylibre/boot-meson-gxbb-nanopi-k2.html

I thought it looked suspicious that there were EFI messages in that boot 
log; from that job's config: 
https://storage.kernelci.org/next/master/next-20190730/arm64/defconfig+CONFIG_CPU_BIG_ENDIAN=y/clang-8/kernel.config

...
# CONFIG_CPU_BIG_ENDIAN is not set
...


I think that's a kernelci problem...

Robin.

> 
>> I think if we can determine why we see:
>> [  144.626755] request_module: kmod_concurrent_max (0) close to 0
>> (max_modprobes: 50), for module binfmt-4c46, throttling...
>> [  149.752826] request_module: modprobe binfmt-4c46 cannot be
>> processed, kmod busy with 50 threads for more than 5 seconds now
> 
>> a lot, then we don't actually need to disable this outright when
>> building w/ Clang?
> 
> Those error messages are happening because the kernel can't figure out
> how to execute a binary it's trying to run, like I say the module it's
> trying to load is binfmt_misc.  If the kernel can't work out how to
> execute userspace it's not terribly useful.
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
