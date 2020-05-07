Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA871C8D0A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 15:53:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+Nmdjf5hq2qzUGlkN/OXijQMjeDUthaKTnFTEwNdsLY=; b=ssHkkN3hmq65nbfFL37U2nSnQ
	x0pQa7WSzJYdwHAPnxJZ1J2b/HMr/d2WLlyZ3tAy1bHu4FDYf9P5o04oiBG6wn7qlZfKps55zuq0w
	2qykLscvRs7jeBnagEOkZ24DpGxfpJobR0H9Q4f2qECU0NVXTWR2QxoG2OzfT1EXhFgOzs35XKS5l
	sqCaOie96Sgyf2oDf8IBTfhPLwhVPUtSs4+V24gnXuiEDkmaqzkD2rk2hv9xbu8h/MgbvtuV+xB1Q
	Nuo+ZcAlIzpQgLsr/ngD2pq8LfT92wbn7J9rReUMu+SQ9yU3fi9l2NgO3LT6CaUXbT07bun8ELtZp
	2thraGk8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWgxu-0007Rg-MV; Thu, 07 May 2020 13:53:30 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWgxn-0007Qr-N5
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 13:53:25 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id BD6EF9575FB30EAC5408;
 Thu,  7 May 2020 21:53:18 +0800 (CST)
Received: from [127.0.0.1] (10.166.213.93) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.487.0; Thu, 7 May 2020
 21:53:15 +0800
Subject: Re: [PATCH] ACPI: IORT: Add extra message "applying workaround" for
 off-by-1 issue
To: Ard Biesheuvel <ardb@kernel.org>
References: <1588858868-18039-1-git-send-email-guohanjun@huawei.com>
 <CAMj1kXHGfW=OKLO1S1Mf__9TzNXkrZ5BNvD8H_QYUTtF+awwpg@mail.gmail.com>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <251b222a-7340-2d06-f07b-f81a9c19ac43@huawei.com>
Date: Thu, 7 May 2020 21:53:13 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <CAMj1kXHGfW=OKLO1S1Mf__9TzNXkrZ5BNvD8H_QYUTtF+awwpg@mail.gmail.com>
Content-Language: en-GB
X-Originating-IP: [10.166.213.93]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_065323_917073_EEC96897 
X-CRM114-Status: GOOD (  16.47  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.190 listed in wl.mailspike.net]
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
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ard,

On 2020/5/7 21:49, Ard Biesheuvel wrote:
> On Thu, 7 May 2020 at 15:47, Hanjun Guo <guohanjun@huawei.com> wrote:
>>
>> As we already applied a workaround for the off-by-1 issue,
>> it's good to add extra message "applying workaround" to
>> make people less uneasy to see such message in the boot log.
>>
>> Signed-off-by: Hanjun Guo <guohanjun@huawei.com>
> 
> Hi Hanjun,
> 
>> ---
>>
>> Based on top of for-next/acpi branch of ARM64 repo
>>
>>   drivers/acpi/arm64/iort.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
>> index b011d25..f3d492a 100644
>> --- a/drivers/acpi/arm64/iort.c
>> +++ b/drivers/acpi/arm64/iort.c
>> @@ -328,7 +328,7 @@ static int iort_id_map(struct acpi_iort_id_mapping *map, u8 type, u32 rid_in,
>>                   * Otherwise, things are *really* broken, and we just disregard
>>                   * duplicate matches entirely to retain compatibility.
>>                   */
>> -               pr_err(FW_BUG "[map %p] conflicting mapping for input ID 0x%x\n",
>> +               pr_err(FW_BUG "[map %p] conflicting mapping for input ID 0x%x, applying workaround\n",
> 
> This is not correct. The workaround is only applied if rid_in ==
> map->input_base, so better to print a second line after the 'return'
> below that is only reached in that particular case.

Obvious I'm wrong, I will update this patch, thanks a lot!

> 
>>                         map, rid_in);
>>                  if (rid_in != map->input_base)
>>                          return -ENXIO;
>> --
>> 1.7.12.4
>>
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
