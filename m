Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 293B11074D8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 16:29:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WeJSsORf+kJUPi+2dechWqkWrrogcpQ1kUYw8H6lHsE=; b=SdSGm0xn9MGi1h
	8u6dtnfKkSb8Q0KPpvJOIKx2cH7eEM4rufRwf1BoFuNkaD6HuTaSWdlbrV1cLRRg45DckSat/T+BU
	PjCXVAnBJFOuRdG4x7vC+DXZyu3xMMJU18kJTh6p+16/Dv4UjvtcwPKL8DwWycjqKU+mh4oo2bkXM
	YQeyMiypZFdw+muvegRB+uflJSjI2b3OmZ5ZhctVKz2idhBr+Tn0QhlgKsVHvAITwxt+Mw+7h0Vph
	l2EnTep6MuPXwZ4ni6Xka8wuocN6lOMv4LHqOkj14YrhZ0E3xZRiTIsDp0w8D+AJ9DPmCFgneqh+J
	IrxXnlepIEnX+pRWTiiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYArt-0001nd-AD; Fri, 22 Nov 2019 15:29:09 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYArl-0001n9-TH
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 15:29:03 +0000
Received: by mail-wr1-x444.google.com with SMTP id b18so9080180wrj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 Nov 2019 07:28:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=bulVco3x5RbtgZKCmOeZiFAb5Gkkb3vLwxv8AF+VAkY=;
 b=Q9GzTlqVYlBDZzMNegrITDii27IgR3IK5WfFZHntNMd+fNndRTZvnF0Y9JXBAp02j4
 Q3utWX2LIc6T71HyM443zyXV0xcbCnl+7tukYnqFwJc40A9d02yrOs1la2NUbRKNCzHc
 IoAjBkwePqj9yyEES+NAqG4qSs4BbjDNH0lJH5BxANRbRJaZc6M9jxWOfwf7FAMgGZqa
 IY/IfM2G+F4zOvbk1MFrxQzo4GdIgvSZStHTXJ6+8FpSzNlFpmCsO6KzRp9YXbjUGGsk
 Ech/tSuTMEFaXw+1Hv0u5F0mEbnjnjC0uk2C+xWaC7ZQ4JPuvhOun/zz9+4v8SAroEss
 72Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=bulVco3x5RbtgZKCmOeZiFAb5Gkkb3vLwxv8AF+VAkY=;
 b=DczEzbnJkG/FCRCky8k2yF8WZzMmoUEfo+59Z0oJ5UskUSsF91ZdqmUBhX9kcBXv2n
 pmInlSk+e8NloD8BLTJR7jkhwquXStdz9KWMLF0c3N5NQOrBtAmXe3hIladOTOJzrK77
 QvK4L8YtRusuunpdCbadAQ4F3OmU0QKYWstcuQhwCGhuJwJMhce0t+jdcZU6v79IgcDD
 50J/N3pVeyqdsDcCMrLO9AFrAcT45z1h8N/PdM4Y+rWmluTQ58DqeBu1s2U9+Qql3e2C
 ZGPsXfNCXxQya4ZB9q7tsqeqA35XZzgAtOzSnRLVNA2DQAioOHpWkocjqRdGOld5WJpj
 OCYQ==
X-Gm-Message-State: APjAAAVeSHFIyhB86VHND8Vx7tu2AEb8BFD1bYI4H1Lu4Q5l5DSla+kJ
 GvRYAP64cDf74uzfAhSLzPU8CA==
X-Google-Smtp-Source: APXvYqwOX0Dilhgc/nDjGbOaBj9FTyzevqPcc87fg5C6SHcB5UJa1/dVicXnsRQ/Z3QR3D9DkVOWGQ==
X-Received: by 2002:a5d:5308:: with SMTP id e8mr10812570wrv.77.1574436538287; 
 Fri, 22 Nov 2019 07:28:58 -0800 (PST)
Received: from lophozonia (xdsl-188-155-204-106.adslplus.ch. [188.155.204.106])
 by smtp.gmail.com with ESMTPSA id o21sm3789117wmc.17.2019.11.22.07.28.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Nov 2019 07:28:57 -0800 (PST)
Date: Fri, 22 Nov 2019 16:28:55 +0100
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Jonathan Cameron <jonathan.cameron@huawei.com>
Subject: Re: [PATCH v2 4/8] iommu/arm-smmu-v3: Prepare for SSID support
Message-ID: <20191122152855.GA810215@lophozonia>
References: <20191108152508.4039168-1-jean-philippe@linaro.org>
 <20191108152508.4039168-5-jean-philippe@linaro.org>
 <20191111143811.000006cc@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191111143811.000006cc@huawei.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_072901_974823_DE0F8E7C 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 eric.auger@redhat.com, robin.murphy@arm.com, joro@8bytes.org,
 sudeep.holla@arm.com, rjw@rjwysocki.net, linux-acpi@vger.kernel.org,
 iommu@lists.linux-foundation.org, robh+dt@kernel.org, guohanjun@huawei.com,
 zhangfei.gao@linaro.org, will@kernel.org, linux-arm-kernel@lists.infradead.org,
 lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 11, 2019 at 02:38:11PM +0000, Jonathan Cameron wrote:
> Hmm. There are several different refactors in here alongside a few new
> bits.  Would be nice to break it up more to make life even easier for
> reviewers.   It's not 'so' complex that it's really a problem though
> so could leave it as is if you really want to.

Sure, I'll see if I can split it more in next version.

> > +	table->ptr = dmam_alloc_coherent(smmu->dev, size, &table->ptr_dma,
> > +					 GFP_KERNEL | __GFP_ZERO);
> 
> We dropped dma_zalloc_coherent because we now zero in dma_alloc_coherent
> anyway.  Hence I'm fairly sure that __GFP_ZERO should have no effect.
> 
> https://lore.kernel.org/patchwork/patch/1031536/
> 
> Am I missing some special corner case here?

Here I just copied the GFP flags already in use. But removing all
__GFP_ZERO from the driver would make a good cleanup patch.

> > -	if (smmu_domain->stage == ARM_SMMU_DOMAIN_S1)
> > -		arm_smmu_write_ctx_desc(smmu, &smmu_domain->s1_cfg);
> > -
> 
> Whilst it seems fine, perhaps a note on the 'why' of moving this into
> finalise_s1 would be good in the patch description.

Ok. Since it's only to simplify the handling of allocation failure in a
subsequent patch, I think I'll move that part over there.

Thanks,
Jean

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
