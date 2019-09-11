Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ADBEB0280
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 19:20:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=v+vUkmOW4Vw0nG2KYpDJmkan4hxPKKeLP54rprGJzqo=; b=g2MQQ+0jy/y85Vz+qq4eJ4Vxt
	WYMSW707cgrVoKwO3aQ3fISacHr6hjLlramK8BsbECGi1rDzKAd1d3bwp09/ROCGS3TbRq5Uo+Q+W
	Hr16kTO+SAD0KSr75tvuYyRRdMxeCZ/wBkDYFVk+/DrnIrvtvnKU1CFtjXgOVpzcoAr89tNVbfoQx
	kyHd3f9RxDdPV8rNIf5geU/XQB7qh9iQjJemkld+PS9IncefxIiutw7YAXywSuquu6s5xUKXJJU31
	Ug/ga+gn2V/dhnjPvoZ6lO6uGYAwlcSqCTcFnxCxKvrcdziSp7WXlJaBqljS56eKgMPTQm2dhelma
	ONNm09gCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i86Hj-00052U-KJ; Wed, 11 Sep 2019 17:20:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i86HU-00050C-QQ
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 17:19:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7942628;
 Wed, 11 Sep 2019 10:19:47 -0700 (PDT)
Received: from [192.168.1.124] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EDE743F59C;
 Wed, 11 Sep 2019 10:19:45 -0700 (PDT)
Subject: Re: [PATCH 0/3] iommu/io-pgtable-arm: Mali LPAE improvements
To: Will Deacon <will@kernel.org>, Neil Armstrong <narmstrong@baylibre.com>
References: <cover.1568211045.git.robin.murphy@arm.com>
 <d77047c2-1f16-eded-17ba-7463310d4bba@baylibre.com>
 <20190911162024.i2sda7uzy3pbrnyd@willie-the-truck>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <83c45e97-8398-349d-5593-03af23b39c59@arm.com>
Date: Wed, 11 Sep 2019 18:19:40 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190911162024.i2sda7uzy3pbrnyd@willie-the-truck>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_101948_898152_3790DC1A 
X-CRM114-Status: GOOD (  17.74  )
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
Cc: robh@kernel.org, tomeu.vizoso@collabora.com, joro@8bytes.org,
 steven.price@arm.com, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-09-11 5:20 pm, Will Deacon wrote:
> On Wed, Sep 11, 2019 at 06:19:04PM +0200, Neil Armstrong wrote:
>> On 11/09/2019 16:42, Robin Murphy wrote:
>>> Here's the eagerly-awaited fix to unblock T720/T820, plus a couple of
>>> other bits that I've collected so far. I'm not considering this as
>>> 5.3 fixes material, but it would be nice if there's any chance still
>>> to sneak it into 5.4.
>>>
>>> Robin.
>>>
>>>
>>> Robin Murphy (3):
>>>    iommu/io-pgtable-arm: Correct Mali attributes
>>>    iommu/io-pgtable-arm: Support more Mali configurations
>>>    iommu/io-pgtable-arm: Allow coherent walks for Mali
>>>
>>>   drivers/iommu/io-pgtable-arm.c | 61 ++++++++++++++++++++++++++--------
>>>   1 file changed, 48 insertions(+), 13 deletions(-)
>>>
>>
>> Tested-by: Neil Armstrong <narmstrong@baylibre.com>
>>
>> On Khadas VIM2 (Amlogic S912) with T820 Mali GPU
>>
>> I hope this will be part of v5.4 so we can run panfrost on vanilla v5.4 !
> 
> Not a chance -- the merge window opens on Monday and -next isn't being
> rolled out at the moment due to LPC. Let's shoot for 5.5 and get this
> queued up in a few weeks.

Fair enough, that was certainly more extreme optimism than realistic 
expectation on my part :)

There is some argument for taking #1 and #2 as 5.4 fixes, though - the 
upcoming Mesa 19.2 release will enable T820 support on the userspace 
side - so let's pick that discussion up again in a few weeks.

Robin.

(And at worst, I guess we could carry the "cfg.ias = 48" workaround in 
the DRM driver for the 5.4 cycle if need be)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
