Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D08DFEAB04
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 08:39:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pseXkmgZ1kxKb/3HZyyC5sKh0Wd4tqLSRidSf7yLKY8=; b=aA+HZg/4cn2Ih7
	6gZQPbSsWgwzrRbu0Uj7haKRLbt1QueQp/hUbjSp5wHpMo7OY5ZhR+pIeSYQ308eh/B9i8R0sHeb+
	qjU0LZuSZHumrVrXVSoQTjJThMZAOSu1gGW/ZAl3q2LdJuiYsXnv9NIWv3jlW+9/AsQ85Lg6kglgK
	clu7WlK72j60OpEfVw4Q4VITn6URoXZTtrZ1M12YDq5kMxKQqT4qGUNQ1ZgqsgnJC3QtG6EQG3Nxw
	rGmJMGNKaEYw0vlx+J//ZLQQWdpmejeOHLCrXfOasm+eQke+Ml7BautkRMtWewJmev7zsoWo2KK1K
	CcpuejHwY6U68YJrX0LQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ52q-0003fQ-Lk; Thu, 31 Oct 2019 07:39:00 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ52h-0003eW-MH
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 07:38:53 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 8F85CEC2F485E290CBBA;
 Thu, 31 Oct 2019 15:38:41 +0800 (CST)
Received: from [127.0.0.1] (10.74.221.148) by DGGEMS408-HUB.china.huawei.com
 (10.3.19.208) with Microsoft SMTP Server id 14.3.439.0; Thu, 31 Oct 2019
 15:38:33 +0800
Subject: Re: [RFC] arm64: cpufeatures: Add support for tlbi range maintenance
To: Catalin Marinas <catalin.marinas@arm.com>
References: <1572417685-32955-1-git-send-email-zhangshaokun@hisilicon.com>
 <20191030173359.GF13309@arrakis.emea.arm.com>
From: Shaokun Zhang <zhangshaokun@hisilicon.com>
Message-ID: <5d546fe6-850d-6e0d-317d-9a6f7c90de5a@hisilicon.com>
Date: Thu, 31 Oct 2019 15:38:31 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.1.1
MIME-Version: 1.0
In-Reply-To: <20191030173359.GF13309@arrakis.emea.arm.com>
X-Originating-IP: [10.74.221.148]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_003851_894446_760DCB80 
X-CRM114-Status: GOOD (  10.28  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 Tangnianyao <tangnianyao@huawei.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Catalin,

On 2019/10/31 1:34, Catalin Marinas wrote:
> On Wed, Oct 30, 2019 at 02:41:25PM +0800, Shaokun Zhang wrote:
>> ARMv8.4-TLBI provides TLBI invalidation instruction that apply to a
>> range of input addresses. This patch adds support for this feature.
>> And provide another implementation for flush_tlb_range with tlbi
>> range instruction.
> 
> Do you have any performance numbers in favour of this patch? Last time

There is no performance data and we also want to see the profit from this
feature, but the kernel doesn't support it now. I sent it as a RFC firstly.

> we looked, it didn't really matter for Linux since most user TLBI ranges
> were 1 or 2 pages long. Of course you can write some mprotect() loop to

Thanks your guidance, I almost don't pay attention on this. I will do more
learning on it. Since ARM ARM supports this, I think it shall be some useful
for performance. ;-)

> show that it matters but I'm rather interested in real world impact.

Okay, I will run some server works to check it whether continuous TLBI range
will be issued, like JAVA application: Hadoop etc.

Thanks,
Shaokun

> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
