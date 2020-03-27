Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C9F195D1E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 18:47:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pS5f/QdLEkgeJg0tli6h3d4f7kS5CdDV5KNjobgXhwk=; b=pnday9Mpae0aojjBLQuVu+3j+
	Y8xKNVDRy5QAvC/DjTG7MmHy2W6R9V2shR6I9d9qPbkrgNRNzIQZcICn5E8fYETYgJmRKT9HZC1BU
	ENVXCAdKIwrN6x+OxTDR1bwCupUB7c/taOgD6Y0kbt0//VwaaEk+35ZVk2KMOfiiigF9TL7AcZ2zl
	psrkrhhNq28vVNc9zjfsxFWyQ1mi6lGXMyjg50deN6Et/GiIu1YhA4cFj0RBeb3EBvQLY728J1aFt
	B8hf7s6P8Bo2JKByoGJjqRlcmnM5p90cSQ9WdcSN7H9SJd2NxLHSkq15+02/sY6x0M/VO7j01Dr/r
	NZ7r+dTrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHt51-00006u-0T; Fri, 27 Mar 2020 17:47:39 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHt4r-00005w-Um
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 17:47:31 +0000
Received: from LHREML711-CAH.china.huawei.com (unknown [172.18.7.107])
 by Forcepoint Email with ESMTP id 804B7F671D65EA02507B;
 Fri, 27 Mar 2020 17:47:24 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 LHREML711-CAH.china.huawei.com (10.201.108.34) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Fri, 27 Mar 2020 17:47:24 +0000
Received: from [127.0.0.1] (10.47.10.23) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5; Fri, 27 Mar
 2020 17:47:23 +0000
Subject: Re: [PATCH v3 0/2] irqchip/gic-v3-its: Balance LPI affinity across
 CPUs
From: John Garry <john.garry@huawei.com>
To: Marc Zyngier <maz@kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>
References: <20200316115433.9017-1-maz@kernel.org>
 <9171c554-50d2-142b-96ae-1357952fce52@huawei.com>
Message-ID: <80b673a7-1097-c5fa-82c0-1056baa5309d@huawei.com>
Date: Fri, 27 Mar 2020 17:47:08 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <9171c554-50d2-142b-96ae-1357952fce52@huawei.com>
Content-Language: en-US
X-Originating-IP: [10.47.10.23]
X-ClientProxiedBy: lhreml703-chm.china.huawei.com (10.201.108.52) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_104730_138417_9003546A 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
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
Cc: Jason Cooper <jason@lakedaemon.net>, chenxiang <chenxiang66@hisilicon.com>,
 Will Deacon <will@kernel.org>, "luojiaxing@huawei.com" <luojiaxing@huawei.com>,
 Ming Lei <ming.lei@redhat.com>, Zhou Wang <wangzhou1@hisilicon.com>,
 Thomas Gleixner <tglx@linutronix.de>, Robin Murphy <robin.murphy@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> Before: ~1.2M IOPs fio read
> After: ~1.2M IOPs fio read
> 
> So they were about the same. I would have hoped for an improvement here, 
> considering before we would have all the per-queue threaded handlers 
> running on the single CPU handling the hard irq.
> 
> But we will retest all this tomorrow, so please consider these 
> provisional for now.
> 
> Thanks to Luo Jiaxing for testing.

Hi Marc,

Just to let you know that we're still looking at this. It turns out that 
we're not getting the results as hoped, and the previous results were 
incorrect due to a test booboo ..

I also think that the SMMU may even be creating a performance ceiling. I 
need to check this more, as I can't seem to get the throughput above a 
certain level.

I realise that we're so late in the cycle that there is now no immediate 
rush.

But I would also like to report some other unexpected behaviour for 
managed interrupts in this series - I'll reply directly to the specific 
patch for that.

Much appreciated,
John



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
