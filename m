Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99EA2190A3D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 11:08:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ujVaftjcbz5a/9Mwaj5pQQvKBWjoA9Zb/pASlcInAmw=; b=lE7MT97Ue7B9gO
	mueGCFs2yGD5HhQuVKqSZsMav7h10+REzE0ERYH0oXJ1JxphNGaHyTyUAoJ2PWOGC1I91FSuo8X/x
	KtGPQyuw+r3vm4784ZTPflI5IvSlRyGitNMuUDPtB7/YoJccJ7nsRn7hoy/gwinVuNTeM6nB1BZCy
	soJPWwrqFt9A5E7JbTnAdLw1+CWuAHlJmlG3XWiJ6SI/t2LzKhn2Yc0JPJKicWs/C2bwkf/CFqePd
	Z62aRtDNE3zjQOyPGJVRxCK2PZNkz0tMAng1lQWwqhZduM6Inp7+ZZFyw8Y9rvt25oP8uDvbJmlZF
	KytVc5pXA3rdtHiViKNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGgUF-0004or-5J; Tue, 24 Mar 2020 10:08:43 +0000
Received: from mail-eopbgr10064.outbound.protection.outlook.com ([40.107.1.64]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGgU4-0004mb-A3
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 10:08:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HMrSjQgMxKQXKZinBB7Gb5w093C+O2kDEkXkRynb4zuJWKVEAr5pocmQC4eyz60TIrsC69eXmoW6ZQKvtHNNXGc7tTNYnF+nBtobkOURTFreBuANN4Dx+D78xEfaoSPwL+OrklI2JtJBEsDZl7df8efFspepF/MUOTmbOmqsQ5Lvj1WKnf76aCD7Pa7wsb/nTlgYYgPKVyFZXS+JwJ4r68Ot6HFQx0hpxTGz/FYgHk7AotUM6rtH2pvSqvuuV4OCb7bBoAeZ0eIAC+2r7CTWT13hBgDqLNoYfMxfLfUezK26Tuol634JD/AhKCqe4O1io8yEKOfcnRvXxv9hxK/4lA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Bh/8FncJI9JkWPn9DHFptrgEWTDFct2oZx7h0spfon0=;
 b=FA6/LsbkJoKtgpClQ2Il5bNM2HaUNafd/87ShZyN/SpQfIvY/Ul3FnwnGwZ0jQ9oqrdQ12S7d02wk0n9YLqGxH6I6xUbji6inX2Uts3EebmX5Rt8aMLnhGKS86dZ6rGV7BRYdtIVASnjyhZo13JhJ6kRoMrvMSF6T8xZG6qbVRbBu41AxwQLcMAHwNIB03QE4Uzka3R72GYiRidBBfdsrHmXej5Yz9/j2JHn3xrdbGpym/fC7G0SrhzHG4yoW1Gjuqc5CMBPondnV/SKa8i4m0dPnzrR1ZPKw0xyDKxTpKDrIVaP1ru51K/QQR0/8S8bXP63Ub3WdfhX/tbxZbUhMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Bh/8FncJI9JkWPn9DHFptrgEWTDFct2oZx7h0spfon0=;
 b=USNvVoW9ULOePXXh69d7IEJBugo8R8R+kHtEetteC7tsdRlYx6RmameVmMbavfN2NaerTV+RuPF9orcpiWuKxL8SfSAqwuY2Z9kwBaH+/7crtbGi3hrG+RpnjIFrU6jaegAzePN6gGcntJqcEqCkupMTFsU/7+LerMN1kEaotWo=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=laurentiu.tudor@nxp.com; 
Received: from AM6PR04MB5925.eurprd04.prod.outlook.com (20.179.2.147) by
 AM6PR04MB4855.eurprd04.prod.outlook.com (20.177.33.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.22; Tue, 24 Mar 2020 10:08:29 +0000
Received: from AM6PR04MB5925.eurprd04.prod.outlook.com
 ([fe80::dd71:5f33:1b21:cd9e]) by AM6PR04MB5925.eurprd04.prod.outlook.com
 ([fe80::dd71:5f33:1b21:cd9e%5]) with mapi id 15.20.2835.023; Tue, 24 Mar 2020
 10:08:29 +0000
Subject: Re: [PATCH 5/9] vfio/fsl-mc: Allow userspace to MMAP fsl-mc device
 MMIO regions
To: Diana Craciun <diana.craciun@oss.nxp.com>, kvm@vger.kernel.org,
 alex.williamson@redhat.com, linux-arm-kernel@lists.infradead.org,
 bharatb.yadav@gmail.com
References: <20200323171911.27178-1-diana.craciun@oss.nxp.com>
 <20200323171911.27178-6-diana.craciun@oss.nxp.com>
From: Laurentiu Tudor <laurentiu.tudor@nxp.com>
Message-ID: <8610166d-fa6c-c324-be8e-c5e6df41dcc6@nxp.com>
Date: Tue, 24 Mar 2020 12:08:27 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
In-Reply-To: <20200323171911.27178-6-diana.craciun@oss.nxp.com>
Content-Language: en-GB
X-ClientProxiedBy: AM5PR0201CA0020.eurprd02.prod.outlook.com
 (2603:10a6:203:3d::30) To AM6PR04MB5925.eurprd04.prod.outlook.com
 (2603:10a6:20b:ab::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.107] (86.121.54.4) by
 AM5PR0201CA0020.eurprd02.prod.outlook.com (2603:10a6:203:3d::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.15 via Frontend
 Transport; Tue, 24 Mar 2020 10:08:28 +0000
X-Originating-IP: [86.121.54.4]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 71e310c6-bcf9-4768-0276-08d7cfdb4cc1
X-MS-TrafficTypeDiagnostic: AM6PR04MB4855:|AM6PR04MB4855:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR04MB48556A17C3400EA4756C90E2ECF10@AM6PR04MB4855.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4502;
X-Forefront-PRVS: 03524FBD26
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(366004)(136003)(39860400002)(346002)(31696002)(52116002)(16576012)(2906002)(6486002)(8676002)(316002)(81166006)(8936002)(86362001)(81156014)(66476007)(31686004)(66556008)(956004)(478600001)(5660300002)(53546011)(186003)(16526019)(36756003)(2616005)(4326008)(66946007)(26005)(44832011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB4855;
 H:AM6PR04MB5925.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: W+yyWmSnfwbmNny8cfTDj6H92gI7wkxQnAHdb/u1zqlTQPHdO54pciCUmqFRiFrdLss/qa5MWySMDPMqMqpABIJeI4NH2dQd0DPbMzqudHhhllGjwPC+7KkMV7hZBK8ZTGQXq+x7w2xWm4wYCJLvg+2YRo0JVCvjd6Y0AISp+32HwdZ/gZiUgnAwSZ5iuTkOZrpPNGIvkIK7IJv5iIvQQSeiynMP+8TjihUfZxVl8kKFw3qNCNUiwFMCnKJ4vFNLQv1lnwXTx+Zvwc3+joAx9+555mEJm7+L2JBYLFrPA+QPKh4GboSdewNa24+Gh7KqWQ6Ygn5U51NrO3HXqJNRi2837xXEX3DCjIspO03e5rhcW9ibzxGfCMBLzn0T/IGbygCCBMTJkam9Wt29/+HBbCOqc/X4nm4clYq4vqcWT0IRTTr29C/foGs2mJQOD5yS
X-MS-Exchange-AntiSpam-MessageData: uJb9IORdQhVpBUbX2pvW+HPK2+Um8ocPpw8gFjDsMTfKBsiF13xxx8O/v1i3oZ+p4uDNeCCTUCM/iKAkQEWlPTVa7X6+Z1rbYT9CCv/Y/BllyvHdbbMiFThO1nfLnefVfA9d+wyv1DVtQlsK4sd6EQ==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 71e310c6-bcf9-4768-0276-08d7cfdb4cc1
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Mar 2020 10:08:29.1168 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Wa3cAFVJiu1Q675Xn6sYTDcN5URMvZUXoQV5FRGQqyfsdT3Q8JnBHQKEKVXxNXQrQFpp0NJULebc7MMGsrHuQA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4855
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_030832_414494_CFAEB2BB 
X-CRM114-Status: GOOD (  18.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.64 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Bharat Bhushan <Bharat.Bhushan@nxp.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 3/23/2020 7:19 PM, Diana Craciun wrote:
> Allow userspace to mmap device regions for direct access of
> fsl-mc devices.
> 
> Signed-off-by: Bharat Bhushan <Bharat.Bhushan@nxp.com>
> Signed-off-by: Diana Craciun <diana.craciun@oss.nxp.com>
> ---
>  drivers/vfio/fsl-mc/vfio_fsl_mc.c         | 64 ++++++++++++++++++++++-
>  drivers/vfio/fsl-mc/vfio_fsl_mc_private.h |  2 +
>  2 files changed, 64 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/vfio/fsl-mc/vfio_fsl_mc.c b/drivers/vfio/fsl-mc/vfio_fsl_mc.c
> index 094df3aa3710..6625b7cb0a3e 100644
> --- a/drivers/vfio/fsl-mc/vfio_fsl_mc.c
> +++ b/drivers/vfio/fsl-mc/vfio_fsl_mc.c
> @@ -31,7 +31,11 @@ static int vfio_fsl_mc_regions_init(struct vfio_fsl_mc_device *vdev)
>  
>  		vdev->regions[i].addr = res->start;
>  		vdev->regions[i].size = PAGE_ALIGN((resource_size(res)));
> -		vdev->regions[i].flags = 0;
> +		vdev->regions[i].flags = VFIO_REGION_INFO_FLAG_MMAP;
> +		vdev->regions[i].flags |= VFIO_REGION_INFO_FLAG_READ;
> +		if (!(mc_dev->regions[i].flags & IORESOURCE_READONLY))
> +			vdev->regions[i].flags |= VFIO_REGION_INFO_FLAG_WRITE;
> +		vdev->regions[i].type = mc_dev->regions[i].flags & IORESOURCE_BITS;
>  	}
>  
>  	vdev->num_regions = mc_dev->obj_desc.region_count;
> @@ -163,9 +167,65 @@ static ssize_t vfio_fsl_mc_write(void *device_data, const char __user *buf,
>  	return -EINVAL;
>  }
>  
> +static int vfio_fsl_mc_mmap_mmio(struct vfio_fsl_mc_region region,
> +				 struct vm_area_struct *vma)
> +{
> +	u64 size = vma->vm_end - vma->vm_start;
> +	u64 pgoff, base;
> +
> +	pgoff = vma->vm_pgoff &
> +		((1U << (VFIO_FSL_MC_OFFSET_SHIFT - PAGE_SHIFT)) - 1);
> +	base = pgoff << PAGE_SHIFT;
> +
> +	if (region.size < PAGE_SIZE || base + size > region.size)
> +		return -EINVAL;
> +
> +	if (!(region.type & VFIO_DPRC_REGION_CACHEABLE))
> +		vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);
> +
> +	vma->vm_pgoff = (region.addr >> PAGE_SHIFT) + pgoff;
> +
> +	return remap_pfn_range(vma, vma->vm_start, vma->vm_pgoff,
> +			       size, vma->vm_page_prot);
> +}
> +
>  static int vfio_fsl_mc_mmap(void *device_data, struct vm_area_struct *vma)
>  {
> -	return -EINVAL;
> +	struct vfio_fsl_mc_device *vdev = device_data;
> +	struct fsl_mc_device *mc_dev = vdev->mc_dev;
> +	unsigned long size, addr;
> +	int index;
> +
> +	index = vma->vm_pgoff >> (VFIO_FSL_MC_OFFSET_SHIFT - PAGE_SHIFT);
> +
> +	if (vma->vm_end < vma->vm_start)
> +		return -EINVAL;
> +	if (vma->vm_start & ~PAGE_MASK)
> +		return -EINVAL;
> +	if (vma->vm_end & ~PAGE_MASK)
> +		return -EINVAL;
> +	if (!(vma->vm_flags & VM_SHARED))
> +		return -EINVAL;
> +	if (index >= vdev->num_regions)
> +		return -EINVAL;
> +
> +	if (!(vdev->regions[index].flags & VFIO_REGION_INFO_FLAG_MMAP))
> +		return -EINVAL;
> +
> +	if (!(vdev->regions[index].flags & VFIO_REGION_INFO_FLAG_READ)
> +			&& (vma->vm_flags & VM_READ))
> +		return -EINVAL;
> +
> +	if (!(vdev->regions[index].flags & VFIO_REGION_INFO_FLAG_WRITE)
> +			&& (vma->vm_flags & VM_WRITE))
> +		return -EINVAL;
> +
> +	addr = vdev->regions[index].addr;
> +	size = vdev->regions[index].size;

These seem unused?

---
Best Regards, Laurentiu

> +	vma->vm_private_data = mc_dev;
> +
> +	return vfio_fsl_mc_mmap_mmio(vdev->regions[index], vma);
>  }
>  
>  static int vfio_fsl_mc_init_device(struct vfio_fsl_mc_device *vdev)
> diff --git a/drivers/vfio/fsl-mc/vfio_fsl_mc_private.h b/drivers/vfio/fsl-mc/vfio_fsl_mc_private.h
> index 764e2cf2c70d..e2a0ccdd8242 100644
> --- a/drivers/vfio/fsl-mc/vfio_fsl_mc_private.h
> +++ b/drivers/vfio/fsl-mc/vfio_fsl_mc_private.h
> @@ -15,6 +15,8 @@
>  #define VFIO_FSL_MC_INDEX_TO_OFFSET(index)	\
>  	((u64)(index) << VFIO_FSL_MC_OFFSET_SHIFT)
>  
> +#define VFIO_DPRC_REGION_CACHEABLE	0x00000001
> +
>  struct vfio_fsl_mc_region {
>  	u32			flags;
>  	u32			type;
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
