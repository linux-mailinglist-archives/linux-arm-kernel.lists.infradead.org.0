Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 106395A819
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Jun 2019 04:09:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GQry0dc9t4uIX3FQfQST9BHrHK+0oyZOcmCk0axuTDU=; b=rpkavQI2rthesI
	zU2Ls6Z6zMUA/6qLXotKWHUdWzLzaKGsa/FeFpIi3ACFZFCQMAwn0ZTdjI3Ngyta0O/zVYOV4OqHH
	YsV74D6J4jbKBMVbyuGYgWUNQ1p2ksf+NKz6BwtumsBlLvPcAlqF/MJ/lnJ3zOTM+hwqganBzVixI
	T/4hs/X+47Ur7q7ZlLH/uzWX2Lwyex1fH+WeK0xHW6H3I5eSWWli7v9Em1NIAy6ArMg5xFzvpEaDr
	Y+Ivc/5lrdfQ7l+befboxopyWKs39k19Lyie31ngZLcbIFJDpnst29izPcbRNIWe9E3KulQUrei48
	QGdRKs0EKU7cvTwvb4cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hh2nW-0005E4-D7; Sat, 29 Jun 2019 02:09:02 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hh2nH-0005DH-5d
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Jun 2019 02:08:48 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 03EA9AD12CCE9E729E1A;
 Sat, 29 Jun 2019 10:08:40 +0800 (CST)
Received: from [127.0.0.1] (10.184.52.56) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.439.0; Sat, 29 Jun 2019
 10:08:34 +0800
Subject: Re: [PATCH RFC 0/3] Support CPU hotplug for ARM64
To: <rjw@rjwysocki.net>, <catalin.marinas@arm.com>, <james.morse@arm.com>
References: <1561720392-45907-1-git-send-email-wangxiongfeng2@huawei.com>
From: Xiongfeng Wang <wangxiongfeng2@huawei.com>
Message-ID: <74bda3c2-e706-aa3b-441a-fb85e2a5c778@huawei.com>
Date: Sat, 29 Jun 2019 10:07:10 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <1561720392-45907-1-git-send-email-wangxiongfeng2@huawei.com>
Content-Language: en-US
X-Originating-IP: [10.184.52.56]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_190847_508038_D410D3E0 
X-CRM114-Status: GOOD (  13.41  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
Cc: xiexiuqi@huawei.com, jonathan.cameron@huawei.com, john.garry@huawei.com,
 linux-kernel@vger.kernel.org, linux-acpi@vger.kernel.org,
 huawei.libin@huawei.com, guohanjun@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sorry, the third patch can't be applied to the lastest kernel. I will send another
version and attach the method to test this patchset.

On 2019/6/28 19:13, Xiongfeng Wang wrote:
> This patchset mark all the GICC node in MADT as possible CPUs even though it
> is disabled. But only those enabled GICC node are marked as present CPUs.
> So that kernel will initialize some CPU related data structure in advance before
> the CPU is actually hot added into the system. This patchset also implement 
> 'acpi_(un)map_cpu()' and 'arch_(un)register_cpu()' for ARM64. These functions are
> needed to enable CPU hotplug.
> 
> To support CPU hotplug, we need to add all the possible GICC node in MADT
> including those CPUs that are not present but may be hot added later. Those
> CPUs are marked as disabled in GICC nodes.
> 
> Xiongfeng Wang (3):
>   ACPI / scan: evaluate _STA for processors declared via ASL Device
>     statement
>   arm64: mark all the GICC nodes in MADT as possible cpu
>   arm64: Add CPU hotplug support
> 
>  arch/arm64/kernel/acpi.c  | 22 ++++++++++++++++++++++
>  arch/arm64/kernel/setup.c | 19 ++++++++++++++++++-
>  arch/arm64/kernel/smp.c   | 11 +++++------
>  drivers/acpi/scan.c       | 12 ++++++++++++
>  4 files changed, 57 insertions(+), 7 deletions(-)
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
