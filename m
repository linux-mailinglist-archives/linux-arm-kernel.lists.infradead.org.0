Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D357A1EBAAE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 13:46:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=00VDNtZtuFeWgyRTmCVuwQbYpbsgMcPBV9ONAlVLybw=; b=KnZ9j2RUCMG+SWxXRBbj7UG+Q
	Gt8RkLS9Z1hIQhzFvhKcq5eXcNjShkM/9Y6Ux0p99D7Hi8mw6oVe9/rmuZ9ahCZ2Nj6pJjpp5sUPm
	uMl/VMuZHxuo2mPoZnqUsr8SH2oLSU8RE1t5BbwRh/SXEVcKXVmqFbF7LQVDlG5kJtsAx3M2XtuOg
	dSl9+BAvYUO0YpcGsRbeg82rDOg8w7IMVp0ve1idtItjrI0qr5QY3XlcYH7rJsndNJ5DwcmSR2Xu/
	Ba+7ZVPTwCadUbwkW7QTmNBpFDXJzL4+LTSxtulwNmaD9ZcNAQQe+oOw+TacW1BNc597ErRJ3x8Fq
	KPx6RFLFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg5NM-0002Nq-1O; Tue, 02 Jun 2020 11:46:36 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg5NB-0002Mg-Hv
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 11:46:27 +0000
Received: by mail-ed1-x544.google.com with SMTP id g1so8943935edv.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jun 2020 04:46:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ics4wOjFIjzNBxAIlnIKnUmEnmyw0rmLzT7c6ne7pSI=;
 b=yijCmqf0VG0ntw+uiPMpdUH4LMWIvqHsCVmInI53fK9mX51SGYwD72IA6DhJmlD97a
 UNj+wr1xk+MpFkSEXLQv8eoO3cAwX2PJr2eu2gMt+Wdvj5/sAsHXbV5SzeGPc9ipSP0Q
 iHfDaFS6bvC9IQ/hqK24QfP+vlNw2yFbtAIcg3kNx4x1y/EZKku2MJwvmhK6aMevkQFs
 8lcMkEWWV5PLBUJ0P4IRbkLYfbsmxy3mAD17T5a69W7H5qUaRUYgujxCLI7dNY/j2CSu
 DluWkc/YGeWTqDa51l8CLmHNfPGrr46903qlPJBuohlTXpBNuzAlqELce9wbsiG2I2+U
 /T8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ics4wOjFIjzNBxAIlnIKnUmEnmyw0rmLzT7c6ne7pSI=;
 b=D/BAdZjbpsy7LRAqeMUZ182Z78DL2lT4mGhuuzzqeqUPOIYl5/pxRCze+pPKPCj6Xp
 4eyn0WK+KwD7UmgLFGRVGXSpJ7FL8YsMwAdEebrkkVKCyR+O6rvsQzXTD2MBeZNsTcPm
 n5EMIywz26n5R9+HT1LXhEZiwnI+6Lo1s+ZIxPYaU/+19TbC+zJdi0gt0AQs2lQ6qrPm
 vRk2XzGbZLWk8WOrd3QiYF/M2o0dWHcj4TETuKC7qhLzt7L/BKq4UWBRz3WhrM+GpT0s
 b2T+W5wc6ANDMoLBvUZpbZDiEwrYRQaBw38V+WjZ9CBQIvVpgkCn4wNXQFDMkXiEhJAX
 l/PA==
X-Gm-Message-State: AOAM533kNYQRnYJX/OihtsWsX6SBCUf8fy4AfOWsuFzI3hngMzwhaU+9
 6SUNAaPjQ0urj9xNdRljsrW5Xg==
X-Google-Smtp-Source: ABdhPJzk9qpnI9yUmwOaxqU5ALMvmfWfI4N5ixuLoClwbRn/ueEUAkkLlMA8Jw8WKqsKsrA7069JbA==
X-Received: by 2002:a05:6402:34e:: with SMTP id
 r14mr14619562edw.351.1591098383894; 
 Tue, 02 Jun 2020 04:46:23 -0700 (PDT)
Received: from myrica ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id h17sm1047269edw.92.2020.06.02.04.46.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Jun 2020 04:46:22 -0700 (PDT)
Date: Tue, 2 Jun 2020 13:46:11 +0200
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>
Subject: Re: [PATCH v7 21/24] iommu/arm-smmu-v3: Add stall support for
 platform devices
Message-ID: <20200602114611.GB1029680@myrica>
References: <20200519175502.2504091-1-jean-philippe@linaro.org>
 <20200519175502.2504091-22-jean-philippe@linaro.org>
 <4741b6c45d1a43b69041ecb5ce0be0d5@huawei.com>
 <20200602093836.GA1029680@myrica>
 <1517c4d97b5849e6b6d32e7d7ed35289@huawei.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="3MwIy2ne0vdjdPXF"
