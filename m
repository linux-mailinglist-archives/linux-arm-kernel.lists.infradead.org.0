Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0053A40B2
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 31 Aug 2019 00:49:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=37U2+kM6G25evuGZ82JbGZb1hQjcJ28ZzzILeuYDS1w=; b=RYKBqbIsrVfxoE
	Fzjy911gGV8cx4eIHajYMLtXRgiykIRlofD2KrwWANvliK8Wr0aLPqvY7ydsgjme/NU/WrseCSTzj
	lRcuKeeaVgxPRBocb9n5b2lFkpmd9ISwOqkNsxJRgGnHSmS+mXmkxeCgbn7nsiN3zOGq7+CyU/iwi
	S9fxVikMEMfz3TGSOW0fkmO5LrOe79Fbpn/uE/j9peXEF8rNQST34+p9MiZA8obvtqrOvFWGgEwE1
	bzpu9LnmwoUIDaJ4K8lSCdmCPQtYyJA8cGCAYIRj3tg3wo2v83fMMPM2eZnI9BOCuPzLTUBH671MI
	87TdLXvB9Jb/pc3d3YKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3pi7-00072z-W3; Fri, 30 Aug 2019 22:49:40 +0000
Received: from nat-hk.nvidia.com ([203.18.50.4])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3phx-00072Y-Jb
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 22:49:31 +0000
Received: from hkpgpgate102.nvidia.com (Not Verified[10.18.92.9]) by
 nat-hk.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d69a7f80000>; Sat, 31 Aug 2019 06:49:28 +0800
Received: from HKMAIL102.nvidia.com ([10.18.16.11])
 by hkpgpgate102.nvidia.com (PGP Universal service);
 Fri, 30 Aug 2019 15:49:24 -0700
X-PGP-Universal: processed;
 by hkpgpgate102.nvidia.com on Fri, 30 Aug 2019 15:49:24 -0700
Received: from HKMAIL104.nvidia.com (10.18.16.13) by HKMAIL102.nvidia.com
 (10.18.16.11) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 30 Aug
 2019 22:49:24 +0000
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.36.55) by
 HKMAIL104.nvidia.com (10.18.16.13) with Microsoft SMTP Server (TLS)
 id
 15.0.1473.3 via Frontend Transport; Fri, 30 Aug 2019 22:49:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dMBs5auKlCAHb5A2x5vN4MS9NmmcFdDVprN9AYQLXzt4gazJ4xRWypYzsAHISMS7aH7ls3z8WCmMNGuOr3sShrqQPBPMfe7IGBChZVVrD1MiQe9ADTghA6HVNfGdSI9YnqjAPyDNw47CLT3vARtH5BDToulRz/ofdTE/eXEj+S7q8rLhdfMaX4EYvJVX9o88ozZCpHfGAgSTyepdlD1H5N/QndVzr+Rlu/Gbvlf/DnQIai9EPZdkWFIf7Ddc6SBYCLPo9wFPvcMBgE7v/+YzMuKU6DjrihoqE8r+c5LtJFcpJEJv5FR3HccOnAKwItbUID1FJCLcjx98vpXgZYfdZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=trBhQKN2D09sqaV5W/nveEfPuUmQkEiWO7RE9DGubmw=;
 b=PXbsT0z9+jZbA1zalD8SiNvgMXHOqIh2RCJGBH+baXAiBwo2Hy2lmEpqPdO5eLx7A8YJV0+Ed5fQ01Fx9dPMCjPSBklupTgyc3LvV3OLQaM/NxDxI37aVZocQr62J2iNnpn6cuCP2WHkJAW6Gs8eCpW+13E5Z7TEPBiKtH0UfH591S9U6YpeZ+cDYelMQvi8G/Soc+yv8wPQ0iTA1fiFHCzh+qM/GoyF1R3UwIz2fw9j43MRnAD0jz80ta+GIg3FxoMja1YHaK6bwD2PEUomoN2uKNpyArQEhl7jsAv53CejZFwpguRliv8KMU0nbfkv+LWl43T7LglZ5JRkg6OtNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from BYAPR12MB2710.namprd12.prod.outlook.com (20.177.124.11) by
 BYAPR12MB3335.namprd12.prod.outlook.com (20.178.55.96) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.18; Fri, 30 Aug 2019 22:49:21 +0000
