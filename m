Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 362FE1CE1A7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 19:26:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kEbpZWz7pfnEGNOb/QexlOC5C3ybV4u/omaIUu2HVRI=; b=WL7pLxHbjKTggXmPNS9/0kEmN
	vstevKAG9BrrcYpck9CwZ7Wd5qk3YwDVqZlj485GMxUP+rO0CtThW6DHCPcCO9OWX6AK4uYgJYSwr
	oddh7LYjoQC1zfXBalJCku74dVX1vkI5A1/a1mWRZEZHufZs7ORnGLHVKs6azyrnAD6FVqgOXmvnO
	YkPfOBBc817PBFrlzvpWmE2xMAc+3mHWCm/vYv+atjEcnlBrlerBxHMUbpQh0WP4yKahnc1r+f0lU
	5Ja7NuLqkPuHCZtnDgTunWGQ6ElaQfuT7Eo87FgSPa3B4UnG6cPc/2h2EqasRMU2uMS64fZX26JIE
	wAqEHZlqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYCC2-0002w9-K9; Mon, 11 May 2020 17:26:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYCBu-0002vI-0R
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 17:26:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 658B930E;
 Mon, 11 May 2020 10:26:08 -0700 (PDT)
Received: from [10.37.12.116] (unknown [10.37.12.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2C3493F305;
 Mon, 11 May 2020 10:26:00 -0700 (PDT)
Subject: Re: [PATCH] coresight: platform: use dev_warn instead of dev_warn_once
To: mathieu.poirier@linaro.org, kathirav@codeaurora.org
References: <1588933721-18700-1-git-send-email-kathirav@codeaurora.org>
 <20200511165851.GB13202@xps15>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <2d59194a-2785-8762-81cd-bef34c6a51ec@arm.com>
Date: Mon, 11 May 2020 18:31:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <20200511165851.GB13202@xps15>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_102610_093198_8A4AC062 
X-CRM114-Status: GOOD (  19.61  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: alexander.shishkin@linux.intel.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, mike.leach@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/11/2020 05:58 PM, Mathieu Poirier wrote:
> Hi Kathiravan,
> 
> On Fri, May 08, 2020 at 03:58:41PM +0530, Kathiravan T wrote:
>> When more than one coresight components uses the obsolete DT bindings,
>> warning is displayed for only one component and not for the others.
>> Lets warn it for all components by replacing dev_warn_once with dev_warn.
>>
>> Signed-off-by: Kathiravan T <kathirav@codeaurora.org>
>> ---
>>   drivers/hwtracing/coresight/coresight-platform.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/hwtracing/coresight/coresight-platform.c b/drivers/hwtracing/coresight/coresight-platform.c
>> index 43418a2..b7d9a02 100644
>> --- a/drivers/hwtracing/coresight/coresight-platform.c
>> +++ b/drivers/hwtracing/coresight/coresight-platform.c
>> @@ -284,7 +284,7 @@ static int of_get_coresight_platform_data(struct device *dev,
>>   	if (!parent) {
>>   		legacy_binding = true;
>>   		parent = node;
>> -		dev_warn_once(dev, "Uses obsolete Coresight DT bindings\n");
>> +		dev_warn(dev, "Uses obsolete Coresight DT bindings\n");
> 
> We made a concious decision to use dev_warn_once() rather than dev_warn().
> There can be a lot of coresight devices on a platform and warning for every
> device doesn't do anything more than adding noise.
> 
> If one device is using obsolete bindings the others very likely to do so as
> well.  While fixing one device, checking the remaining devices should be
> intuitive.

Exactly ! Or someone could repeat the process until all are fixed ;-)

Cheers
Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
