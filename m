Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4706845834
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 11:07:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PS2+LWEo6/6aJQLONR2/PcGeTT1nrkM2xrxJo70Qjhg=; b=XpnSGEcqSe2wakdBaIef8pkRA
	snaVyM98LSWQeZTQP+eYjmuyv1zxSB8xQFqglYfSACBVick+APs5yz0TOll0inJxOtBvqHEHopbcq
	rWfM+gbOMNQS+KP/EQybMB+2V+orOcLXRA1t1Cm5/gxuYQKRg2bgSGLwfiuz0f9ZjzscKhcE6QiRa
	dpwD78hrJyGXQuK/3SDM1VQySnxg8YCRWae/4uNjF/vFy0E3Ct6AdXYTrrBCVyJv3L1Bufl4GGV6c
	L/v6FonNVxBag8kOZ3r4iFSzt4/B/2MmpoZAxcCelwfso9hQZvIOa4ggQC0pD/0rB4QdLRWBopwdo
	iL19fVxFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbiAv-0007sx-Vm; Fri, 14 Jun 2019 09:07:10 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbiAf-0007ry-Ic
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 09:06:55 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 9E9CFE521DB502BA74A4;
 Fri, 14 Jun 2019 17:03:05 +0800 (CST)
Received: from [127.0.0.1] (10.202.227.238) by DGGEMS402-HUB.china.huawei.com
 (10.3.19.202) with Microsoft SMTP Server id 14.3.439.0;
 Fri, 14 Jun 2019 17:02:59 +0800
Subject: Re: [PATCH v4 1/3] lib: logic_pio: Use logical PIO low-level
 accessors for !CONFIG_INDIRECT_PIO
To: Bjorn Helgaas <helgaas@kernel.org>
References: <1560262374-67875-1-git-send-email-john.garry@huawei.com>
 <1560262374-67875-2-git-send-email-john.garry@huawei.com>
 <20190613023947.GD13533@google.com>
 <8ef228f8-97cb-e40e-ea6b-410b80a845cf@huawei.com>
 <20190613200932.GJ13533@google.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <7495dcab-f293-4b2a-4740-2249f61351f7@huawei.com>
Date: Fri, 14 Jun 2019 10:02:52 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <20190613200932.GJ13533@google.com>
X-Originating-IP: [10.202.227.238]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_020653_858792_1AAEFCDA 
X-CRM114-Status: GOOD (  10.69  )
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
Cc: rjw@rjwysocki.net, wangkefeng.wang@huawei.com, lorenzo.pieralisi@arm.com,
 arnd@arndb.de, linux-pci@vger.kernel.org, will.deacon@arm.com,
 linuxarm@huawei.com, linux-kernel@vger.kernel.org, catalin.marinas@arm.com,
 andriy.shevchenko@linux.intel.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13/06/2019 21:09, Bjorn Helgaas wrote:
> On Thu, Jun 13, 2019 at 10:39:12AM +0100, John Garry wrote:
>> On 13/06/2019 03:39, Bjorn Helgaas wrote:
>>> I'm not sure it's even safe, because CONFIG_INDIRECT_PIO depends on
>>> ARM64,  but PCI_IOBASE is defined on most arches via asm-generic/io.h,
>>> so this potentially affects arches other than ARM64.
>>
>> It would do. It would affect any arch which defines PCI_IOBASE and
>> does not have arch-specific definition of inb et all.
>

Hi Bjorn,

> What's the reason for testing PCI_IOBASE instead of
> CONFIG_INDIRECT_PIO?  If there's a reason it's needed, that's fine,
> but it does make this much more complicated to review.

For ARM64, we have PCI_IOBASE defined but may not have 
CONFIG_INDIRECT_PIO defined. Currently CONFIG_INDIRECT_PIO is only 
selected by CONFIG_HISILICON_LPC.

As such, we should make this change also for when CONFIG_INDIRECT_PIO is 
not defined.

Thanks,
John

>
> Bjorn
>
> .
>



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
