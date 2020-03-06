Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE7D617B96E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 10:39:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g7AzMC4f6udtqy/t3uO1vG9PsOiYMwJDuLzLoBw7NII=; b=uc9TrHrmSfvVkA
	7K7gpjyWwsjISksNvM7C2/CzFWqk9doNIVf9nunqoanEWl9x3Bte4L+xZUJf+JquqKax3qxpkggvb
	MDnQOJj9N4t1vDOEotp+FahzIhpt3selXUkkFeyIXPFya+DMdz1A53jmfDFGDOg28CzGu9ZFA+R91
	xsmijLfo9ywJHuT8lVFv0sKKBM5OXKnt4q/s78x1WrT2JmDX6njWBSM1RM0Vtpr/1Kvr6UgTSWqMH
	N8vXqH1gp3EiyPU7H216ZmGrdGJk21+i47KXG9dA+abJAnhV5Dn70TgOQjzP49aGfDYGXhC/AxNZz
	6sk8+JwzSR8A4Pjfc7sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA9Re-0000O7-2R; Fri, 06 Mar 2020 09:39:02 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA9RV-0000Lc-Dr
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 09:38:54 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 783E760514E051BBB7BF;
 Fri,  6 Mar 2020 17:38:45 +0800 (CST)
Received: from [127.0.0.1] (10.177.223.23) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.439.0; Fri, 6 Mar 2020
 17:37:19 +0800
Subject: Re: [PATCH 04/11] ACPI/IORT: Check ATS capability in root complex node
To: Jean-Philippe Brucker <jean-philippe@linaro.org>, <bhelgaas@google.com>,
 <will@kernel.org>, <robh+dt@kernel.org>, <lorenzo.pieralisi@arm.com>,
 <joro@8bytes.org>, <baolu.lu@linux.intel.com>, <linux-doc@vger.kernel.org>,
 <linux-pci@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <linux-acpi@vger.kernel.org>,
 <iommu@lists.linux-foundation.org>
References: <20200213165049.508908-1-jean-philippe@linaro.org>
 <20200213165049.508908-5-jean-philippe@linaro.org>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <1052d5a3-fb32-4c7c-9b77-e7aa94849cb1@huawei.com>
Date: Fri, 6 Mar 2020 17:37:09 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <20200213165049.508908-5-jean-philippe@linaro.org>
Content-Language: en-US
X-Originating-IP: [10.177.223.23]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_013853_626140_2288C2E3 
X-CRM114-Status: UNSURE (   7.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, frowand.list@gmail.com, corbet@lwn.net,
 liviu.dudau@arm.com, rjw@rjwysocki.net, sudeep.holla@arm.com,
 amurray@thegoodpenguin.co.uk, robin.murphy@arm.com, dwmw2@infradead.org,
 lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020/2/14 0:50, Jean-Philippe Brucker wrote:
> When initializing a PCI root bridge, copy its "ATS supported" attribute
> into the root bridge.
> 
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> ---
>  drivers/acpi/arm64/iort.c | 27 +++++++++++++++++++++++++++
>  drivers/acpi/pci_root.c   |  3 +++
>  include/linux/acpi_iort.h |  8 ++++++++

Acked-by: Hanjun Guo <guohanjun@huawei.com>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
