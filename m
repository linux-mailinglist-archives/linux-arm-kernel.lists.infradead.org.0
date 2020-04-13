Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5271F1A6FC7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 01:13:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0UyCKKcjkvsKmkAn6ytcwSbrKn5H1N71K8Yf+ERZW58=; b=c4PW6ICpEabIPU
	574KP2FDU2XYx59j5vEk8Ellyza1fOYHvJ+pCMEUf7ndIMjCLrLKf2LuoHEGrafw9OwbfZ6OGqaa2
	el1693LyyQlhODm55jBX/zaMMPwwUHtyEToz4M3IiYvXSiNn/2k7WXfkDA6DIllxO8QAihdVeYxL3
	OqS1QePu+Clv2jBWO0q2dP1AfkrxmHonhCubID3ETiecmTQS5PSwJeKSd+TdqpEWlCWNR3g/FLVyk
	frM9zRlDcyW46pN929Gr1CMYxtQWZf6z2GF9jYypuUQ6zvJs46jdTTnLHAIK+b3IVzLHu6CsobYAI
	jPAMya6SWBInMFVqN4mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO8Gm-0000qA-64; Mon, 13 Apr 2020 23:13:36 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO8Gd-0000pZ-Je
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 23:13:28 +0000
Received: by mail-lj1-x243.google.com with SMTP id r7so10473785ljg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Apr 2020 16:13:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zXGNQQP4X3VX81J+kdAMQQHyCz96RnLdOdy+FSwZIMU=;
 b=c4eu2TsEdrQ5/05Gmd4JKvLX1E9PqFEvEqAm++vbEwjW5ViflcKiCykyDvWlCsMKip
 Ln9fa5zS5CzsUazSEwGQuS6uLeUtQXeuUsRs8rHx/ZSgb7malGhvFYaTAW3dqdWegXYF
 NDNnFSbGrDUe+wgoG3LKqKNwlWDWgWIuod6Ds=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zXGNQQP4X3VX81J+kdAMQQHyCz96RnLdOdy+FSwZIMU=;
 b=rLQLgkSuTganQsPs2Qs+RYnhckYytj/xrz6k9tWtgGz6Ini8x0MSWMb8W8/k+pBSEw
 llv0VUeuhBwaQ8cc6CXZStXP/MryxnKgdSQukfnTxnyWFlgi8PdqibsYEkmGX6rh7aM3
 5qLi7SP7TeiviFCPsVPAUvIH/fSjGBCkwEvunWOiOKS1m7KFVdJw/Q9E+4y18RBW6sPp
 6FMXd0m1YzsRbwC+0O9q+9JNiu45LnXdpJMk9d299seq6AglAr1jvDoF7hm6NBpnNSYQ
 1qRWKgT4gNoSwRgjYUCW1b8LSNk/XP/lNAqKYHPHqszXOSJRmad68mXyXg9PcDDqtL3z
 m7bw==
X-Gm-Message-State: AGi0PubavDVuK6J54eWpVKw3GKTmaebhShMUtHME6bup2upH9c8t51gB
 JejdqGcmgpfebtBaUUKF6GAH5Pm1H3Y=
X-Google-Smtp-Source: APiQypIEQbmuXNjTG9vtXcI2HqpzQA+bJkVc5mibv0zUmNSKqUu5MQOCJOjNxj3ZtlJAQVpwx9k1vA==
X-Received: by 2002:a2e:a584:: with SMTP id m4mr11910186ljp.194.1586819603446; 
 Mon, 13 Apr 2020 16:13:23 -0700 (PDT)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com.
 [209.85.167.52])
 by smtp.gmail.com with ESMTPSA id c21sm8999388lfh.16.2020.04.13.16.13.22
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 13 Apr 2020 16:13:22 -0700 (PDT)
Received: by mail-lf1-f52.google.com with SMTP id u10so6724260lfo.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Apr 2020 16:13:22 -0700 (PDT)
X-Received: by 2002:a19:4a03:: with SMTP id x3mr11835226lfa.159.1586819601453; 
 Mon, 13 Apr 2020 16:13:21 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1579692800.git.saiprakash.ranjan@codeaurora.org>
 <813cc5b2da10c27db982254b274bf26008a9e6da.1579692800.git.saiprakash.ranjan@codeaurora.org>
In-Reply-To: <813cc5b2da10c27db982254b274bf26008a9e6da.1579692800.git.saiprakash.ranjan@codeaurora.org>
From: Evan Green <evgreen@chromium.org>
Date: Mon, 13 Apr 2020 16:12:44 -0700
X-Gmail-Original-Message-ID: <CAE=gft7HFBc7XtgiV1hkG-m3ONMUiE2vu8Vg_7Mu1dfe2BjYpA@mail.gmail.com>
Message-ID: <CAE=gft7HFBc7XtgiV1hkG-m3ONMUiE2vu8Vg_7Mu1dfe2BjYpA@mail.gmail.com>
Subject: Re: [PATCH 2/2] iommu/arm-smmu: Allow client devices to select direct
 mapping
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_161327_668872_4982BAF8 
X-CRM114-Status: GOOD (  16.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 22, 2020 at 3:48 AM Sai Prakash Ranjan
<saiprakash.ranjan@codeaurora.org> wrote:
>
> From: Jordan Crouse <jcrouse@codeaurora.org>
>
> Some client devices want to directly map the IOMMU themselves instead
> of using the DMA domain. Allow those devices to opt in to direct
> mapping by way of a list of compatible strings.
>
> Signed-off-by: Jordan Crouse <jcrouse@codeaurora.org>
> Co-developed-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---
>  drivers/iommu/arm-smmu-qcom.c | 39 +++++++++++++++++++++++++++++++++++
>  drivers/iommu/arm-smmu.c      |  3 +++
>  drivers/iommu/arm-smmu.h      |  5 +++++
>  3 files changed, 47 insertions(+)
>
> diff --git a/drivers/iommu/arm-smmu-qcom.c b/drivers/iommu/arm-smmu-qcom.c
> index 64a4ab270ab7..ff746acd1c81 100644
> --- a/drivers/iommu/arm-smmu-qcom.c
> +++ b/drivers/iommu/arm-smmu-qcom.c
> @@ -3,6 +3,7 @@
>   * Copyright (c) 2019, The Linux Foundation. All rights reserved.
>   */
>
> +#include <linux/of_device.h>
>  #include <linux/qcom_scm.h>
>
>  #include "arm-smmu.h"
> @@ -11,6 +12,43 @@ struct qcom_smmu {
>         struct arm_smmu_device smmu;
>  };
>
> +static const struct arm_smmu_client_match_data qcom_adreno = {
> +       .direct_mapping = true,
> +};
> +
> +static const struct arm_smmu_client_match_data qcom_mdss = {
> +       .direct_mapping = true,

I don't actually see direct_mapping being used. Shouldn't this member
be checked somewhere?

-Evan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
