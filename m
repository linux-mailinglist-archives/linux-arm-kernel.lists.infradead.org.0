Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8ECD70ECF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 03:50:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZGz4ofatCvLF/l19BMZgV8+c6f7zEDQdJ0hdu9eg6Q4=; b=ch6eCbLYvW1CST
	XkYrtZPSrPTQlJihqfYYy1wd0xGWbIlHrhlazu+0ltbhQp7AcGONXF2ylu4GJpHMi1ODdcvcyDdLK
	4SE1mWMEhDd+kb7x7jfoPMTqpsUQ0BV5Rhosp2xPNMTIJGArIFhLenek4XEvgUinP46cC6mtdV4u+
	fsmQkSHtDW+5fLHKXKEuhmYxlHRoeaStQf/CAoz5bZXnvXfXlQGEsKhYI6jboTimgbbmKaN3i7jzT
	Jb1meN0dLyWc5GoJURysolqEwY0cqsxABkV+3l8cpFxBhM9mnWTgGMbLncEKDjEiba+dy5dzO59oZ
	MxLZcuENahJmtwP0WLGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpjwG-0006Gh-HO; Tue, 23 Jul 2019 01:50:01 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpjvR-00069d-GM
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 01:49:13 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 3523DDCD025E4E7C7BA0;
 Tue, 23 Jul 2019 09:49:07 +0800 (CST)
Received: from [127.0.0.1] (10.177.223.23) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.439.0; Tue, 23 Jul 2019
 09:49:02 +0800
Subject: Re: [PATCH] ACPI/IORT: Fix off-by-one check in iort_dev_find_its_id()
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, <linux-acpi@vger.kernel.org>
References: <20190722162548.23610-1-lorenzo.pieralisi@arm.com>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <1d18ce4f-ecd5-4295-60ea-aff5a0d83cb2@huawei.com>
Date: Tue, 23 Jul 2019 09:48:39 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <20190722162548.23610-1-lorenzo.pieralisi@arm.com>
Content-Language: en-US
X-Originating-IP: [10.177.223.23]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_184910_409963_E75FE446 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 LKML <linux-kernel@vger.kernel.org>,
 LAKML <linux-arm-kernel@lists.infradead.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Will Deacon <will@kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019/7/23 0:25, Lorenzo Pieralisi wrote:
> Static analysis identified that index comparison against ITS entries in
> iort_dev_find_its_id() is off by one.
> 
> Update the comparison condition and clarify the resulting error
> message.
> 
> Fixes: 4bf2efd26d76 ("ACPI: Add new IORT functions to support MSI domain handling")
> Link: https://lore.kernel.org/linux-arm-kernel/20190613065410.GB16334@mwanda/
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Dan Carpenter <dan.carpenter@oracle.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Hanjun Guo <guohanjun@huawei.com>
> Cc: Sudeep Holla <sudeep.holla@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Robin Murphy <robin.murphy@arm.com>

Reviewed-by: Hanjun Guo <guohanjun@huawei.com>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
