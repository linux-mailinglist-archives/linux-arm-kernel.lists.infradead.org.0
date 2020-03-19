Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81E0B18B379
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 13:32:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZSzECkusHLznSN8uJ4XOcdRWy+gTCA7q4sIn7ffjiw8=; b=ibQ14/VHAX4kXX7Ak3PtQFAZJ
	x/hvlZFRCli3kmdSCdw3pIVb+XuPz4C6u9FaG/YFW10bD/cXyx1TTWUZ3UwCo2cfc9EFvbl9qJccF
	iErV76ZYCkH0pCTs3hjbw0JCFYSOUP7rzff/u6d/kl2ix3d08odIqLo1dhxkB2LKI5edJVBYLgTG1
	uqTowjdgaB6Ye9m8JQRq5+iewZtCG7QuzFL/uamlvdaJaSfKNk1FwY/neXW5G9+4MYJCv+OnHNYZT
	Jkl67GjsvDsAM12R8rN/oFrQHW37+v1BQ79wCwodGVvna8Jq0Y5JS2SOtHPAwf8gW0nI6yB1IcR7Y
	jwV0jIE0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEuLZ-0007gK-CE; Thu, 19 Mar 2020 12:32:25 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEuLL-0007fH-H4
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 12:32:13 +0000
Received: from LHREML713-CAH.china.huawei.com (unknown [172.18.7.106])
 by Forcepoint Email with ESMTP id 5CE5D1F424F939804A0C;
 Thu, 19 Mar 2020 12:32:05 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 LHREML713-CAH.china.huawei.com (10.201.108.36) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Thu, 19 Mar 2020 12:32:04 +0000
Received: from [127.0.0.1] (10.210.167.248) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5; Thu, 19 Mar
 2020 12:32:04 +0000
Subject: Re: [PATCH v3 0/2] irqchip/gic-v3-its: Balance LPI affinity across
 CPUs
To: Marc Zyngier <maz@kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>
References: <20200316115433.9017-1-maz@kernel.org>
From: John Garry <john.garry@huawei.com>
Message-ID: <9171c554-50d2-142b-96ae-1357952fce52@huawei.com>
Date: Thu, 19 Mar 2020 12:31:49 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20200316115433.9017-1-maz@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.210.167.248]
X-ClientProxiedBy: lhreml704-chm.china.huawei.com (10.201.108.53) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_053211_720494_05FD71B8 
X-CRM114-Status: GOOD (  14.53  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
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
Cc: Jason Cooper <jason@lakedaemon.net>, chenxiang <chenxiang66@hisilicon.com>,
 Robin Murphy <robin.murphy@arm.com>,
 "luojiaxing@huawei.com" <luojiaxing@huawei.com>,
 Ming Lei <ming.lei@redhat.com>, Zhou Wang <wangzhou1@hisilicon.com>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16/03/2020 11:54, Marc Zyngier wrote:
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
> * From v2:
>    - Split accounting from CPU selection
>    - Track managed and unmanaged interrupts separately
> 
> Marc Zyngier (2):
>    irqchip/gic-v3-its: Track LPI distribution on a per CPU basis
>    irqchip/gic-v3-its: Balance initial LPI affinity across CPUs
> 
>   drivers/irqchip/irq-gic-v3-its.c | 153 +++++++++++++++++++++++++------
>   1 file changed, 127 insertions(+), 26 deletions(-)
> 

Hi Marc,

Initial results look good. We have 3x NVMe drives now, as opposed to 2x 
previously, which is better for this test.

Before: ~1.3M IOPs fio read
After: ~1.8M IOPs fio read

So a ~50% gain in throughput.

We also did try NVMe with nvme.use_threaded_interrupts=1. As you may 
remember, the NVMe interrupt handling can cause lockups, as they handle 
all completions in interrupt context by default.

Before: ~1.2M IOPs fio read
After: ~1.2M IOPs fio read

So they were about the same. I would have hoped for an improvement here, 
considering before we would have all the per-queue threaded handlers 
running on the single CPU handling the hard irq.

But we will retest all this tomorrow, so please consider these 
provisional for now.

Thanks to Luo Jiaxing for testing.

Cheers,
john

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
