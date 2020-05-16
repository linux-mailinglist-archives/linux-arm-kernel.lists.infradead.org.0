Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D09C41D5F9B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 16 May 2020 10:21:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TD8E5hII7xVJMHa1QbvOIqAhdkpuVOlcUrcQCCFKyYI=; b=M/L29nDS8GWNVS
	F1R/mFM3UU5KAG1bNkVciqqo2RG3EmLFty4W1ZjHZlDU4cQl7CxYPJM1G3wIYsCADErtYJprMMTSQ
	IXXqddtP5rE1gEXmQEhJWfjACvC9zvfoF8m/Agd92Iw5FrLzEB/pzMPUm6tQ+OXGCWPvUIoTuLM69
	spP74z1sKhEoKYjTVUNwXafFim5I+qQQpZpW02Ul3Qn/SF50UX+zNIng7Vg9fLevYGXBuSm388tk5
	wBwR0GOGnrzOc/ermOXkuP5Iy154XuPag5kSPLYeU3SlCA+9rnNIsgTOb+9qk9gGjgju7esJNFXcM
	b50bEY87rWhp7ZRvkN3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZs4P-0002ff-Fd; Sat, 16 May 2020 08:21:21 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZs47-0002T8-DS
 for linux-arm-kernel@lists.infradead.org; Sat, 16 May 2020 08:21:04 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 1A1E3781923FF99478CE;
 Sat, 16 May 2020 16:20:49 +0800 (CST)
Received: from [10.166.215.145] (10.166.215.145) by
 DGGEMS403-HUB.china.huawei.com (10.3.19.203) with Microsoft SMTP Server id
 14.3.487.0; Sat, 16 May 2020 16:20:45 +0800
Subject: Re: [PATCH 4/4] arm64: kgdb: Set PSTATE.SS to 1 to reenable
 single-step
To: Doug Anderson <dianders@chromium.org>
References: <20200509214159.19680-1-liwei391@huawei.com>
 <20200509214159.19680-5-liwei391@huawei.com>
 <CAD=FV=Vb6=f=fr83-k0YH86k4v4G5LcfOGcks7RM9VxzxOnXsQ@mail.gmail.com>
From: "liwei (GF)" <liwei391@huawei.com>
Message-ID: <5cf0ccf6-79e7-7ad4-c007-f0041daf9a42@huawei.com>
Date: Sat, 16 May 2020 16:20:44 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <CAD=FV=Vb6=f=fr83-k0YH86k4v4G5LcfOGcks7RM9VxzxOnXsQ@mail.gmail.com>
X-Originating-IP: [10.166.215.145]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_012103_640503_D25419DA 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Marc Zyngier <maz@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, liwei1412@163.com,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Jason Wessel <jason.wessel@windriver.com>, Will Deacon <will@kernel.org>,
 David Miller <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Douglas,

On 2020/5/14 8:23, Doug Anderson wrote:
(SNIP)
>> diff --git a/arch/arm64/kernel/kgdb.c b/arch/arm64/kernel/kgdb.c
>> index 3910ac06c261..093ad9d2e5e6 100644
>> --- a/arch/arm64/kernel/kgdb.c
>> +++ b/arch/arm64/kernel/kgdb.c
>> @@ -230,7 +230,8 @@ int kgdb_arch_handle_exception(int exception_vector, int signo,
>>                         kernel_prepare_single_step(&per_cpu(kgdb_ss_flags,
>>                                         raw_smp_processor_id()), linux_regs);
>>                         kernel_enable_single_step(linux_regs);
>> -               }
>> +               } else
>> +                       set_regs_spsr_ss(linux_regs);
> 
> One slight nit is that my personal preference is that if one half of
> an "if/else" needs braces then both halves should have braces.  I
Thanks for spotting it. Refer to Documentation/process/coding-style.rst,
i will fix it in the v2.

> don't know what Catalin and Will's policies are, though.
> 
> Other than that, this seems right to me.  I will leave it to the
> Catalin and Will folks to say if they'd rather have this call made
> from a different place or if they're happy with where you've put it.
> 
> Reviewed-by: Douglas Anderson <dianders@chromium.org>
> Tested-by: Douglas Anderson <dianders@chromium.org>
> 

Thanks,
Wei

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
