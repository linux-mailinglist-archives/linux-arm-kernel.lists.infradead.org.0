Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 927A51981A5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 18:49:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kyGZmoypmBL4yUbNAKJF0qhSecHX6lYJSkqJNBm0RHI=; b=EnhQmrtIhguyYX
	ivpEyEHFj9R9mXSNLHnal9Ds2fCqEYo9sFJCtk/c0rEu91nu5x0ekTb8R/Ruba5aC18L+Qypb5fpE
	SlGTHbHfqQvpUcgkCG4HVrBN9MEe4RSKgM90ULTqd3kTeqEIvtsGPRTHm6iq+0EA4k3z+X913m001
	2YtLGFKKkExL/daqrVKDTgb0JoCgZnRwjtjTOpmI+K4kdr8Vy0SH8kWh5EogwH5yYwE5QrEaIFQIm
	/i2Bi+vUqxl1gVePwJHx7t3fpEvl6kV/3tRYapJaZRI3rDPDkxLgfJx5LX3fD96y3QLnaC+BiadH+
	55NTxxVkQkXpUd7JvJNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIxbA-0001PQ-E7; Mon, 30 Mar 2020 16:49:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIxb1-0001Op-9G
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 16:49:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 028671042;
 Mon, 30 Mar 2020 09:49:05 -0700 (PDT)
Received: from [172.16.1.108] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id ACA423F68F;
 Mon, 30 Mar 2020 09:48:58 -0700 (PDT)
Subject: Re: Question about SEA handling process happened in user space
To: Xiaofei Tan <tanxiaofei@huawei.com>
References: <5E81EFCD.6020605@huawei.com>
From: James Morse <james.morse@arm.com>
Openpgp: preference=signencrypt
Message-ID: <2b0e5507-ad75-9af1-6afe-aa87d8cf597f@arm.com>
Date: Mon, 30 Mar 2020 17:49:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <5E81EFCD.6020605@huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_094907_406033_4058BBA0 
X-CRM114-Status: GOOD (  15.87  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Hi Xiaofei,

On 3/30/20 2:10 PM, Xiaofei Tan wrote:
> I'm a little confused about the handling process of SEA happened in user space.

> Following the description of FnV bit of register ESR_ELx in ARMv8.4 SPEC,FAR is
> valid only for synchronous External abort on a translation table walk.

> But for this FAR valid scenario(attached code from line 684 to 687),
> we send signal SIGKILL to kill process. For some other scenario, such as line 680,
> FAR is not valid, but we send SIGBUS and transfer error address to process to try to do some recovery.

'FAR is not valid': its optional. The ESR_EL1.FnV bit can be set for the 'catch
all' external abort fault-status-code. This lets the CPU tell us that it doesn't
know what the faulting virtual address is.

do_sea() checks for this:
|	if (esr & ESR_ELx_FnV)
|		siaddr = NULL;
|	else
|		siaddr  = (void __user *)addr;

If we can't know the address, there isn't much we can do.
(This check is really making sure we don't pass junk to user-space when FnV is set)


> should it be an problem ?

I'm not quite sure what your question is.

If the CPU doesn't tell us the address, we can't tell user-space what it is. The
alternative is to upgrade to SIGKILL in that case.


If you see this instead of the address provided via firmware-first, there is a
series to improve that here:
https://lore.kernel.org/linux-acpi/20200228174817.74278-1-james.morse@arm.com/

(We skip this signal code of APEI promises it did all the work. This lets you
take the signal from memory_failure() instead, which may have better information.)


If its the SIGKILL entries: these are for the translation table walk.
There is no point telling user-space about corruption in its page tables as it
can't do anything about it. The kernel's handling of this is to kill the
process. (page tables make up a very small amount of memory, so this should be
rarer than the regular 'external abort' case)


Thanks,

James



> 680         { do_sea,               SIGBUS,  BUS_OBJERR,    "synchronous external abort"    },
> 684         { do_sea,               SIGKILL, SI_KERNEL,     "level 0 (translation table walk)"      },
> 685         { do_sea,               SIGKILL, SI_KERNEL,     "level 1 (translation table walk)"      },
> 686         { do_sea,               SIGKILL, SI_KERNEL,     "level 2 (translation table walk)"      },
> 687         { do_sea,               SIGKILL, SI_KERNEL,     "level 3 (translation table walk)"      },
> 688         { do_sea,               SIGBUS,  BUS_OBJERR,    "synchronous parity or ECC error" },    // Reserved when RAS is implemented
> 692         { do_sea,               SIGKILL, SI_KERNEL,     "level 0 synchronous parity error (translation table walk)"     },      // Reserved when RAS is implemented
> 693         { do_sea,               SIGKILL, SI_KERNEL,     "level 1 synchronous parity error (translation table walk)"     },      // Reserved when RAS is implemented
> 694         { do_sea,               SIGKILL, SI_KERNEL,     "level 2 synchronous parity error (translation table walk)"     },      // Reserved when RAS is implemented
> 695         { do_sea,               SIGKILL, SI_KERNEL,     "level 3 synchronous parity error (translation table walk)"     },      // Reserved when RAS is implemented
> 696         { do_bad,               SIGKILL, SI_KERNEL,     "unknown 32"                    },

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