Received: from BYAPR12MB2710.namprd12.prod.outlook.com
 ([fe80::60a8:9757:8be2:2c56]) by BYAPR12MB2710.namprd12.prod.outlook.com
 ([fe80::60a8:9757:8be2:2c56%6]) with mapi id 15.20.2220.013; Fri, 30 Aug 2019
 22:49:21 +0000
From: Krishna Reddy <vdumpa@nvidia.com>
To: Robin Murphy <robin.murphy@arm.com>
Subject: RE: [PATCH 3/7] iommu/arm-smmu: Add tlb_sync implementation hook
Thread-Topic: [PATCH 3/7] iommu/arm-smmu: Add tlb_sync implementation hook
Thread-Index: AQHVXruLTOWAUKMP0EGEhzK6CNK386cT0DaAgAAq0XCAAEYjUA==
Date: Fri, 30 Aug 2019 22:49:21 +0000
Message-ID: <BYAPR12MB271010C629D8DD7AEC0123D4B3BD0@BYAPR12MB2710.namprd12.prod.outlook.com>
References: <1567118827-26358-1-git-send-email-vdumpa@nvidia.com>
 <1567118827-26358-4-git-send-email-vdumpa@nvidia.com>
 <554f8de1-1638-4eb9-59ae-8e1f0d786c44@arm.com>
 <BYAPR12MB2710AF5DDCB687C7E78362E5B3BD0@BYAPR12MB2710.namprd12.prod.outlook.com>
