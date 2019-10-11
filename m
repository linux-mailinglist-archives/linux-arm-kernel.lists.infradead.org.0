Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53776D3C17
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 11:17:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vdrKn/82s0UM47UnPMcPrVBdGytuZ8tUdoo5vQZQHdg=; b=taTEI9awxT/iGShvMDNoDUh0Q
	717frD4tzx7CKLeTyJFI3kyIN7OZk4HsVKZFLQFJLHX5C6D36pgh3wcIgyb8Guxv32Oq+YQOOc0wS
	UE8ALeaEW2Zd8/xYDA1ndSuTwo+Or5QsufwvLwnZzYqUTef38lTdY9RFUiFuPgYb/zuDPbSvk8S51
	+uVvoR+phKfRVYVufRG4aEUnfF5ens3ZTNJuzrzdjvxqW9JBo9sg9wcEBcE7yiITRlMIVqnuHnNHz
	AZg5h6Xa+S286XsdbaiF+LvMvRaQwC10YbbHzJTtWGuM1cJD7ezWm9/SURIuXa56Rbqh5ZBMqGNWF
	2CKNLPE0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIr2m-0002b9-5h; Fri, 11 Oct 2019 09:17:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIr2W-0002Zs-Eo
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 09:16:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2597A337;
 Fri, 11 Oct 2019 02:16:44 -0700 (PDT)
Received: from [192.168.1.123] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6239F3F703;
 Fri, 11 Oct 2019 02:16:42 -0700 (PDT)
Subject: Re: [PATCH 0/2] iommu/arm-smmu: Add an optional "input-address-size"
 property
To: Nicolin Chen <nicoleotsuka@gmail.com>, joro@8bytes.org,
 robh+dt@kernel.org, mark.rutland@arm.com, will@kernel.org
References: <20191011034609.13319-1-nicoleotsuka@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <e99e07c2-88c6-e4d8-af80-c46d36bc6cd0@arm.com>
Date: Fri, 11 Oct 2019 10:16:28 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191011034609.13319-1-nicoleotsuka@gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_021648_551626_5EB24943 
X-CRM114-Status: GOOD (  14.31  )
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
Cc: devicetree@vger.kernel.org, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-10-11 4:46 am, Nicolin Chen wrote:
> This series of patches add an optional DT property to allow an SoC to
> specify how many bits being physically connected to its SMMU instance,
> depending on the SoC design.

This has come up before, and it doesn't work in general because a single 
SMMU instance can have many master interfaces, with potentially 
different sizes of address bus wired up to each. It's also a 
conceptually-wrong approach anyway, since this isn't a property of the 
SMMU; it's a property of the interconnect(s) upstream of the SMMU.

IIRC you were working on Tegra - if so, Thierry already has a plan, see 
this thread: 
https://lore.kernel.org/linux-arm-kernel/20190930133510.GA1904140@ulmo/

Robin.

> 
> Nicolin Chen (2):
>    dt-bindings: arm-smmu: Add an optional "input-address-size" property
>    iommu/arm-smmu: Read optional "input-address-size" property
> 
>   Documentation/devicetree/bindings/iommu/arm,smmu.txt |  7 +++++++
>   drivers/iommu/arm-smmu.c                             | 10 ++++++++--
>   2 files changed, 15 insertions(+), 2 deletions(-)
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
