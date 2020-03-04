Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 891171791FE
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 15:10:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l8+kHMFPNQX6EacJDbeISYzuqCV9UTdxozkf2hcSMUw=; b=p4NkcS5qVgnPPR
	UxblSBPCdtxiiZUKIGYd7NACnC8e/ZHxerrmNTMdwv5pZm3p1W95r7uBfM3qEn5HDtpC2XxDwmR0y
	IQ0C0WnUo9R60k9X5amrA5GdTu9s+iut0nbKQTC5FRDkmV6e1RPvfIkS6/xkC7pSsaDtol4/mV9sh
	2RRau9l3y4+gYeg56ffoEuttjOdYd9gAShdN07ZUvRjzMYjLfjCB7Mua5NmYy3omLUffrfGHFkRop
	YW9xTfqVHJSdiZDcUsWpPY9lCweNtZKxGCrPvHs36V+bgPe1qqPmXAHHfB08q1uOAnjcieNfFyrSl
	7aaRQonHPP6WepemQs3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Uip-00064S-TR; Wed, 04 Mar 2020 14:10:03 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9Uig-00063L-8R
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 14:09:55 +0000
Received: by mail-wr1-x444.google.com with SMTP id j7so2535963wrp.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Mar 2020 06:09:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=EpXtvX1PfW3FZz13OtRHOjQvZ2fsaz2TnoP+n0E2ZUg=;
 b=g8SWXvPTyPZzLcsUAC4+i3gEYS7VjOjujoBVioj8kKYK73oXfKh+MAvo8mRWnu071C
 gxiMmhvSdwjKzrw34AWvhgikZX0Hrhz4jre0uVLyzI7CZYL/VDsf5gHJObclPdLagxZi
 s+6qEVWA3DXyXew+YkVb+rgAVC49YN8D3mPAbPfbz2b2vq1fO6ty0UB+H65pdv6FjJ6Y
 v3/70bPC/jxD75YgWO2V9B7pyWv0bv8SImmbScC8XftPtCDEBeJXHlj8SYkcVTIy6y7V
 32lZyBoyNgNFy1f0QHfB5NbM0+cCHEojMhPDvMZmAXMM6fqrb+f7yzzdQe1b3vIru/ak
 r5Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=EpXtvX1PfW3FZz13OtRHOjQvZ2fsaz2TnoP+n0E2ZUg=;
 b=srLBeynC7o5fWsnczO3aZkJx/0I98rztBjfS2SkE4OQy2qrR2GpIygDTYDMACSKJkS
 mFvxJ+xprxaeMzc2TExvtib27xYHb1vypMteaXmb/JqPxrdHnUATrNgB0yuZw46mXoa9
 OlpkGTIqgkvGrarlaAKmP4vhYaC6Auyw/+2gPJo3ZgUPgOaNpDj/EQ9mMmVVyXkjTPa8
 efTi6UrDsxz/vj6U/BmBFiwCJfjODWP99vTj+4t7FPEcRybf6x4mV1NFW/zO896KFD/U
 TpnmZyjmpkr2sH0ySkRs2IzuNPpyQAxu/XsA06E4RjxmrjvWrw4LIc+1/ifUzzMUyX8G
 4VjA==
X-Gm-Message-State: ANhLgQ1vqMirjauHG8kJ0asHA7veEq6Z4lr2YHmvNfqlRFCZHpfCBE75
 QJOzy/IUSTRR/gBQiEaMeNKn5g==
X-Google-Smtp-Source: ADFU+vtZMIq6Jg8tdrdLMObmNELyKi8gzYZ2wKQ8Qt7PTkGgWzXVAaeuMwK7RkrXzELghSD1BcL3DQ==
X-Received: by 2002:adf:e542:: with SMTP id z2mr4532686wrm.150.1583330987727; 
 Wed, 04 Mar 2020 06:09:47 -0800 (PST)
Received: from myrica ([2001:171b:c9a8:fbc0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id q12sm41792293wrg.71.2020.03.04.06.09.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Mar 2020 06:09:46 -0800 (PST)
Date: Wed, 4 Mar 2020 15:09:40 +0100
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Xu Zaibo <xuzaibo@huawei.com>
Subject: Re: [PATCH v4 23/26] iommu/arm-smmu-v3: Add stall support for
 platform devices
Message-ID: <20200304140940.GC646000@myrica>
References: <20200224182401.353359-1-jean-philippe@linaro.org>
 <20200224182401.353359-24-jean-philippe@linaro.org>
 <db6fc8c2-2ff3-631f-2294-c1b49acd27aa@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <db6fc8c2-2ff3-631f-2294-c1b49acd27aa@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_060954_305437_9F053E3C 
X-CRM114-Status: GOOD (  17.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, kevin.tian@intel.com,
 will@kernel.org, Jean-Philippe Brucker <jean-philippe.brucker@arm.com>,
 linux-pci@vger.kernel.org, linux-mm@kvack.org,
 iommu@lists.linux-foundation.org, robh+dt@kernel.org, catalin.marinas@arm.com,
 zhangfei.gao@linaro.org, robin.murphy@arm.com, christian.koenig@amd.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 26, 2020 at 04:44:53PM +0800, Xu Zaibo wrote:
> Hi,
> 
> 
> On 2020/2/25 2:23, Jean-Philippe Brucker wrote:
> > From: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
> > 
> > The SMMU provides a Stall model for handling page faults in platform
> > devices. It is similar to PCI PRI, but doesn't require devices to have
> > their own translation cache. Instead, faulting transactions are parked and
> > the OS is given a chance to fix the page tables and retry the transaction.
> > 
> > Enable stall for devices that support it (opt-in by firmware). When an
> > event corresponds to a translation error, call the IOMMU fault handler. If
> > the fault is recoverable, it will call us back to terminate or continue
> > the stall.
> > 
> > Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> > ---
> >   drivers/iommu/arm-smmu-v3.c | 271 ++++++++++++++++++++++++++++++++++--
> >   drivers/iommu/of_iommu.c    |   5 +-
> >   include/linux/iommu.h       |   2 +
> >   3 files changed, 269 insertions(+), 9 deletions(-)
> > 
> > diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
> > index 6a5987cce03f..da5dda5ba26a 100644
> > --- a/drivers/iommu/arm-smmu-v3.c
> > +++ b/drivers/iommu/arm-smmu-v3.c
> > @@ -374,6 +374,13 @@
> >   #define CMDQ_PRI_1_GRPID		GENMASK_ULL(8, 0)
> >   #define CMDQ_PRI_1_RESP			GENMASK_ULL(13, 12)
> [...]
> > +static int arm_smmu_page_response(struct device *dev,
> > +				  struct iommu_fault_event *unused,
> > +				  struct iommu_page_response *resp)
> > +{
> > +	struct arm_smmu_cmdq_ent cmd = {0};
> > +	struct arm_smmu_master *master = dev_iommu_fwspec_get(dev)->iommu_priv;
> Here can use 'dev_to_master' ?

Certainly, good catch

Thanks,
Jean

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
