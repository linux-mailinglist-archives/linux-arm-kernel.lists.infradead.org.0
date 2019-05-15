Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D09FC1E7CE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 07:06:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=clbiTtcv/9CxFAJhsbZpVfBWFaf+5qBlFN2RVrAELk8=; b=QiF44/NZA8Ov9pvqraHGw7+XL
	1w+Fcuc6bRCVkB31c5A9LIai644xFSDaIsHOnkdxU2aCr7MVwJ8K8BvHzuQXR4Pi+i8Y0RTrlNoHo
	t/aKHt7+1FI5MYDOrssxP72RWqEqM9fjusBQAqIU0rUl+daMWpCA+d1BNUDk5/g61GPSrlFAndCcG
	oOOtZPpTO6XDg19D803wXzbNDpBl3T7L3pJbOwP0RqELoLM6Nqz6aHtFwlzQFDLA48ebcCaxtbwYJ
	WLF905N3ZRue5ql3CSkK+CjPLRtrX1aKds+iYJ9SyCM548Mhd0GgdS8I9iVoFbSsKCmutCwWZzMvv
	YDYWLE0gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQm7o-0007g7-0O; Wed, 15 May 2019 05:06:44 +0000
Received: from mail-pl1-f193.google.com ([209.85.214.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQm7f-0007f4-EX
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 05:06:38 +0000
Received: by mail-pl1-f193.google.com with SMTP id p15so721409pll.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 May 2019 22:06:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+qom0Qn6LwXg8UJkqiMrz8BQabBvoo+xpSl9SHnkWOY=;
 b=TNOO3lsQ0wAT9tdpf46JyuEghO66mPp4nm1aA91sxKzSwaQaOKSq63/cZlQVHzs3or
 1sjFnnzWZ0/egPMxJ6T5j0oeSJ3GeknEw2sHcB6yAXO0RNefbQMD7mnwBIc3aHXNXJo5
 0rdZXHxuIm8Ks83wJu5zXAkMweb70mHqlGByjYkJTddujK9TTURhsBeeDq1FlY6R/ZQY
 cvkZ71Vh7+AcXgVtWjos6qK306wtqyExOjpY+OFIV+90KcLvMQFnIMlvzcTXfgnkw7gA
 sosGugxhj276m7mXSaOoxl8aQSulq+NP5MbZilTscjhWQPHvhjvDV6X2hYPvFDdcJHWn
 HO4Q==
X-Gm-Message-State: APjAAAX+2yXSkksuVwoIov1bqaPEQvYYQXBt5GmQumknFkSxPEx5shkk
 WCZb+ElLEMDh6DJAFESqS6bq+A==
X-Google-Smtp-Source: APXvYqydcRf68wup3tmXCJXop6KI1ZxTGUxdyH6wtMYn4HOqUMhx5MO0r5tKJnQQFTgrfoAnruhVow==
X-Received: by 2002:a17:902:2e83:: with SMTP id
 r3mr26825633plb.139.1557896794167; 
 Tue, 14 May 2019 22:06:34 -0700 (PDT)
Received: from localhost.localdomain ([106.215.121.117])
 by smtp.gmail.com with ESMTPSA id v81sm1354825pfa.16.2019.05.14.22.06.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 May 2019 22:06:32 -0700 (PDT)
Subject: Re: [PATCH 0/4] support reserving crashkernel above 4G on arm64 kdump
To: Chen Zhou <chenzhou10@huawei.com>, catalin.marinas@arm.com,
 will.deacon@arm.com, akpm@linux-foundation.org, ard.biesheuvel@linaro.org,
 rppt@linux.ibm.com, tglx@linutronix.de, mingo@redhat.com, bp@alien8.de,
 ebiederm@xmission.com
References: <20190507035058.63992-1-chenzhou10@huawei.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Message-ID: <a9d017d0-82d3-3e5f-4af2-4c611393106d@redhat.com>
Date: Wed, 15 May 2019 10:36:24 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20190507035058.63992-1-chenzhou10@huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_220635_484328_14FD04B0 
X-CRM114-Status: GOOD (  24.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: wangkefeng.wang@huawei.com, takahiro.akashi@linaro.org,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, horms@verge.net.au,
 Bhupesh SHARMA <bhupesh.linux@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

+Cc kexec-list.

Hi Chen,

I think we are still in the quiet period of the merge cycle, but this is 
a change which will be useful for systems like HPE Apollo where we are 
looking at reserving crashkernel across a larger range.

Some comments inline and in respective patch threads..

On 05/07/2019 09:20 AM, Chen Zhou wrote:
> This patch series enable reserving crashkernel on high memory in arm64.

Please fix the patch subject, it should be v5.
Also please Cc the kexec-list (kexec@lists.infradead.org) for future 
versions to allow wider review of the patchset.

> We use crashkernel=X to reserve crashkernel below 4G, which will fail
> when there is no enough memory. Currently, crashkernel=Y@X can be used
> to reserve crashkernel above 4G, in this case, if swiotlb or DMA buffers
> are requierd, capture kernel will boot failure because of no low memory.

... ^^ required

s/capture kernel will boot failure because of no low memory./capture 
kernel boot will fail because there is no low memory available for 
allocation.

> When crashkernel is reserved above 4G in memory, kernel should reserve
> some amount of low memory for swiotlb and some DMA buffers. So there may
> be two crash kernel regions, one is below 4G, the other is above 4G. Then
> Crash dump kernel reads more than one crash kernel regions via a dtb
> property under node /chosen,
> linux,usable-memory-range = <BASE1 SIZE1 [BASE2 SIZE2]>.

Please use consistent naming for the second kernel, better to use crash 
dump kernel.

I have tested this on my HPE Apollo machine and with 
crashkernel=886M,high syntax, I can get the board to reserve a larger 
memory range for the crashkernel (i.e. 886M):

# dmesg | grep -i crash
[    0.000000] kexec_core: Reserving 256MB of low memory at 3560MB for 
crashkernel (System low RAM: 2029MB)
[    0.000000] crashkernel reserved: 0x0000000bc5a00000 - 
0x0000000bfd000000 (886 MB)

kexec/kdump can also work also work fine on the board.

So, with the changes suggested in this cover letter and individual 
patches, please feel free to add:

Reviewed-and-Tested-by: Bhupesh Sharma <bhsharma@redhat.com>

Thanks,
Bhupesh

> Besides, we need to modify kexec-tools:
>    arm64: support more than one crash kernel regions(see [1])
> 
> I post this patch series about one month ago. The previous changes and
> discussions can be retrived from:
> 
> Changes since [v4]
> - reimplement memblock_cap_memory_ranges for multiple ranges by Mike.
> 
> Changes since [v3]
> - Add memblock_cap_memory_ranges back for multiple ranges.
> - Fix some compiling warnings.
> 
> Changes since [v2]
> - Split patch "arm64: kdump: support reserving crashkernel above 4G" as
>    two. Put "move reserve_crashkernel_low() into kexec_core.c" in a separate
>    patch.
> 
> Changes since [v1]:
> - Move common reserve_crashkernel_low() code into kernel/kexec_core.c.
> - Remove memblock_cap_memory_ranges() i added in v1 and implement that
>    in fdt_enforce_memory_region().
>    There are at most two crash kernel regions, for two crash kernel regions
>    case, we cap the memory range [min(regs[*].start), max(regs[*].end)]
>    and then remove the memory range in the middle.
> 
> [1]: http://lists.infradead.org/pipermail/kexec/2019-April/022792.html
> [v1]: https://lkml.org/lkml/2019/4/2/1174
> [v2]: https://lkml.org/lkml/2019/4/9/86
> [v3]: https://lkml.org/lkml/2019/4/9/306
> [v4]: https://lkml.org/lkml/2019/4/15/273
> 
> Chen Zhou (3):
>    x86: kdump: move reserve_crashkernel_low() into kexec_core.c
>    arm64: kdump: support reserving crashkernel above 4G
>    kdump: update Documentation about crashkernel on arm64
> 
> Mike Rapoport (1):
>    memblock: extend memblock_cap_memory_range to multiple ranges
> 
>   Documentation/admin-guide/kernel-parameters.txt |  6 +--
>   arch/arm64/include/asm/kexec.h                  |  3 ++
>   arch/arm64/kernel/setup.c                       |  3 ++
>   arch/arm64/mm/init.c                            | 72 +++++++++++++++++++------
>   arch/x86/include/asm/kexec.h                    |  3 ++
>   arch/x86/kernel/setup.c                         | 66 +++--------------------
>   include/linux/kexec.h                           |  5 ++
>   include/linux/memblock.h                        |  2 +-
>   kernel/kexec_core.c                             | 56 +++++++++++++++++++
>   mm/memblock.c                                   | 44 +++++++--------
>   10 files changed, 157 insertions(+), 103 deletions(-)
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
