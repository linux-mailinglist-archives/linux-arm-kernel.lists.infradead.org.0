Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9A4514E4FA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 22:42:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lnErBYEdPeV5FP46LwOZa4YUoLy+H1MhqlI0CSeuZFs=; b=cPm6rJe2skOcze
	Ri6JC/abn3MaYb9CPw86j+ldZ7kchIQuqbUkyT+vNKYH3P+tGupSrsJZeSU/AYzMq37CIsuUqG/8o
	7B7DSGpRbMhovTy+6QYDVgf/7Hdq4pBJK0uYcVYJwV2JcViNAKxKtdHl3a9DqRhi8lKPxauXY3sZa
	Bhvj+Cm25tWtflnk1KWbV3bFznbeZr1dVfkz5/Ck2pJkJzuX2oodpyUD9vsuJoyRJktR4ztcjkRsK
	xMNEYaDUdDP3tqb/2kbsg1i4xuP3B4pNJpE7HQ/tKwzt4iDseYmt8uK3Hwteq7JwOu7VjDs2Yvkad
	dq/Do0JVGCnszTMfG4FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixHZh-0007Ov-9p; Thu, 30 Jan 2020 21:42:09 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixHZX-0007Ob-8B
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 21:42:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580420517;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=kmqy3sb1CZwLgBrnkTPFWMV+qNGUz38LZj2S40grOqg=;
 b=Swwfor2z9Gt0WjANaRNAniVT0/uGhpDdzJHHviGi4vigUPtZSb4FXQpvTv9titxPgEmg96
 wBZz29MeCLHdag1teEUw8J29/uUPedUZCXug6RRpg+lFOFi0Vmv7S95W/cgoafneVk+buv
 1nC5FE+OyhfbJSQFFPP/RKa95zolShs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-28-KJbFc7vIMhKGM6FFlMdPOg-1; Thu, 30 Jan 2020 16:41:53 -0500
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9A4B813EC;
 Thu, 30 Jan 2020 21:41:52 +0000 (UTC)
Received: from localhost.localdomain (vpn2-54-25.bne.redhat.com [10.64.54.25])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id D669A60BE1;
 Thu, 30 Jan 2020 21:41:44 +0000 (UTC)
Subject: Re: [PATCH] drivers/firmware/psci: Fix memory leak in
 alloc_init_cpu_groups()
To: Sudeep Holla <sudeep.holla@arm.com>
References: <20200130034938.158504-1-gshan@redhat.com>
 <ae343710-43ef-a74a-1eda-17f9f3a34cb0@redhat.com>
 <20200130110505.GD48466@bogus>
From: Gavin Shan <gshan@redhat.com>
Message-ID: <a006bb80-1947-26a1-83ee-0c1227491e07@redhat.com>
Date: Fri, 31 Jan 2020 08:41:34 +1100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20200130110505.GD48466@bogus>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-MC-Unique: KJbFc7vIMhKGM6FFlMdPOg-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_134159_367142_05F55260 
X-CRM114-Status: GOOD (  15.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Reply-To: Gavin Shan <gshan@redhat.com>
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1/30/20 10:05 PM, Sudeep Holla wrote:
> On Thu, Jan 30, 2020 at 03:00:13PM +1100, Gavin Shan wrote:
>> On 1/30/20 2:49 PM, Gavin Shan wrote:
>>> The CPU mask (@tmp) should be free'd on failing to allocating the element
>>> of @cpu_groups[]. Otherwise, it leads to memory leakage because the CPU
>>> mask variable is allocated with CONFIG_CPUMASK_OFFSTACK.
>>>
>>> Signed-off-by: Gavin Shan <gshan@redhat.com>
>>> ---
>>>    drivers/firmware/psci/psci_checker.c | 1 +
>>>    1 file changed, 1 insertion(+)
>>>
>>> diff --git a/drivers/firmware/psci/psci_checker.c b/drivers/firmware/psci/psci_checker.c
>>> index 6a445397771c..d1d6d1135fed 100644
>>> --- a/drivers/firmware/psci/psci_checker.c
>>> +++ b/drivers/firmware/psci/psci_checker.c
>>> @@ -167,6 +167,7 @@ static int alloc_init_cpu_groups(cpumask_var_t **pcpu_groups)
>>>    			topology_core_cpumask(cpumask_any(tmp));
>>>    		if (!alloc_cpumask_var(&cpu_groups[num_groups], GFP_KERNEL)) {
>>> +			free_cpumask_var(tmp);
>>>    			free_cpu_groups(num_groups, &cpu_groups);
>>>    			return -ENOMEM;
>>>    		}
>>>
>>
>> I think @tmp has to be free'd either when failing to allocate @cpu_groups.
>> However, I'm holding to post v2 until feedback is received on v1.
>>
> 
> Ah sorry, problem with sequential mail reading, ignore my reply as you have
> already figured this out.
> 

Sudeep, no problem. I'll fold the additional changes into v2. Thanks for your
time on this.

Thanks,
Gavin


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
