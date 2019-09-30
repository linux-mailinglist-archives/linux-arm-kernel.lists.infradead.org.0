Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4997FC20F1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 14:52:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LVKoFTDTUAhFOiBULqS/bCU+FYnal2U9wVC/8LpJrKI=; b=gIuFgIjZqdSRcc4+Jm/mRkAqH
	G4mF9Gsb5hvQx3IWNqtlpswQsyM1bGKFLVrrRMx/FnvY33Wu4b2005lesFRM0I/HYH7gd3uaBcypA
	Sshdgr+4NNREKgMjrZutQi42H1MGOJBWztq1yiXwXvLgCIwl64AGWwpUJn+WkyMa36rtbivyeVmxI
	4Es1ao/Nul0NIoky36OrrrkP7nqxin/gIN2Gucxe8I2dP7WhQINhPalqpK3PC/5xU8bJ/o3AJ7oyw
	KxWLEIJPsQg3Ce1QnaxlYvD09McyZyd5pLoqWmgsqnrdNNW1Us82IcY3DJ5Z6Jk9fKxYr7JlvBabC
	bJOmuDuuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEvA8-0005Q3-Bv; Mon, 30 Sep 2019 12:52:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEv9y-0005P5-By
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 12:52:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 32B911000;
 Mon, 30 Sep 2019 05:52:13 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 634143F706;
 Mon, 30 Sep 2019 05:52:11 -0700 (PDT)
Subject: Re: [PATCH 00/11] of: dma-ranges fixes and improvements
To: Marek Vasut <marek.vasut@gmail.com>, Rob Herring <robh@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20190927002455.13169-1-robh@kernel.org>
 <106d5b37-5732-204f-4140-8d528256a59b@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <40bdf7cf-3bb1-24f8-844d-3eefbc761aba@arm.com>
Date: Mon, 30 Sep 2019 13:52:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <106d5b37-5732-204f-4140-8d528256a59b@gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_055214_452470_95AD7D2B 
X-CRM114-Status: GOOD (  17.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Arnd Bergmann <arnd@arndb.de>,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Oza Pawandeep <oza.oza@broadcom.com>, Stefan Wahren <wahrenst@gmx.net>,
 Simon Horman <horms+renesas@verge.net.au>,
 Frank Rowand <frowand.list@gmail.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30/09/2019 13:40, Marek Vasut wrote:
> On 9/27/19 2:24 AM, Rob Herring wrote:
>> This series fixes several issues related to 'dma-ranges'. Primarily,
>> 'dma-ranges' in a PCI bridge node does correctly set dma masks for PCI
>> devices not described in the DT. A common case needing dma-ranges is a
>> 32-bit PCIe bridge on a 64-bit system. This affects several platforms
>> including Broadcom, NXP, Renesas, and Arm Juno. There's been several
>> attempts to fix these issues, most recently earlier this week[1].
>>
>> In the process, I found several bugs in the address translation. It
>> appears that things have happened to work as various DTs happen to use
>> 1:1 addresses.
>>
>> First 3 patches are just some clean-up. The 4th patch adds a unittest
>> exhibiting the issues. Patches 5-9 rework how of_dma_configure() works
>> making it work on either a struct device child node or a struct
>> device_node parent node so that it works on bus leaf nodes like PCI
>> bridges. Patches 10 and 11 fix 2 issues with address translation for
>> dma-ranges.
>>
>> My testing on this has been with QEMU virt machine hacked up to set PCI
>> dma-ranges and the unittest. Nicolas reports this series resolves the
>> issues on Rpi4 and NXP Layerscape platforms.
> 
> With the following patches applied:
>        https://patchwork.ozlabs.org/patch/1144870/
>        https://patchwork.ozlabs.org/patch/1144871/

Can you try it without those additional patches? This series aims to 
make the parsing work properly generically, such that we shouldn't need 
to add an additional PCI-specific version of almost the same code.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
