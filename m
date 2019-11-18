Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B85910063B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 14:11:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BUoPsQS1lXoripqCi1IcSmLgIEEeXElwoRMMDRPShlI=; b=deuwnbuVvRf93q7S2OI9b6CRK
	8ax+a02irekRm7V1ZWQbxcfhp4JgKVuug1DhIqp6x4EUcnhfSZGOXw2fULrisoRaETftkLUcSge9z
	ICrMtt5nlqHA30x+RI221vL8B30dCk5i0DElMhkpavf+0gU+SHW4/TyME+kagsyBjW2TsnswK9ysj
	Mxk7u4nJDqfrOJxr23SDgmKFXp2eqUkoJ8QJDuyftF35qHhxyzExfSjktVo+dnibTUyu1E7brPVw4
	bzpB7DRifKOSeg08Yh4auCmiLTUC+KMGerNrBWZaLGHWVqxUmbI6tFlFsA+29KbODaA9NZ+1kT5rZ
	78A7LTWzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWgoB-0001TV-UQ; Mon, 18 Nov 2019 13:11:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWgo2-0001Se-KP; Mon, 18 Nov 2019 13:11:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9CB981FB;
 Mon, 18 Nov 2019 05:11:01 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E867E3F6C4;
 Mon, 18 Nov 2019 05:10:59 -0800 (PST)
Subject: Re: [PATCH 2/2] PCI: rockchip: Simplify optional regulator handling
To: Andrew Murray <andrew.murray@arm.com>
References: <1eebc002101931012d337cda23d18f85b0326361.1573908530.git.robin.murphy@arm.com>
 <347bc3ef8399577e4cef3fdbf3af34d20b4ad27e.1573908530.git.robin.murphy@arm.com>
 <20191118115930.GC9761@sirena.org.uk>
 <a59da4a4-de88-62a5-5f44-001f8e30221e@arm.com>
 <20191118123951.GM43905@e119886-lin.cambridge.arm.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <b0e9a54e-4938-0afe-5059-bddf7e9ae1d9@arm.com>
Date: Mon, 18 Nov 2019 13:10:58 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191118123951.GM43905@e119886-lin.cambridge.arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_051102_714600_132983E0 
X-CRM114-Status: GOOD (  14.02  )
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
 linux-rockchip@lists.infradead.org, Mark Brown <broonie@kernel.org>,
 bhelgaas@google.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18/11/2019 12:39 pm, Andrew Murray wrote:
> On Mon, Nov 18, 2019 at 12:20:10PM +0000, Robin Murphy wrote:
>> On 18/11/2019 11:59 am, Mark Brown wrote:
>>> On Sat, Nov 16, 2019 at 12:54:20PM +0000, Robin Murphy wrote:
>>>> Null checks are both cheaper and more readable than having !IS_ERR()
>>>> splattered everywhere.
>>>
>>>> -	if (IS_ERR(rockchip->vpcie3v3))
>>>> +	if (!rockchip->vpcie3v3)
>>>>    		return;
>>>>    	/*
>>>> @@ -611,6 +611,7 @@ static int rockchip_pcie_parse_host_dt(struct rockchip_pcie *rockchip)
>>>>    		if (PTR_ERR(rockchip->vpcie12v) != -ENODEV)
>>>>    			return PTR_ERR(rockchip->vpcie12v);
>>>>    		dev_info(dev, "no vpcie12v regulator found\n");
>>>> +		rockchip->vpcie12v = NULL;
>>>
>>> According to the API NULL is a valid regulator.  We don't currently
>>> actually do this but it's storing up surprises if you treat it as
>>> invalid.
>>
>> Ah, OK - I'd assumed NULL wasn't valid based on regulator_enable()
>> immediately dereferencing its argument without any checks. If we'd rather
>> not bake in that assumption then this patch can happily be ignored.
> 
> I'd suggest we drop this patch.
> 
> "IS_ERR(ptr)" is not the same as "!ptr", for values of ptr between 0 and
> -4095 inclusive.

Hence the explicit initial "if (IS_ERR(ptr)) ptr = NULL;" condition 
quoted above ;)

But yeah, it was merely an attempt at a minor cosmetic cleanup, so let's 
just forget about it to avoid any possible confusion.

Cheers,
Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
