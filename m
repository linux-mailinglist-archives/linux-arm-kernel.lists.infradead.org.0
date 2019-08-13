Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B95208C141
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 21:11:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3SjNtditzGOY2g0i/Bi0Tf8ah4fe9+vc76Yw2uYFvMA=; b=jmRIJ2XYiaLNns
	H7eIQe+6VdMj/ewaIF+Or3hbwRS+NQ8j0haRNJ+b/hqfW3iFVwH0NZAEF1SxU/u8GPDRPUqJpZzjl
	2EXKr3rS328SpZ1M45VpRQHJEL6hdAIa6ZbCVfbkVD7p5rPsoXS4o/O2U+7hcyQ1FtmRWDCOOzDRQ
	VWognl+piRZQz6BmQRqnpyQHu634LQzUzf1k+yOOA3bJLWHWNAAs171KCNbOTLo7D8nc/DMRMjzux
	pFGZQUHxcbql3RWqlScBlBwE2tOVltQIaq13y8VyyMY7dCvMCE3nqm6L/ISOdjE0tAe4uEQg3S5O4
	Sml4a8jRLA7QfAJRL4rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxcCt-0005yS-TR; Tue, 13 Aug 2019 19:11:43 +0000
Received: from nat-hk.nvidia.com ([203.18.50.4])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxcCk-0005y4-GY
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 19:11:36 +0000
Received: from hkpgpgate101.nvidia.com (Not Verified[10.18.92.77]) by
 nat-hk.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d530b630000>; Wed, 14 Aug 2019 03:11:31 +0800
Received: from HKMAIL104.nvidia.com ([10.18.16.13])
 by hkpgpgate101.nvidia.com (PGP Universal service);
 Tue, 13 Aug 2019 12:11:31 -0700
X-PGP-Universal: processed;
 by hkpgpgate101.nvidia.com on Tue, 13 Aug 2019 12:11:31 -0700