In-Reply-To: <BYAPR12MB2710AF5DDCB687C7E78362E5B3BD0@BYAPR12MB2710.namprd12.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Enabled=True;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_SiteId=43083d15-7273-40c1-b7db-39efd9ccc17a;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Owner=VDUMPA@nvidia.com;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_SetDate=2019-08-30T18:05:16.2199634Z;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Name=Unrestricted;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_ActionId=a3d3cc0f-e7fb-4c08-bde5-5c1a13761cab;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Extended_MSFT_Method=Automatic
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=vdumpa@nvidia.com; 
x-originating-ip: [216.228.112.21]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: eb70e79e-c26a-4e3a-ac7a-08d72d9c4c46
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR12MB3335; 
x-ms-traffictypediagnostic: BYAPR12MB3335:|BYAPR12MB3335:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR12MB3335B8B048546DE700BECB45B3BD0@BYAPR12MB3335.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0145758B1D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(136003)(396003)(39860400002)(376002)(346002)(189003)(199004)(7696005)(33656002)(316002)(54906003)(486006)(186003)(76176011)(26005)(6506007)(446003)(11346002)(476003)(102836004)(256004)(53936002)(55016002)(9686003)(25786009)(229853002)(4326008)(6246003)(71190400001)(86362001)(71200400001)(6116002)(2906002)(6436002)(6916009)(478600001)(8936002)(4744005)(14454004)(66556008)(66476007)(81156014)(64756008)(66446008)(8676002)(66946007)(66066001)(76116006)(305945005)(7736002)(81166006)(74316002)(3846002)(99286004)(2940100002)(5660300002)(52536014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR12MB3335;
 H:BYAPR12MB2710.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nvidia.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: UvKX4JZcb1sAr7wJt/c5xogan1C8OlK1ejZrvLaifvxkW7Xgmk4qHpQQU2koLnRuIc2WpxDCaWIzyv9O9Qcvu+SMmpiLum8pXgVd4EItxQeedmSr0AIeO9a/I/+mDWDDjGbuTtGgXxuoJuKCrPu1IAILmuu7ngRjAGYfrzSn4hhYqyCLrGDisipjJRhMWh+o7kV67gq6kEwr9rDHs+tU26JqVI6bWYKdUuJqdMBf6HPfHXPAknjecdwHFY6UTkiZXU+A/nkxc6aEO8TXVvyJ3LeZ8Zgt1Zvyc+fbQbdpbqTXvYGtUcleraI4z1GAj5jhNBm2D8HBHE1cCMTtOFnusiR6iz58NCv3EHs4poL2e2z3v1dXedeB4Wz5PSFHzgcckbYpcihQLdOl5rhhERk2ubkzwLWI+mBpit8kRunxEqE=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: eb70e79e-c26a-4e3a-ac7a-08d72d9c4c46
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Aug 2019 22:49:21.1714 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oQJYJrVEDn6CWC0pjnAA80o70FE52G1nzQGojtHqIXpBaeGAN6N3TvSH6Titz9R0ClubjYJRMgg8molLu32qNg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB3335
X-OriginatorOrg: Nvidia.com
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1567205368; bh=trBhQKN2D09sqaV5W/nveEfPuUmQkEiWO7RE9DGubmw=;
 h=X-PGP-Universal:ARC-Seal:ARC-Message-Signature:
 ARC-Authentication-Results:From:To:CC:Subject:Thread-Topic:
 Thread-Index:Date:Message-ID:References:In-Reply-To:
 Accept-Language:X-MS-Has-Attach:X-MS-TNEF-Correlator:msip_labels:
 authentication-results:x-originating-ip:x-ms-publictraffictype:
 x-ms-office365-filtering-correlation-id:x-microsoft-antispam:
 x-ms-traffictypediagnostic:x-ms-exchange-transport-forked:
 x-microsoft-antispam-prvs:x-ms-oob-tlc-oobclassifiers:
 x-forefront-prvs:x-forefront-antispam-report:received-spf:
 x-ms-exchange-senderadcheck:x-microsoft-antispam-message-info:
 MIME-Version:X-MS-Exchange-CrossTenant-Network-Message-Id:
 X-MS-Exchange-CrossTenant-originalarrivaltime:
 X-MS-Exchange-CrossTenant-fromentityheader:
 X-MS-Exchange-CrossTenant-id:X-MS-Exchange-CrossTenant-mailboxtype:
 X-MS-Exchange-CrossTenant-userprincipalname:
 X-MS-Exchange-Transport-CrossTenantHeadersStamped:X-OriginatorOrg:
 Content-Language:Content-Type:Content-Transfer-Encoding;
 b=cV6CYXZc3XxSgYkbEptzjKUZ2SLaG5bvWH60Sa4BZukhXdpGtUjNgFiWU534j06is
 ogt/ZLsyhVUQetRsJpOIdkbpcoQJJ2Kdm/rKzDzs8JL6sGsYpwQFscAFgWiehqV5BZ
 i56fdTtl+eqds//bY0RACi6F/3lB0TGg3CnS6GI3I7d7cdHXe7xKTe7nxYW0sZq26H
 SOQedgCRScvbP9n/ZiYN49hjRQxBm3nyuiPyCe56ncARCkaC88FB6YlpvzjOr8kGkI
 +mrjOicSeX7G7wacK/JrPzlTYl1tddVrXMCsbskjbrHNCsgDzUH90DgsmDLf+yxdfm
 qHH/v4WuH5xbQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_154930_099158_6D704D3D 
X-CRM114-Status: UNSURE (   6.83  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Timo Alho <talho@nvidia.com>, Thierry Reding <treding@nvidia.com>,
 Mikko Perttunen <mperttunen@nvidia.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "joro@8bytes.org" <joro@8bytes.org>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 Pritesh Raithatha <praithatha@nvidia.com>,
 "Thomas Zeng \(SW-TEGRA\)" <thomasz@nvidia.com>,
 Sachin Nikam <Snikam@nvidia.com>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 Yu-Huan Hsu <YHsu@nvidia.com>, Juha Tukkinen <jtukkinen@nvidia.com>,
 Alexander Van Brunt <avanbrunt@nvidia.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

>> +	if (smmu->impl->tlb_sync) {
>> +		smmu->impl->tlb_sync(smmu, page, sync, status);

>What I'd hoped is that rather than needing a hook for this, you could just override smmu_domain->tlb_ops from .init_context to wire up the alternate .sync method directly. That would save this extra level of indirection.

Hi Robin,  overriding tlb_ops->tlb_sync function is not enough here.
There are direct references to arm_smmu_tlb_sync_context(),  arm_smmu_tlb_sync_global() functions.
In arm-smmu.c.  we can replace these direct references with tlb_ops->tlb_sync() function except in one function arm_smmu_device_reset().  
When arm_smmu_device_reset() gets called, domains are not initialized and tlb_ops is not available. 
Should we add a new hook for arm_smmu_tlb_sync_global() or make this as a responsibility of impl->reset() hook as it gets
called at the same place?

-KR 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
