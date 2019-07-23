Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11B1C70EC5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 03:42:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3mHaDzGw499a2CpKmNIN04UdzQBO4NQjWaii66RI+Q0=; b=G9eqLOY5x5WfuQ
	mUCmrXERNJeLyBEZkwX8WYSadKsswxJBdavqVSAnaBb8TPi206oZO5NpdIqxgTaqpMbV6//IC8NhP
	0UIGh/Qn/IygJzOQj81Vckv08TjpoLzCVsB098K+vL3yq/D6q840fyq8gEWqRjtcZ2zIGKSJDB1jy
	t49ILlkQnQqcJKWGH3NwX1TrxwY7sm1m+9/kGIqbg9FGz+6O8qfn3IgoRpD2ALR/YcrIZcJY4GYLc
	RbEa0sLnrOR5wDzssPCzS6KAmsRcYhodpsmduga+0QgZAfBmszKVhfnQ1NcMMRvT6EhXL/hrRlh3V
	e909dvEhNy8cyvlHXgVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpjol-0003Aq-KJ; Tue, 23 Jul 2019 01:42:15 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpjoP-00039v-Nz
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 01:41:55 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 7D0567083CA7C08087D1;
 Tue, 23 Jul 2019 09:41:44 +0800 (CST)
Received: from [127.0.0.1] (10.177.223.23) by DGGEMS408-HUB.china.huawei.com
 (10.3.19.208) with Microsoft SMTP Server id 14.3.439.0; Tue, 23 Jul 2019
 09:41:34 +0800
Subject: Re: [PATCH] ACPI/IORT: Rename arm_smmu_v3_set_proximity() 'node'
 local variable
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, <linux-acpi@vger.kernel.org>
References: <20190722161433.23027-1-lorenzo.pieralisi@arm.com>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <7743b3e7-da5f-667d-9222-7ecab5a20876@huawei.com>
Date: Tue, 23 Jul 2019 09:41:17 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <20190722161433.23027-1-lorenzo.pieralisi@arm.com>
Content-Language: en-US
X-Originating-IP: [10.177.223.23]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_184153_936247_B418EEE4 
X-CRM114-Status: GOOD (  11.04  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Cc: Kefeng Wang <wangkefeng.wang@huawei.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Robin Murphy <robin.murphy@arm.com>,
 LKML <linux-kernel@vger.kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Will Deacon <will@kernel.org>, LAKML <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019/7/23 0:14, Lorenzo Pieralisi wrote:
> Commit 36a2ba07757d ("ACPI/IORT: Reject platform device creation on NUMA
> node mapping failure") introduced a local variable 'node' in
> arm_smmu_v3_set_proximity() that shadows the struct acpi_iort_node
> pointer function parameter.
> 
> Execution was unaffected but it is prone to errors and can lead
> to subtle bugs.
> 
> Rename the local variable to prevent any issue.
> 
> Reported-by: Will Deacon <will@kernel.org>
> Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Hanjun Guo <guohanjun@huawei.com>
> Cc: Sudeep Holla <sudeep.holla@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Robin Murphy <robin.murphy@arm.com>
> Cc: Kefeng Wang <wangkefeng.wang@huawei.com>
> ---
>  drivers/acpi/arm64/iort.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

Reviewed-by: Hanjun Guo <guohanjun@huawei.com>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
