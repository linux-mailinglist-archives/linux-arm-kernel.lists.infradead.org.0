Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E494733D00
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 04:09:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ck4mxVaQIz5ApQxO3n1Jb57c8iqgYyMF/V+9ZkuNeMg=; b=Ke8DHRwq/qGVh1
	E75X/eUelTXi1BzS+xH373xLRDcuuXiTHaGmRamj5+oF7h1JoyptCMG4cSvD7CZBPVsSvhZrkH2Gy
	JkRSEoD7th72VS4xwrDy2DKIiRYV3ErE9cm/QMsw7a5AkzxofHxDtR/g7WT8sEtjAzEy2kyagi8C2
	crIusMH4aZzVfelRt0H0ejaq1ULwmt926O+O023ZNQScj1jr8umXn2i1dBmy44csfCvd8r2+yvjCp
	3XOqhTHBBfUdFKZuryeiT+nsMFGR9narIvUXaAQW/Gs09tFENrJgB4kyeS112YRDv91YsAleZh89c
	JP9PT/r/5p+HkkObid7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXysv-0001NR-7D; Tue, 04 Jun 2019 02:09:09 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXyso-0001Mo-3v
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 02:09:03 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id B6F40E578F138A30FD44;
 Tue,  4 Jun 2019 10:08:51 +0800 (CST)
Received: from [127.0.0.1] (10.133.213.239) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.439.0;
 Tue, 4 Jun 2019 10:08:48 +0800
Subject: Re: [PATCH] ARM: mm: remove unused variables
To: Krzysztof Kozlowski <krzk@kernel.org>
References: <20190512114105.41792-1-yuehaibing@huawei.com>
 <CAJKOXPeDRuvmHG=KUCYiPav2ODT4MC4hEgi5hAsy7s_+v-DB3g@mail.gmail.com>
From: Yuehaibing <yuehaibing@huawei.com>
Message-ID: <208eb75a-dda5-98d9-3cad-c4f67cbf267f@huawei.com>
Date: Tue, 4 Jun 2019 10:08:47 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <CAJKOXPeDRuvmHG=KUCYiPav2ODT4MC4hEgi5hAsy7s_+v-DB3g@mail.gmail.com>
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_190902_390073_C58FD268 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: keescook@chromium.org, geert+renesas@glider.be,
 linux-kernel@vger.kernel.org, linux@armlinux.org.uk, akpm@linux-foundation.org,
 rppt@linux.ibm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019/6/4 2:45, Krzysztof Kozlowski wrote:
> On Sun, 12 May 2019 at 13:51, YueHaibing <yuehaibing@huawei.com> wrote:
>>
>> Fix gcc warnings:
>>
>> arch/arm/mm/init.c: In function 'mem_init':
>> arch/arm/mm/init.c:456:13: warning: unused variable 'itcm_end' [-Wunused-variable]
>>   extern u32 itcm_end;
>>              ^
>> arch/arm/mm/init.c:455:13: warning: unused variable 'dtcm_end' [-Wunused-variable]
>>   extern u32 dtcm_end;
>>              ^
>>
>> They are not used any more since
>> commit 1c31d4e96b8c ("ARM: 8820/1: mm: Stop printing the virtual memory layout")
>>
>> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
>> ---
>>  arch/arm/mm/init.c | 6 ------
>>  1 file changed, 6 deletions(-)
> 
> Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
> 
> Did you submit it to Russell's patch system?

Thanks for your reminder, I will send it.

> 
> Best regards,
> Krzysztof
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
