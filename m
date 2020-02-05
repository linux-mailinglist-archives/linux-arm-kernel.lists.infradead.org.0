Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E6DE1536D9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 18:39:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iEc6ef1ulCzx197c252D7Jkgof6lxak7JQqKNV358tU=; b=cb6Qxu+J67rcBTZtBACeeGhdU
	UICD8WemicwxIepYLG+E0R2Q7gb7b00OPBb5qOrSm1HONgFaZ5BTxVyyWumkyVFXRu584kbZks4BS
	Tn6kcIsvRrzeDxM8GvyQwlcfFZEUxwlEc03LOyX78y8VUg36bhh+dga+NZ7XF0Wox2bjf3AY9IQVY
	r4CDPzO97qopzIGVEeUhxO2+TeO5o8gvttXvh5AiSJR9cGFFHnGYnYqeoylgr6GTO6WcQoSIupG27
	CjrNuFDH1aHZUIN0ySnBCeBz4BOF7/xLuj5mkUllggPHQ0Ak0tSaFu3TXUdK+2T5+ncNzi+KCFRNU
	09RBEpw6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izOeJ-0007DQ-56; Wed, 05 Feb 2020 17:39:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izOeB-0007Cr-Ag; Wed, 05 Feb 2020 17:39:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6A1741FB;
 Wed,  5 Feb 2020 09:39:27 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7B8603F52E;
 Wed,  5 Feb 2020 09:39:26 -0800 (PST)
Subject: Re: [PATCH] arm64: dts: rockchip: Fix rk3328-roc-cc sdmmcio-regulator
To: Adam Van Ymeren <adam@vany.ca>, Peter Geis <pgwipeout@gmail.com>
References: <87imkryz5t.fsf@vany.ca>
 <7b9829b3-e2d2-95b1-03cb-1af7a3c6acad@arm.com>
 <4a6a9d81-c831-4167-7fbf-64805940fb6f@vany.ca>
 <d8a8b696-268b-1ea8-7b5e-406a651011ff@arm.com>
 <510d310b-30af-7b24-d472-907bc6b2ef46@vany.ca>
 <CAMdYzYo5V2rHE6Axx9p67n3FcCFpQ5TA+m7kqaE3Uqn6d0QUhw@mail.gmail.com>
 <7b36198e-25c0-4f3b-d871-6bd5aaf619d8@vany.ca>
 <CAMdYzYp_dVjn18-6gy5MVpuGcOpf26eaPitfNZhARCixfrtYCA@mail.gmail.com>
 <2f863743-f5fd-7702-ac22-762dbca834cb@vany.ca>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <aa1ecada-687b-dd86-508c-b57a6df6f406@arm.com>
Date: Wed, 5 Feb 2020 17:39:25 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <2f863743-f5fd-7702-ac22-762dbca834cb@vany.ca>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_093931_412461_832DA478 
X-CRM114-Status: GOOD (  19.14  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/02/2020 4:14 pm, Adam Van Ymeren wrote:
[...]
>>> Calling regmap_write seems wrong, as we end up setting all bits in the register, so this should probably be regmap_update_bits.  The top 16-bits are write-enable for the lower 16-bits, but I can't find documentation if it works to set both the write enable bit and the target bit at the same time.
>> data = (val ? BIT(bit) : 0) | BIT(bit + 16); handles setting both the
>> bit and the write bit.
> Right I saw that, I was more wondering if it's legal to set both in the
> same operation, or if the chip requires you to set the write bit, and
> then the data bit in a subsequent write.

The point of this particular hardware idiom is that the mask indicates 
which data bits to update, and both mask and data are part of a single 
write, thus there is no need for a non-atomic read-modify-write 
sequence. For example:

- register value is 0x00000000
- write 0xffffffff (mask all set, data all 1s)
- register value is now 0x0000ffff
- write 0x00090000 (mask bits 0 and 3 set, corresponding data bit values 0)
- register value is now 0x0000fff6


FWIW I've confirmed on my box that there doesn't seem to be any problem 
with the grf-gpio driver itself - setting the value to 1 or 0 from 
userspace shows up as the enable pin on the audio line driver (per the 
RK3328 reference design) going high and low respectively.

One thing I did notice, though, is that GPIO_MUTE seems to have some 
inherent coupling to the analog codec, as the value automatically goes 
high when starting to play audio, and low again when stopping (but can 
still be manually toggled in between). Thus unless there's some secret 
to disabling that behaviour then it might not be safe to enable analog 
audio on these ROC-CC boards for fear of messing up peoples' SD cards.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
