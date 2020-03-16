Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39520186B2D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 13:39:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+xcKHM0hLv3AodzYHbsJ8eMA0bjsqBy2ntdeXviPKmE=; b=JmsPOm4vTSYwFDbqyg4I4GOJI
	+UYZUvxudvisoOOTKJb98mhjrQ95oo/aMOIzf8wEHI4UNZFeZtB4nLcCUdKaAeCx2dbEaWGOo/iML
	jgGO7kkWaHi4tlUsH9whIsTh4a/Mj1maCuqx+WAqCyrXiy6kbLYIoUnt4qd5kNuzwkys26HRVwecs
	/KHDsubBRWmwqMu4wB2WlsArBvj0EW+oQZU4cSc7j9d3MyibUhCSw04bkRvBzfAH1M/YvIsibq8e/
	JaM+ooescQIWqSELX49/29XafToBgbDYGf/p2XRENvy4ej1tLpVj1pgOWrb1xXNaO5e6mu3SNTpIY
	Zg78lYq2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDp1M-0008Pb-NP; Mon, 16 Mar 2020 12:39:04 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDp1E-0008Ox-I1
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 12:38:58 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 7A402E500B6ABF9507E3;
 Mon, 16 Mar 2020 20:38:48 +0800 (CST)
Received: from [127.0.0.1] (10.173.222.27) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.487.0; Mon, 16 Mar 2020
 20:38:38 +0800
Subject: Re: [PATCH] KVM: arm64: Use the correct timer for accessing CNT
To: Marc Zyngier <maz@kernel.org>
References: <1584351546-5018-1-git-send-email-karahmed@amazon.de>
 <7ed91b9b-e968-770c-28f9-0ca479359657@huawei.com>
 <a8b72d6c0a28e0554050e98d011f32d9@kernel.org>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <a9fd7e22-f46a-fd47-26ee-44d2d36783fd@huawei.com>
Date: Mon, 16 Mar 2020 20:38:36 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <a8b72d6c0a28e0554050e98d011f32d9@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_053857_173835_F5E523DD 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Cc: KarimAllah Ahmed <karahmed@amazon.de>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 2020/3/16 19:09, Marc Zyngier wrote:
> Hi Zenghui,
> 
> On 2020-03-16 10:49, Zenghui Yu wrote:
>> Hi,
>>
>> On 2020/3/16 17:39, KarimAllah Ahmed wrote:
>>> Use the physical timer object when reading the physical timer counter
>>> instead of using the virtual timer object. This is only visible when
>>> reading it from user-space as kvm_arm_timer_get_reg() is only 
>>> executed on
>>> the get register patch from user-space.
>>
>> s/patch/path/
>>
>> I think the physical counter hasn't yet been accessed by the current
>> userspace, wrong?
> 
> I don't think userspace can access it, as the ONE_REG API only exposes 
> the virtual
> timer so far, and userspace is much better off just reading the counter 
> directly
> (it has access to the virtual counter, and the guarantee that cntvoff is 
> 0 in this
> context).

Yeah, I see. The physical timer registers are all ignored in
walk_one_sys_reg() and won't be exposed.

> 
> But as we move towards a situation where we can save/restore the 
> physical timer
> just like the virtual one, we're going to use this path and hit this bug.

Thanks for the explanation.


Zenghui


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
