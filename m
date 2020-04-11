Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B80391A4F16
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Apr 2020 11:20:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vgvXSJkMepvvRNJ2pNi4xoHW2Y094YfHH6KqUJbG1+k=; b=Zbkspri4MnsPZ0XCl6Te0RZLt
	uxEUtAmuV6Gxl1EZy+Ur6fHVBYlz3dBeVyZux2N5pPfl6nSGczvqhfqZLKYzQR74KFQDyC30BcXgr
	cQO0BQf4jbkduumSl3v5k5Dhacjb2SRLng6kTiXzjnlZwbRoNYjwy30/CFHew3WlvLC0JvtukVpB6
	B3zyYcksPqHmRZGUoTC2JD5gQnYkNkw41zR2GKTTFJVVhJx9IrOrxU66pKHZoom5YmfBuhiC426/X
	8B09lyZEPu1dC7uYKZZXmNjmXJTbm/YjHKLffH7KR9wKK2VOc+dRPyhcezDPhbSLDesanVDjhXZZv
	S03AehWLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNCJV-00078P-IO; Sat, 11 Apr 2020 09:20:33 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNCJO-00077r-5B
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Apr 2020 09:20:27 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1586596826; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=m64rlGIY/ze74hM+6TJxI24Fs9sSBQEMm8EnQhf5+Gs=;
 b=nQNDqT082GMujGEtNshnXr3ugqjyryqYkewh5X80l3eaSpxtxxhNVgdQSK+VpmFbOXuXRuro
 R1nt6H9nr2EQ9UqrI9ASVA8Bg/2wG5XRRHfl4Ou13pubhcSB33pTbTLP6BeyxGKOI/XxswWC
 zMn/DC9Ej5/SrdCzBUeivOW5xfc=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e918bce.7f3974b8e848-smtp-out-n01;
 Sat, 11 Apr 2020 09:20:14 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id A4579C44788; Sat, 11 Apr 2020 09:20:13 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 01845C433CB;
 Sat, 11 Apr 2020 09:20:12 +0000 (UTC)
MIME-Version: 1.0
Date: Sat, 11 Apr 2020 14:50:12 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Matthias Kaehlcke <mka@chromium.org>, Will Deacon <will@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 0/2] iommu/arm-smmu: Allow client devices to select direct
 mapping
In-Reply-To: <20200409233124.GW199755@google.com>
References: <cover.1579692800.git.saiprakash.ranjan@codeaurora.org>
 <7761534cdb4f1891d993e73931894a63@codeaurora.org>
 <20200409233124.GW199755@google.com>
Message-ID: <6714ba4f73f6518e5f2f427a0bcc6c53@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_022026_585488_9BD4D29C 
X-CRM114-Status: GOOD (  15.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Tomasz Figa <tfiga@chromium.org>, Rajendra Nayak <rnayak@codeaurora.org>,
 linux-arm-msm@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 Jordan Crouse <jcrouse@codeaurora.org>, iommu@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Rob Clark <robdclark@gmail.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Stephen Boyd <swboyd@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Matthias,

On 2020-04-10 05:01, Matthias Kaehlcke wrote:
> On Tue, Feb 04, 2020 at 11:12:17PM +0530, Sai Prakash Ranjan wrote:
>> Hello Robin, Will
>> 
>> On 2020-01-22 17:18, Sai Prakash Ranjan wrote:
>> > This series allows drm devices to set a default identity
>> > mapping using iommu_request_dm_for_dev(). First patch is
>> > a cleanup to support other SoCs to call into QCOM specific
>> > implementation and preparation for second patch.
>> > Second patch sets the default identity domain for drm devices.
>> >
>> > Jordan Crouse (1):
>> >   iommu/arm-smmu: Allow client devices to select direct mapping
>> >
>> > Sai Prakash Ranjan (1):
>> >   iommu: arm-smmu-impl: Convert to a generic reset implementation
>> >
>> >  drivers/iommu/arm-smmu-impl.c |  8 +++--
>> >  drivers/iommu/arm-smmu-qcom.c | 55 +++++++++++++++++++++++++++++++++--
>> >  drivers/iommu/arm-smmu.c      |  3 ++
>> >  drivers/iommu/arm-smmu.h      |  5 ++++
>> >  4 files changed, 65 insertions(+), 6 deletions(-)
>> 
>> Any review comments?
> 
> Ping
> 
> What is the status of this series, is it ready to land or are any 
> changes
> needed?
> 

I am wondering the same :)

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
