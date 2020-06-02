Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34A841EB8A7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 11:39:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SmXuh3CXZ512ysUJGBom4ktQXe0SqmJSEHbdLjeYvCo=; b=IeddrWbrsCUaL2
	UhQhdkmGpVuGmPGsPezG7se0KgVwXWHIGpuHEY3a0oT4i9/q57HtSsCsQxb4CGJU7+LdJG/2+tuSb
	N0Pg9gRfqmxzkoZCEhB+F5xxCLqzGIKMytKrONixpTh+AHNRs3VfCYtOIQuAfK6U55nO/AUTI2Eq/
	fsMQL9gs21MJ+sHc5YvxcyFDwcDxAOQkQnnJYba1QBvvmwIupViOK+cbvTBS4WJryZOLrU303l4E7
	XGCVfWCBYcs+YdOdIPEgRXz9ENLYdN8vxOxpDKqUPiRhtunYgfNXXL32vvqr4RHFOX+Bt/fReTlZG
	6Aydzqe3UiiZAn1kpj0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg3Nq-0005Og-39; Tue, 02 Jun 2020 09:38:58 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg3Ni-0005Nn-Io
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 09:38:52 +0000
Received: by mail-ed1-x541.google.com with SMTP id k19so9518350edv.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jun 2020 02:38:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=W0EAxKYZ1cy7EQz5SmmqXsQnpOBPA6z8vgEtS2GOSuY=;
 b=drH65z9QCFx7VpluTZaPf8cNXvMnji1Zw2v13zTnotv2QHpST54MDbm33aYUQRGTJv
 0QULZlT5uAkEZuTvOhzrSMqJ9YapVqZYDij+6jchFqzqcjtUcMPrwrCgKP7ct/hpwUiK
 Icvl+0uC9vWI4KC69z0KY8jHbZGlZhyLd3kpE57L7bfJ4Cpt8dz+qs04+Y0J/gRKD0gE
 SYD0xd89cpu3EFRcQji9vlrDA7Dv0jvvwKCxGAp1AJ9A5QTEgCe3eZQGd6LNx6AU6Aus
 M68A0D5RvptQcClwn9HKmhlxaZARlTB0HTQQ4CBTd55q9gyNSOhbya3xERNyLzArDc6X
 iOUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=W0EAxKYZ1cy7EQz5SmmqXsQnpOBPA6z8vgEtS2GOSuY=;
 b=mTlNV0GEU71VGYP2TMXuBZiX5iIphKgAohZwsSQo5gezEPMYH+UqEwOGZt93aWVy7J
 1xGX14b1/KcVoAliGeAmhoSF1ubPpkZFmJto7QxeNnLT/8ZdjMUogJy3OO7m7sIwanA2
 /BOmb6kjeyKjt7Jq8Qx+3wnXNZnrby61YOiq5peOfL5+DKZ/WX+48tWbTdbV7lcqkhS6
 +q4KDmAQy3sMIm7GMZNSgb3iHcPrzJ7dHNXixFclxWLnCjCrWJGvGm14HshXOI7tUFKF
 lQQzLZRBSQsl+jON34xJDy91PrPniziWXH4GEn1HubBKoBU9YhflvSCFWiF/trRKz09V
 LlYA==
X-Gm-Message-State: AOAM531JR3GiFncLMP86e0QTX3UAzSW8dAwAl33q80YHVapUUU08K9Br
 ZxwMNMKY6aUIee5DQThwyQ6vmw==
X-Google-Smtp-Source: ABdhPJwh69GX0fxQPd28WCwoX+IJ3u/GdmphexSL7+uh9AzkMYiU+9haAje2FoMpFLt799mKYxxrDw==
X-Received: by 2002:a05:6402:17e6:: with SMTP id
 t6mr24443948edy.243.1591090727183; 
 Tue, 02 Jun 2020 02:38:47 -0700 (PDT)
Received: from myrica ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id j5sm1319532edk.53.2020.06.02.02.38.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Jun 2020 02:38:46 -0700 (PDT)
Date: Tue, 2 Jun 2020 11:38:36 +0200
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>
Subject: Re: [PATCH v7 21/24] iommu/arm-smmu-v3: Add stall support for
 platform devices
