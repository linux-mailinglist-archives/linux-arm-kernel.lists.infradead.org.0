Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8F671FD44C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 20:22:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fpFKzD00HrYjLtfvhiDD25fW2PMpduJu+24HwghlPo0=; b=fRVL6ia/bVjA77
	tGJxo6Zx/jnj5RyEB8lDPEQ80hJC1X8BIb1bK92GiaqyNk/1pdXntCKOu0LR1d4iCwPZKMQeat/Fc
	yAHtQam13Zw6pX8JyN9iA19S9D0z/eDL4OOijoV1oVvm+UVaEutRD/kSvT6N72ILqM0ey9vU6wA+e
	/pXpkag2stDZ2R2DyolK0hugXA0sgJF8fRcIny1bFzSPTwQR+p95M4Sb4CClILVAth12k8iSwpCwi
	4ybCxrJhcceX89I04C8Bjbr1kBlVkJCIl5LqCmJeuzUDvLktGYx45Zb6WDssdWBQmhpKFAOQmIOnn
	ttgQEiMUkE2BgK/iR7fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlchb-0006ir-Hz; Wed, 17 Jun 2020 18:22:23 +0000
Received: from mx0a-00082601.pphosted.com ([67.231.145.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlchP-0006iS-L6
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 18:22:13 +0000
Received: from pps.filterd (m0044010.ppops.net [127.0.0.1])
 by mx0a-00082601.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 05HILA3s028352; Wed, 17 Jun 2020 11:21:12 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com;
 h=date : from : to : cc :
 subject : message-id : references : content-type : in-reply-to :
 mime-version; s=facebook; bh=OG6CZKJV8GDqjEFwD4x0uPA9xyYkkbq9vIyGhOv+5Os=;
 b=DcDwzV5dzh6Sg8kJGH3JzW+1AUQmn8/gWo9ebmCPAYzTUfTR5WoRBx6mcTLtCvzvr2S8
 ik4GViM49R2eWya+YMGIbalRS9EQLgTJfLn1sB+B1b1A2kJ+aY+IZz/4N+LMVkTIA0gX
 QTYfqnHC4tFI4yQoqWlEiHK7MUJzENt63Us= 
Received: from mail.thefacebook.com ([163.114.132.120])
 by mx0a-00082601.pphosted.com with ESMTP id 31q65spvb5-3
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Wed, 17 Jun 2020 11:21:11 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (100.104.98.9) by
 o365-in.thefacebook.com (100.104.94.229) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Wed, 17 Jun 2020 11:20:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N+/D/qkqN1+fGDtrmDqxdNMNCfPnCJTat9w8gdB55BOCAixgtJ6eR0hSqm3B6/O6G7ywDArE0rr4OasW1SFVJfT0IWqCtV8zu7n1a0w73FCZbbhc7RVmDF5seMjL2ju6bgVMvVZuNO3A/NTgZBgdMo1DKx4rUs4HmIATfHafAo2jfgXktG8pT1P32LkFWE28jbr+MFSyMp9M2FV63uUGJ0Xc87Ic/mMFCT9lt+1FjFq05FvQF0S/aHN5Ux8AX9ytVS7vXV5XYZwPdNhegjcboVDvfwj75JUQvjPSohcdQnwJaJ/y2K+n2RANXIS7nunXpvNhnd5OE/4lOfNacTn13g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OG6CZKJV8GDqjEFwD4x0uPA9xyYkkbq9vIyGhOv+5Os=;
 b=TRGkSnuyYHmmdnPDGZ4zPwW68tC/sZVxA2WnvNV/ffpWQJvUpEnkhSS68nYPFLWt65C7AhtP0oU05TgPt7Rnu3xoMoupnOQDozbCGFu7wcrgbArFI87ds2SWCQLg6u981TYjS2Ay32IU2QzRV9PL3roFT6Picc0Utz/6/m80oeI30/PL/bGGzpOXt5ogkZJojuenZZfwgjnLavLCw48YYuV5hHFeSkQe6Hnjo96LTiSrD8q0eMM6x7TAGyRH1lBU7SIITJaWIcK6m0R7vWBPcnbNgeym93cC/+xhszLY4/Mljk6zybqw1KovIJNoBK/iNvi/tzOW/T8EvkYOm4ylDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.onmicrosoft.com;
 s=selector2-fb-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OG6CZKJV8GDqjEFwD4x0uPA9xyYkkbq9vIyGhOv+5Os=;
 b=T6YyKfVdPHZ1QPoiJH6guFmX+QJ614O0/ZX/b2L70FB7g/RiwxIhVW2wIXy0UWh/J2uLXnR989TTqYvDICQ1kqGdc+sxfDWT5Mx0S47mWbm3LK0FVevD6/fEZJdTSkM9898dEWuaeUui+Tt4Bcw6GZCJCyd9OzNfeWuVKNrJlEg=
Authentication-Results: hisilicon.com; dkim=none (message not signed)
 header.d=none;hisilicon.com; dmarc=none action=none header.from=fb.com;
Received: from BYAPR15MB4136.namprd15.prod.outlook.com (2603:10b6:a03:96::24)
 by BYAPR15MB2934.namprd15.prod.outlook.com (2603:10b6:a03:f7::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.24; Wed, 17 Jun
 2020 18:20:30 +0000
Received: from BYAPR15MB4136.namprd15.prod.outlook.com
 ([fe80::48e3:c159:703d:a2f1]) by BYAPR15MB4136.namprd15.prod.outlook.com
 ([fe80::48e3:c159:703d:a2f1%5]) with mapi id 15.20.3088.029; Wed, 17 Jun 2020
 18:20:30 +0000
Date: Wed, 17 Jun 2020 11:20:26 -0700
From: Roman Gushchin <guro@fb.com>
To: "Song Bao Hua (Barry Song)" <song.bao.hua@hisilicon.com>
Subject: Re: [PATCH v2] arm64: mm: reserve hugetlb CMA after numa_init
Message-ID: <20200617182026.GA19784@carbon.dhcp.thefacebook.com>
References: <20200616221924.74780-1-song.bao.hua@hisilicon.com>
 <20200617101824.GB3368@willie-the-truck>
 <B926444035E5E2439431908E3842AFD2502AA9@DGGEMI525-MBS.china.huawei.com>
Content-Disposition: inline
In-Reply-To: <B926444035E5E2439431908E3842AFD2502AA9@DGGEMI525-MBS.china.huawei.com>
X-ClientProxiedBy: BYAPR05CA0006.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::19) To BYAPR15MB4136.namprd15.prod.outlook.com
 (2603:10b6:a03:96::24)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from carbon.dhcp.thefacebook.com (2620:10d:c090:400::5:dfc8) by
 BYAPR05CA0006.namprd05.prod.outlook.com (2603:10b6:a03:c0::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3131.10 via Frontend Transport; Wed, 17 Jun 2020 18:20:29 +0000
X-Originating-IP: [2620:10d:c090:400::5:dfc8]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3d3e7fe0-d837-4e25-a6bc-08d812eb1da7
X-MS-TrafficTypeDiagnostic: BYAPR15MB2934:
X-Microsoft-Antispam-PRVS: <BYAPR15MB29344CBBD52ACC1A80BDEA36BE9A0@BYAPR15MB2934.namprd15.prod.outlook.com>
X-FB-Source: Internal
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 04371797A5
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8SN3ZDg2b1IHLWkdnODrfvaWBcoHE2vjNg6RYX/Z64lTCbz40XQaGeueoj2Lqxo9kf9z+LV6xaC5OH6wM7lZ86LxSgNENJW8xdN3PE5x+QTZ91lF+Nt3p//FySOU4Fdyx/iK72gykOiEcMagrVMNuM35gMksn8gECj56b1fJUkw+8/VIdW4XKaSlWBcoEFYaRQLm4KUXiarbJ9st7Pf6BfLpkYkfRtEDCSuDDydc7iWK3I1iy36yhFR6R+zZNo6wqqka+e/ZsoDBmnETh1lwexLPY2QdbvIHeReRpRaHxxvFIUpwMAgk5gCivCiB8hNYLaB0KFm2cc20ODwAJ9EFTw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR15MB4136.namprd15.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(346002)(396003)(366004)(39860400002)(136003)(83380400001)(33656002)(4326008)(8676002)(316002)(478600001)(2906002)(7696005)(8936002)(54906003)(9686003)(52116002)(55016002)(1076003)(7416002)(66946007)(66476007)(5660300002)(6666004)(6916009)(16526019)(86362001)(66556008)(53546011)(6506007)(186003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: Wwhl/Fp0yYQexbzAysK0oHNP7aBEpafjv4Wd3Sd9GkeUnaxLH0XHGBlXMVg5bdSoNHCwDQ9Q7huCgg8ZMP/+CH65M/PljhSY/QRB9AtwNU5k0JidDfOx9TBGVXaLSfxZIMxpkiVB/CXJVVCLbd3IscR0QaAj2PAGrtULAeCcypSmbHf1TMd0osINWjhMCibur0jPNmG/eIbC8w/B8TwCWokCP1+0WEAwpamVKxkNUcaOmpTXzKzWrZIcZfs2nJe5XqWU2u9FpYKW1yGpq7XQ0C1/GnKhHeORayK/V6fGqIbajaCExw1hxT7R5uF46TM37UHzv6LFpjvYutn6YNx8AzZkvFvjis8j3XPcTgEXnNhN7He9+zd7akAsxo7CAeuWuN3lZdLvcoBbRF1y1l9vgwP8C58mQFt5vhEesEFfXtPInRUO3aSUqcgx8tT1LqmGNz9CByHarpl1oTvk51ha1HrH2Rn+yJcixOzfPObtLpl5rMYIKZBR+1Jzu60n8cxoS07aUmjdi8yhP4RaeiXBPQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d3e7fe0-d837-4e25-a6bc-08d812eb1da7
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jun 2020 18:20:30.0704 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +vn4pFOtR7+OaYjUFf9IKBrdr+ZKXZrCqlYdp8I83AC0E2OQuXQIFLwCgmFP5wy8
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR15MB2934
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-06-17_10:2020-06-17,
 2020-06-17 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0
 cotscore=-2147483648
 phishscore=0 clxscore=1011 malwarescore=0 mlxscore=0 spamscore=0
 priorityscore=1501 lowpriorityscore=0 impostorscore=0 bulkscore=0
 mlxlogscore=999 suspectscore=1 adultscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006170142
X-FB-Internal: deliver
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_112211_696641_4BE5D588 
X-CRM114-Status: GOOD (  23.41  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.145.42 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [67.231.145.42 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: "steve.capper@arm.com" <steve.capper@arm.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 Linuxarm <linuxarm@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rppt@linux.ibm.com" <rppt@linux.ibm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 Will Deacon <will@kernel.org>,
 "nsaenzjulienne@suse.de" <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 17, 2020 at 11:38:03AM +0000, Song Bao Hua (Barry Song) wrote:
> 
> 
> > -----Original Message-----
> > From: Will Deacon [mailto:will@kernel.org]
> > Sent: Wednesday, June 17, 2020 10:18 PM
> > To: Song Bao Hua (Barry Song) <song.bao.hua@hisilicon.com>
> > Cc: catalin.marinas@arm.com; nsaenzjulienne@suse.de;
> > steve.capper@arm.com; rppt@linux.ibm.com; akpm@linux-foundation.org;
> > linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org; Linuxarm
> > <linuxarm@huawei.com>; Matthias Brugger <matthias.bgg@gmail.com>;
> > Roman Gushchin <guro@fb.com>
> > Subject: Re: [PATCH v2] arm64: mm: reserve hugetlb CMA after numa_init
> > 
> > On Wed, Jun 17, 2020 at 10:19:24AM +1200, Barry Song wrote:
> > > hugetlb_cma_reserve() is called at the wrong place. numa_init has not been
> > > done yet. so all reserved memory will be located at node0.
> > >
> > > Fixes: cf11e85fc08c ("mm: hugetlb: optionally allocate gigantic hugepages
> > using cma")
> > 
> > Damn, wasn't CC'd on that :/
> > 
> > > Cc: Matthias Brugger <matthias.bgg@gmail.com>
> > > Acked-by: Roman Gushchin <guro@fb.com>
> > > Signed-off-by: Barry Song <song.bao.hua@hisilicon.com>
> > > ---
> > >  -v2: add Fixes tag according to Matthias Brugger's comment
> > >
> > >  arch/arm64/mm/init.c | 10 +++++-----
> > >  1 file changed, 5 insertions(+), 5 deletions(-)
> > >
> > > diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
> > > index e631e6425165..41914b483d54 100644
> > > --- a/arch/arm64/mm/init.c
> > > +++ b/arch/arm64/mm/init.c
> > > @@ -404,11 +404,6 @@ void __init arm64_memblock_init(void)
> > >  	high_memory = __va(memblock_end_of_DRAM() - 1) + 1;
> > >
> > >  	dma_contiguous_reserve(arm64_dma32_phys_limit);
> > > -
> > > -#ifdef CONFIG_ARM64_4K_PAGES
> > > -	hugetlb_cma_reserve(PUD_SHIFT - PAGE_SHIFT);
> > > -#endif
> > 
> > Why is this dependent on CONFIG_ARM64_4K_PAGES? We unconditionally
> > select ARCH_HAS_GIGANTIC_PAGE so this seems unnecessary.
> 
> Roman, would you like to answer this question? Have you found any problem if system
> doesn't set 4K_PAGES?

No, I was just following the code in arch/arm64/mm/hugetlbpage.c where all
related to PUD-sized pages is guarded by CONFIG_ARM64_4K_PAGES.
Actually I did all my testing on x86-64, I don't even have any arm hardware.

I'm totally fine with removing this #ifdef if it's not needed.

Thanks!

> 
> > 
> > > -
> > >  }
> > >
> > >  void __init bootmem_init(void)
> > > @@ -424,6 +419,11 @@ void __init bootmem_init(void)
> > >  	min_low_pfn = min;
> > >
> > >  	arm64_numa_init();
> > > +
> > > +#ifdef CONFIG_ARM64_4K_PAGES
> > > +	hugetlb_cma_reserve(PUD_SHIFT - PAGE_SHIFT);
> > > +#endif
> > 
> > A comment here wouldn't hurt, as it does look a lot more natural next
> > to dma_contiguous_reserve().
> 
> Will add some comment here.
> 
> > 
> > Will
> 
> barry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
