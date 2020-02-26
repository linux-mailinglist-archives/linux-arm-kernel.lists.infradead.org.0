Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1988816F5F0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 04:05:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wvChzpTsE2jJD/DJP8aOboeiqdXYvHG5VDO5/XL0DL4=; b=IzMDNhUKm55cC2rfbsSGdBSHg
	nhwoAYbVg2yrZeiZF5dR1arRWOlk7go1i0wDySQsIYmGZGKpuClCzTv+8vhb1dvooTVS2SnCLFbC3
	NSiHgoMHN7prW2ty36E36oigEl/p727AEzR0cAuY7KXbRkfLT65ZF0qo53F0YCI1uBVkr+Ts3bKww
	/mqCM0ZkgO2ayYVd/bYnUkrasBz7Icsq4F8ikCByn5YFGXlDvq+5CDmy0Js1eDdmaYNsV6byBuA7I
	4dgY4UKvANNQw/NRjJnbUp80xtPeevIOz/sQSh9kFVqFyLSbUGjZyMFSdJgwb3Ni37dggReDu4pMa
	J5FDNWF/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6n13-0004DR-0U; Wed, 26 Feb 2020 03:05:41 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6n0t-0004CT-MO
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 03:05:33 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 782DE46488E95C5DEB79;
 Wed, 26 Feb 2020 11:05:22 +0800 (CST)
Received: from [127.0.0.1] (10.67.101.242) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.439.0; Wed, 26 Feb 2020
 11:05:19 +0800
Subject: Re: [PATCH v4 03/26] iommu: Add a page fault handler
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
References: <20200224182401.353359-1-jean-philippe@linaro.org>
 <20200224182401.353359-4-jean-philippe@linaro.org>
 <cb8b5a85-7f1a-8eb7-85bd-db2f553f066d@huawei.com>
 <20200225092519.GC375953@myrica>
From: Xu Zaibo <xuzaibo@huawei.com>
Message-ID: <0c2b29ad-d09a-89db-8540-5909751b1972@huawei.com>
Date: Wed, 26 Feb 2020 11:05:19 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <20200225092519.GC375953@myrica>
X-Originating-IP: [10.67.101.242]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_190531_903102_7A9CFC9C 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, kevin.tian@intel.com,
 will@kernel.org, Jean-Philippe Brucker <jean-philippe.brucker@arm.com>,
 linux-pci@vger.kernel.org, linux-mm@kvack.org,
 iommu@lists.linux-foundation.org, robh+dt@kernel.org, catalin.marinas@arm.com,
 tj@kernel.org, zhangfei.gao@linaro.org, robin.murphy@arm.com,
 christian.koenig@amd.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,
On 2020/2/25 17:25, Jean-Philippe Brucker wrote:
> Hi Zaibo,
>
> On Tue, Feb 25, 2020 at 11:30:05AM +0800, Xu Zaibo wrote:
>>> +struct iopf_queue *
>>> +iopf_queue_alloc(const char *name, iopf_queue_flush_t flush, void *cookie)
>>> +{
>>> +	struct iopf_queue *queue;
>>> +
>>> +	queue = kzalloc(sizeof(*queue), GFP_KERNEL);
>>> +	if (!queue)
>>> +		return NULL;
>>> +
>>> +	/*
>>> +	 * The WQ is unordered because the low-level handler enqueues faults by
>>> +	 * group. PRI requests within a group have to be ordered, but once
>>> +	 * that's dealt with, the high-level function can handle groups out of
>>> +	 * order.
>>> +	 */
>>> +	queue->wq = alloc_workqueue("iopf_queue/%s", WQ_UNBOUND, 0, name);
>> Should this workqueue use 'WQ_HIGHPRI | WQ_UNBOUND' or some flags like this
>> to decrease the unexpected
>> latency of I/O PageFault here? Or maybe, workqueue will show an uncontrolled
>> latency, even in a busy system.
> I'll investigate the effect of these flags. So far I've only run on
> completely idle systems but it would be interesting to add some
> workqueue-heavy load in my tests.
>
I'm not sure, just my concern. Hopefully, Tejun Heo can give us some 
hints. :)

+cc  Tejun Heo <tj@kernel.org>

Cheers,
Zaibo

.
> .
>



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
