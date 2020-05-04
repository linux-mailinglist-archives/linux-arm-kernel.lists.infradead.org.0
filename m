Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 522501C3CEF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 16:26:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9/wUen1r4oSuz+psVXIs81E7fzkE0jXYB2v/bEkFnHY=; b=dcgysNCaSiPj4D
	8+cO+qM74lAIy8kxiUFX61Em51dcRqQNxzBWEDdsDVfYIW2t3+YxcdAuiK8sua8zRs3bBxedsatrR
	s8zUrALruLtRBq+0pK6lJCf2qsZmb9bUC6Ebxq1qwKhTiP1W4zEs0WVh9C0VPoeD67EFeE4cIYxkE
	8ExpH0IViWCJ/1ap+7sWJZhPsJGWcKmqkjRBvIU/0ZD/wAF4r9BERqcKTvI62uP1ThGnj/3MT75B2
	wIaAiDS2S1JzuYj2cNisGj5svGp5EG3zPXQV0swGMqFw/czj6WyhqSE+oGs/qDlUS3lWp1Y0dnFiA
	22Pr//XUWDlqdVMLnw+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVc33-0003k4-8n; Mon, 04 May 2020 14:26:21 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVc2m-0003ft-0Z
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 14:26:08 +0000
Received: by mail-wr1-x442.google.com with SMTP id s8so10880003wrt.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 07:26:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=F/z0V3mcBGUp+syXehq8FDmPP6eWJmRKpReZL7dY1ho=;
 b=z1iuPCF+taVGKa11c2yjWNjOpHuDo1RB1E7mbiG1WoVCEMCNh5P8g+itjpP3FUb4gs
 mCE66WIAwk3XxYtzkPIlMa2cgsSYqPT/sHmkzg7ZxXM+z96IIV31FcsFHFSq4qIafaMB
 24lM1ATRxsNNtieYoZwGa57aXFJ3ATXi47XR5U3U8SyqHQfieuZVpCa6NuqP10uVhaer
 GlXWtziftzxxoED82b0x2bP5555Q3FS+QQfHvURtC/EZAjTaNVZME8nZQsu/VQSLGBQV
 3URfU7Lb1juS31WTwwRasil1iZl8t0N/SPOSiqBJE6kdXsxH3add7ofJV2qxRW9qCi7T
 V46g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=F/z0V3mcBGUp+syXehq8FDmPP6eWJmRKpReZL7dY1ho=;
 b=PHIyv9S7BbtgbQ991QZIqoyAQgHQf//agv3/URhyfTtEK9swhCGz8KTorQpTGqM27O
 0H0HsEsaAALKG5RnjbioBm9Lcpxu2Fnjz8qhbvgE+X1Y1lfcSXZivf4vHW7MfHjWd+pJ
 CQzxqyDiYXsTivOpv+qqFpQusVMnXwKHv31cPcksLH3igmtEwNxu+NiRLGKUb70QRLa+
 7hXdbAg9i9kYet8Wm/Zr9SW3mGj0oN9gHB/k8xXbOmyY8EwEVyHsN2O67vvTj5Csrxfx
 P2fcbaexmZwEe8QunMZVogBZiucDwpI5BitzwuDR5mEFChCcNuBhQLlb6icMWg3B6gB/
 2PvQ==
X-Gm-Message-State: AGi0PuawgWvCv/nM/rn3BtVe9qpOB/xDUfCRetZAjLw5I+TzN8pmWyWx
 H/UdJh+YJfwLc/v3DkX0JuZZNxAiY7I=
X-Google-Smtp-Source: APiQypJvR/uVsrLrYsoae/U5bNYqj69oeGktdTlceIG72vmnH3x2R6717uW94oIHTrpwNOfPUuH1bw==
X-Received: by 2002:adf:e745:: with SMTP id c5mr9977426wrn.263.1588602361937; 
 Mon, 04 May 2020 07:26:01 -0700 (PDT)
