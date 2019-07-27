Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDE3C7759E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Jul 2019 03:33:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kvcQfMRlJ5bGXQb2OaLmmLd2MRnTYwDI4wMnVdoHdAY=; b=T+KQX9RMYQ88h+
	hHMgHFhdJMoK/CIsWHInCN+S4OCFiT/m8z57vYPodHGGEUTrUMCPiLQmjyjLTVNg3GlWCfr2cSbsk
	mHipysjL0Xoxnp8GrTQ/FHFtpfrp8CHrHJG8U/Npu1w6JLV9/YZrBwt2jUaBuWSZQdGbqgj1d/UwU
	liT218vQzJkSnoXVVIhtedF8XreL/0z/9O5lDACwC9Kxw6iGUA88EBxi58X3b9pXqyIjrjvijMvAc
	T71CsjaNSyvgAnGhk/dnduBM+ikRohp3czn6qWH5Vhp/TR3YPnaU/M/dnHpJl0dSIH1iSCTOLvxOL
	MrOjYcpWTpCj2xHr+o7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrBav-0005mR-GI; Sat, 27 Jul 2019 01:33:57 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrBaf-0005m0-Rq; Sat, 27 Jul 2019 01:33:44 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 20E38F91DBEA4105D4E7;
 Sat, 27 Jul 2019 09:33:31 +0800 (CST)
Received: from [127.0.0.1] (10.133.213.239) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.439.0;
 Sat, 27 Jul 2019 09:33:29 +0800
Subject: Re: [PATCH v2 -next] staging: vc04_services: fix
 used-but-set-variable warning
To: Stefan Wahren <wahrenst@gmx.net>, <eric@anholt.net>,
 <gregkh@linuxfoundation.org>, <inf.braun@fau.de>, <nishkadg.linux@gmail.com>
References: <20190725142716.49276-1-yuehaibing@huawei.com>
 <20190726092621.27972-1-yuehaibing@huawei.com>
 <229b2d16-9623-6005-2e1b-4d1f239643a2@gmx.net>
From: Yuehaibing <yuehaibing@huawei.com>
Message-ID: <25f56fd6-17b7-a8aa-6a51-97677eb8785f@huawei.com>
Date: Sat, 27 Jul 2019 09:33:29 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <229b2d16-9623-6005-2e1b-4d1f239643a2@gmx.net>
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_183342_063558_41D3F339 
X-CRM114-Status: UNSURE (   6.47  )
X-CRM114-Notice: Please train this message.
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
Cc: devel@driverdev.osuosl.org, bcm-kernel-feedback-list@broadcom.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 2019/7/26 23:57, Stefan Wahren wrote:
> Hi Yue,
> 
> Am 26.07.19 um 11:26 schrieb YueHaibing:
>> Fix gcc used-but-set-variable warning:
> 
> just a nit. It is call "unused-but-set-variable"

Oh, yes, thanks!

> 
> Acked-by: Stefan Wahren <wahrenst@gmx.net>
> 
>>
>> drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c: In function vchiq_release_internal:
>> drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:2827:16: warning:
>>  variable local_entity_uc set but not used [-Wunused-but-set-variable]
>> drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:2827:6: warning:
>>  variable local_uc set but not used [-Wunused-but-set-variable]
>>
>> Remove the unused variables 'local_entity_uc' and 'local_uc'
>>
>> Reported-by: Hulk Robot <hulkci@huawei.com>
>> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
>> ---
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
