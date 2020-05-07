Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 011F11C8BED
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 15:18:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fJ1M96KbaKueuOu+sROZnd5mqjpFaGHYMjOxVnyB8Cs=; b=C3tBJ4fVT0e/rTwtPcj9P2m7w
	RUVvW4bnRkttYm6FjBO+wjYpF5RBEnO74X7Ljl696bNPqjNTtQjUl+keVSVpMFhiTqHeAPqo7Hppv
	NzNLquruELRrfCKJk7Z0EenirSiw0TyodMWAVBXuie9hz4ItQ7MmoiK29X8PAc5i7vE0RmGg+k8Wt
	CnXdqktpzjxprp/BANdjl8B8CwCabzox/BxZqknqJ9NvvAjG6la//wf1sl7FXPKbWEShL+GvuyJgO
	PDhDoY6qVlAz2n6YcCWT2dmZv/dpFgAW4z+dEo25Zs5uKaOLAJRvxLiy5NgAgZFB57KDTJqKRSpaQ
	NWhCEjqDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWgQ7-0004cw-Bv; Thu, 07 May 2020 13:18:35 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWgPy-0004Zn-Kb
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 13:18:28 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 3A8A97432AF0C4F5C273;
 Thu,  7 May 2020 21:18:09 +0800 (CST)
Received: from [127.0.0.1] (10.166.213.93) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.487.0; Thu, 7 May 2020
 21:18:01 +0800
Subject: Re: [PATCH v2 2/2] ACPI/IORT: work around num_ids ambiguity
To: Will Deacon <will@kernel.org>
References: <20200501161014.5935-1-ardb@kernel.org>
 <20200501161014.5935-3-ardb@kernel.org>
 <bbd56b89-643a-2f86-79af-f65ef46822ef@huawei.com>
 <CAMj1kXEuV_Lmhu-2zZhD-YgL-zu+o0v+vooQTK30cemJW5dfNg@mail.gmail.com>
 <86c60895-365e-9166-8f70-7a353bbc4e86@huawei.com>
 <20200506125519.GI8043@willie-the-truck>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <3f00493b-b629-490f-b26d-b56d817a1b88@huawei.com>
Date: Thu, 7 May 2020 21:18:00 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200506125519.GI8043@willie-the-truck>
Content-Language: en-GB
X-Originating-IP: [10.166.213.93]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_061826_845249_5F6760D6 
X-CRM114-Status: GOOD (  13.96  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.32 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Pankaj Bansal <pankaj.bansal@nxp.com>, Linuxarm <linuxarm@huawei.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Robin Murphy <robin.murphy@arm.com>,
 Ard Biesheuvel <ardb@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020/5/6 20:55, Will Deacon wrote:
> On Wed, May 06, 2020 at 08:44:55PM +0800, Hanjun Guo wrote:
>> On 2020/5/4 15:36, Ard Biesheuvel wrote:
>>> On Mon, 4 May 2020 at 06:32, Hanjun Guo <guohanjun@huawei.com> wrote:
>>>> On 2020/5/2 0:10, Ard Biesheuvel wrote:
>>>>> diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
>>>>> index 98be18266a73..9f139a94a1d3 100644
>>>>> --- a/drivers/acpi/arm64/iort.c
>>>>> +++ b/drivers/acpi/arm64/iort.c
>>>>> @@ -300,7 +300,7 @@ static acpi_status iort_match_node_callback(struct acpi_iort_node *node,
>>>>>     }
>>>>>
>>>>>     static int iort_id_map(struct acpi_iort_id_mapping *map, u8 type, u32 rid_in,
>>>>> -                    u32 *rid_out)
>>>>> +                    u32 *rid_out, bool check_overlap)
>>>>>     {
>>>>>         /* Single mapping does not care for input id */
>>>>>         if (map->flags & ACPI_IORT_ID_SINGLE_MAPPING) {
>>>>> @@ -316,10 +316,34 @@ static int iort_id_map(struct acpi_iort_id_mapping *map, u8 type, u32 rid_in,
>>>>>         }
>>>>>
>>>>>         if (rid_in < map->input_base ||
>>>>> -         (rid_in >= map->input_base + map->id_count))
>>>>> +         (rid_in > map->input_base + map->id_count))
>>>>>                 return -ENXIO;
>>>>>
>>>>> +     if (check_overlap) {
>>>>> +             /*
>>>>> +              * We already found a mapping for this input ID at the end of
>>>>> +              * another region. If it coincides with the start of this
>>>>> +              * region, we assume the prior match was due to the off-by-1
>>>>> +              * issue mentioned below, and allow it to be superseded.
>>>>> +              * Otherwise, things are *really* broken, and we just disregard
>>>>> +              * duplicate matches entirely to retain compatibility.
>>>>> +              */
>>>>> +             pr_err(FW_BUG "[map %p] conflicting mapping for input ID 0x%x\n",
>>>>> +                    map, rid_in);
>>>>
>>>> As we already applied a workaround here, can we add "applying
>>>> workaround" in the error message? This will make the customers
>>>> less uneasy to see such message in the boot log. Once the product
>>>> was deliveried to customers, it's not that easy to update all the
>>>> firmwares entirely.
>>>>
>>>
>>> Sure.
>>
>> Since Will already merged this patchset, I would like to send a patch
>> on top of it, what do you think?
> 
> Yes, please! I figured I'd queue it, as I could always revert it if your
> testing came back negative but extra stuff on top is always fine.

OK, I will prepare a patch and send out for review.

Thanks
Hanjun


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
