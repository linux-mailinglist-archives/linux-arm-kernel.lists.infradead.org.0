Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA1CB2213
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 16:37:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=epBPg7ps5nbQ0SV8KtC1zAEz9uh7uapdcHymrnG1QU8=; b=X0SJLYrBsoi2EH
	BOOZZWRREQO3Tykg+Ud98XQn8bCN6Y6d+Ox8WGsOgXlI3NOe81bDOiMlkV8m6h+qZG0wNHoZS0gag
	aZsMiWR7DLQXRiqivygRNkdtR1d1/oWS3XgjqlgzqjilEKaAwMapVfFkNHxJk+GKMJhZUNA263zkh
	oc7Noa6OJqXfm0bmOboSeGK2iZD56Rp8Vyjj/UuuxvgK/0dMPDds4Kbvb2LO+3va8BEeWMgVNrJ9q
	UCOPm8oYB39kRP7J+ierbPT7bjjGlkPLJQIrn7q9rlP0NgIWUkzgJrDX51lnNSbqhdbE9CC73+Dgn
	98amBfA239WqUXLDYbww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8mhA-0002kc-Fz; Fri, 13 Sep 2019 14:37:08 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8mfT-0001g0-Er
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 14:35:25 +0000
Received: by mail-qk1-x743.google.com with SMTP id w2so5513528qkf.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Sep 2019 07:35:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9Z6EfKc/tiAqCe5nrG0CEyU7I6TZY+4MO6IYTk9GKp4=;
 b=HXxFGlzHNUOzcVXhTjcVeZmsY2axuZDsxqSpeSdttKnUjeABS7vFI9wGZqOFaDjiFy
 rjtdYtiDL+6Um4ZCqTtpgMSJ4ZlzzX9/lEtFFr2nMNVwUbpKTTyz9rk2OMPEFWVeZHMY
 2l4z+kT583DhzTXTow3J1EUhDrWBRfKLG4tQSJ38xy2n1lUEe8+LItcUZVur7IKH/J8m
 1CjuFwK+mZhj/eKSvyJl7EmoNpU6xaAZUxykHNyleehJ0XF8W5NKkiCbloVGmSa/D3s6
 VQ3bJ8piHxWlkM5Y/czZiuGiEitm7NBMSrCyNXjAdPwpM409Rdq+yAWEsZ7xLHz4VMMT
 0/0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9Z6EfKc/tiAqCe5nrG0CEyU7I6TZY+4MO6IYTk9GKp4=;
 b=Xp0TvzE/UqsyM7kb0sAIq1yN2URRgi6VpJMnmNsVXC636Dy0FIPRzC1qkMk/jLF2Fa
 adrSNpIjLLMisg0FxJGvxNKIM6Qxnmw3+HE1icjsebh5TDj175xB4FUfADftHrCn2DXc
 2p7gPwYfo0m+t1HJyhR5KpojJHbvB9OXqw9q9McJezpQ3qGxI3F+XN/KAfrjD+mhlEdo
 VpLkqL+HqRMFJN8lZ73j7hM9qQwGgR/C8ZHAmIsMURlpuHTCVRzMfMLNdd69RKGQYNTY
 Hx6fWgxZmLrROlx2sMQRRI0u0Uv8Me4tyvTFRxOxf8eR+PpByUf29CBRU7KynWK8pHbC
 RgdQ==
X-Gm-Message-State: APjAAAV5ZlfKzg4wokjrVUAD27q7lNdwiyAEo4RwvZk+H1rsQw2P6cn1
 DXhWAMQs4mztfutEKOS5vmd8oQ==
X-Google-Smtp-Source: APXvYqzFSI15WScpD6Ky3Htl5LWDtXBTh2C4ek5k+asPOfoOylHjTbFZaJGuOFuZAgXEhDc5477Zdg==
X-Received: by 2002:a05:620a:49b:: with SMTP id
 27mr33288710qkr.89.1568385320693; 
 Fri, 13 Sep 2019 07:35:20 -0700 (PDT)
