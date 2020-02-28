Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47D5317413D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 22:01:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RLuJkhM17soQx5JwihySmVpwVskAoX21r3vlK+xNSms=; b=GlWpdap/VYhM66dPT4klr2T1G
	snOK/orHCvijNFMZz32YDYLX0CpxVVBIE5b78w+xO01vEjSw+FvgsypPD8nt6kYn4347U2dSpJgI+
	+BLiI6d3ninQimc0ibL0QRBq4SktPazACfIRiQWqVRaWjZ2f9R5BGB7KNbiGJMkzQUrf1yot/maZ4
	AAvLYd4+KCrL4QsuqbwIM2k2UH79DnBePsLPKiw59K3v2ub+jsHhGE991QBDQnO23HJiyI8xFyrPQ
	96qmaEyQYcdMxoN0AhtEhDe+ZzQ1rvD2TJRvTRNv6FwsUmPvFgvPlcOEuRYDbEUFc7xGCAC6Sio2E
	rlyS2IwUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7mkh-0003lj-DY; Fri, 28 Feb 2020 21:00:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7mkX-0003km-Ly
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 21:00:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8394C4B2;
 Fri, 28 Feb 2020 13:00:42 -0800 (PST)
Received: from [192.168.1.123] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 64FA53F7B4;
 Fri, 28 Feb 2020 13:00:41 -0800 (PST)
Subject: Re: cma can't activate area on arm64
To: Jonathan Richardson <jonathan.richardson@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
References: <CAHrpVsXay=8q6a9Vee3wnLVAKHdd_c5+miHbvz+1uqJAEoRZ0A@mail.gmail.com>
 <8f82edf2-7313-eb4c-f68e-ff18f7a5e919@suse.cz>
 <20200227174838.GI3281767@arrakis.emea.arm.com>
 <CAHrpVsXuTEQR7GG6pS4AVjU=ABvmpec7wx3trZuoHz1yf97SVw@mail.gmail.com>
 <13501c8a45e8fd8d98d727f036e96c54faa8425a.camel@suse.de>
 <CAHrpVsUctu3_V_vqruzP0c6SpcRzWE-5Us7OHEFXHU5hQv5MBQ@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <f0b19db7-96d0-a94b-d313-0112f6cbbdba@arm.com>
Date: Fri, 28 Feb 2020 21:00:41 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CAHrpVsUctu3_V_vqruzP0c6SpcRzWE-5Us7OHEFXHU5hQv5MBQ@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_130045_764022_60ACFBA4 
X-CRM114-Status: GOOD (  11.96  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, akpm@linux-foundation.org,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Vlastimil Babka <vbabka@suse.cz>,
 linux-mm@kvack.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-02-28 8:34 pm, Jonathan Richardson wrote:
> On Fri, Feb 28, 2020 at 12:16 PM Nicolas Saenz Julienne
> <nsaenzjulienne@suse.de> wrote:
>>
>> On Fri, 2020-02-28 at 11:56 -0800, Jonathan Richardson wrote:
>>> This is stingray (arch/arm64/boot/dts/broadcom/stingray/bcm958742k.dts).
>>> cma is specified on cmdline as "cma=1G". The full boot log was in the
>>> attachment.
>>
>> Would you mind attaching it again, I was added to the conversation later.
> 
> Sure, it is attached. Thanks for taking a look. This is a boot with
> "arch/arm64/configs/defconfig" and the previously mentioned dtb.

[    0.000000] efi:  SMBIOS=0x85c90000  SMBIOS 3.0=0x85a20000  ACPI 
2.0=0x85d50000  MEMATTR=0x8945e118  MEMRESERVE=0x85f85018
[    0.000000] crashkernel reserved: 0x00000000e0000000 - 
0x0000000100000000 (512 MB)
[    0.000000] cma: Reserved 1024 MiB at 0x00000000a0000000
...
[    0.000000] Zone ranges:
[    0.000000]   DMA      [mem 0x0000000080000000-0x00000000bfffffff]
[    0.000000]   DMA32    [mem 0x00000000c0000000-0x00000000ffffffff]

Well there's your problem - both zones are only nominally 1GB to begin 
with, and both have stuff in them before we even get to placing CMA. To 
be honest, even without ZONE_DMA that looks pretty tight.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
