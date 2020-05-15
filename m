Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A13AF1D58B5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 20:10:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pn2VlmV75IehV/+unxl6/RcDNPaSry9KJEoKZenG7gI=; b=HQTb53dnHlS57HKizu3qlfPtS
	/Alxm9Pa77nY5w9w+RSdWmwNQwmL/mOz707NrGdSxZ8NNNKpTVTDJXE9hr8BJ6f1tJ0JfVWEd8tdE
	ewZdRrt0b2HgjRsZsKoAisGlEvTYZsS2Hd7yML+ZADJAXOCk01GVkcYoH3WKy6LHsCrfHKZ/aLGCx
	IT79RPOTuSIlJQF4LLLZFHhyIZwaeBUa+0uSwk3Eg7SpVvzbVuYSBjSfA52vUM2fBcymviiqf48Yz
	uFyoNOX9NICB84MQKriG02xv/GgHdM4U28XJo7pTfkmlriqmu7BpUev4uy4VEeQSrUUbYPp7IMJNg
	ScynfZ4rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZen3-0005sr-8S; Fri, 15 May 2020 18:10:33 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZemv-0005qY-Im
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 18:10:27 +0000
Received: from lhreml724-chm.china.huawei.com (unknown [172.18.7.107])
 by Forcepoint Email with ESMTP id 669A4E797090C6838CB5;
 Fri, 15 May 2020 19:10:12 +0100 (IST)
Received: from [127.0.0.1] (10.47.1.24) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1913.5; Fri, 15 May
 2020 19:10:11 +0100
Subject: Re: [PATCH v4 0/2] irqchip/gic-v3-its: Balance LPI affinity across
 CPUs
To: Marc Zyngier <maz@kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>
References: <20200515165752.121296-1-maz@kernel.org>
From: John Garry <john.garry@huawei.com>
Message-ID: <f87f34fa-a512-7f73-2f53-85333257dd8e@huawei.com>
Date: Fri, 15 May 2020 19:09:16 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20200515165752.121296-1-maz@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.47.1.24]
X-ClientProxiedBy: lhreml709-chm.china.huawei.com (10.201.108.58) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_111025_766741_5D9B7038 
X-CRM114-Status: GOOD (  14.63  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [185.176.76.210 listed in wl.mailspike.net]
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
Cc: Jason Cooper <jason@lakedaemon.net>, chenxiang <chenxiang66@hisilicon.com>,
 Ming Lei <ming.lei@redhat.com>, Zhou Wang <wangzhou1@hisilicon.com>,
 Thomas Gleixner <tglx@linutronix.de>, kernel-team@android.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15/05/2020 17:57, Marc Zyngier wrote:
> When mapping a LPI, the ITS driver picks the first possible
> affinity, which is in most cases CPU0, assuming that if
> that's not suitable, someone will come and set the affinity
> to something more interesting.
> 
> It apparently isn't the case, and people complain of poor
> performance when many interrupts are glued to the same CPU.
> So let's place the interrupts by finding the "least loaded"
> CPU (that is, the one that has the fewer LPIs mapped to it).
> So called 'managed' interrupts are an interesting case where
> the affinity is actually dictated by the kernel itself, and
> we should honor this.
> 

Cheers Marc, I ran these again and the figures look good:
NVMe with nvme.use_threaded_interrupts=1/0
Before: 1000K/1100K IOPS
After: 1100K/1400K IOPS

For some reason v5.7-rc5 looks more stable than rc4 (which I tested 
previously).

Tested-by: John Garry <john.garry@huawei.com>

> * From v3:
>    - Always pre-decrement/post-increment affinity to avoid useless
>      changes of affinity (John)
>    - Don't use the node mask as a superset of the proposed affinity
>      as the ACPI tables can't really describe this (John)
>    - Rebased on v5.7-rc5
> 
> * From v2:
>    - Split accounting from CPU selection
>    - Track managed and unmanaged interrupts separately
> 
> Marc Zyngier (2):
>    irqchip/gic-v3-its: Track LPI distribution on a per CPU basis
>    irqchip/gic-v3-its: Balance initial LPI affinity across CPUs
> 
>   drivers/irqchip/irq-gic-v3-its.c | 170 ++++++++++++++++++++++++++-----
>   1 file changed, 143 insertions(+), 27 deletions(-)
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
