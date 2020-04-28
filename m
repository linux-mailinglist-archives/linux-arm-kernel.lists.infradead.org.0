Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64FB61BC797
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 20:11:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:To:References:Message-Id:
	Date:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qwbphJf0p2xBq4nKnf1M2g88gwKohBmwjik0G8oz2lg=; b=MMU8r9qvmsBEEF
	HNsVFrvsTPqeS0lYXPWFv7u6qr95tkuKPkjSmfT4lYME1qjyzHO6F9/QHJ8VA+Mfp6zP2rgfvgg9X
	MmvutdRkavVu90AaCIFtzDgC1clxYOzMaEFo3nIPWIY2eor8YQj5uEb4G/eVz7MHM9ENJ8hXdeL26
	VLfGr6Ug43Hjpe5YmenLMk0hHqFZMYGwf8XvSu66xVbVuX2LXhk3nZCzCxjK53hyPUNbYgXVsZSOr
	pHvlboWYhmaY5ZHXOncLezn5Vk4iesM0umMsPYVL/WiAfOOGsLP2jts4ZUjA1NsX/hFJKJp89HbgG
	d9cxdbRdJ8AoRUlJd4iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTUhX-0006IX-Ir; Tue, 28 Apr 2020 18:11:23 +0000
Received: from mail-dm6nam11on2110.outbound.protection.outlook.com
 ([40.107.223.110] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTUgT-0005df-Ul
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 18:10:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M5JHCrr0GXr0IvRZz1b8jM2r3O8ENsi6hnRZqnWpRzN00y0jZtOiDejq/sbZgzrfbxbWeEfgdedhh267UIqi0mSPQeEJJwo3ui2O8elssfkWMc7ISc+Y2s8y3lsc04BpaoEiFzLUZRx4YvPwXyExUx34+p8XvBQ5gYrHqzTrPkdyNgfzpPYmbnqaQX5I9SS89JpwpD+ctzAYB1A+OLvV4hnN+mmHlyLVz/7mR0P9ltP0guugPpGrN9GpwCBt76SRGofT5K6e/rwurENSWOw4PeKULqWigRtEUy+6wied4b+h9ZCSw6gLIpn+rByRyqxqcxfD/xuImKIqalCJLVtoOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tKuYdmjn4Fj8J1ApQ+IOourv59XoWQ0o1RTkZAUJ0xk=;
 b=CattJ08uN+j1MpPLK/AdIBTqxbv4xBKKlNverhiVUyO25EKb3hl1Rd1749pBNkp0dHfJchxHqrsay5rFwRxkE8s7cImRVzQUotoJJdth2lNy+waH89iYODu69bFc3eQz9wEWBk8NP8lz2izby1vgBTvFqhhdABCUnL0/q6m3mxCzHucK+wxIyy1/ZhHnmcO7bf54LLAh8/bzz9worCatN9vuuDpGPpHd0uKOJUWqH+E2gqrGV7VBr+eUlcsIjsbvaTx6wW+j83xdlu3GwkhT/Ptjbi8npVWjzkVcculLhwRzjdZw3Q7kdhFUV5p6b4ySnPNII4EoYSuFVS9kF2y4Uw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=amperemail.onmicrosoft.com; dkim=pass
 header.d=amperemail.onmicrosoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tKuYdmjn4Fj8J1ApQ+IOourv59XoWQ0o1RTkZAUJ0xk=;
 b=MT2b0andHUgjWCfVMnKjw3oGwGHc+06ZfbYarkUc7fw9l18H+AB83rwm2yK1HkbcCfLpv9AQ7U1lOl+nv6f08vuOGVFhIA9ibDeQuXr04QlPgiRQvpZD7r9Obs8Oi4zBbcDjJd86qrwYasE6G8DWNtFQ84xREl049cMq5FdqR1U=
Authentication-Results: linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=none action=none
 header.from=amperemail.onmicrosoft.com;
Received: from BYAPR01MB4598.prod.exchangelabs.com (2603:10b6:a03:8a::18) by
 BYAPR01MB5688.prod.exchangelabs.com (2603:10b6:a03:125::33) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.22; Tue, 28 Apr 2020 18:10:13 +0000
Received: from BYAPR01MB4598.prod.exchangelabs.com
 ([fe80::296c:b848:8bf0:6f2c]) by BYAPR01MB4598.prod.exchangelabs.com
 ([fe80::296c:b848:8bf0:6f2c%5]) with mapi id 15.20.2958.019; Tue, 28 Apr 2020
 18:10:12 +0000
Subject: Re: [PATCH] perf/smmuv3: Allow sharing MMIO registers with the SMMU
 driver
From: Tuan Phan <tuanphan@amperemail.onmicrosoft.com>
In-Reply-To: <20200421155745.19815-1-jean-philippe@linaro.org>
Date: Tue, 28 Apr 2020 11:10:09 -0700
Message-Id: <F8C2FB7F-2D21-44AA-B41D-0D4555A63660@amperemail.onmicrosoft.com>
References: <20200421155745.19815-1-jean-philippe@linaro.org>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-ClientProxiedBy: CY4PR15CA0001.namprd15.prod.outlook.com
 (2603:10b6:910:14::11) To BYAPR01MB4598.prod.exchangelabs.com
 (2603:10b6:a03:8a::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.0.173] (73.151.56.145) by
 CY4PR15CA0001.namprd15.prod.outlook.com (2603:10b6:910:14::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.19 via Frontend Transport; Tue, 28 Apr 2020 18:10:11 +0000
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-Originating-IP: [73.151.56.145]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ac7e4f50-13d4-40ac-0877-08d7eb9f6532
X-MS-TrafficTypeDiagnostic: BYAPR01MB5688:
X-Microsoft-Antispam-PRVS: <BYAPR01MB5688A45246F9B9F1A2BCC3D7E0AC0@BYAPR01MB5688.prod.exchangelabs.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 0387D64A71
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR01MB4598.prod.exchangelabs.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(346002)(39850400004)(136003)(376002)(396003)(316002)(52116002)(53546011)(54906003)(2906002)(966005)(4326008)(2616005)(6916009)(16576012)(83170400001)(186003)(16526019)(956004)(26005)(478600001)(8676002)(33656002)(66556008)(66476007)(6486002)(42882007)(66946007)(8936002)(5660300002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: asNcPy4r3Pf08wSPLPbcYSv+NGF38C7WduOt4rn+I25f6AE7Kk7pzjbQ1OjmPefKWMHxy7ZRHhR4URP2nmilfRk+aTAAM/+DrbN076meR0mVSPFmxin0ztm2/fCm+5Y8IJrs2+h+15CDbY0/06pcvj3FDa2B34aJzJHbBosP9O9s9ijhE/SKIcGF6XS0noQRbiKZDMsA0zNp4SXwMLeufv+LwiVis8XwIgtCunJaM5Rz/Gdy/uWwDKMBpwClzmsYQr0nUEwetSeI9SDJTI+87oWJbFM29RJmAnBrChHWO2T70M6PaaEaeGP7eJNcBcxaimyLQUqblQ7tjZkn378KSgP1ofW/s+P93T+V+Uiz2bxmCTA2Pb4I+XzRaqIE81FtNj4yQG0qp8iTfCc6idvnvE4/k0/ximzj6TsVVKn7F4YYx3AqKRagFz3g8zX2JZqsaZfWfIIaaXDJbK3E52kpWVSLnpK9SnrElacwSeJkVeRe/1ED6z90kA/QFIp5QIF6bVFUev2TyaFl6Fs1P3U2JQ==
X-MS-Exchange-AntiSpam-MessageData: GtST+5BgCrB95LoZUQrsMLvwj0nsDQCnTuGiUf5NrnUbkMibYkobrKfqyWXVFyv0edd7dP0KJv5zk4FU42A0CoEpX59SylP9GevR1DN+R+7nIIWusmnin+3PXIYGI0/oS+4ijrn5VtbcUYb0AlYkZ6VKfjSwWxzh+oOpnCn9EnsYBMiSGDmh3JcUPTdeInFXn924gKJzM247F7XraCE8ipYTj7WHVg3G2X2gGX2yC1MChEd3DPRTzlWrAOSfaIwbw7UTZIGofawEKtByr6xBd5qjBfKh3WYpmf4ONZiRjEVEfAEhF2DhwFI0L2R+XxuWNc9lPbeEG0fDCpczNJPplRyuzuAJn6XHC2619OeQ1eY9VzM24OtXmwww79fjLBQqPZQOuoMbXVgIsMsgmVtE1lt3EhBLtOcw4An3Da6O1MzfGyQrYcoVI7NzzQq0kDCPkyuiyjyfd5WKPbpDi/RdBrVfmOyLDhTkOXu93k6YtiYiB9IDh0COo6C0T+SOj2sVLwheDIbSyPwuYHUsyWEFacWj81wtW0hGmN6VVkRbHaUHhEmmwwl6fxrH4nhs+tr+yga1qCZGCzX2djEOiCO5s3mN0NTGqfKlkpTe0dbbfcHPMQwEfI/igAknayu6DMgGHqWpYueQj5S58zkroW5OeznNzgUCR/iFF2l/BCvOe5pgD/8yeiRVVVGbUoQjtGjoBhRKPDxJHUi4Dbybk0t7deOONF2o2ZCHdvPz1hV+60x+4wAXvQH3/Ricdaiq7aZm+j3MkV0GwanFSMbHfySxbXRjKk5V+nCWX4vtnNG08os=
X-OriginatorOrg: amperemail.onmicrosoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac7e4f50-13d4-40ac-0877-08d7eb9f6532
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2020 18:10:12.8468 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ayGi120GJt6NHvgCWZM7NqKceaOcR/ne0s6Zp6rIHLjBzYJf4d0MWKHSchKvRDyOgwBuhWXmZW02iPAHflTudyyhaYC35LAsHZTBtyM45eBhPvc1XAvxUDp6FoSmGm0j
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR01MB5688
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_111018_117072_4E719867 
X-CRM114-Status: GOOD (  21.29  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.223.110 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.223.110 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tuanphan[at]amperemail.onmicrosoft.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, lorenzo.pieralisi@arm.com,
 Will Deacon <will@kernel.org>, iommu@lists.linux-foundation.org,
 robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> On Apr 21, 2020, at 8:57 AM, Jean-Philippe Brucker <jean-philippe@linaro.org> wrote:
> 
> Some Arm SMMUv3 implementations, for example Arm CoreLink MMU-600, embed
> the PMCG registers into the SMMU MMIO regions. It currently causes probe
> failure because the PMU and SMMU drivers request overlapping resources.
> 
> Avoid the conflict by calling devm_ioremap() directly from the PMU
> driver. We loose some sanity-checking of the memory map provided by
> firmware, which doesn't seem catastrophic.
> 
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> ---
> 
> So this is the simplest solution, and I don't think we're missing much
> by skipping the resource reservation. I've also been exploring a more
> complex approach [1] which has the SMMU driver perform resource
> reservation on behalf of the PMU driver, but I'm not sure it's
> necessary.
> 
> Please test, I've only tried the RevC FastModel using devicetree so far.
> 
> [1] https://jpbrucker.net/git/linux/log/?h=smmu/pmu
> ---
> drivers/perf/arm_smmuv3_pmu.c | 28 +++++++++++++++++++++-------
> 1 file changed, 21 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/perf/arm_smmuv3_pmu.c b/drivers/perf/arm_smmuv3_pmu.c
> index ca183a53a7f10..ad63d1e73333f 100644
> --- a/drivers/perf/arm_smmuv3_pmu.c
> +++ b/drivers/perf/arm_smmuv3_pmu.c
> @@ -730,8 +730,8 @@ static void smmu_pmu_get_acpi_options(struct smmu_pmu *smmu_pmu)
> 
> static int smmu_pmu_probe(struct platform_device *pdev)
> {
> +	struct resource *res_0, *res_1;
> 	struct smmu_pmu *smmu_pmu;
> -	struct resource *res_0;
> 	u32 cfgr, reg_size;
> 	u64 ceid_64[2];
> 	int irq, err;
> @@ -759,18 +759,32 @@ static int smmu_pmu_probe(struct platform_device *pdev)
> 		.capabilities	= PERF_PMU_CAP_NO_EXCLUDE,
> 	};
> 
> +	/*
> +	 * If the PMCG registers are embedded into the SMMU regions, the
> +	 * resources have to be shared with the SMMU driver. Use ioremap()
> +	 * rather than ioremap_resource() to avoid conflicts.
> +	 */
> 	res_0 = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	smmu_pmu->reg_base = devm_ioremap_resource(dev, res_0);
> -	if (IS_ERR(smmu_pmu->reg_base))
> -		return PTR_ERR(smmu_pmu->reg_base);
> +	if (!res_0)
> +		return -ENXIO;
> +
> +	smmu_pmu->reg_base = devm_ioremap(dev, res_0->start,
> +					  resource_size(res_0));
> +	if (!smmu_pmu->reg_base)
> +		return -ENOMEM;
> 
> 	cfgr = readl_relaxed(smmu_pmu->reg_base + SMMU_PMCG_CFGR);
> 
> 	/* Determine if page 1 is present */
> 	if (cfgr & SMMU_PMCG_CFGR_RELOC_CTRS) {
> -		smmu_pmu->reloc_base = devm_platform_ioremap_resource(pdev, 1);
> -		if (IS_ERR(smmu_pmu->reloc_base))
> -			return PTR_ERR(smmu_pmu->reloc_base);
> +		res_1 = platform_get_resource(pdev, IORESOURCE_MEM, 1);
> +		if (!res_1)
> +			return -ENXIO;
> +
> +		smmu_pmu->reloc_base = devm_ioremap(dev, res_1->start,
> +						    resource_size(res_1));
> +		if (!smmu_pmu->reloc_base)
> +			return -ENOMEM;

I tested this patch on HW, however I need to add one more following change to make it works

@@ -2854,7 +2854,7 @@ static int arm_smmu_device_probe(struct platform_device *pdev)
        }
        ioaddr = res->start;
 
-       smmu->base = devm_ioremap_resource(dev, res);
+       smmu->base = devm_ioremap(dev, res->start, resource_size(res));
        if (IS_ERR(smmu->base))
                return PTR_ERR(smmu->base);


> 	} else {
> 		smmu_pmu->reloc_base = smmu_pmu->reg_base;
> 	}
> -- 
> 2.26.0
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
