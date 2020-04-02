Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAE1B19BBC0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 08:35:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SSSPpmvf0I6YXagG4esqBLOB0+qMuTaw8Zy3A2mIDQQ=; b=lCIYtMOzeN8LtQ
	ExNIAUOTV69Bg4hKwzbqtwQO0Nz/5SADLTiO1LxdOerUiJWJCyTy34okpEEfT38Au0KgnnhKDzpvN
	oLBZfiugkRTwHQZ9onLHhQCfGi2RQqsBuqzm+maBSTDEZXM1/SyiYjsuCkeXkZ/+9OKOMe0iN+UfU
	FSPDF65NSUa/UcZwZGUYSd4FPm+DQ2ecNUsi7ilGosCHVLcGTWL+GP96cWao26akmF5UjrtrL1wX5
	e73wcWbwD+kkojW+UufnSnaN3FwT3e1+D+HvIOLXw6laMHm5sdrqo4t8Qz5wROiNKx74ksG8A0j9D
	M0tR64Wpb5ZVNT5viWoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJtSB-0005MH-47; Thu, 02 Apr 2020 06:35:51 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJtRy-0005If-EJ
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 06:35:40 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 1075E271E61B5729B6E1;
 Thu,  2 Apr 2020 14:35:25 +0800 (CST)
Received: from [127.0.0.1] (10.74.184.86) by DGGEMS409-HUB.china.huawei.com
 (10.3.19.209) with Microsoft SMTP Server id 14.3.487.0; Thu, 2 Apr 2020
 14:35:15 +0800
Subject: Re: Question about SEA handling process happened in user space
To: James Morse <james.morse@arm.com>
References: <5E81EFCD.6020605@huawei.com>
 <2b0e5507-ad75-9af1-6afe-aa87d8cf597f@arm.com>
From: Xiaofei Tan <tanxiaofei@huawei.com>
Message-ID: <5E8587A3.6030101@huawei.com>
Date: Thu, 2 Apr 2020 14:35:15 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <2b0e5507-ad75-9af1-6afe-aa87d8cf597f@arm.com>
X-Originating-IP: [10.74.184.86]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_233538_645359_7F0CC405 
X-CRM114-Status: GOOD (  18.50  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Linuxarm <linuxarm@huawei.com>,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org, Shiju Jose <shiju.jose@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi James,

On 2020/3/31 0:49, James Morse wrote:
> Hi Xiaofei,
> 
> On 3/30/20 2:10 PM, Xiaofei Tan wrote:
>> I'm a little confused about the handling process of SEA happened in user space.
> 
>> Following the description of FnV bit of register ESR_ELx in ARMv8.4 SPEC,FAR is
>> valid only for synchronous External abort on a translation table walk.
> 
>> But for this FAR valid scenario(attached code from line 684 to 687),
>> we send signal SIGKILL to kill process. For some other scenario, such as line 680,
>> FAR is not valid, but we send SIGBUS and transfer error address to process to try to do some recovery.
> 
> 'FAR is not valid': its optional. The ESR_EL1.FnV bit can be set for the 'catch
> all' external abort fault-status-code. This lets the CPU tell us that it doesn't
> know what the faulting virtual address is.
> 
> do_sea() checks for this:
> |	if (esr & ESR_ELx_FnV)
> |		siaddr = NULL;
> |	else
> |		siaddr  = (void __user *)addr;
> 
> If we can't know the address, there isn't much we can do.
> (This check is really making sure we don't pass junk to user-space when FnV is set)
> 
> 
>> should it be an problem ?
> 
> I'm not quite sure what your question is.
> 
> If the CPU doesn't tell us the address, we can't tell user-space what it is. The
> alternative is to upgrade to SIGKILL in that case.
> 
> 
> If you see this instead of the address provided via firmware-first, there is a
> series to improve that here:
> https://lore.kernel.org/linux-acpi/20200228174817.74278-1-james.morse@arm.com/
> 
> (We skip this signal code of APEI promises it did all the work. This lets you
> take the signal from memory_failure() instead, which may have better information.)
> 

There may be an competition issue.
APEI run memory_failure() in an bottom half for memory errors. Then it may be not finished
before here SEA handling end, and application process may back to run.

> 
> If its the SIGKILL entries: these are for the translation table walk.
> There is no point telling user-space about corruption in its page tables as it
> can't do anything about it. The kernel's handling of this is to kill the
> process. (page tables make up a very small amount of memory, so this should be
> rarer than the regular 'external abort' case)
> 
> 
> Thanks,
> 
> James
> 
> 
> 
>> 680         { do_sea,               SIGBUS,  BUS_OBJERR,    "synchronous external abort"    },
>> 684         { do_sea,               SIGKILL, SI_KERNEL,     "level 0 (translation table walk)"      },
>> 685         { do_sea,               SIGKILL, SI_KERNEL,     "level 1 (translation table walk)"      },
>> 686         { do_sea,               SIGKILL, SI_KERNEL,     "level 2 (translation table walk)"      },
>> 687         { do_sea,               SIGKILL, SI_KERNEL,     "level 3 (translation table walk)"      },
>> 688         { do_sea,               SIGBUS,  BUS_OBJERR,    "synchronous parity or ECC error" },    // Reserved when RAS is implemented
>> 692         { do_sea,               SIGKILL, SI_KERNEL,     "level 0 synchronous parity error (translation table walk)"     },      // Reserved when RAS is implemented
>> 693         { do_sea,               SIGKILL, SI_KERNEL,     "level 1 synchronous parity error (translation table walk)"     },      // Reserved when RAS is implemented
>> 694         { do_sea,               SIGKILL, SI_KERNEL,     "level 2 synchronous parity error (translation table walk)"     },      // Reserved when RAS is implemented
>> 695         { do_sea,               SIGKILL, SI_KERNEL,     "level 3 synchronous parity error (translation table walk)"     },      // Reserved when RAS is implemented
>> 696         { do_bad,               SIGKILL, SI_KERNEL,     "unknown 32"                    },
> 
> .
> 

-- 
 thanks
tanxiaofei


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