Received: from dhcp-41-57.bos.redhat.com (nat-pool-bos-t.redhat.com.
 [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id v2sm10601115qtv.22.2019.09.13.07.35.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 13 Sep 2019 07:35:20 -0700 (PDT)
Message-ID: <1568385318.5576.146.camel@lca.pw>
Subject: Re: [PATCH] iommu/arm-smmu: Report USF more clearly
From: Qian Cai <cai@lca.pw>
To: Robin Murphy <robin.murphy@arm.com>, will@kernel.org, joro@8bytes.org
Date: Fri, 13 Sep 2019 10:35:18 -0400
In-Reply-To: <2762ffd4c196dc91d62e10eb8b753f256ea9b629.1568375317.git.robin.murphy@arm.com>
References: <2762ffd4c196dc91d62e10eb8b753f256ea9b629.1568375317.git.robin.murphy@arm.com>
X-Mailer: Evolution 3.22.6 (3.22.6-10.el7) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_073523_714241_2A5F81A7 
X-CRM114-Status: GOOD (  15.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: iommu@lists.linux-foundation.org, Douglas Anderson <dianders@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-09-13 at 12:48 +0100, Robin Murphy wrote:
> Although CONFIG_ARM_SMMU_DISABLE_BYPASS_BY_DEFAULT is a welcome tool
> for smoking out inadequate firmware, the failure mode is non-obvious
> and can be confusing for end users. Add some special-case reporting of
> Unidentified Stream Faults to help clarify this particular symptom.
> 
> CC: Douglas Anderson <dianders@chromium.org>
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  drivers/iommu/arm-smmu.c | 5 +++++
>  drivers/iommu/arm-smmu.h | 2 ++
>  2 files changed, 7 insertions(+)
> 
> diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> index b7cf24402a94..76ac8c180695 100644
> --- a/drivers/iommu/arm-smmu.c
> +++ b/drivers/iommu/arm-smmu.c
> @@ -499,6 +499,11 @@ static irqreturn_t arm_smmu_global_fault(int irq, void *dev)
>  	dev_err_ratelimited(smmu->dev,
>  		"\tGFSR 0x%08x, GFSYNR0 0x%08x, GFSYNR1 0x%08x, GFSYNR2 0x%08x\n",
>  		gfsr, gfsynr0, gfsynr1, gfsynr2);
> +	if (IS_ENABLED(CONFIG_ARM_SMMU_DISABLE_BYPASS_BY_DEFAULT) &&
> +	    (gfsr & sGFSR_USF))
> +		dev_err_ratelimited(smmu->dev,
> +			"Stream ID %hu may not be described by firmware, try booting with \"arm-smmu.disable_bypass=0\"\n",
> +			(u16)gfsynr1);

dev_err_once(), i.e., don't need to remind people to set "arm-
smmu.disable_bypass=0" multiple times.

>  
>  	arm_smmu_gr0_write(smmu, ARM_SMMU_GR0_sGFSR, gfsr);
>  	return IRQ_HANDLED;
> diff --git a/drivers/iommu/arm-smmu.h b/drivers/iommu/arm-smmu.h
> index c9c13b5785f2..46f7e161e83e 100644
> --- a/drivers/iommu/arm-smmu.h
> +++ b/drivers/iommu/arm-smmu.h
> @@ -79,6 +79,8 @@
>  #define ID7_MINOR			GENMASK(3, 0)
>  
>  #define ARM_SMMU_GR0_sGFSR		0x48
> +#define sGFSR_USF			BIT(2)
> +
>  #define ARM_SMMU_GR0_sGFSYNR0		0x50
>  #define ARM_SMMU_GR0_sGFSYNR1		0x54
>  #define ARM_SMMU_GR0_sGFSYNR2		0x58

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
