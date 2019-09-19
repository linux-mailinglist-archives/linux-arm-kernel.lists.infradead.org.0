Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F22CB711E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 03:33:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e+PNv1ncGmSGRXvmah+knlgPhaa7LUeDjfx9FerwdMs=; b=csG8di/Rj9dQct
	ERJhh2MBjq6x3g+O6IMbgAnm89MGniE/1NomHJhMxbDITM+Ce2oaSJdaqDFqAt5T+bHjnynww/Q4L
	xzYW2Xp++L6gle2z4DK70vrCcBKp6I87+xRHkwfobAMB7owEbpCAIMwdW8pkrSoPNbtc2Z11CpcqI
	3MA46gM2eLbRBdrg1XO5AdxRmJk7YYjYrNvg7pUmKThd5p1iua7FXY4PTElNMFNWVolZt5baEq553
	PGky7BDLa69MXgUHwhVTM1bJ+p8HVq/shxlsrAHbg3zNvABRsJOe+H1noDRd3dGcxujSdSMXxcVGs
	blMtGok3x1IGvgZt1Prw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAlJW-0000Ij-2E; Thu, 19 Sep 2019 01:32:54 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAlJ8-0000I8-8F
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 01:32:32 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 3E865353E65584EF064B;
 Thu, 19 Sep 2019 09:32:20 +0800 (CST)
Received: from [127.0.0.1] (10.74.221.148) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.439.0; Thu, 19 Sep 2019
 09:32:12 +0800
Subject: Re: [Question-GIC-v4.1] Plan on GIC-v4.1 driver development
To: Marc Zyngier <maz@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <kvmarm@lists.cs.columbia.edu>
References: <40d7276c-54a3-0cca-a207-217459850c21@hisilicon.com>
 <0501c049-67a6-9a63-e0d9-e043573e1211@kernel.org>
 <c9bdf5bc-4787-2f09-9e8b-60d69aa8754b@kernel.org>
From: Shaokun Zhang <zhangshaokun@hisilicon.com>
Message-ID: <2d1b3d11-1f90-40c1-8f88-45532111c53c@hisilicon.com>
Date: Thu, 19 Sep 2019 09:32:12 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.1.1
MIME-Version: 1.0
In-Reply-To: <c9bdf5bc-4787-2f09-9e8b-60d69aa8754b@kernel.org>
X-Originating-IP: [10.74.221.148]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_183230_455769_3CF27A62 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "Tangnianyao \(ICT\)" <tangnianyao@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 2019/9/18 17:58, Marc Zyngier wrote:
> On 17/09/2019 10:23, Marc Zyngier wrote:
>> On 17/09/2019 03:15, Shaokun Zhang wrote:
>>> Hi Marc,
>>>
>>> This is from Nianyao Tang.
>>>
>>> I'm planning to do some verification on our GIC-v4.1 implement. I would like some
>>> information about linux GIC-v4.1 driver. When will linux support GIC-v4.1 or what's
>>> the plan on developing GIC-v4.1 driver?
>>
>> The easy answer is that yes, there is a plan. There is some code, even,
>> just not quite in a usable state yet. I'll try to push something out
>> once I get a chance.
> 
> FWIW, I've pushed out a branch containing the current state of this work
> at [1]. It doesn't really work at the moment (Doorbells and SGIs are
> unreliable), but hopefully that will give you an idea of what is going on.
> 

Thank you, it is really helpful. I will check on this code first. If have any doubt,
I will 'noise' you again ;-)

Thanks in advance,
Shaokun

> Being a work in progress, it is unstable, subject to being changed,
> rebased and deleted without warning.
> 
> Thanks,
> 
> 	M.
> 
> [1]
> https://git.kernel.org/pub/scm/linux/kernel/git/maz/arm-platforms.git/log/?h=irq/gic-v4.1-devel
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
