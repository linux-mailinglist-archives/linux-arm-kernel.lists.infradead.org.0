Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2A045026F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 08:38:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mEKsAC277zdvtqwIL0sw+Tz5FL9bhlnEEUgSAYNmxbU=; b=tIUnmw862uYl8y
	QS/9fT+liDLHH/yNz+9s9GpqCN49XhV1R2bMqQa5sypvaWZC9w1ofJORxHEy/AXlRELZiYo4IY+x5
	R6Iux/HkxHiaq/+UT9GGzjHEqj6ZI1nRShgzAF4Ul+av7mKXK5Ru/F6zg7uzSTAnfepyjQXm7P8Ef
	ms4xZfo7pNSmC4LbHC9YsBm40VPDah/w2yZOaM+ZCv6wFfggQTQLV2qlP7o3Ts0eNjWLuiTuAxDG3
	deVu+QfX1zO65n/pxFPEJfWYICllyJJOp1KXkJjcep/RUhdicNxrOv4Bhz6dLp2xV2tTV5WCMHxYm
	E+VJ3OnzpGxjRI3S4Oyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfIcC-0007jp-JO; Mon, 24 Jun 2019 06:38:08 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfIby-0007j9-DA
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 06:37:57 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id B9BD876A78035E795A4A;
 Mon, 24 Jun 2019 14:37:30 +0800 (CST)
Received: from [127.0.0.1] (10.177.223.23) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.439.0; Mon, 24 Jun 2019
 14:37:29 +0800
Subject: Re: [PATCH v5] arm64: kernel: implement fast refcount checking
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 <linux-arm-kernel@lists.infradead.org>
References: <20190619105431.2630-1-ard.biesheuvel@linaro.org>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <abc0e649-ed32-ac76-434e-632dee53980c@huawei.com>
Date: Mon, 24 Jun 2019 14:37:15 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <20190619105431.2630-1-ard.biesheuvel@linaro.org>
Content-Language: en-US
X-Originating-IP: [10.177.223.23]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_233756_019981_EFC3997E 
X-CRM114-Status: GOOD (  16.80  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
Cc: Kees Cook <keescook@chromium.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Jan Glauber <jglauber@marvell.com>,
 Will Deacon <will.deacon@arm.com>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019/6/19 18:54, Ard Biesheuvel wrote:
> This adds support to arm64 for fast refcount checking, as contributed
> by Kees for x86 based on the implementation by grsecurity/PaX.
> 
> The general approach is identical: the existing atomic_t helpers are
> cloned for refcount_t, with the arithmetic instruction modified to set
> the PSTATE flags, and one or two branch instructions added that jump to
> an out of line handler if overflow, decrement to zero or increment from
> zero are detected.
> 
> One complication that we have to deal with on arm64 is the fact that
> it has two atomics implementations: the original LL/SC implementation
> using load/store exclusive loops, and the newer LSE one that does mostly
> the same in a single instruction. So we need to clone some parts of
> both for the refcount handlers, but we also need to deal with the way
> LSE builds fall back to LL/SC at runtime if the hardware does not
> support it.
> 
> As is the case with the x86 version, the performance gain is substantial
> (ThunderX2 @ 2.2 GHz, using LSE), even though the arm64 implementation
> incorporates an add-from-zero check as well:
> 
> perf stat -B -- echo ATOMIC_TIMING >/sys/kernel/debug/provoke-crash/DIRECT
> 
>       116252672661      cycles                    #    2.207 GHz
> 
>       52.689793525 seconds time elapsed
> 
> perf stat -B -- echo REFCOUNT_TIMING >/sys/kernel/debug/provoke-crash/DIRECT
> 
>       127060259162      cycles                    #    2.207 GHz
> 
>       57.243690077 seconds time elapsed
> 
> For comparison, the numbers below were captured using CONFIG_REFCOUNT_FULL,
> which uses the validation routines implemented in C using cmpxchg():
> 
> perf stat -B -- echo REFCOUNT_TIMING >/sys/kernel/debug/provoke-crash/DIRECT
> 
>  Performance counter stats for 'cat /dev/fd/63':
> 
>       191057942484      cycles                    #    2.207 GHz
> 
>       86.568269904 seconds time elapsed
> 
> As a bonus, this code has been found to perform significantly better on
> systems with many CPUs, due to the fact that it no longer relies on the
> load/compare-and-swap combo performed in a tight loop, which is what we
> emit for cmpxchg() on arm64.

It helps my 96 cores ARM64 server as well,

Tested-by: Hanjun Guo <guohanjun@huawei.com>

Thanks
Hanjun


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
