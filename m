Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F912E0B47
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 20:16:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UGqRFibE6Lq3CPM5cCMdeg85aF3uu5c5LsD3ckhy3QU=; b=EDjMiu8/GmEWyBBj9LquAqgKP
	T6Q4Wxt32OEyOavNGgPaWb5sXvd35SMESgm38/EOVhI4tVwc+IV1K55lKpwqQXX9Dm8Da1HVjlFIR
	U3Oik9EuKxvOVqTUq0jB4FIOw9Xw9Mp0rbC8yAnwgmRWKU8BHfP5XyjHwZkOWUMoR+Pdo14jz+Km5
	iTziQ+mSinhl5uUHblabWHx5m0DJguIaBO2skxRWLlzKdAUIHazyBBOCCXXL2rS6Fl+2hJvG+Tzs9
	PI89NNd6xhy36MtPnqBl2pZj12GA5xKwK03OlA73fFOHDqPf4MAJduC41YsF/D1Zw93aL9xgpWV4t
	6PpO/1wTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMyhe-0005KA-Gc; Tue, 22 Oct 2019 18:16:18 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMyhV-0005It-12
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 18:16:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 54DCC1650;
 Tue, 22 Oct 2019 11:15:58 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 35F4B3F718;
 Tue, 22 Oct 2019 11:15:57 -0700 (PDT)
Subject: Re: [PATCH 2/2] mfd: mfd-core: Honour Device Tree's request to
 disable a child-device
To: Lee Jones <lee.jones@linaro.org>
References: <20191018122647.3849-1-lee.jones@linaro.org>
 <20191018122647.3849-3-lee.jones@linaro.org>
 <b7c59d6e-2ad8-30a1-013a-53c116f7b6ba@arm.com> <20191019072809.GX4365@dell>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <8d458795-1081-313e-f5f6-7ca8572e7457@arm.com>
Date: Tue, 22 Oct 2019 19:15:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20191019072809.GX4365@dell>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_111609_113836_006350B8 
X-CRM114-Status: GOOD (  22.16  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: baohua@kernel.org, arnd@arndb.de, stephan@gerhold.net,
 linus.walleij@linaro.org, daniel.thompson@linaro.org,
 linux-kernel@vger.kernel.org, broonie@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19/10/2019 08:28, Lee Jones wrote:
> Good morning Robin,
> 
> It's been a while.  I hope that you are well.
> 
> Thanks for taking an interest.
> 
> On Fri, 18 Oct 2019, Robin Murphy wrote:
>> On 18/10/2019 13:26, Lee Jones wrote:
>>> Until now, MFD has assumed all child devices passed to it (via
>>> mfd_cells) are to be registered.  It does not take into account
>>> requests from Device Tree and the like to disable child devices
>>> on a per-platform basis.
>>>
>>> Well now it does.
>>>
>>> Reported-by: Barry Song <Baohua.Song@csr.com>
>>> Reported-by: Stephan Gerhold <stephan@gerhold.net>
>>> Signed-off-by: Lee Jones <lee.jones@linaro.org>
>>> ---
>>>    drivers/mfd/mfd-core.c | 5 +++++
>>>    1 file changed, 5 insertions(+)
>>>
>>> diff --git a/drivers/mfd/mfd-core.c b/drivers/mfd/mfd-core.c
>>> index eafdadd58e8b..24c139633524 100644
>>> --- a/drivers/mfd/mfd-core.c
>>> +++ b/drivers/mfd/mfd-core.c
>>> @@ -182,6 +182,11 @@ static int mfd_add_device(struct device *parent, int id,
>>>    	if (parent->of_node && cell->of_compatible) {
>>>    		for_each_child_of_node(parent->of_node, np) {
>>>    			if (of_device_is_compatible(np, cell->of_compatible)) {
>>> +				if (!of_device_is_available(np)) {
>>> +					/* Ignore disabled devices error free */
>>> +					ret = 0;
>>> +					goto fail_alias;
>>> +				}
>>
>> Is it possible for a device to have multiple children of the same type? If
>> so, it seems like this might not work as desired if, say, the first child
>> was disabled but subsequent ones weren't.
>>
>> It might make sense to use for_each_available_child_of_node() for the outer
>> loop, then check afterwards if anything was found.
> 
> The subsystem in its current guise doesn't reliably support the
> situation you describe. We have no way to track which child nodes have
> been through this process previously, thus mfd-core will always choose
> the first child node with a matching compatible string.

Ah, OK, if that situation has never been expected to work properly then 
the simple patch is probably fine.

> If you have any suggests in terms of adding support for multiple
> children with matching compatible strings, I'd be very receptive.

I know very little about the MFD layer and its users, so I wasn't sure 
whether this 'multiple child instances' thing would ever actually be a 
real concern (other than for "simple-mfd"s which apparently don't use 
this mechanism anyway) - I was just considering the code from a pure DT 
perspective.

Cheers,
Robin.

>>>    				pdev->dev.of_node = np;
>>>    				pdev->dev.fwnode = &np->fwnode;
>>>    				break;
>>>
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
