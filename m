Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1094E1ED4B4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 19:06:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lxQfUQxD0gGhm5DROxd4+Hf8kt+RlCxj5XFvqjZVoQo=; b=Ha8dcqLVRR9+xQ
	b1y/FSL9p6tj466cWGUXxpMIIqu14KVMKQRs7StPSgcGkDwtA2V6l0Coo9bmOdZwx9L6Xviqct2xQ
	0M9aj5JbrOXHpfXrDX6AliBkke26y5M3QPZmuK/4PmVHTaKY1iVTKfWfd10oxvgtaaGCwBj6wZ6ww
	gQMGKz7L1i4CRomPR1Guh04bwYGVhMa3tMud8TEcf/bntlSqP3If7Yr3rVONawd0UYW7VHgDAIWWg
	nbr8WXsg+soh1GCWUS9DIIQ/dk/739dH9ZwEqDkq8g+9QLuiwDECZjLLo4rQkvzsNCE9W/ZOqrIbz
	bzV69nzzb9L3M+Oer1SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgWql-0006nA-QJ; Wed, 03 Jun 2020 17:06:47 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgWqc-0006k6-2o; Wed, 03 Jun 2020 17:06:41 +0000
Received: from pps.filterd (m0098404.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 053H5cOs013441; Wed, 3 Jun 2020 13:06:34 -0400
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com with ESMTP id 31dr8hybfb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 03 Jun 2020 13:06:34 -0400
Received: from m0098404.ppops.net (m0098404.ppops.net [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 053H61kr019644;
 Wed, 3 Jun 2020 13:06:34 -0400
Received: from ppma05fra.de.ibm.com (6c.4a.5195.ip4.static.sl-reverse.com
 [149.81.74.108])
 by mx0a-001b2d01.pphosted.com with ESMTP id 31dr8hybej-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 03 Jun 2020 13:06:33 -0400
Received: from pps.filterd (ppma05fra.de.ibm.com [127.0.0.1])
 by ppma05fra.de.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 053H1HIo026166;
 Wed, 3 Jun 2020 17:06:31 GMT
Received: from b06cxnps4075.portsmouth.uk.ibm.com
 (d06relay12.portsmouth.uk.ibm.com [9.149.109.197])
 by ppma05fra.de.ibm.com with ESMTP id 31bf483e2w-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 03 Jun 2020 17:06:31 +0000
Received: from d06av23.portsmouth.uk.ibm.com (d06av23.portsmouth.uk.ibm.com
 [9.149.105.59])
 by b06cxnps4075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 053H6SvZ852442
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 3 Jun 2020 17:06:29 GMT
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id E31EDA4057;
 Wed,  3 Jun 2020 17:06:28 +0000 (GMT)
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 4197BA404D;
 Wed,  3 Jun 2020 17:06:27 +0000 (GMT)
Received: from linux.ibm.com (unknown [9.145.63.43])
 by d06av23.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Wed,  3 Jun 2020 17:06:27 +0000 (GMT)
Date: Wed, 3 Jun 2020 20:06:24 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Miles Chen <miles.chen@mediatek.com>
Subject: Re: [PATCH] mm/memblock: export max_pfn for kernel modules
Message-ID: <20200603170624.GA202648@linux.ibm.com>
References: <20200603161132.2441-1-miles.chen@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200603161132.2441-1-miles.chen@mediatek.com>
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-06-03_13:2020-06-02,
 2020-06-03 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 suspectscore=1
 adultscore=0 mlxscore=0 spamscore=0 mlxlogscore=999 impostorscore=0
 phishscore=0 lowpriorityscore=0 priorityscore=1501 bulkscore=0
 malwarescore=0 cotscore=-2147483648 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2006030133
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_100638_178796_5EFAB83C 
X-CRM114-Status: GOOD (  17.50  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.156.1 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 04, 2020 at 12:11:32AM +0800, Miles Chen wrote:
> max_pfn is uesd to get the highest pfn in the system. Drivers like
> drivers/iommu/mtk_iommu.c checks max_pfn to see if it should enable
> its "4GB mode".
> 
> This patch exports the max_pfn symbol, so we can build the driver as
> a kernel module.

You can use totalram_pages(), like e.g.
drivers/media/platform/mtk-vpu/mtk_vpu.c:

$ git grep -np totalram_pages drivers/media/
drivers/media/platform/mtk-vpu/mtk_vpu.c=779=static int mtk_vpu_probe(struct platform_device *pdev)
drivers/media/platform/mtk-vpu/mtk_vpu.c:861:   vpu->enable_4GB = !!(totalram_pages() > (SZ_2G >> PAGE_SHIFT));


> Signed-off-by: Miles Chen <miles.chen@mediatek.com>
> ---
>  mm/memblock.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/mm/memblock.c b/mm/memblock.c
> index c79ba6f9920c..3b2b21ecebb6 100644
> --- a/mm/memblock.c
> +++ b/mm/memblock.c
> @@ -99,6 +99,7 @@ EXPORT_SYMBOL(contig_page_data);
>  unsigned long max_low_pfn;
>  unsigned long min_low_pfn;
>  unsigned long max_pfn;
> +EXPORT_SYMBOL(max_pfn);
>  unsigned long long max_possible_pfn;
>  
>  static struct memblock_region memblock_memory_init_regions[INIT_MEMBLOCK_REGIONS] __initdata_memblock;
> -- 
> 2.18.0

-- 
Sincerely yours,
Mike.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