Received: from myrica ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id a205sm14484714wmh.29.2020.05.04.07.25.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2020 07:26:01 -0700 (PDT)
Date: Mon, 4 May 2020 16:25:48 +0200
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Jacob Pan <jacob.jun.pan@linux.intel.com>
Subject: Re: [PATCH v6 02/25] iommu/ioasid: Add ioasid references
Message-ID: <20200504142548.GB170104@myrica>
References: <20200430143424.2787566-1-jean-philippe@linaro.org>
 <20200430143424.2787566-3-jean-philippe@linaro.org>
 <20200430113931.0fbf7a37@jacob-builder>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430113931.0fbf7a37@jacob-builder>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_072604_072671_DF32F158 
X-CRM114-Status: GOOD (  17.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, kevin.tian@intel.com, jgg@ziepe.ca,
 linux-pci@vger.kernel.org, joro@8bytes.org, Jonathan.Cameron@huawei.com,
 robin.murphy@arm.com, fenghua.yu@intel.com, hch@infradead.org,
 linux-mm@kvack.org, iommu@lists.linux-foundation.org, zhangfei.gao@linaro.org,
 catalin.marinas@arm.com, felix.kuehling@amd.com, xuzaibo@huawei.com,
 will@kernel.org, christian.koenig@amd.com,
 linux-arm-kernel@lists.infradead.org, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 30, 2020 at 11:39:31AM -0700, Jacob Pan wrote:
> > +/**
> > + * ioasid_get - obtain a reference to the IOASID
> > + */
> > +void ioasid_get(ioasid_t ioasid)
> why void? what if the ioasid is not valid.

My intended use was for the caller to get an additional reference when
they're already holding one. So this should always succeed and I'd prefer
a WARN_ON if the ioasid isn't valid rather than returning an error. But if
you intend to add a state to ioasids between dropping refcount and free,
then a return value makes sense.

Thanks,
Jean

> 
> > +{
> > +	struct ioasid_data *ioasid_data;
> > +
> > +	spin_lock(&ioasid_allocator_lock);
> > +	ioasid_data = xa_load(&active_allocator->xa, ioasid);
> > +	if (ioasid_data)
> > +		refcount_inc(&ioasid_data->refs);
> > +	spin_unlock(&ioasid_allocator_lock);
> > +}
> > +EXPORT_SYMBOL_GPL(ioasid_get);
> > +
> >  /**
> >   * ioasid_free - Free an IOASID
> >   * @ioasid: the ID to remove
> > + *
> > + * Put a reference to the IOASID, free it when the number of
> > references drops to
> > + * zero.
> > + *
> > + * Return: %true if the IOASID was freed, %false otherwise.
> >   */
> > -void ioasid_free(ioasid_t ioasid)
> > +bool ioasid_free(ioasid_t ioasid)
> >  {
> > +	bool free = false;
> >  	struct ioasid_data *ioasid_data;
> >  
> >  	spin_lock(&ioasid_allocator_lock);
> > @@ -360,6 +383,10 @@ void ioasid_free(ioasid_t ioasid)
> >  		goto exit_unlock;
> >  	}
> >  
> > +	free = refcount_dec_and_test(&ioasid_data->refs);
> > +	if (!free)
> > +		goto exit_unlock;
> > +
> Just FYI, we may need to add states for the IOASID, i.g. mark the IOASID
> inactive after free. And prohibit ioasid_get() after freed. For VT-d,
> this is useful when KVM queries the IOASID.
> 
> >  	active_allocator->ops->free(ioasid,
> > active_allocator->ops->pdata); /* Custom allocator needs additional
> > steps to free the xa element */ if (active_allocator->flags &
> > IOASID_ALLOCATOR_CUSTOM) { @@ -369,6 +396,7 @@ void
> > ioasid_free(ioasid_t ioasid) 
> >  exit_unlock:
> >  	spin_unlock(&ioasid_allocator_lock);
> > +	return free;
> >  }
> >  EXPORT_SYMBOL_GPL(ioasid_free);
> >  
> 
> [Jacob Pan]

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
