Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0267B1E0F20
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 15:10:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=k/di8KK0v+o+u0HQC9j3sVR/Ocayv3oRTJV5KMWca34=; b=bPcGRxcr7ECc69ibxPR7Iu229
	j1k+Gv726+61Hs5HSMwfb+wDrFzJ1MxE82+/kw3A0IwjxNVX5WVM88/8PWTKOoFCNoHmToQ0xRmiK
	/xvIpDT7+adY89WO3XyhpCoU7WQH2hc9L7d83tk9KSqHNGFCMSC3FcHFHIsYr1lP908IE5S3Xe7zW
	1N92cSogyIVxOBUhI9TopBzOC7DBXySJsY2T39Z1ymSR+rCA7cex0vdZva73dZtdeeysslBAFyafZ
	6azHg+w0aM4pguqozEBWTxqwk0Cj6FvelE/6B7vliKxv10EFBAbKCAhx0UQDkZPGU8BaE7XZ7gMm+
	JKy5qxsCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdCsT-0005mM-M6; Mon, 25 May 2020 13:10:49 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdCs9-0005lh-7J
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 13:10:34 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1590412230; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=aF4c3OruqF54AfZxTOJsQX65D8kLmu7DWi/fjq3WVJo=;
 b=cw/0vpnODl8Y/BEYhlG5GLL/IDYNN7QWAyKwBFSjEnYDbCae6I/PyiplpP2nUdbfboUMSlWC
 HcV9ICQt4+1rKt5eOJEwS7L43jMKRMA2V/bofN2+fYxxqUiP2rZQrTtUylb9BNtSgu/tt8NO
 IzaOXV8StiY57xuaLNz3SBFgTQc=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n02.prod.us-west-2.postgun.com with SMTP id
 5ecbc3bc807c16b8395e53eb (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Mon, 25 May 2020 13:10:20
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 1F912C43391; Mon, 25 May 2020 13:10:20 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 7D3D6C433C6;
 Mon, 25 May 2020 13:10:19 +0000 (UTC)
MIME-Version: 1.0
Date: Mon, 25 May 2020 18:40:19 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Joerg Roedel <jroedel@suse.de>
Subject: Re: [PATCH] iommu: Fix group refcount in iommu_alloc_default_domain()
In-Reply-To: <20200525130253.GH5075@suse.de>
References: <20200522130145.30067-1-saiprakash.ranjan@codeaurora.org>
 <20200525130253.GH5075@suse.de>
Message-ID: <132bf1acfb685d34db9caef6f55265de@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_061030_828613_638320E5 
X-CRM114-Status: GOOD (  16.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [104.130.122.26 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-arm-msm@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 linux-kernel@vger.kernel.org, Evan Green <evgreen@chromium.org>,
 Douglas Anderson <dianders@chromium.org>, iommu@lists.linux-foundation.org,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Robin Murphy <robin.murphy@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Joerg,

On 2020-05-25 18:32, Joerg Roedel wrote:
> Hi,
> 
> On Fri, May 22, 2020 at 06:31:45PM +0530, Sai Prakash Ranjan wrote:
>> diff --git a/drivers/iommu/iommu.c b/drivers/iommu/iommu.c
>> index a4c2f122eb8b..05f7b77c432f 100644
>> --- a/drivers/iommu/iommu.c
>> +++ b/drivers/iommu/iommu.c
>> @@ -1491,6 +1491,7 @@ static int iommu_alloc_default_domain(struct 
>> device *dev)
>>  {
>>  	struct iommu_group *group;
>>  	unsigned int type;
>> +	int ret;
>> 
>>  	group = iommu_group_get(dev);
>>  	if (!group)
>> @@ -1501,7 +1502,11 @@ static int iommu_alloc_default_domain(struct 
>> device *dev)
>> 
>>  	type = iommu_get_def_domain_type(dev);
>> 
>> -	return iommu_group_alloc_default_domain(dev->bus, group, type);
>> +	ret = iommu_group_alloc_default_domain(dev->bus, group, type);
>> +
>> +	iommu_group_put(group);
>> +
>> +	return ret;
>>  }
>> 
>>  /**
> 
> Thanks for the report and the fix. I think it is better to fix this by
> not taking a group reference in iommu_alloc_default_domain() at all and
> pass group as a parameter. Please see the patch I just sent out.
> 

Thanks for the patch, it looks like the right thing to do. Testing it
out now.

Thanks,
Sai

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a 
member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
