Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 362C516FB54
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 10:52:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=43ehsf1iHiyr/0GCpRdj2URxP8b6qXHdcTxZYffLkjM=; b=UQPQ5PVB35Xzrp
	Onf3xo0B30eJwkR4fs8Lkc1q4IbIT5dApTdGg0QgjZEhsyfGd39sdQ/IgHzahgw0nlhfvd0o7qJxf
	qVQS9TIdL5lC1JIzuILc8YsdFQX/KbMuks4029nTz/jnQU0zVXwSKMhLhsdXWXDEbNt2kv0a3jdIF
	86C4bteDlZjpV41izRPzUjwCmxNa4RHaJ+y/W0Gvhcn84Q9+w/5uhmrjLjwD4aWW6rxfmfcSWopBL
	7sWrAtghq4kG4HTDG1NfwYOKFt/yNw59js3SzecdPFwZ+PB1pEVXDW37ngfxppqRItXHrMtT86ClY
	unxFPWFpsZP90VFJwqVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6tMJ-0001UR-Fe; Wed, 26 Feb 2020 09:52:03 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6tM4-0001Tm-87
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 09:51:54 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1582710710; h=In-Reply-To: Content-Type: MIME-Version:
 References: Message-ID: Subject: Cc: To: From: Date: Sender;
 bh=POFy3KliRKq8cq0QRv2JZ6k1sTr7/Med4NwvQ/3jSlA=;
 b=HWTd3bJDD6zLKBFfw/xoA7wAm2Y5FFz8+G2AjZ7oVMLCyXqoKkIf4s+7LpXgadzWIxeIxeQA
 GnJHz7Ot3030lcfDkkxQQqz8nY7JxtGAIofvg89a2p3yZTkqfYk9QuRNe1HYU3XRrdkLxoFZ
 kMtkgiBEcBhNXQEtUw/+gWEDvmI=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e563fb0.7faf9ad03e30-smtp-out-n01;
 Wed, 26 Feb 2020 09:51:44 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id E36B1C447A0; Wed, 26 Feb 2020 09:51:43 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from codeaurora.org
 (blr-c-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pkondeti)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id A2010C43383;
 Wed, 26 Feb 2020 09:51:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org A2010C43383
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=pkondeti@codeaurora.org
Date: Wed, 26 Feb 2020 15:21:34 +0530
From: Pavan Kondeti <pkondeti@codeaurora.org>
To: Ionela Voinescu <ionela.voinescu@arm.com>
Subject: Re: [PATCH v4 6/7] arm64: use activity monitors for frequency
 invariance
Message-ID: <20200226095134.GM28029@codeaurora.org>
References: <20200224141142.25445-1-ionela.voinescu@arm.com>
 <20200224141142.25445-7-ionela.voinescu@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200224141142.25445-7-ionela.voinescu@arm.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_015151_007787_3A1F2E59 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, maz@kernel.org, suzuki.poulose@arm.com,
 peterz@infradead.org, catalin.marinas@arm.com, linux-pm@vger.kernel.org,
 linux-doc@vger.kernel.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 dietmar.eggemann@arm.com, mingo@redhat.com, viresh.kumar@linaro.org,
 linux-arm-kernel@lists.infradead.org, sudeep.holla@arm.com, will@kernel.org,
 valentin.schneider@arm.com, lukasz.luba@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 24, 2020 at 02:11:41PM +0000, Ionela Voinescu wrote:

[...]

> +static int __init init_amu_fie(void)
> +{
> +	cpumask_var_t valid_cpus;
> +	bool have_policy = false;
> +	int cpu;
> +
> +	if (!zalloc_cpumask_var(&valid_cpus, GFP_KERNEL) ||
> +	    !zalloc_cpumask_var(&amu_fie_cpus, GFP_KERNEL))
> +		return -ENOMEM;

The patch looks good to me. one minor comment here. In an unlikely
scenario, valid_cpus which is a temporary mask can get allocated
but amu_fie_cpus may not. In that case, we have to free valid_cpus
here. I have seen some static code inspection tools catching these
type of errors. If you happen to rebase this series, fix this.

Thanks,
Pavan

-- 
Qualcomm India Private Limited, on behalf of Qualcomm Innovation Center, Inc.
Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum, a Linux Foundation Collaborative Project.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