Received: from HKMAIL104.nvidia.com (10.18.16.13) by HKMAIL104.nvidia.com
 (10.18.16.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 13 Aug
 2019 19:11:30 +0000
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (104.47.41.55) by
 HKMAIL104.nvidia.com (10.18.16.13) with Microsoft SMTP Server (TLS)
 id
 15.0.1473.3 via Frontend Transport; Tue, 13 Aug 2019 19:11:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bdt10Z4kpPsWYghgo8w/ajOpEnQFwbw+GtqW4KGZ2oXkE6QmMx59TmM+rdrhcyp/7qtKmWDd2IjiEOMJas9+/+cwohLB9D6MvpBNCH7sGw/PyhIAmqPC9pNpwhcYKUAsLVy9DQgNEkkylgS2y33PxO4NvlmB5YbNafQTSqdF78By0XgXtH8IKIIsUQKxFJS7YKp8PSp30xXX/BOxWriw2dbPtFWIL8qgu24Vtg5BSl/3zAIljjRJ/KwAWZkOE5g+B1IhbZk/UAIdU5TYQIt+wE/BYbva4VNUuSalhUiaNiqP7bdW5HfYypB9kzbY1xhQdgVAP5QaIJ6FHQCZzUm9pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3kwUyv0fUiWxEgo+Q+DhBfNn/nYqdBK0HOBIm2wSqTY=;
 b=VTFE/qzEsehXdawn5yLfZofhLDZ8SjRt2dMNBaC7KyvjFymMxVxB3MXzLsp9Vl4lwrdO+6rqvNlft+NWOo7jrXIssoZdB4pc2spwQeEP61dgePqBmV8OD6cSxMWNgLRW4ToLWTUDTUdAeFNj3DIolMu7SMIZMwmfkYIfGdusYKe60uSWxsnRphVKVg/ROXfFX79mZlFmyR/N8oqt74RSImBhRaAT9AJfJnE71sdV2JCOCMscMQEdUJVfzGujLA0ESqOB3y5bX8MmarG3BCW5RfibwqFgytY+H8SYNjhOcBzVBOfgzEx39KNyA4tO28O67llTfAK/EBzeLXW3tL7CBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nvidia.com;dmarc=pass action=none
 header.from=nvidia.com;dkim=pass header.d=nvidia.com;arc=none
Received: from BYAPR12MB2710.namprd12.prod.outlook.com (20.177.124.11) by
 BYAPR12MB3336.namprd12.prod.outlook.com (20.178.55.97) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.17; Tue, 13 Aug 2019 19:11:28 +0000
Received: from BYAPR12MB2710.namprd12.prod.outlook.com
 ([fe80::60a8:9757:8be2:2c56]) by BYAPR12MB2710.namprd12.prod.outlook.com
 ([fe80::60a8:9757:8be2:2c56%6]) with mapi id 15.20.2157.022; Tue, 13 Aug 2019
 19:11:28 +0000
From: Krishna Reddy <vdumpa@nvidia.com>
To: Robin Murphy <robin.murphy@arm.com>, "will@kernel.org" <will@kernel.org>
Subject: RE: [PATCH 15/15] iommu/arm-smmu: Add context init implementation hook
Thread-Topic: [PATCH 15/15] iommu/arm-smmu: Add context init implementation
 hook
Thread-Index: AQHVTtU7pKLRNzbO30+XQaX2jIzFWqb5dq8g
Date: Tue, 13 Aug 2019 19:11:28 +0000
Message-ID: <BYAPR12MB271043C700E91B2DF636DC8CB3D20@BYAPR12MB2710.namprd12.prod.outlook.com>
References: <cover.1565369764.git.robin.murphy@arm.com>
 <6adbec8e4757f3b6c9f47135544a0302f8e7c55c.1565369764.git.robin.murphy@arm.com>
In-Reply-To: <6adbec8e4757f3b6c9f47135544a0302f8e7c55c.1565369764.git.robin.murphy@arm.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Enabled=True;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_SiteId=43083d15-7273-40c1-b7db-39efd9ccc17a;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Owner=VDUMPA@nvidia.com;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_SetDate=2019-08-13T19:11:25.4970088Z;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Name=Unrestricted;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_ActionId=5a1ec571-ee6f-4f85-9fbf-072a1bd313cd;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Extended_MSFT_Method=Automatic
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=vdumpa@nvidia.com; 
x-originating-ip: [216.228.112.22]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 27975ed7-7a67-4714-e7d8-08d720220afd
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR12MB3336; 
x-ms-traffictypediagnostic: BYAPR12MB3336:
x-microsoft-antispam-prvs: <BYAPR12MB33366A835DFC71E66733AA09B3D20@BYAPR12MB3336.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:153;
x-forefront-prvs: 01283822F8
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(396003)(346002)(376002)(39860400002)(366004)(13464003)(189003)(199004)(316002)(256004)(476003)(186003)(81156014)(81166006)(478600001)(2906002)(76116006)(76176011)(8676002)(11346002)(446003)(33656002)(25786009)(14454004)(5660300002)(14444005)(110136005)(8936002)(66946007)(7696005)(66476007)(52536014)(53546011)(6436002)(229853002)(6246003)(66556008)(71200400001)(305945005)(7736002)(86362001)(74316002)(26005)(6506007)(53936002)(9686003)(4326008)(55016002)(6116002)(3846002)(2501003)(71190400001)(66066001)(64756008)(66446008)(99286004)(486006)(102836004)(54906003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR12MB3336;
 H:BYAPR12MB2710.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nvidia.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: VKj+h+HSBetwq1NcbSuUxI5p3i724kUk59vCLl3d2ReXNY9MCyxnaEPaGF2/ddu1Tzu371hbSo/QFuQzjskM65uhjIGgb9DOlsijE+S3qVhbUCUV/dQs7lxtd4gL6lGLwY5GgRexbz0aCwb15afu8jTsfzj8tBMoajo58HzW4wq1Z7SIOlhLU9j36SOXEjuVQDUs75/7m20VFjggAnHdxfYc+/ACVjXyXO4Vw4fv87aPbzOT9qwIbTHz4FXtTHqx7cWeg9fceUSab26QhwDHb7sZrlcRKyin4lruWXnAJDgvl+8he9HhlqN2wiyNAdntOiXUvpW6QpiUE+F5ClUxljfqFzm16PtmH0268i3ls+zu9eIwFzFmaHn3eCGiv/GykcRdKqGPKEFEahp1Jd6NuEXXNqbScCWvJDnJILjb3eU=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 27975ed7-7a67-4714-e7d8-08d720220afd
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Aug 2019 19:11:28.0444 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wM4McDvQ35Vzv7ZYQY0TE14NaNqT7xWkX9FGcH0kSx5i1GLAX8oBeydG9hpSAb8Oa+3pDEJGLxiKiSaSlF1XdQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB3336
X-OriginatorOrg: Nvidia.com
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1565723491; bh=3kwUyv0fUiWxEgo+Q+DhBfNn/nYqdBK0HOBIm2wSqTY=;
 h=X-PGP-Universal:ARC-Seal:ARC-Message-Signature:
 ARC-Authentication-Results:From:To:CC:Subject:Thread-Topic:
 Thread-Index:Date:Message-ID:References:In-Reply-To:
 Accept-Language:X-MS-Has-Attach:X-MS-TNEF-Correlator:msip_labels:
 authentication-results:x-originating-ip:x-ms-publictraffictype:
 x-ms-office365-filtering-correlation-id:x-microsoft-antispam:
 x-ms-traffictypediagnostic:x-microsoft-antispam-prvs:
 x-ms-oob-tlc-oobclassifiers:x-forefront-prvs:
 x-forefront-antispam-report:received-spf:
 x-ms-exchange-senderadcheck:x-microsoft-antispam-message-info:
 MIME-Version:X-MS-Exchange-CrossTenant-Network-Message-Id:
 X-MS-Exchange-CrossTenant-originalarrivaltime:
 X-MS-Exchange-CrossTenant-fromentityheader:
 X-MS-Exchange-CrossTenant-id:X-MS-Exchange-CrossTenant-mailboxtype:
 X-MS-Exchange-CrossTenant-userprincipalname:
 X-MS-Exchange-Transport-CrossTenantHeadersStamped:X-OriginatorOrg:
 Content-Language:Content-Type:Content-Transfer-Encoding;
 b=cfLI5hj/RTeRwT3uoq2EC4qvuFCDplJYnYxua81JEzBKwOOOUUPp2cd2P83PRwRc2
 OCkVdMZ3LnkeEajLjnks2lFsFyeKbYcSWv229Cy9BkfEFOOMWLsDFOCrPJ7CyFznmB
 MZTYEGmZN72WP3TRUXK0GDOYIE8CcEpe0UouVLgkBHvn2psLAiTnPdC8oPMMyfUPl8
 LKZDaxrP9a5Y50NZi/qhHwvRINV4CxAIT5hyBUmUFY1AbW4HZ8zyjUnUe0btzbJBhu
 nL+9aYnA7y5rPkT/gwjSu8NBgusKascCzDPPLPgxBZO3/LkIfUZV53/ym/iFKTUxKt
 7SrRyK3YUOWmg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_121135_004038_0E31C922 
X-CRM114-Status: GOOD (  17.68  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [203.18.50.4 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "gregory.clement@bootlin.com" <gregory.clement@bootlin.com>,
 "robdclark@gmail.com" <robdclark@gmail.com>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 "vivek.gautam@codeaurora.org" <vivek.gautam@codeaurora.org>,
 "joro@8bytes.org" <joro@8bytes.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Tested-by: Krishna Reddy<vdumpa@nvidia.com>

Validated the entire patch set on Tegra194 SOC based platform and confirmed that arm-smmu driver is functional as it has been. 

-KR

-----Original Message-----
From: Robin Murphy <robin.murphy@arm.com> 
Sent: Friday, August 9, 2019 10:08 AM
To: will@kernel.org
Cc: iommu@lists.linux-foundation.org; linux-arm-kernel@lists.infradead.org; joro@8bytes.org; vivek.gautam@codeaurora.org; bjorn.andersson@linaro.org; Krishna Reddy <vdumpa@nvidia.com>; gregory.clement@bootlin.com; robdclark@gmail.com
Subject: [PATCH 15/15] iommu/arm-smmu: Add context init implementation hook

Allocating and initialising a context for a domain is another point where certain implementations are known to want special behaviour.
Currently the other half of the Cavium workaround comes into play here, so let's finish the job to get the whole thing right out of the way.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/iommu/arm-smmu-impl.c | 39 +++++++++++++++++++++++++--
 drivers/iommu/arm-smmu.c      | 51 +++++++----------------------------
 drivers/iommu/arm-smmu.h      | 42 +++++++++++++++++++++++++++--
 3 files changed, 86 insertions(+), 46 deletions(-)

diff --git a/drivers/iommu/arm-smmu-impl.c b/drivers/iommu/arm-smmu-impl.c index c8904da08354..7a657d47b6ec 100644
--- a/drivers/iommu/arm-smmu-impl.c
+++ b/drivers/iommu/arm-smmu-impl.c
@@ -48,6 +48,12 @@ const struct arm_smmu_impl calxeda_impl = {  };
 
 
+struct cavium_smmu {
+	struct arm_smmu_device smmu;
+	u32 id_base;
+};
+#define to_csmmu(s)	container_of(s, struct cavium_smmu, smmu)
+
 static int cavium_cfg_probe(struct arm_smmu_device *smmu)  {
 	static atomic_t context_count = ATOMIC_INIT(0); @@ -56,17 +62,46 @@ static int cavium_cfg_probe(struct arm_smmu_device *smmu)
 	 * Ensure ASID and VMID allocation is unique across all SMMUs in
 	 * the system.
 	 */
-	smmu->cavium_id_base = atomic_fetch_add(smmu->num_context_banks,
+	to_csmmu(smmu)->id_base = atomic_fetch_add(smmu->num_context_banks,
 						   &context_count);
 	dev_notice(smmu->dev, "\tenabling workaround for Cavium erratum 27704\n");
 
 	return 0;
 }
 
+int cavium_init_context(struct arm_smmu_domain *smmu_domain) {
+	u32 id_base = to_csmmu(smmu_domain->smmu)->id_base;
+
+	if (smmu_domain->stage == ARM_SMMU_DOMAIN_S2)
+		smmu_domain->cfg.vmid += id_base;
+	else
+		smmu_domain->cfg.asid += id_base;
+
+	return 0;
+}
+
 const struct arm_smmu_impl cavium_impl = {
 	.cfg_probe = cavium_cfg_probe,
+	.init_context = cavium_init_context,
 };
 
+struct arm_smmu_device *cavium_smmu_impl_init(struct arm_smmu_device 
+*smmu) {
+	struct cavium_smmu *csmmu;
+
+	csmmu = devm_kzalloc(smmu->dev, sizeof(*csmmu), GFP_KERNEL);
+	if (!csmmu)
+		return ERR_PTR(-ENOMEM);
+
+	csmmu->smmu = *smmu;
+	csmmu->smmu.impl = &cavium_impl;
+
+	devm_kfree(smmu->dev, smmu);
+
+	return &csmmu->smmu;
+}
+
 
 #define ARM_MMU500_ACTLR_CPRE		(1 << 1)
 
@@ -121,7 +156,7 @@ struct arm_smmu_device *arm_smmu_impl_init(struct arm_smmu_device *smmu)
 		smmu->impl = &calxeda_impl;
 
 	if (smmu->model == CAVIUM_SMMUV2)
-		smmu->impl = &cavium_impl;
+		return cavium_smmu_impl_init(smmu);
 
 	if (smmu->model == ARM_MMU500)
 		smmu->impl = &arm_mmu500_impl;
diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c index 298ab9e6a6cd..1c1c9ef91d7b 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -27,7 +27,6 @@
 #include <linux/interrupt.h>
 #include <linux/io.h>
 #include <linux/io-64-nonatomic-hi-lo.h> -#include <linux/io-pgtable.h>  #include <linux/iopoll.h>  #include <linux/init.h>  #include <linux/moduleparam.h> @@ -111,44 +110,6 @@ struct arm_smmu_master_cfg {  #define for_each_cfg_sme(fw, i, idx) \
 	for (i = 0; idx = fwspec_smendx(fw, i), i < fw->num_ids; ++i)
 
-enum arm_smmu_context_fmt {
-	ARM_SMMU_CTX_FMT_NONE,
-	ARM_SMMU_CTX_FMT_AARCH64,
-	ARM_SMMU_CTX_FMT_AARCH32_L,
-	ARM_SMMU_CTX_FMT_AARCH32_S,
-};
-
-struct arm_smmu_cfg {
-	u8				cbndx;
-	u8				irptndx;
-	union {
-		u16			asid;
-		u16			vmid;
-	};
-	enum arm_smmu_cbar_type		cbar;
-	enum arm_smmu_context_fmt	fmt;
-};
-#define INVALID_IRPTNDX			0xff
-
-enum arm_smmu_domain_stage {
-	ARM_SMMU_DOMAIN_S1 = 0,
-	ARM_SMMU_DOMAIN_S2,
-	ARM_SMMU_DOMAIN_NESTED,
-	ARM_SMMU_DOMAIN_BYPASS,
-};
-
-struct arm_smmu_domain {
-	struct arm_smmu_device		*smmu;
-	struct io_pgtable_ops		*pgtbl_ops;
-	const struct iommu_gather_ops	*tlb_ops;
-	struct arm_smmu_cfg		cfg;
-	enum arm_smmu_domain_stage	stage;
-	bool				non_strict;
-	struct mutex			init_mutex; /* Protects smmu pointer */
-	spinlock_t			cb_lock; /* Serialises ATS1* ops and TLB syncs */
-	struct iommu_domain		domain;
-};
-
 static bool using_legacy_binding, using_generic_binding;
 
 static inline int arm_smmu_rpm_get(struct arm_smmu_device *smmu) @@ -749,9 +710,16 @@ static int arm_smmu_init_domain_context(struct iommu_domain *domain,
 	}
 
 	if (smmu_domain->stage == ARM_SMMU_DOMAIN_S2)
-		cfg->vmid = cfg->cbndx + 1 + smmu->cavium_id_base;
+		cfg->vmid = cfg->cbndx + 1;
 	else
-		cfg->asid = cfg->cbndx + smmu->cavium_id_base;
+		cfg->asid = cfg->cbndx;
+
+	smmu_domain->smmu = smmu;
+	if (smmu->impl && smmu->impl->init_context) {
+		ret = smmu->impl->init_context(smmu_domain);
+		if (ret)
+			goto out_unlock;
+	}
 
 	pgtbl_cfg = (struct io_pgtable_cfg) {
 		.pgsize_bitmap	= smmu->pgsize_bitmap,
@@ -765,7 +733,6 @@ static int arm_smmu_init_domain_context(struct iommu_domain *domain,
 	if (smmu_domain->non_strict)
 		pgtbl_cfg.quirks |= IO_PGTABLE_QUIRK_NON_STRICT;
 
-	smmu_domain->smmu = smmu;
 	pgtbl_ops = alloc_io_pgtable_ops(fmt, &pgtbl_cfg, smmu_domain);
 	if (!pgtbl_ops) {
 		ret = -ENOMEM;
diff --git a/drivers/iommu/arm-smmu.h b/drivers/iommu/arm-smmu.h index 616cc87a05e3..a18b5925b43c 100644
--- a/drivers/iommu/arm-smmu.h
+++ b/drivers/iommu/arm-smmu.h
@@ -14,6 +14,7 @@
 #include <linux/bits.h>
 #include <linux/clk.h>
 #include <linux/device.h>
+#include <linux/io-pgtable.h>
 #include <linux/iommu.h>
 #include <linux/mutex.h>
 #include <linux/spinlock.h>
@@ -270,14 +271,50 @@ struct arm_smmu_device {
 	struct clk_bulk_data		*clks;
 	int				num_clks;
 
-	u32				cavium_id_base; /* Specific to Cavium */
-
 	spinlock_t			global_sync_lock;
 
 	/* IOMMU core code handle */
 	struct iommu_device		iommu;
 };
 
+enum arm_smmu_context_fmt {
+	ARM_SMMU_CTX_FMT_NONE,
+	ARM_SMMU_CTX_FMT_AARCH64,
+	ARM_SMMU_CTX_FMT_AARCH32_L,
+	ARM_SMMU_CTX_FMT_AARCH32_S,
+};
+
+struct arm_smmu_cfg {
+	u8				cbndx;
+	u8				irptndx;
+	union {
+		u16			asid;
+		u16			vmid;
+	};
+	enum arm_smmu_cbar_type		cbar;
+	enum arm_smmu_context_fmt	fmt;
+};
+#define INVALID_IRPTNDX			0xff
+
+enum arm_smmu_domain_stage {
+	ARM_SMMU_DOMAIN_S1 = 0,
+	ARM_SMMU_DOMAIN_S2,
+	ARM_SMMU_DOMAIN_NESTED,
+	ARM_SMMU_DOMAIN_BYPASS,
+};
+
+struct arm_smmu_domain {
+	struct arm_smmu_device		*smmu;
+	struct io_pgtable_ops		*pgtbl_ops;
+	const struct iommu_gather_ops	*tlb_ops;
+	struct arm_smmu_cfg		cfg;
+	enum arm_smmu_domain_stage	stage;
+	bool				non_strict;
+	struct mutex			init_mutex; /* Protects smmu pointer */
+	spinlock_t			cb_lock; /* Serialises ATS1* ops and TLB syncs */
+	struct iommu_domain		domain;
+};
+
 
 /* Implementation details, yay! */
 struct arm_smmu_impl {
@@ -289,6 +326,7 @@ struct arm_smmu_impl {
 			    u64 val);
 	int (*cfg_probe)(struct arm_smmu_device *smmu);
 	int (*reset)(struct arm_smmu_device *smmu);
+	int (*init_context)(struct arm_smmu_domain *smmu_domain);
 };
 
 static inline void __iomem *arm_smmu_page(struct arm_smmu_device *smmu, int n)
--
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
