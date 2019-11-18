Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E72B310057B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 13:20:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SipF7Sbt5M8e1vdKZ1rlomhkY8wCCoQ6b8I6m0QcG0I=; b=Zoeb66G3C8px2DHgRs6B3vJN+
	V2xUegVA1pZyIx3cZ3glIRVGLGeVUwUOnMpyw65FHR5AHU2ZZTPKRq7Bjd8nlEntJzx6zuzm7E3ml
	ccwF754bdgBQF6A0PVOVA3nJ7gZTKeFAIJzDC7NfvELPyNLnBEdYSlSM9FVpvds1rBBffNvmKpEP1
	ZilWlAwuyuIwRB2c8JXPHa+0XZXA9ua7tXbfbckkyYERFDycFR8BTn06m0nFwZNbF64uSvhQQnJuk
	DP79wZXiq4nnTQ1uT1objmdVx/HHsUiN3T/iBcurIz55IxmU43Xoisk8xIjNhag9UrjcJFnPiCa8s
	P/mZ33C5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWg10-0005yq-Mz; Mon, 18 Nov 2019 12:20:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWg0s-0005y9-Dc; Mon, 18 Nov 2019 12:20:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 166191FB;
 Mon, 18 Nov 2019 04:20:13 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 80B243F6C4;
 Mon, 18 Nov 2019 04:20:11 -0800 (PST)
Subject: Re: [PATCH 2/2] PCI: rockchip: Simplify optional regulator handling
To: Mark Brown <broonie@kernel.org>
References: <1eebc002101931012d337cda23d18f85b0326361.1573908530.git.robin.murphy@arm.com>
 <347bc3ef8399577e4cef3fdbf3af34d20b4ad27e.1573908530.git.robin.murphy@arm.com>
 <20191118115930.GC9761@sirena.org.uk>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <a59da4a4-de88-62a5-5f44-001f8e30221e@arm.com>
Date: Mon, 18 Nov 2019 12:20:10 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191118115930.GC9761@sirena.org.uk>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_042014_507837_6EAB1BF7 
X-CRM114-Status: GOOD (  12.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: lorenzo.pieralisi@arm.com, heiko@sntech.de, linux-pci@vger.kernel.org,
 shawn.lin@rock-chips.com, lgirdwood@gmail.com,
 linux-rockchip@lists.infradead.org, bhelgaas@google.com, andrew.murray@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18/11/2019 11:59 am, Mark Brown wrote:
> On Sat, Nov 16, 2019 at 12:54:20PM +0000, Robin Murphy wrote:
>> Null checks are both cheaper and more readable than having !IS_ERR()
>> splattered everywhere.
> 
>> -	if (IS_ERR(rockchip->vpcie3v3))
>> +	if (!rockchip->vpcie3v3)
>>   		return;
>>   
>>   	/*
>> @@ -611,6 +611,7 @@ static int rockchip_pcie_parse_host_dt(struct rockchip_pcie *rockchip)
>>   		if (PTR_ERR(rockchip->vpcie12v) != -ENODEV)
>>   			return PTR_ERR(rockchip->vpcie12v);
>>   		dev_info(dev, "no vpcie12v regulator found\n");
>> +		rockchip->vpcie12v = NULL;
> 
> According to the API NULL is a valid regulator.  We don't currently
> actually do this but it's storing up surprises if you treat it as
> invalid.

Ah, OK - I'd assumed NULL wasn't valid based on regulator_enable() 
immediately dereferencing its argument without any checks. If we'd 
rather not bake in that assumption then this patch can happily be ignored.

Thanks,
Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
