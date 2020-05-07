Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32A061C86B1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 12:28:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dug8uAtljk0scGp1tGbl6AB9VcYZ7XRA0MmisC64sUM=; b=QvL2x9qZ1XBaDupma67TYcMRT
	+7Vq5zwo0isCfUpFkTLM+acM7sJGQgafJlWdda7MQqXf3lM596IHLVEoupWS45xnS2TzT8LSe8cP3
	WtzP6iwpWNwVkqSQ6dRDQ5oPuyYKODWUFZWu/dttBQisBcYybJa6ppGSFOcHyfqCa/4whG1AWsiJG
	1xn0Ot+ccEZK8tmgTEXTaYtV0Ari6Ns8IhlZGLHtcgrpwNOf0I1348YJjPJFH2xrWqlejmXWliSa6
	1jS9/ytl6nAhE3rNj0fyHSMRDU/irKWq/+qVqWXoiLe9MwtBohtGYOqXijPxp1yGJIaTSiNW/qxKT
	sf40mo3cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWdlU-0003xs-Fu; Thu, 07 May 2020 10:28:28 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWdlJ-0003wz-9h
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 10:28:21 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1588847299; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=505A69X26wFMczjQPH01/FWDBb9GRlXXRfy7TtInLmg=;
 b=jbwq7FhvY5B0Z9cN1k2gYshiyGfk6Iau0j0nWfWt5PzlifgCVvZx3+oBeqZoorBNTddvtF7Z
 YmrFRws+de4yZasCc8S+EXRY/ThMKdI4JGgRmorsCTXibmuUUr3wmPtqko6KyixHFCNCPn6T
 OpUqS2oP3ajEyWgfQcyFPpUxYQs=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5eb3e2b8.7f01f4513e68-smtp-out-n03;
 Thu, 07 May 2020 10:28:08 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id C9CC5C433F2; Thu,  7 May 2020 10:28:07 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id E36D5C433F2;
 Thu,  7 May 2020 10:28:06 +0000 (UTC)
MIME-Version: 1.0
Date: Thu, 07 May 2020 15:58:06 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Joerg Roedel <joro@8bytes.org>, Sibi Sankar <sibis@codeaurora.org>, Bjorn
 Andersson <bjorn.andersson@linaro.org>, Jordan Crouse
 <jcrouse@codeaurora.org>, Rob Clark <robdclark@gmail.com>, jroedel@suse.de
Subject: Re: [PATCHv4 0/6] iommu/arm-smmu: Allow client devices to select
 identity mapping
In-Reply-To: <cover.1587407458.git.saiprakash.ranjan@codeaurora.org>
References: <cover.1587407458.git.saiprakash.ranjan@codeaurora.org>
Message-ID: <aa54fd00a6d353c72664e41b7a4a4e3d@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_032819_682084_CCE305E4 
X-CRM114-Status: GOOD (  13.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.26 listed in wl.mailspike.net]
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
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>, Stephen Boyd <swboyd@chromium.org>,
 iommu@lists.linux-foundation.org, Matthias Kaehlcke <mka@chromium.org>,
 linux-arm-msm-owner@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will, Joerg

On 2020-04-21 00:03, Sai Prakash Ranjan wrote:
> This series allows DRM, Modem devices to set a default
> identity mapping in qcom smmu implementation.
> 
> Patch 1 is cleanup to support other SoCs to call into
> QCOM specific  implementation.
> Patch 2 sets the default identity domain for DRM devices.
> Patch 3 implements def_domain_type callback for arm-smmu.
> Patch 4 sets the default identity domain for modem device.
> Patch 5-6 adds the iommus property for mss pil.
> 
> This is based on Joerg's tree:
>  -
> https://git.kernel.org/pub/scm/linux/kernel/git/joro/linux.git/log/?h=iommu-probe-device-v2
> 
> v4:
>  * Updated commit msg for mss pil requesting direct mapping
> 
> v3:
>  * Use arm_smmu_master_cfg to get impl instead of long way as per 
> Robin.
>  * Use def_domain_type name for the callback in arm_smmu_imp as per 
> Robin
> 
> Jordan Crouse (1):
>   iommu/arm-smmu: Allow client devices to select direct mapping
> 
> Sai Prakash Ranjan (2):
>   iommu: arm-smmu-impl: Convert to a generic reset implementation
>   iommu/arm-smmu: Implement iommu_ops->def_domain_type call-back
> 
> Sibi Sankar (3):
>   iommu/arm-smmu-qcom: Request direct mapping for modem device
>   dt-bindings: remoteproc: qcom: Add iommus property
>   arm64: dts: qcom: sdm845-cheza: Add iommus property
> 
>  .../bindings/remoteproc/qcom,q6v5.txt         |  3 ++
>  arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi    |  5 +++
>  drivers/iommu/arm-smmu-impl.c                 |  8 ++--
>  drivers/iommu/arm-smmu-qcom.c                 | 37 +++++++++++++++++--
>  drivers/iommu/arm-smmu.c                      | 12 ++++++
>  drivers/iommu/arm-smmu.h                      |  1 +
>  6 files changed, 60 insertions(+), 6 deletions(-)

This series is reviewed by Robin.
Any chance this series can make it to 5.8?

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
