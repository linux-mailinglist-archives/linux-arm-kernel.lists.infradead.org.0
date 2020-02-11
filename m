Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A2701591EC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 15:28:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DO4UWfbPVEHhpeGOx4mP0uWguivIkUBj/Oo+UaszXTU=; b=DcmEKvt6Xj0XKe
	MPomaktlBLQd91LV2oVrgMXK2xajGx6L7L7lGrp8YizeLb4OwoD7351ft1OvuLpn/K2dnkMp1KSwX
	/HOTcaq6Lhd0hJyj7ZGOSlDTyveW1Fud0fGlZhQx0kB5Xyr3oIPDfLtknhGsbOSX7vzNGgmzCnwLg
	REdSb7l42Iubr0ivjA5H5WQHp1vKcSF2zH9ioL6/Om/XqKtbfy/E6sz2XNCWUofJsJ3gprxcQHuJZ
	8r56hpG6uCUy0phsveA+SGk8IUYJ/HreiWfEPfXUIFmF7yBWlbkOenzEjadnwJEdKi1jgyT+bPnI/
	4wqyZ7cWhTgvKoOAFKUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1WWY-00057x-Un; Tue, 11 Feb 2020 14:28:26 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1WWR-00057U-39; Tue, 11 Feb 2020 14:28:20 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id B638F4232B6164BF7E35;
 Tue, 11 Feb 2020 22:28:16 +0800 (CST)
Received: from [127.0.0.1] (10.133.213.239) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.439.0;
 Tue, 11 Feb 2020 22:28:14 +0800
Subject: Re: [PATCH -next] staging: vc04_services: remove set but unused
 variable 'local_entity_uc'
To: Dan Carpenter <dan.carpenter@oracle.com>
References: <20200211134356.59904-1-yuehaibing@huawei.com>
 <20200211142433.GG1778@kadam>
From: Yuehaibing <yuehaibing@huawei.com>
Message-ID: <85f21dab-b0eb-c416-3434-9a10a00d7f77@huawei.com>
Date: Tue, 11 Feb 2020 22:28:12 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <20200211142433.GG1778@kadam>
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_062819_296671_FB7E5142 
X-CRM114-Status: GOOD (  10.28  )
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
Cc: devel@driverdev.osuosl.org, linux-arm-kernel@lists.infradead.org,
 gregkh@linuxfoundation.org, marcgonzalez@google.com,
 linux-kernel@vger.kernel.org, nachukannan@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, wahrenst@gmx.net,
 nishkadg.linux@gmail.com, jamal.k.shareef@gmail.com, nsaenzjulienne@suse.de,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020/2/11 22:24, Dan Carpenter wrote:
> On Tue, Feb 11, 2020 at 09:43:56PM +0800, YueHaibing wrote:
>> drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c: In function vchiq_use_internal:
>> drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:2346:16:
>>  warning: variable local_entity_uc set but not used [-Wunused-but-set-variable]
>>
>> commit bd8aa2850f00 ("staging: vc04_services: Get of even more suspend/resume states")
>> left behind this unused variable.
>>
>> Reported-by: Hulk Robot <hulkci@huawei.com>
>> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
>> ---
>>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c | 3 +--
>>  1 file changed, 1 insertion(+), 2 deletions(-)
>>
>> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
>> index c456ced..d30d24d 100644
>> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
>> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
>> @@ -2343,7 +2343,7 @@ vchiq_use_internal(struct vchiq_state *state, struct vchiq_service *service,
>>  	enum vchiq_status ret = VCHIQ_SUCCESS;
>>  	char entity[16];
>>  	int *entity_uc;
>> -	int local_uc, local_entity_uc;
>> +	int local_uc;
>>  
>>  	if (!arm_state)
>>  		goto out;
>> @@ -2367,7 +2367,6 @@ vchiq_use_internal(struct vchiq_state *state, struct vchiq_service *service,
>>  
>>  	write_lock_bh(&arm_state->susp_res_lock);
>>  	local_uc = ++arm_state->videocore_use_count;
>> -	local_entity_uc = ++(*entity_uc);
>                           ^^
> This ++ is required.

oops..., Thanks!

> 
> regards,
> dan carpenter
> 
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
