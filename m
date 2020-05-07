Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEBE71C879B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 13:08:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ETgMPUjVKhEAm7I/nEvq64pFpkI9EEItt8CvjhmgzAI=; b=HVL+5+OLwLp4aJNNusN1mO2fE
	9YrLS4SUghi0OK3MggWfzj+HxuY4wX0APvX3/zur7E0UNUpf9Y+vqbGviGdpXCMVUmJNJCVlidtxZ
	o8CP5hPRzruBO4O3TMsYnMuaeVPxDRlaVDn/EqfpeLzBNdGMQCqDn6DHznssDQ4AoE5JOggo+a3rB
	CjOQMSm05o9PyhDPK4iTJkkJCVAErac8gANilqyITUH1DfdgKdOcn1kDKY4XW684NYW5lJbPNIVPu
	YARfYONrc1A4Jf90qZzbd4k3/dYVOEydh9tULKFyU1L3NvWJQcyOk87JSzfcEyipFcLi8l5qSqdDH
	aqCCxZ6wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWeOK-000381-Oa; Thu, 07 May 2020 11:08:36 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWeOA-00037C-VO
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 11:08:31 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1588849709; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=gMmW7XurMTP82sFXTk8ae/eelAs13yx3uauX9ImYmK0=;
 b=NTkO+N4nBFvIi8n2grTl18+II4bEA1zSeNmModuTOVNjtrYv15AL1y3tRWNn+Dol81gGqoVz
 iQ7VnI+r4kdXsIJ0iBfDnl4s83vSR9TtvWTfpbzuL8kuCZcqPCgRa7uwHau5TWBtRupfHIdS
 O/pISFLyb4tCJvrWTNXiG+Y2WpU=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5eb3ec12.7f1e7cbf0148-smtp-out-n02;
 Thu, 07 May 2020 11:08:02 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id BC905C4478C; Thu,  7 May 2020 11:08:01 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id BAB7DC433F2;
 Thu,  7 May 2020 11:08:00 +0000 (UTC)
MIME-Version: 1.0
Date: Thu, 07 May 2020 16:38:00 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCHv4 0/6] iommu/arm-smmu: Allow client devices to select
 identity mapping
In-Reply-To: <20200507103129.GA29541@willie-the-truck>
References: <cover.1587407458.git.saiprakash.ranjan@codeaurora.org>
 <aa54fd00a6d353c72664e41b7a4a4e3d@codeaurora.org>
 <20200507103129.GA29541@willie-the-truck>
Message-ID: <84efe9b60e1d7d440e0b5c1777d4eec6@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_040829_961866_A216F341 
X-CRM114-Status: GOOD (  16.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.27 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: jroedel@suse.de, linux-kernel@vger.kernel.org,
 Joerg Roedel <joro@8bytes.org>, Jordan Crouse <jcrouse@codeaurora.org>,
 iommu@lists.linux-foundation.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Clark <robdclark@gmail.com>, Matthias Kaehlcke <mka@chromium.org>,
 Evan Green <evgreen@chromium.org>, Sibi Sankar <sibis@codeaurora.org>,
 linux-arm-msm@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-msm-owner@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

On 2020-05-07 16:01, Will Deacon wrote:
> On Thu, May 07, 2020 at 03:58:06PM +0530, Sai Prakash Ranjan wrote:
>> Hi Will, Joerg
>> 
>> On 2020-04-21 00:03, Sai Prakash Ranjan wrote:
>> > This series allows DRM, Modem devices to set a default
>> > identity mapping in qcom smmu implementation.
>> >
>> > Patch 1 is cleanup to support other SoCs to call into
>> > QCOM specific  implementation.
>> > Patch 2 sets the default identity domain for DRM devices.
>> > Patch 3 implements def_domain_type callback for arm-smmu.
>> > Patch 4 sets the default identity domain for modem device.
>> > Patch 5-6 adds the iommus property for mss pil.
>> >
>> > This is based on Joerg's tree:
>> >  -
>> > https://git.kernel.org/pub/scm/linux/kernel/git/joro/linux.git/log/?h=iommu-probe-device-v2
>> >
>> > v4:
>> >  * Updated commit msg for mss pil requesting direct mapping
>> >
>> > v3:
>> >  * Use arm_smmu_master_cfg to get impl instead of long way as per Robin.
>> >  * Use def_domain_type name for the callback in arm_smmu_imp as per
>> > Robin
>> >
>> > Jordan Crouse (1):
>> >   iommu/arm-smmu: Allow client devices to select direct mapping
>> >
>> > Sai Prakash Ranjan (2):
>> >   iommu: arm-smmu-impl: Convert to a generic reset implementation
>> >   iommu/arm-smmu: Implement iommu_ops->def_domain_type call-back
>> >
>> > Sibi Sankar (3):
>> >   iommu/arm-smmu-qcom: Request direct mapping for modem device
>> >   dt-bindings: remoteproc: qcom: Add iommus property
>> >   arm64: dts: qcom: sdm845-cheza: Add iommus property
>> >
>> >  .../bindings/remoteproc/qcom,q6v5.txt         |  3 ++
>> >  arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi    |  5 +++
>> >  drivers/iommu/arm-smmu-impl.c                 |  8 ++--
>> >  drivers/iommu/arm-smmu-qcom.c                 | 37 +++++++++++++++++--
>> >  drivers/iommu/arm-smmu.c                      | 12 ++++++
>> >  drivers/iommu/arm-smmu.h                      |  1 +
>> >  6 files changed, 60 insertions(+), 6 deletions(-)
>> 
>> This series is reviewed by Robin.
>> Any chance this series can make it to 5.8?
> 
> I'm planning to queue smmu stuff next week, been busy with arm64 stuff
> so far, sorry.
> 

No problem at all, thought of reminding once just in case.

Thanks
Sai

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a 
member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