Message-ID: <20200602093836.GA1029680@myrica>
References: <20200519175502.2504091-1-jean-philippe@linaro.org>
 <20200519175502.2504091-22-jean-philippe@linaro.org>
 <4741b6c45d1a43b69041ecb5ce0be0d5@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4741b6c45d1a43b69041ecb5ce0be0d5@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_023850_631381_7DDF742D 
X-CRM114-Status: GOOD (  18.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "kevin.tian@intel.com" <kevin.tian@intel.com>,
 "will@kernel.org" <will@kernel.org>,
 "fenghua.yu@intel.com" <fenghua.yu@intel.com>, "jgg@ziepe.ca" <jgg@ziepe.ca>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "felix.kuehling@amd.com" <felix.kuehling@amd.com>,
 "hch@infradead.org" <hch@infradead.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "zhangfei.gao@linaro.org" <zhangfei.gao@linaro.org>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 "christian.koenig@amd.com" <christian.koenig@amd.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shameer,

On Mon, Jun 01, 2020 at 12:42:15PM +0000, Shameerali Kolothum Thodi wrote:
> >  /* IRQ and event handlers */
> > +static int arm_smmu_handle_evt(struct arm_smmu_device *smmu, u64 *evt)
> > +{
> > +	int ret;
> > +	u32 perm = 0;
> > +	struct arm_smmu_master *master;
> > +	bool ssid_valid = evt[0] & EVTQ_0_SSV;
> > +	u8 type = FIELD_GET(EVTQ_0_ID, evt[0]);
> > +	u32 sid = FIELD_GET(EVTQ_0_SID, evt[0]);
> > +	struct iommu_fault_event fault_evt = { };
> > +	struct iommu_fault *flt = &fault_evt.fault;
> > +
> > +	/* Stage-2 is always pinned at the moment */
> > +	if (evt[1] & EVTQ_1_S2)
> > +		return -EFAULT;
> > +
> > +	master = arm_smmu_find_master(smmu, sid);
> > +	if (!master)
> > +		return -EINVAL;
> > +
> > +	if (evt[1] & EVTQ_1_READ)
> > +		perm |= IOMMU_FAULT_PERM_READ;
> > +	else
> > +		perm |= IOMMU_FAULT_PERM_WRITE;
> > +
> > +	if (evt[1] & EVTQ_1_EXEC)
> > +		perm |= IOMMU_FAULT_PERM_EXEC;
> > +
> > +	if (evt[1] & EVTQ_1_PRIV)
> > +		perm |= IOMMU_FAULT_PERM_PRIV;
> > +
> > +	if (evt[1] & EVTQ_1_STALL) {
> > +		flt->type = IOMMU_FAULT_PAGE_REQ;
> > +		flt->prm = (struct iommu_fault_page_request) {
> > +			.flags = IOMMU_FAULT_PAGE_REQUEST_LAST_PAGE,
> > +			.pasid = FIELD_GET(EVTQ_0_SSID, evt[0]),
> > +			.grpid = FIELD_GET(EVTQ_1_STAG, evt[1]),
> > +			.perm = perm,
> > +			.addr = FIELD_GET(EVTQ_2_ADDR, evt[2]),
> > +		};
> > +
> 
> > +		if (ssid_valid)
> > +			flt->prm.flags |= IOMMU_FAULT_PAGE_REQUEST_PASID_VALID;
> 
> Do we need to set this for STALL mode only support? I had an issue with this
> being set on a vSVA POC based on our D06 zip device(which is a "fake " pci dev
> that supports STALL mode but no PRI). The issue is, CMDQ_OP_RESUME doesn't
> have any ssid or SSV params and works on sid and stag only.

I don't understand the problem, arm_smmu_page_response() doesn't set SSID
or SSV when sending a CMDQ_OP_RESUME. Could you detail the flow of a stall
event and RESUME command in your prototype?  Are you getting issues with
the host driver or the guest driver?

We do need to forward the SSV flag all the way to the guest driver, so the
guest can find the faulting address space using the SSID. Once the guest
handled the fault, then we don't send the SSID back to the host as part of
the RESUME command.

Thanks,
Jean

> Hence, it is difficult for
> Qemu SMMUv3 to populate this fields while preparing a page response. I can see
> that this flag is being checked in iopf_handle_single() (patch 04/24) as well. For POC,
> I used a temp fix[1] to work around this. Please let me know your thoughts.
> 
> Thanks,
> Shameer
> 
> 1. https://github.com/hisilicon/kernel-dev/commit/99ff96146e924055f38d97a5897e4becfa378d15
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
