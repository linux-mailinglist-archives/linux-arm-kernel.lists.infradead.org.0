Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB9D61A847E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 18:19:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Jr0kKRVO3+NHw9YwCkKxrrlBdg1O5TBRtdoVcxG0ZF0=; b=pFxUs2GbgIQU/BE37+QVXvrR/
	aAhGBKdXkk2Jtexa8RgwdKd9cBJzry7yDrydT/kzTxuMIeG/yPszfK0wa+qS626VJVUz9lQgB+nGC
	YCtIeHUFfIWOafa8P5sbr+VFudRxzxB6vzgYRW2zNbtVe7bVHv5d5KshR9RX/6UEusbcamQWDlFlP
	Dgsvieah1gt3kCAtL2Flwyi6cgYd6Bz4Lew3eadqh2jE0jK8gZtxuGOahavKfRac/Y4WNswhcVrGV
	NIWNXth1IWn4LXH9J0qjwSOzKTEBQBNfYx3BbdgNA9FVNPjiSQnB9PF5KKNLC71BCatjh3o2WF7Ok
	I0oNzvO4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOOH9-00012j-CW; Tue, 14 Apr 2020 16:19:03 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOOGv-00011b-01
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 16:18:58 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1586881131; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=pjzwfTcChHnISigCJHUetoRvOtw8Q36XYbff0pt71XY=;
 b=dVbhOHBAW8S1XODH+8GNu1JH9oKKrg36XUTrpnURORgU8CJbwRSCuwMGvpu3l5OpWw0Iwern
 iB+wdZcokEhzcYRiOgyiqXkImoEZE39WauaOar1ZM0EYZVbkt+XZzzdyNJ3LPI5466WoDUzo
 5dEE00X8fc4sKNWUpNJLDFaeaCY=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e95e25e.7f0219a64d88-smtp-out-n05;
 Tue, 14 Apr 2020 16:18:38 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 02A82C44788; Tue, 14 Apr 2020 16:18:37 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 28FA7C433F2;
 Tue, 14 Apr 2020 16:18:37 +0000 (UTC)
MIME-Version: 1.0
Date: Tue, 14 Apr 2020 21:48:37 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Evan Green <evgreen@chromium.org>
Subject: Re: [PATCH 2/2] iommu/arm-smmu: Allow client devices to select direct
 mapping
In-Reply-To: <CAE=gft7HFBc7XtgiV1hkG-m3ONMUiE2vu8Vg_7Mu1dfe2BjYpA@mail.gmail.com>
References: <cover.1579692800.git.saiprakash.ranjan@codeaurora.org>
 <813cc5b2da10c27db982254b274bf26008a9e6da.1579692800.git.saiprakash.ranjan@codeaurora.org>
 <CAE=gft7HFBc7XtgiV1hkG-m3ONMUiE2vu8Vg_7Mu1dfe2BjYpA@mail.gmail.com>
Message-ID: <eb30fcf85127676e401ca5d83f9a6ad7@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_091851_610385_A3398F35 
X-CRM114-Status: GOOD (  18.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rob Clark <robdclark@gmail.com>, Tomasz Figa <tfiga@chromium.org>,
 Rajendra Nayak <rnayak@codeaurora.org>, Will Deacon <will@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, iommu@lists.linux-foundation.org,
 LKML <linux-kernel@vger.kernel.org>, Jordan Crouse <jcrouse@codeaurora.org>,
 Matthias Kaehlcke <mka@chromium.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Stephen Boyd <swboyd@chromium.org>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Evan,

On 2020-04-14 04:42, Evan Green wrote:
> On Wed, Jan 22, 2020 at 3:48 AM Sai Prakash Ranjan
> <saiprakash.ranjan@codeaurora.org> wrote:
>> 
>> From: Jordan Crouse <jcrouse@codeaurora.org>
>> 
>> Some client devices want to directly map the IOMMU themselves instead
>> of using the DMA domain. Allow those devices to opt in to direct
>> mapping by way of a list of compatible strings.
>> 
>> Signed-off-by: Jordan Crouse <jcrouse@codeaurora.org>
>> Co-developed-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
>> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
>> ---
>>  drivers/iommu/arm-smmu-qcom.c | 39 
>> +++++++++++++++++++++++++++++++++++
>>  drivers/iommu/arm-smmu.c      |  3 +++
>>  drivers/iommu/arm-smmu.h      |  5 +++++
>>  3 files changed, 47 insertions(+)
>> 
>> diff --git a/drivers/iommu/arm-smmu-qcom.c 
>> b/drivers/iommu/arm-smmu-qcom.c
>> index 64a4ab270ab7..ff746acd1c81 100644
>> --- a/drivers/iommu/arm-smmu-qcom.c
>> +++ b/drivers/iommu/arm-smmu-qcom.c
>> @@ -3,6 +3,7 @@
>>   * Copyright (c) 2019, The Linux Foundation. All rights reserved.
>>   */
>> 
>> +#include <linux/of_device.h>
>>  #include <linux/qcom_scm.h>
>> 
>>  #include "arm-smmu.h"
>> @@ -11,6 +12,43 @@ struct qcom_smmu {
>>         struct arm_smmu_device smmu;
>>  };
>> 
>> +static const struct arm_smmu_client_match_data qcom_adreno = {
>> +       .direct_mapping = true,
>> +};
>> +
>> +static const struct arm_smmu_client_match_data qcom_mdss = {
>> +       .direct_mapping = true,
> 
> I don't actually see direct_mapping being used. Shouldn't this member
> be checked somewhere?
> 

Thanks for spotting this, my bad. It should be checked in 
qcom_smmu_request_domain().

diff --git a/drivers/iommu/arm-smmu-qcom.c 
b/drivers/iommu/arm-smmu-qcom.c
index ff746acd1c81..3ff62ca13ad5 100644
--- a/drivers/iommu/arm-smmu-qcom.c
+++ b/drivers/iommu/arm-smmu-qcom.c
@@ -43,7 +43,7 @@ static int qcom_smmu_request_domain(struct device 
*dev)
         const struct arm_smmu_client_match_data *client;

         client = qcom_smmu_client_data(dev);
-       if (client)
+       if (client && client->direct_mapping)
                 iommu_request_dm_for_dev(dev);

         return 0;

-Sai

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a 
member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