Content-Disposition: inline
In-Reply-To: <1517c4d97b5849e6b6d32e7d7ed35289@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_044625_623951_34E8D5F4 
X-CRM114-Status: GOOD (  39.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
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
 "fenghua.yu@intel.com" <fenghua.yu@intel.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "felix.kuehling@amd.com" <felix.kuehling@amd.com>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 "christian.koenig@amd.com" <christian.koenig@amd.com>,
 "hch@infradead.org" <hch@infradead.org>, "jgg@ziepe.ca" <jgg@ziepe.ca>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "zhangfei.gao@linaro.org" <zhangfei.gao@linaro.org>,
 "will@kernel.org" <will@kernel.org>, "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--3MwIy2ne0vdjdPXF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jun 02, 2020 at 10:31:29AM +0000, Shameerali Kolothum Thodi wrote:
> Hi Jean,
> 
> > -----Original Message-----
> > From: linux-arm-kernel [mailto:linux-arm-kernel-bounces@lists.infradead.org]
> > On Behalf Of Jean-Philippe Brucker
> > Sent: 02 June 2020 10:39
> > To: Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>
> > Cc: devicetree@vger.kernel.org; kevin.tian@intel.com; will@kernel.org;
> > fenghua.yu@intel.com; jgg@ziepe.ca; linux-pci@vger.kernel.org;
> > felix.kuehling@amd.com; hch@infradead.org; linux-mm@kvack.org;
> > iommu@lists.linux-foundation.org; catalin.marinas@arm.com;
> > zhangfei.gao@linaro.org; robin.murphy@arm.com;
> > christian.koenig@amd.com; linux-arm-kernel@lists.infradead.org
> > Subject: Re: [PATCH v7 21/24] iommu/arm-smmu-v3: Add stall support for
> > platform devices
> > 
> > Hi Shameer,
> > 
> > On Mon, Jun 01, 2020 at 12:42:15PM +0000, Shameerali Kolothum Thodi
> > wrote:
> > > >  /* IRQ and event handlers */
> > > > +static int arm_smmu_handle_evt(struct arm_smmu_device *smmu, u64
> > > > +*evt) {
> > > > +	int ret;
> > > > +	u32 perm = 0;
> > > > +	struct arm_smmu_master *master;
> > > > +	bool ssid_valid = evt[0] & EVTQ_0_SSV;
> > > > +	u8 type = FIELD_GET(EVTQ_0_ID, evt[0]);
> > > > +	u32 sid = FIELD_GET(EVTQ_0_SID, evt[0]);
> > > > +	struct iommu_fault_event fault_evt = { };
> > > > +	struct iommu_fault *flt = &fault_evt.fault;
> > > > +
> > > > +	/* Stage-2 is always pinned at the moment */
> > > > +	if (evt[1] & EVTQ_1_S2)
> > > > +		return -EFAULT;
> > > > +
> > > > +	master = arm_smmu_find_master(smmu, sid);
> > > > +	if (!master)
> > > > +		return -EINVAL;
> > > > +
> > > > +	if (evt[1] & EVTQ_1_READ)
> > > > +		perm |= IOMMU_FAULT_PERM_READ;
> > > > +	else
> > > > +		perm |= IOMMU_FAULT_PERM_WRITE;
> > > > +
> > > > +	if (evt[1] & EVTQ_1_EXEC)
> > > > +		perm |= IOMMU_FAULT_PERM_EXEC;
> > > > +
> > > > +	if (evt[1] & EVTQ_1_PRIV)
> > > > +		perm |= IOMMU_FAULT_PERM_PRIV;
> > > > +
> > > > +	if (evt[1] & EVTQ_1_STALL) {
> > > > +		flt->type = IOMMU_FAULT_PAGE_REQ;
> > > > +		flt->prm = (struct iommu_fault_page_request) {
> > > > +			.flags = IOMMU_FAULT_PAGE_REQUEST_LAST_PAGE,
> > > > +			.pasid = FIELD_GET(EVTQ_0_SSID, evt[0]),
> > > > +			.grpid = FIELD_GET(EVTQ_1_STAG, evt[1]),
> > > > +			.perm = perm,
> > > > +			.addr = FIELD_GET(EVTQ_2_ADDR, evt[2]),
> > > > +		};
> > > > +
> > >
> > > > +		if (ssid_valid)
> > > > +			flt->prm.flags |=
> > IOMMU_FAULT_PAGE_REQUEST_PASID_VALID;
> > >
> > > Do we need to set this for STALL mode only support? I had an issue
> > > with this being set on a vSVA POC based on our D06 zip device(which is
> > > a "fake " pci dev that supports STALL mode but no PRI). The issue is,
> > > CMDQ_OP_RESUME doesn't have any ssid or SSV params and works on sid
> > and stag only.
> > 
> > I don't understand the problem, arm_smmu_page_response() doesn't set SSID
> > or SSV when sending a CMDQ_OP_RESUME. Could you detail the flow of a stall
> > event and RESUME command in your prototype?  Are you getting issues with
> > the host driver or the guest driver?
> 
> The issue is on the host side iommu_page_response(). The flow is something like
> below.
> 
> Stall: Host:-
> 
> arm_smmu_handle_evt()
>   iommu_report_device_fault()
>     vfio_pci_iommu_dev_fault_handler()
>       
> Stall: Qemu:-
> 
> vfio_dma_fault_notifier_handler()
>   inject_faults()
>     smmuv3_inject_faults()
> 
> Stall: Guest:-
> 
> arm_smmu_handle_evt()
>   iommu_report_device_fault()
>     iommu_queue_iopf
>   ...
>   iopf_handle_group()
>     iopf_handle_single()
>       handle_mm_fault()
>         iopf_complete()
>            iommu_page_response()
>              arm_smmu_page_response()
>                arm_smmu_cmdq_issue_cmd(CMDQ_OP_RESUME)
> 
> Resume: Qemu:-
> 
> smmuv3_cmdq_consume(SMMU_CMD_RESUME)
>   smmuv3_notify_page_resp()
>     vfio:ioctl(page_response)  --> struct iommu_page_response is filled
>                              with only version, grpid and code.
> 
> Resume: Host:-
>   ioctl(page_response)
>     iommu_page_response()  --> fails as the pending req has PASID_VALID flag
>                              set and it checks for a match.

I believe the fix needs to be here. It's also wrong for PRI since not all
PCIe endpoint require a PASID in the page response. Could you try the
attached patch?

Thanks,
Jean

>       arm_smmu_page_response()
> 
> Hope the above is clear.
> 
> > We do need to forward the SSV flag all the way to the guest driver, so the guest
> > can find the faulting address space using the SSID. Once the guest handled the
> > fault, then we don't send the SSID back to the host as part of the RESUME
> > command.
> 
> True, the guest requires SSV flag to handle the page fault. But, as shown in the
> flow above, the issue is on the host side iommu_page_response() where it
> searches for a matching pending req based on pasid. Not sure we can bypass
> that and call arm_smmu_page_response() directly but then have to delete the
> pending req from the list as well.
> 
> Please let me know if there is a better way to handle the host side page
> response.
> 
> Thanks,
> Shameer
> 
> > Thanks,
> > Jean
> > 
> > > Hence, it is difficult for
> > > Qemu SMMUv3 to populate this fields while preparing a page response. I
> > > can see that this flag is being checked in iopf_handle_single() (patch
> > > 04/24) as well. For POC, I used a temp fix[1] to work around this. Please let
> > me know your thoughts.
> > >
> > > Thanks,
> > > Shameer
> > >
> > > 1.
> > > https://github.com/hisilicon/kernel-dev/commit/99ff96146e924055f38d97a
> > > 5897e4becfa378d15
> > >
> > 
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--3MwIy2ne0vdjdPXF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment;
	filename="0001-iommu-Allow-page-responses-without-PASID.patch"

From 9baf5b9894d4e4be05e665d80fd0ebac8b621aa4 Mon Sep 17 00:00:00 2001
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
Date: Tue, 2 Jun 2020 13:13:27 +0200
Subject: [PATCH] iommu: Allow page responses without PASID

Some PCIe devices do not expect a PASID value in PRI Page Responses. If
the "PRG Response PASID Required" bit in the PRI capability is zero,
then the OS should not set the PASID field. Similarly on Arm SMMU,
responses to stall events do not have a PASID.

Currently iommu_page_response() checks that the PASID in the page
response corresponds to the one in the page request without first
checking the "PASID valid" bit. A page response coming from a guest OS
does not necessarily have a PASID, if the passed-through device does not
require one.

Allow page responses without PASID. The page request corresponding to a
page response is identified by device and by Page Response Group Index
(or stall tag).

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/iommu.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/iommu/iommu.c b/drivers/iommu/iommu.c
index e61a9fc65b7e4..e481fdfafb77c 100644
--- a/drivers/iommu/iommu.c
+++ b/drivers/iommu/iommu.c
@@ -1296,7 +1296,8 @@ int iommu_page_response(struct device *dev,
 	 */
 	list_for_each_entry(evt, &param->fault_param->faults, list) {
 		prm = &evt->fault.prm;
-		pasid_valid = prm->flags & IOMMU_FAULT_PAGE_REQUEST_PASID_VALID;
+		pasid_valid = prm->flags & IOMMU_FAULT_PAGE_REQUEST_PASID_VALID
+			   && msg->flags & IOMMU_PAGE_RESP_PASID_VALID;
 
 		if ((pasid_valid && prm->pasid != msg->pasid) ||
 		    prm->grpid != msg->grpid)
-- 
2.26.2


--3MwIy2ne0vdjdPXF
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--3MwIy2ne0vdjdPXF--

