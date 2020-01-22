Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DAFA1453C5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 12:28:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XrfYct73OGUbOwXdZpcAWrb0rnRDysATJXSKc/Eowko=; b=HPMR//fzJew/GZ
	Vsg0Kwo/7/6hn2NEbZQEWs4/qW9tXjyedy+3G2F6JNSXpmtCpWA4pA48OEcfkhryiK1VmGXWRf9Gw
	xjchadYpXze3wWUVRiHT9MkQ9V9pzUox924hvMuEet36LIs/GDOQZCcEoubSz+tUReDi06fa4PWBv
	tpu7mVjkHhz0J2OKMqDhLP52U2EtWvt4/8cK7zUnVK/zSYOvevVRdPEFwAgFRiUbpEsVRZrF6Tm6D
	9YJMkBZMvzLUDjmo1P0ZgWwPF8lt5ou1cvUtgX+uczc3qYNxKBbjKC6HYphllwy+dCaMpJDoM56D0
	Ah3cWibvYKUQ3ASW2xsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuEB5-0005ta-1i; Wed, 22 Jan 2020 11:28:07 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuEAw-0005sv-Ty
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 11:28:00 +0000
Received: by mail-wm1-x343.google.com with SMTP id p17so6793245wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Jan 2020 03:27:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=knvu6hj1YMdRv4GxaaPdJaGKBIjx4ZURVNFJlu663gI=;
 b=QUhRzvJR/E8Tg8y8gbycgQzQNnl76Ro3IiAtj841XZXgVvQ2faPL+5dfpU+bMK/IFf
 CDCtXlucnexvdoSIMlgLH8lexY71sdGS4ofwsyO+epzJOTnSWFPK1Gk9RoTduH2iuv2z
 uihDmhyI4rhOYY2mfozgGc4x+6GC7/SLVFZ7GHZFMERQ+mHsFbNnvHb1Z8YWrHYQ2x5n
 bvKjZlyrBv9YmT3h89o7iw28opeiPeEqwnqWZ0dPU964Fxd4DquHdZoUmm+JoeRkMQCn
 BNZDrzJuQRqwZukt1Q6HBMzVw3yvbjgzv5MWnIYkIF5mRO0U0B1+K0l5k6Apd7qxyEVY
 QJmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=knvu6hj1YMdRv4GxaaPdJaGKBIjx4ZURVNFJlu663gI=;
 b=RZQE7ofYkWfg/0deY/tJCVF50FPQUPq5pxhcxkXevHdS1ES0GhqeGpEraKCt9ISj3n
 NVEWR4sKQjig4qvxSyALSGPMZEFnU1PXg0zsrrvuCur7kHcVmfLqLS9h5+aYWLDwyGaq
 rxDSxX+f6tQXYlMiIXHDcbNfeQhR2Hv1hkT1xBT5KHbnx/YpDx+E3DbGna7LMHadd+4J
 cYDQWt81dARHOEv0aismpMA+cfJtL6G0GVqG3aEzVVnYQDPkgYhEfvMg6YzamWrQXGv7
 2GOBS+/hAhCV8Cpg+Ao7z9uvlUJNbq7aAqtMh2A41SSSj0azG3knMQ39hJ7Tka6FNRrD
 V1lQ==
X-Gm-Message-State: APjAAAUpST94egG0+03LNYhyCpyQbPQONM9OhPGL5/nSvm4FBXAXOf7e
 g5SWcFAvemlygMc9kkNEoMc4YyhP2ZM=
X-Google-Smtp-Source: APXvYqwWtRST1C66yMeWxDBk4S6jeuNNRCmbja2XQ6zWcWnM1yCeh4Ts9WlBoKEdUq+IeB7iVVgukw==
X-Received: by 2002:a1c:f20c:: with SMTP id s12mr2450662wmc.173.1579692477218; 
 Wed, 22 Jan 2020 03:27:57 -0800 (PST)
