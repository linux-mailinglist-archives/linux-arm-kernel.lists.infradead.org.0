Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E0174B466
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 10:54:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KA9tnA001BjSC+Cvs0YkiPeH3yl086NvKxSWlU6NfJc=; b=XXddj3Ja2nhtQYyYNKym8bNn7
	MmJgz/6UJeZGSXLjXaiwj71gH6nnl+XMENb20ziv8IjL2A0LDDP+ne9c5rpV9Hgn0encFeYQxw7V2
	RhYpNgd9xuZ9tZ3CLTij2zGAThLRK8YUvok2Ty/QdVMYRpc56ESQVjLWBgEPAHF7dJy7S8FeleEpx
	dO7NancIxUK1O39YaJ3X7/Trqj2Prn9X13Jd45GUNoxdUNAZTy2HFAg6z0i123hWtwz2f0bzJs+YD
	sQbims0h+yXVGo5u7coe6lF5aZnJyp3B2fWJqV3wSyRVtws0oqTIoj29ImWq22z8i72Tr4+fa9yKS
	9CL1Rkc6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdWMb-00067e-Ua; Wed, 19 Jun 2019 08:54:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdWMQ-00066X-3Y; Wed, 19 Jun 2019 08:54:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8981ECFC;
 Wed, 19 Jun 2019 01:54:27 -0700 (PDT)
Received: from [10.37.12.160] (unknown [10.37.12.160])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3A5CD3F246;
 Wed, 19 Jun 2019 01:54:22 -0700 (PDT)
Subject: Re: [PATCH RFC 11/14] arm64: Move the ASID allocator code in a
 separate file
To: Guo Ren <guoren@kernel.org>
References: <20190321163623.20219-1-julien.grall@arm.com>
 <20190321163623.20219-12-julien.grall@arm.com>
 <0dfe120b-066a-2ac8-13bc-3f5a29e2caa3@arm.com>
 <CAJF2gTTXHHgDboaexdHA284y6kNZVSjLis5-Q2rDnXCxr4RSmA@mail.gmail.com>
From: Julien Grall <julien.grall@arm.com>
Message-ID: <c871a5ae-914f-a8bb-9474-1dcfec5d45bf@arm.com>
Date: Wed, 19 Jun 2019 09:54:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAJF2gTTXHHgDboaexdHA284y6kNZVSjLis5-Q2rDnXCxr4RSmA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_015430_197915_F6B421B4 
X-CRM114-Status: GOOD (  13.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: julien.thierry@arm.com, aou@eecs.berkeley.edu, james.morse@arm.com,
 suzuki.poulose@arm.com, Marc Zyngier <marc.zyngier@arm.com>,
 catalin.marinas@arm.com, Anup Patel <anup.Patel@wdc.com>, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, rppt@linux.ibm.com, hch@infradead.org,
 Atish.Patra@wdc.com, Palmer Dabbelt <palmer@sifive.com>, gary@garyguo.net,
 paul.walmsley@sifive.com, christoffer.dall@arm.com,
 linux-riscv@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 6/19/19 9:07 AM, Guo Ren wrote:
> Hi Julien,

Hi,

> 
> You forgot CCing C-SKY folks :P

I wasn't aware you could be interested :).

> 
> Move arm asid allocator code in a generic one is a agood idea, I've
> made a patchset for C-SKY and test is on processing, See:
> https://lore.kernel.org/linux-csky/1560930553-26502-1-git-send-email-guoren@kernel.org/
> 
> If you plan to seperate it into generic one, I could co-work with you.

Was the ASID allocator work out of box on C-Sky? If so, I can easily 
move the code in a generic place (maybe lib/asid.c).

Cheers,

-- 
Julien Grall

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
