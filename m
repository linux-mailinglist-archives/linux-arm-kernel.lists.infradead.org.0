Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25129144A85
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 04:46:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1jqR5B7qsxwX7RoMJXyb7VTXx1ams1tChLuOrjeJc+Q=; b=n4DWFeerRIL4VT
	zSQNytQowAUYooIdEU6jUP5N/cTAZrnhPL7M3jNRKcP+eQI4VrEMZYOqxGhzKCKMaKb3ZCHLl8NOM
	X94Kg6kgzyAGjmykXF5NRXYGUH37FjXvk4PX8jCFjAj1R/ekC4QprXyQY7iz88nLEnSVf0tOx6a47
	hLnPU4c/BXmy5H/YM+UmEB2V4jLHKpGqx6zP2Rg0XamkSYIq1z0rT6YSWPpV4EkNisq8Ptdc7vQ73
	kl4O6vkItQpcLhrANDJ5ZizuJi0Hlgu1RFgr8ooWjYKnusmBth8hKAe1H7WcQMQypP2jBTknl4KGw
	6wU+dEFP3280v7jEYBvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu6yi-0007xn-6C; Wed, 22 Jan 2020 03:46:52 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu6yW-0007wm-0H
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 03:46:41 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 6BF011888F5AB7914759;
 Wed, 22 Jan 2020 11:46:27 +0800 (CST)
Received: from [127.0.0.1] (10.173.221.31) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.439.0; Wed, 22 Jan 2020
 11:46:18 +0800
Subject: Re: [PATCH] arm64: mm: support setting page attributes for debug
 situation
To: Will Deacon <will@kernel.org>
References: <5a3ab728-b895-0930-9540-5e9c586e8858@huawei.com>
 <20200116110914.GA16345@willie-the-truck>
From: Yunfeng Ye <yeyunfeng@huawei.com>
Message-ID: <cc61e0d5-b1cb-51b4-8d33-5a339fe59f1b@huawei.com>
Date: Wed, 22 Jan 2020 11:46:06 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20200116110914.GA16345@willie-the-truck>
Content-Language: en-US
X-Originating-IP: [10.173.221.31]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_194640_207903_80619D21 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: anshuman.khandual@arm.com, hushiyuan@huawei.com, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, willy@infradead.org, linfeilong@huawei.com,
 ard.biesheuvel@arm.com, akpm@linux-foundation.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2020/1/16 19:09, Will Deacon wrote:
> On Fri, Jan 10, 2020 at 03:47:41PM +0800, yeyunfeng wrote:
>> When rodata_full is set or pagealloc debug is enabled, block mappings or
>> contiguou hints are no longer used for linear address area. Therefore,
>> support setting page attributes in this case is useful for debugging
>> memory corruption problems.
>>
>> Signed-off-by: Yunfeng Ye <yeyunfeng@huawei.com>
>> ---
>>  arch/arm64/mm/pageattr.c | 18 ++++++++++++++----
>>  1 file changed, 14 insertions(+), 4 deletions(-)
> 
> Although I can kind of see what you're getting at, I'm not keen on merging
> this without a user. If you're just referring to random debug hacks, then I
> think this change could be part of those too.
> 
Ok, thanks, I think when pagealloc debug is enabled, it is better not limited
to the vmap area only. and when kernel memory corruption problems happen, it's
useful to call set_memory_ro() function to debug these problem.

> Will
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