Received: from myrica ([2001:171b:c9ad:af70:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id q6sm60111383wrx.72.2020.01.22.03.27.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Jan 2020 03:27:56 -0800 (PST)
Date: Wed, 22 Jan 2020 12:27:51 +0100
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] iommu/arm-smmu-v3: Batch ATC invalidation commands
Message-ID: <20200122112751.GA635551@myrica>
References: <20200113143906.11121-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200113143906.11121-1-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_032758_997430_A7CDE59D 
X-CRM114-Status: GOOD (  18.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Robin Murphy <robin.murphy@arm.com>, iommu@lists.linux-foundation.org,
 Will Deacon <will@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On Mon, Jan 13, 2020 at 08:39:06AM -0600, Rob Herring wrote:
> Similar to commit 2af2e72b18b4 ("iommu/arm-smmu-v3: Defer TLB
> invalidation until ->iotlb_sync()"), build up a list of ATC invalidation
> commands and submit them all at once to the command queue instead of
> one-by-one.
> 
> Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>
> Cc: Will Deacon <will@kernel.org>
> Cc: Robin Murphy <robin.murphy@arm.com>
> Cc: Joerg Roedel <joro@8bytes.org>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  drivers/iommu/arm-smmu-v3.c | 23 +++++++++++++++++++----
>  1 file changed, 19 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
> index effe72eb89e7..e91b4a098215 100644
> --- a/drivers/iommu/arm-smmu-v3.c
> +++ b/drivers/iommu/arm-smmu-v3.c
> @@ -1919,10 +1919,11 @@ static int arm_smmu_atc_inv_master(struct arm_smmu_master *master,
>  static int arm_smmu_atc_inv_domain(struct arm_smmu_domain *smmu_domain,
>  				   int ssid, unsigned long iova, size_t size)
>  {
> -	int ret = 0;
> +	int i, cmdn = 0;
>  	unsigned long flags;
>  	struct arm_smmu_cmdq_ent cmd;
>  	struct arm_smmu_master *master;
> +	u64 cmds[CMDQ_BATCH_ENTRIES * CMDQ_ENT_DWORDS];
>  
>  	if (!(smmu_domain->smmu->features & ARM_SMMU_FEAT_ATS))
>  		return 0;
> @@ -1947,11 +1948,25 @@ static int arm_smmu_atc_inv_domain(struct arm_smmu_domain *smmu_domain,
>  	arm_smmu_atc_inv_to_cmd(ssid, iova, size, &cmd);
>  
>  	spin_lock_irqsave(&smmu_domain->devices_lock, flags);
> -	list_for_each_entry(master, &smmu_domain->devices, domain_head)
> -		ret |= arm_smmu_atc_inv_master(master, &cmd);

It may be worth reworking arm_smmu_atc_inv_master() as well since it's now
only called by arm_smmu_disable_ats() to invalidate the whole ATC. I don't
think it requires batching (it's not on any fast path and num_sids will
almost always be 1), but it doesn't need the cmd argument anymore.

Thanks,
Jean

> +	list_for_each_entry(master, &smmu_domain->devices, domain_head) {
> +		if (!master->ats_enabled)
> +			continue;
> +
> +		for (i = 0; i < master->num_sids; i++) {
> +			if (cmdn == CMDQ_BATCH_ENTRIES) {
> +				arm_smmu_cmdq_issue_cmdlist(smmu_domain->smmu,
> +					cmds, cmdn, false);
> +				cmdn = 0;
> +			}
> +
> +			cmd.atc.sid = master->sids[i];
> +			arm_smmu_cmdq_build_cmd(&cmds[cmdn * CMDQ_ENT_DWORDS], &cmd);
> +			cmdn++;
> +		}
> +	}
>  	spin_unlock_irqrestore(&smmu_domain->devices_lock, flags);
>  
> -	return ret ? -ETIMEDOUT : 0;
> +	return arm_smmu_cmdq_issue_cmdlist(smmu_domain->smmu, cmds, cmdn, true);
>  }
>  
>  /* IO_PGTABLE API */
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
