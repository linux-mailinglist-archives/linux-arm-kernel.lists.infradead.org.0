Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99C251D5F98
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 16 May 2020 10:21:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tONM07DfoMdfYPhlHUn9ZhPQSzi2iAVHxoDy+I6TeC4=; b=CkfwziCsqt/ni7
	3epMHN8O2FGSCnMewtagLZHfg+eq8t6dhoaBCOGR+ytst99fA17t+fPW1xoCnSw8RXlYK8CHGqE4Y
	BMFHdDbtAxdwNF8XSHfNctEnwZcyXsJlj2m7IHEiYbdQCsanUBqQnkLgEstYmltTdQJc1BnpbNq5L
	fTst9cfNrF791YBECeTmfT/3QFn9FQ09xzHFvQT9mekXciJ1tl+BFc9eS4LOgHxlF3ExqBMAeeSY8
	pzLdb0fTF5fN+AI5qA0EEb2lOoq5Zpc2ptFW6DY95espx+71+Ktii/DkEbZO5JfiVgNBZTalEr4nT
	qfbriQ8ZuZ+nsKfyStNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZs49-0002Un-LF; Sat, 16 May 2020 08:21:05 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZs3z-0002Rk-E7
 for linux-arm-kernel@lists.infradead.org; Sat, 16 May 2020 08:20:58 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id C9FD0778710BA671C180;
 Sat, 16 May 2020 16:20:39 +0800 (CST)
Received: from [10.166.215.145] (10.166.215.145) by
 DGGEMS405-HUB.china.huawei.com (10.3.19.205) with Microsoft SMTP Server id
 14.3.487.0; Sat, 16 May 2020 16:20:36 +0800
Subject: Re: [PATCH 0/4] arm64: kgdb/kdb: Fix single-step debugging issues
To: Doug Anderson <dianders@chromium.org>
References: <20200509214159.19680-1-liwei391@huawei.com>
 <CAD=FV=Xv6xgj_M9tYjHzmW4UZD2RdH2c5=dagNybSkdfBabYZw@mail.gmail.com>
From: "liwei (GF)" <liwei391@huawei.com>
Message-ID: <a20ee677-495b-9336-a329-eabd50dd1cad@huawei.com>
Date: Sat, 16 May 2020 16:20:35 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <CAD=FV=Xv6xgj_M9tYjHzmW4UZD2RdH2c5=dagNybSkdfBabYZw@mail.gmail.com>
X-Originating-IP: [10.166.215.145]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_012056_476140_2374F7FF 
X-CRM114-Status: GOOD (  14.50  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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

On 2020/5/14 8:34, Doug Anderson wrote:
> Hi,
> 
> On Sat, May 9, 2020 at 6:49 AM Wei Li <liwei391@huawei.com> wrote:
>>
>> This patch set is to fix several issues of single-step debugging
>> in kgdb/kdb on arm64.
>>
>> It seems that these issues have been shelved a very long time,
>> but i still hope to solve them, as the single-step debugging
>> is an useful feature.
>>
>> Note:
>> Based on patch "arm64: cacheflush: Fix KGDB trap detection",
>> https://www.spinics.net/lists/arm-kernel/msg803741.html
>>
>> Wei Li (4):
>>   arm64: kgdb: Fix single-step exception handling oops
>>   arm64: Extract kprobes_save_local_irqflag() and
>>     kprobes_restore_local_irqflag()
>>   arm64: kgdb: Fix single-stepping into the irq handler wrongly
>>   arm64: kgdb: Set PSTATE.SS to 1 to reenable single-step
>>
>>  arch/arm64/include/asm/debug-monitors.h |  6 ++++++
>>  arch/arm64/kernel/debug-monitors.c      | 28 ++++++++++++++++++++++++-
>>  arch/arm64/kernel/kgdb.c                | 16 +++++++++++---
>>  arch/arm64/kernel/probes/kprobes.c      | 28 ++-----------------------
>>  4 files changed, 48 insertions(+), 30 deletions(-)
> 
> Just an overall note that I'm very happy that you posted this patch
> series!  It's always been a thorn in my side that stepping and
> breakpoints were so broken on arm64 and I'm really excited that you're
> fixing them.  Now I'll have to get in the habit of using kgdb for more
> than just debugging crashes and maybe I can use it more for exploring
> how functions work more.  :-)
> > I'll also note that with your patch series I'm even seeing the "call"
> feature of gdb working now.  That has always been terribly broken for
> me.
> 
Thanks for reviewing and testing this series.
Enjoy exploring the kernel with kgdb/kdb! :-)

Thanks,
Wei

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
