Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F841EC7C3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 05:24:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RH1S4LqLN3TxxdL0qCpwQF6INc9llyBcj75yrsyyAY8=; b=OY+rRxHy7NADMD
	61IZteUk8KVRPhC+LTI9zP7loJdMuDubJgpeeTCaqwF8C4zcQ+hoRvr59/ClAKy8YrszsESYrmwe5
	Evgq447ViMwQVoLqQdo9ZmN59cNYd4YUWZX4X4B1nSudj7hTnOXi1UDklKDzCmtSULZD9peqXPRpU
	E5Xw96CSL2ea9z/TAJkVUngfDaRGn7CwRlAwdXugjah55azpNFXGXyUHdOTgdv+j06YbD8nDWC6WK
	4mYdcd31yKDCuhukRfIi10UgzOTnokDvB1GzIownJ4dqhtpwW3mtNxhYDsFqZesIEL4ZNdbSU6TcE
	zLSAVPlU/8fVyxyceUtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgK0p-0007zQ-Ue; Wed, 03 Jun 2020 03:24:20 +0000
Received: from mx0b-00082601.pphosted.com ([67.231.153.30]
 helo=mx0a-00082601.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgK0g-0007yr-Un
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 03:24:12 +0000
Received: from pps.filterd (m0001303.ppops.net [127.0.0.1])
 by m0001303.ppops.net (8.16.0.42/8.16.0.42) with SMTP id 0533DnYY010998;
 Tue, 2 Jun 2020 20:22:25 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com;
 h=date : from : to : cc :
 subject : message-id : references : content-type : in-reply-to :
 mime-version; s=facebook; bh=zbGG/PNuS0Ddo/tqnRwkl7V0MeS0ved7nGwtiiC1XYI=;
 b=Od6033S81ZztH9Pgvx9m7MxU+QUwhEaxN4nGzRqN5R+LlonE/VmQ+TDp8gzxBOPrlIwb
 DfL6Y0QcZ96QLqAQD3MDWi43gQmklfmltL36SER2wKchNGHbq4/0fbv6DcZntHIJ+gf+
 fWyqRTrfg7hCEqtoLAbPbh8l3lqAoN9INYY= 
Received: from mail.thefacebook.com ([163.114.132.120])
 by m0001303.ppops.net with ESMTP id 31bk5npkxu-11
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Tue, 02 Jun 2020 20:22:25 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (100.104.98.9) by
 o365-in.thefacebook.com (100.104.94.230) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 2 Jun 2020 20:22:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GnncRHK093QtCvHEGBXRZGjSsP84I5mrCkKqf3IBWUOfUidGIyAWSU/nXO316jyfDkfarFIvj/23lsH0DZR6FIe7ayd2XfbinlA/t57aTcQMrDM1i5Y3DYK0JKX97xslHFpEMYxsd3ZeU99nGwA7s7lXJJe8Mr7CjhDAwlquKnhOcr8L1h0FlSPBXFlAbpXtWddiydAoai0Fcb7Ko7KCD3lytKDvcNJQn5Bzw0GRYLQ2gxnD8ujWOpgPTzvmdmjKurKkIGtax2WUWO0JeKMeR4DwHzvDQxZyASr9EBa1VHpN2AcJVWYhYktZPKc96oPwqq0/Ng/n3grumq5dyFUqig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zbGG/PNuS0Ddo/tqnRwkl7V0MeS0ved7nGwtiiC1XYI=;
 b=KxeYYxxmX0WS0YVL/jJES2Wfj2xTH8sHGcOxN+JNoeTEEzTRbzedKdARzqB/+BswmizdDMK4I4rX3KxdElI7DeSgOAB6CzLex+ObF14uRUR2tA4CUstzcKudUFExcrn5svk3ZokIMsA6gIDqH70XebaiUTLDEVngrDsOgUOwsXWwM3kN2pw/J9SDA29v6cvb390K+Dgkiqf2MyYwss31r5vLPbKp7SHE6XN3aHG+FNZfUUagNyMoQtIN9gujj88zR4OJWnKau3vn7HMvuWosBVcvZBrlcbAB+WzUEUFqXbzfM0yFOfmERts9mStkxrEnppDLlSBTBVPQlBnBkjH8tQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.onmicrosoft.com;
 s=selector2-fb-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zbGG/PNuS0Ddo/tqnRwkl7V0MeS0ved7nGwtiiC1XYI=;
 b=Mh7Cw6/w8aUadl3LtSK4zz7M/7+xasDG1EXTDnM1gLn0egDtkhKu0ljPqJW9MymSa6vkmq2lD891tnr9NoBmKhoWW/JBZeIjyazBfI1z37TpfVYNzpla2Hyjm4Ib9osrBBLZMMRVqwV8fjHoY0Tnu0tL0YAQgLPdTrEgjIBhMBY=
Authentication-Results: hisilicon.com; dkim=none (message not signed)
 header.d=none;hisilicon.com; dmarc=none action=none header.from=fb.com;
Received: from BYAPR15MB4136.namprd15.prod.outlook.com (2603:10b6:a03:96::24)
 by BYAPR15MB2775.namprd15.prod.outlook.com (2603:10b6:a03:15a::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.22; Wed, 3 Jun
 2020 03:22:22 +0000
Received: from BYAPR15MB4136.namprd15.prod.outlook.com
 ([fe80::48e3:c159:703d:a2f1]) by BYAPR15MB4136.namprd15.prod.outlook.com
 ([fe80::48e3:c159:703d:a2f1%5]) with mapi id 15.20.3066.018; Wed, 3 Jun 2020
 03:22:22 +0000
Date: Tue, 2 Jun 2020 20:22:19 -0700
From: Roman Gushchin <guro@fb.com>
To: Barry Song <song.bao.hua@hisilicon.com>
Subject: Re: [PATCH 2/3] arm64: mm: reserve hugetlb CMA after numa_init
Message-ID: <20200603032219.GA548147@carbon.lan>
References: <20200603024231.61748-1-song.bao.hua@hisilicon.com>
 <20200603024231.61748-3-song.bao.hua@hisilicon.com>
Content-Disposition: inline
In-Reply-To: <20200603024231.61748-3-song.bao.hua@hisilicon.com>
X-ClientProxiedBy: BY5PR17CA0019.namprd17.prod.outlook.com
 (2603:10b6:a03:1b8::32) To BYAPR15MB4136.namprd15.prod.outlook.com
 (2603:10b6:a03:96::24)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from carbon.lan (2620:10d:c090:400::5:7f8a) by
 BY5PR17CA0019.namprd17.prod.outlook.com (2603:10b6:a03:1b8::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.18 via Frontend
 Transport; Wed, 3 Jun 2020 03:22:22 +0000
X-Originating-IP: [2620:10d:c090:400::5:7f8a]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 90224910-3e4a-410c-b069-08d8076d5497
X-MS-TrafficTypeDiagnostic: BYAPR15MB2775:
X-Microsoft-Antispam-PRVS: <BYAPR15MB277541654E5DD80938CE9889BE880@BYAPR15MB2775.namprd15.prod.outlook.com>
X-FB-Source: Internal
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 04238CD941
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0CqFG0KZk9EzO+Rc8DAadWRgnNb0cSxDO6ofkgxAq3ywLey46ZJ3kbpDvrf3al9ex/ITfUdGc3wcwnbJhSLX4TKuNIgkpLJXSRrnlwVdqBK61CyNLxgD/OyVqCJ766W8IgHloElbVt2wo7Pyk9mcVjRgVyyvTsdACHRSgJXm9aggseYfLhjmnIyMhSkthu4tsqIDFvmyPMI9AWgCWzljKYBkp1SVh7WvecegVjm3fkIz5d6R3886pwCnF6f1V2oy9bCOf4ZwRDoEV/n5ujfnGBUmJf4YX2M1bUgGdNySSHXY28TCc5MSzu9CMfTyDOODh0rXoTV+qyidEkmRouPILR3RLV+QSv9V9d1FjIaFmgvnVACDjzTuWSDNxgiCmf9V
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR15MB4136.namprd15.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(136003)(396003)(366004)(346002)(376002)(6666004)(1076003)(83380400001)(8936002)(8676002)(8886007)(6916009)(2906002)(7416002)(6506007)(9686003)(4326008)(36756003)(66476007)(86362001)(66556008)(66946007)(5660300002)(16526019)(316002)(52116002)(7696005)(478600001)(33656002)(55016002)(186003)(27376004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: qUA8nK+yjOLwiXVD4fCKV9HDpuTLpEEhCz1MwTamxJ3C2IwkqSXK4gi23VxsOEWFdCCDo0NLYvwIVoagDcqNTNTQcwDx36E057rsiQnW/AfYaIAKvKqeepKem3Vks00uWt6TuYZdvgdNh1/1Vi1P9FkLTVCxYmjeG8xFrAATpyX91cN5a+2sCD3vEaMHMeTMA28Xkr9A0O1PT3nyLrTefanfUQNwMGf20w10VRmVLfUPT302Iwhcp++T1RbZH9XhRiVz6x6enst1Y+r1rm9tf23gDZzJ1SsdaGQvi/zQPXf00hfXoGSs2HcRg+Z59+JgukMZu7D37UyR4Dpd5qG3WRBWUdFDFXpca5BzXUjaZfZvrP0fCJM8TrdpLmqZHqNKrWPLS8g6MCfY9/hoRoSdRuz62kdVRL3V0lFXdssoLoYNheVZFxPwjJbJDCvoXt7tgfalo5kpFuOztdnOZTF1cPzV+4nP0q73wuCXGime/h+gW9HHkyPrsJS16+vCbkTeN9Rx9fpyqf0SRmquZUp8Nw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 90224910-3e4a-410c-b069-08d8076d5497
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2020 03:22:22.7500 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PMiiHkMubMoC9AeGv/pnWpAgPyGWf0mRZ+4lDn8WaOd0zhwQM9uuuPMmHlC0HtEK
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR15MB2775
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-06-02_15:2020-06-02,
 2020-06-02 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0
 spamscore=0
 impostorscore=0 clxscore=1011 malwarescore=0 suspectscore=1
 mlxlogscore=999 cotscore=-2147483648 phishscore=0 mlxscore=0
 priorityscore=1501 bulkscore=0 adultscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006030025
X-FB-Internal: deliver
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_202411_209821_0EE6FAEE 
X-CRM114-Status: GOOD (  17.18  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.153.30 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [67.231.153.30 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: catalin.marinas@arm.com, john.garry@huawei.com,
 linux-kernel@vger.kernel.org, linuxarm@huawei.com,
 iommu@lists.linux-foundation.org, prime.zeng@hisilicon.com,
 Jonathan.Cameron@huawei.com, robin.murphy@arm.com, hch@lst.de,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 03, 2020 at 02:42:30PM +1200, Barry Song wrote:
> hugetlb_cma_reserve() is called at the wrong place. numa_init has not been
> done yet. so all reserved memory will be located at node0.
> 
> Cc: Roman Gushchin <guro@fb.com>
> Signed-off-by: Barry Song <song.bao.hua@hisilicon.com>

Acked-by: Roman Gushchin <guro@fb.com>

Thanks!

> ---
>  arch/arm64/mm/init.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
> index e42727e3568e..8f0e70ebb49d 100644
> --- a/arch/arm64/mm/init.c
> +++ b/arch/arm64/mm/init.c
> @@ -458,11 +458,6 @@ void __init arm64_memblock_init(void)
>  	high_memory = __va(memblock_end_of_DRAM() - 1) + 1;
>  
>  	dma_contiguous_reserve(arm64_dma32_phys_limit);
> -
> -#ifdef CONFIG_ARM64_4K_PAGES
> -	hugetlb_cma_reserve(PUD_SHIFT - PAGE_SHIFT);
> -#endif
> -
>  }
>  
>  void __init bootmem_init(void)
> @@ -478,6 +473,11 @@ void __init bootmem_init(void)
>  	min_low_pfn = min;
>  
>  	arm64_numa_init();
> +
> +#ifdef CONFIG_ARM64_4K_PAGES
> +	hugetlb_cma_reserve(PUD_SHIFT - PAGE_SHIFT);
> +#endif
> +
>  	/*
>  	 * Sparsemem tries to allocate bootmem in memory_present(), so must be
>  	 * done after the fixed reservations.
> -- 
> 2.23.0
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
