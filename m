Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CF3F1B3D1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 12:21:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sYWdAorNXvuwpn5y4hb9ItGoaEQA68WYhcHz0HIvGeo=; b=IrjG4+9d25j8tV
	PCXARdqNwg8egeqMk+AbVpEoJCT2zJaBjn+MPdAJ4e2fhiJ//dQBgMpPbZI+qKf4RR1Z/4t+IlAsh
	ocHCRmRgNlIi0VeObOT8swi8XYCti4DJ3qnlwHvYZWLwHb4YD58R9vSnP6CsesjWoA+brJvXoGQYZ
	65qUHdVCseWi7Z+Nl+TibauiJA1usGifv8JT1WeWfiJ9GI+B1uZg83zzBewb0ieXrwgDNjtqjUw/4
	0PNv1U1KEWppjXxHcBFK3MTJNGTPm0Z604TBZGKvT2xgP7etlGy/6Mf4bet43+lQJ8jXiQAH/EYZJ
	bAqi6w7PHUcPWvwXFrLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ84f-0006Ji-UB; Mon, 13 May 2019 10:20:49 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ84Y-0006IW-1g
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 10:20:43 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id B2A51795AEB80AF6238C;
 Mon, 13 May 2019 18:20:35 +0800 (CST)
Received: from [127.0.0.1] (10.142.68.147) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.439.0; Mon, 13 May 2019
 18:20:24 +0800
Subject: Re: [RFC PATCH V2] kvm: arm64: export memory error recovery
 capability to user space
To: Peter Maydell <peter.maydell@linaro.org>
References: <1557728917-49079-1-git-send-email-gengdongjiu@huawei.com>
 <CAFEAcA-S6Kh8yUqVZVA8gtDdRscgVaTfC4CwxngoS2ZPt6K9ww@mail.gmail.com>
From: gengdongjiu <gengdongjiu@huawei.com>
Message-ID: <da887bd0-75db-4ad8-cc7a-fa5df26c88fd@huawei.com>
Date: Mon, 13 May 2019 18:20:14 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <CAFEAcA-S6Kh8yUqVZVA8gtDdRscgVaTfC4CwxngoS2ZPt6K9ww@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [10.142.68.147]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_032042_317425_0A63125F 
X-CRM114-Status: GOOD (  15.88  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 kvm-devel <kvm@vger.kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 =?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?= <rkrcmar@redhat.com>,
 Will Deacon <will.deacon@arm.com>, Christoffer Dall <christoffer.dall@arm.com>,
 lkml - Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Zheng Xiang <zhengxiang9@huawei.com>, James Morse <james.morse@arm.com>,
 kvmarm@lists.cs.columbia.edu,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019/5/13 17:44, Peter Maydell wrote:
> On Mon, 13 May 2019 at 07:32, Dongjiu Geng <gengdongjiu@huawei.com> wrote:
>>
>> When user space do memory recovery, it will check whether KVM and
>> guest support the error recovery, only when both of them support,
>> user space will do the error recovery. This patch exports this
>> capability of KVM to user space.
>>
>> Cc: Peter Maydell <peter.maydell@linaro.org>
>> Signed-off-by: Dongjiu Geng <gengdongjiu@huawei.com>
>> ---
>> v1->v2:
>> 1. check whether host support memory failure instead of RAS capability
>>    https://patchwork.kernel.org/patch/10730827/
>>
>> v1:
>> 1. User space needs to check this capability of host is suggested by Peter[1],
>> this patch as RFC tag because user space patches are still under review,
>> so this kernel patch is firstly sent out for review.
>>
>> [1]: https://patchwork.codeaurora.org/patch/652261/
>> ---
> 
> I thought the conclusion of the thread on the v1 patch was that
> userspace doesn't need to specifically ask the host kernel if
> it has support for this -- if it does not, then the host kernel
> will just never deliver userspace any SIGBUS with MCEERR code,
> which is fine. Or am I still confused?

thanks Peter's quick reply.
yes, I think so, if it does not support,  then the host kernel
will just never deliver userspace any SIGBUS with MCEERR code.

so maybe we do not need this patch.

> 
> thanks
> -- PMM
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
