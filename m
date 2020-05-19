Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B193D1D9B98
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 17:47:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lWoeL/j5gzgNnSOD9Et3tRCrb6pWSdTuu4u1+P3wwHE=; b=NI4jxvzrZ2YD6J
	eNzWnchvG8ew6NCDCb3udSYrAI0Ru6GJSryFTYXKvR/F/GTJ7S5Ytd366QqDN+NvL8r4GA7ZXgvbB
	No7g14fzNmAu1lxd1tk345w8FJlut81AbfMET9i/KimO+t+IaYiatFkVGnrH0zV6dHOujzNBAIRPT
	J4Pyx96b8TMAQKXNMUBcrsjzERQqp7ViEJ5zIVbMg+QcKJbbHqzCjwW/jSIoOR83QJ3Sg31msnAc8
	g8f6i9vJ6t2+Z6WkYsW5lbpJeqRw7Z4eSs1bZMDSg/d1LI7ry5Ltrf/3ZCe0JiyhMXh9Wy+pzqXTx
	X+t8fuFQZfBE/ORTZnTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb4T0-0006jj-BM; Tue, 19 May 2020 15:47:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb4Sq-0006jE-Ne
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 15:47:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9BC0731B;
 Tue, 19 May 2020 08:47:31 -0700 (PDT)
Received: from [192.168.0.14] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0CB2B3F305;
 Tue, 19 May 2020 08:47:30 -0700 (PDT)
From: James Morse <james.morse@arm.com>
Subject: Re: [PATCH] firmware: arm_sdei: remove unused interfaces
To: Xiongfeng Wang <wangxiongfeng2@huawei.com>, Christoph Hellwig <hch@lst.de>
References: <20200504164224.2842960-1-hch@lst.de>
 <7c127e49-b1c6-c7ac-69bf-9fc0a6dba4c4@arm.com>
 <6d0adc02-bcd8-2217-c145-d609528fbe77@huawei.com>
Message-ID: <0ac1444b-bbdf-1efb-54e6-db90fe6ac707@arm.com>
Date: Tue, 19 May 2020 16:47:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <6d0adc02-bcd8-2217-c145-d609528fbe77@huawei.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_084732_815924_F55B1DC3 
X-CRM114-Status: GOOD (  17.48  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Xiongfeng,

On 05/05/2020 03:08, Xiongfeng Wang wrote:
> On 2020/5/5 1:14, James Morse wrote:
>> Hi Christoph,
>>
>> (CC: +Xiongfeng)
>>
>> Thanks for the reminder - I was just searching for who was using this.
> 
> Thanks for CC me. We do have a driver that are using it.

>> On 04/05/2020 17:42, Christoph Hellwig wrote:
>>> The export symbols to register/unregister and enable/disable events
>>> aren't ever used outside of arm_sdei.c, so mark them static.
>>
>> Xiongfeng, you have drivers using this, could they be posted upstream. Or can we stop
>> exporting these?
> 
> It's the SDEI Wathchdog which is used for hardlockup detection. But I wasn't
> able to push it upstream because we have Pseudo-NMI in mainline.

Hmm, that shouldn't be directly relevant, unless your SDEI watchdog is using the
bindable-irq thing?


If your firmware offers an event-id for the watchdog, please upstream the driver. Half of
the event-id space is reserved for vendor stuff like this.

If firmware needs to be told to re-configure the watchdog irq to make this work, then pNMI
is a much better fit. Having firmware and linux modifying the irqchip hardware is a
nightmare best avoided.


>> (they were originally added for the GHES RAS thing, but by the time it was all merged
>> upstream, it wasn't possible to build it as a module)
> 
> The SDEI Watchdog driver also can't be built as a module. We still need to
> modify the origin kernel. So I think this patch doesn't affect me. Thanks for CC me.

Okay, I'll pick this up to drop the module exports.

I'd prefer not to make all this static as these register/unregister calls are the
interface that is supposed to be used. If we are going to gut it, we should do it completely.


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
