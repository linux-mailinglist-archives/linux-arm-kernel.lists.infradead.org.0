Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C9C21DEEF4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 20:10:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N7tGgLtGgV3bu/1SCVEgUHLIr3wvyXWKEwvWLIp8xdE=; b=hMBG53b8xCtTJy
	pfEjVpMspOFILjB0cauLkenTt1tkyd9Bl8chvNPKmtVyrJb8DhkI9UdY2c7yE8sosgHlwYEONtIbv
	YSYZTd2GUPll3DU/QX4CC6xxNWopDGSeummlCABw+HqwOLU0udpbO2wpo/FJzWBGV4jk5hlZnnlQQ
	cmcPsZts5ITs5EjOKVaQcJnufgu/jIqy8BpTOniEIgdv6BEA42zVi/YnlTD58zQV/v0oBfnIacvfb
	rvkbHaKgHr/1XsGRrBx14UmAnP04rjhgpXpT3kQD30OwYxIXCR0HhkASKTDha35/UK6ssda+vfpF3
	5Z6j38te+EH59akh4bvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcC81-0006Ba-Dv; Fri, 22 May 2020 18:10:41 +0000
Received: from hqnvemgate25.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcC7n-00066j-ND
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 18:10:30 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate25.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5ec815420003>; Fri, 22 May 2020 11:09:06 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Fri, 22 May 2020 11:10:26 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Fri, 22 May 2020 11:10:26 -0700
Received: from HQMAIL107.nvidia.com (172.20.187.13) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 22 May
 2020 18:10:26 +0000
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by HQMAIL107.nvidia.com (172.20.187.13) with Microsoft SMTP Server (TLS) id
 15.0.1473.3 via Frontend Transport; Fri, 22 May 2020 18:10:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nj0dCoMvb17YpWqUDCGAsksHxrvCyE/BWCeCCJ2TCaQQMcwGFeTD+d7lMQ/3agzEfQ7AqL4Vpv1ioBgDuhPBTtMQBxXKJfiHO1y9IyoE9EIA7nBIRMLSciXFHvmfIETxMTXf6iF0j2m+vI+PA9UHIpI+Upre/sZC09cKCeW9sZTnOts5UFQRcF4MHEh9YuFrcUqgtZCBVAt30Bi1noZ6gdgorveu6zGQyoVmVEZj+Bs1cAQ3Ds2WqIR/VfppY0SZEYdQJG+B3YVh9ZMHc1uk1INVxAv30A+hYTBDw5qO+ONm3KWv4qEI5puZSbgr/Y27ncilizOPQj48/eb6127jVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f/AWzbqnXxlhoRAOIUN3PC1WmhdTIhzrXdtAhLi/5TA=;
 b=E4hQUZHdjivLIWEai7zp0Q4YvlFHqHu7jgRaf0c605zvywYGpLDpYyAuAecjWmWrv2LkmFeWiSleLlMLCQGQED5EuEYE2Q/Q6ZcqPG/hGLKNz9tEwnoip8J5g89Lv0+dvxJkofZ5oc+3m2pIRPiHquxu6kuL0KeFAW/TUyqXCC+vGUrGWddSgQ7yLddWOGDFCrq1p6P73rgDFRWnpgpNjxje26PRhySoEK6YIWgO3T7+CCjfMSNTQYlLG5U6CuYlJfzqoAn2kUdgmC8WhKbxKxyoJGO7+oAUWF70ckhSYkLKpE8iPdkZAh672cT7/BfAIhdX/0xBJrYbISIFlW2gxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from BYAPR12MB2710.namprd12.prod.outlook.com (2603:10b6:a03:68::11)
 by BYAPR12MB3432.namprd12.prod.outlook.com (2603:10b6:a03:ac::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.20; Fri, 22 May
 2020 18:10:24 +0000
Received: from BYAPR12MB2710.namprd12.prod.outlook.com
 ([fe80::1d05:9263:557d:e8a6]) by BYAPR12MB2710.namprd12.prod.outlook.com
 ([fe80::1d05:9263:557d:e8a6%3]) with mapi id 15.20.3021.020; Fri, 22 May 2020
 18:10:24 +0000
From: Krishna Reddy <vdumpa@nvidia.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: RE: [PATCH v5 0/5] Nvidia Arm SMMUv2 Implementation
Thread-Topic: [PATCH v5 0/5] Nvidia Arm SMMUv2 Implementation
Thread-Index: AQHWL8f5lKtyjrvqv0q1G81xVAkq1ai0N+IAgAAxEhA=
Date: Fri, 22 May 2020 18:10:23 +0000
Message-ID: <BYAPR12MB27108F134E65484613449B07B3B40@BYAPR12MB2710.namprd12.prod.outlook.com>
References: <20200521233107.11968-1-vdumpa@nvidia.com>
 <20200522151444.GB2374603@ulmo>
In-Reply-To: <20200522151444.GB2374603@ulmo>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Enabled=True;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_SiteId=43083d15-7273-40c1-b7db-39efd9ccc17a;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Owner=VDUMPA@nvidia.com;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_SetDate=2020-05-22T18:10:21.7852339Z;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Name=Unrestricted;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_ActionId=cb7d82d7-369a-4043-9871-c3f0c5ea7075;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Extended_MSFT_Method=Automatic
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=nvidia.com;
x-originating-ip: [216.228.112.22]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f641e402-d596-43d6-35e3-08d7fe7b6613
x-ms-traffictypediagnostic: BYAPR12MB3432:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR12MB343233C2BA83284B856E17C2B3B40@BYAPR12MB3432.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 04111BAC64
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: l5tg0yeQYwZ+ntyUMpBrBrr8zf6DnI8s2v7c6qeXYM/u8bTQjCTjR7chopqTPQ2iMZPmXNi/Row41Ix/UlU8ngKuK4vBp6KqKUfkiE/9moXyy9RmyK785gCKWtFS2Un/eygfX3oKrtU1pD+RLaJCALotduCjwMYUcKwGTtXVUNE6Rp2z451caLkk3xwTmnaStR3JX1pveMxh7vFsvZJEhuN0LdWD3pIeRvaD1gl46WmzIn8gdjm2MANHZem91cp2pdl/fJRZWOh45A1/eob3otajGQNwHC6aVOjEdEg3KUyi185c7pGrhANtuVP90nMqZI1yaPGz/l15FvPPIPf8DS66xF97L1fL7FXIvTeVZ+F8yfJxC58Wd+B8mov9DCpKn6Di+0BTFosK9R/7Tunrqq76Htub800zYCbjEaTOepQBWra8+nSTYXEFmop/4aom6D+BGQIzX5yt0tdgK9GD6CLucX8aWEkPu9pf5W1KgR8LFbk+RI2qqphRgFJo3+O3ygujRi1JdwiKBmwGigP+bA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR12MB2710.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(39860400002)(346002)(136003)(376002)(396003)(66476007)(107886003)(186003)(7696005)(8936002)(2906002)(26005)(33656002)(6916009)(71200400001)(6506007)(4326008)(54906003)(86362001)(64756008)(66946007)(66556008)(478600001)(5660300002)(9686003)(966005)(76116006)(8676002)(52536014)(66446008)(316002)(55016002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: yLI4mfd0oeGSh88lDbqOUgjLjZAxZ8Yev0TlhyFAJQ9aoon9sexSvYQK7lpq2Vqt6DPMcV8W7WgQ1FZeJtsvwxrRtq+J73PQgNXDfSGKWlP9p9kwntPu5G4MW5VHr75Y+OHvyjxeZ0W9JplWBfP7QwV+wnJSCZK5dc3TzS0NIi/rjl3T2rZFCT+D4Z0uYcE2TG+7UJMXk5PPdVAfYI/nfCH6PFgkDRSYr9jTPMArQWDwjguyLz3v/opuInUafb4Mvkft930eQwmw62Pf7Wh81hZRDRh+ywwHSptylCsuwerKJ0tO80Z55L1wx0SmQixCAtwZZHdWY/Uo33wpd9RJLiR1VcOvrB24uMj5i8Ubo8JVXPOO8eQxJwuzzix/Y97aTzyWbn/Gi5BL6tntPBzLDysbVRqKdHoP2GKUsvM/nRwtfWntleKjsoBJ5LGiVQpxbF4OaXAsMQcaonBWS1rpa0pzL8anf/HLBgJ9YF+Z5d0OHKpaDavSjWSL0HxRd/oj
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: f641e402-d596-43d6-35e3-08d7fe7b6613
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2020 18:10:24.1153 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ohyYhpCrok9IPYyVLlEXCf/pUVJUGmr2578lw6jfblnakA2z0uF1IQZkYenSVWNjixIZcll/WtlN82J4napgqA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB3432
X-OriginatorOrg: Nvidia.com
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1590170946; bh=f/AWzbqnXxlhoRAOIUN3PC1WmhdTIhzrXdtAhLi/5TA=;
 h=X-PGP-Universal:ARC-Seal:ARC-Message-Signature:
 ARC-Authentication-Results:From:To:CC:Subject:Thread-Topic:
 Thread-Index:Date:Message-ID:References:In-Reply-To:
 Accept-Language:X-MS-Has-Attach:X-MS-TNEF-Correlator:msip_labels:
 authentication-results:x-originating-ip:x-ms-publictraffictype:
 x-ms-office365-filtering-correlation-id:x-ms-traffictypediagnostic:
 x-ms-exchange-transport-forked:x-microsoft-antispam-prvs:
 x-ms-oob-tlc-oobclassifiers:x-forefront-prvs:
 x-ms-exchange-senderadcheck:x-microsoft-antispam:
 x-microsoft-antispam-message-info:x-forefront-antispam-report:
 x-ms-exchange-antispam-messagedata:MIME-Version:
 X-MS-Exchange-CrossTenant-Network-Message-Id:
 X-MS-Exchange-CrossTenant-originalarrivaltime:
 X-MS-Exchange-CrossTenant-fromentityheader:
 X-MS-Exchange-CrossTenant-id:X-MS-Exchange-CrossTenant-mailboxtype:
 X-MS-Exchange-CrossTenant-userprincipalname:
 X-MS-Exchange-Transport-CrossTenantHeadersStamped:X-OriginatorOrg:
 Content-Language:Content-Type:Content-Transfer-Encoding;
 b=RoT96hQ3/dJNprhs89miTOEcPTQGRChYsO+IP3RYmW2GPo3T3W8nT3Nk6txGT6Bas
 lODWIcraLtAUkwm+ey8XNBBRTLh9yZAP1XA2tvJx1U9uJjoqnDzRFeGpxCREme4NUI
 LbplikAKdP78K8a6kP9KtZjG/6dqcQpwuXfqYntgVy81LzYk6aKpXL7zSoxB+3m/mS
 6gO0T6Km73alPqRSezx7cKDIEGoIq8jUhjmqjBR30JomTM5D8JCwQGIc3oJ5wfABrh
 vAzZcCSld/zCTZIR2qaAUn1J+X349NVM258o/+JlPFI7I/jdyRL4jhgEp+j9esJ+zw
 3ucFnTbTcMyKQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_111027_847685_251CB1E3 
X-CRM114-Status: GOOD (  30.60  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Thierry Reding <treding@nvidia.com>, Bryan Huntsman <bhuntsman@nvidia.com>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 "joro@8bytes.org" <joro@8bytes.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 Mikko Perttunen <mperttunen@nvidia.com>, Timo Alho <talho@nvidia.com>,
 Sachin Nikam <Snikam@nvidia.com>, Nicolin Chen <nicolinc@nvidia.com>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 Yu-Huan Hsu <YHsu@nvidia.com>, Pritesh Raithatha <praithatha@nvidia.com>,
 "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Bitan Biswas <bbiswas@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

>For the record: I don't think we should apply these because we don't have a good way of testing them. We currently have three problems that prevent us from enabling SMMU on Tegra194:

Out of three issues pointed here, I see that only issue 2) is a real blocker for enabling SMMU HW by default in upstream.

>That said, I have tested earlier versions of this patchset on top of my local branch with fixes for the above and they do seem to work as expected.
>So I'll leave it up to the IOMMU maintainers whether they're willing to merge the driver patches as is.
> But I want to clarify that I won't be applying the DTS patches until we've solved all of the above issues and therefore it should be clear that these won't be runtime tested until then.

SMMU driver patches as such are complete and can be used by nvidia with a local config change(CONFIG_ARM_SMMU_DISABLE_BYPASS_BY_DEFAULT=n) to disable_bypass and
Protects the driver patches against kernel changes. This config disable option is tested already by Nicolin Chen and me.

Robin/Will, Can you comment if smmu driver patches alone(1,2,3 out of 5 patches) can be merged without DT enable patches? Is it reasonable to merge the driver patches alone?

>1) If we enable SMMU support, then the DMA API will automatically try
>     to use SMMU domains for allocations. This means that translations
>     will happen as soon as a device's IOMMU operations are initialized
>     and that is typically a long time (in kernel time at least) before
>     a driver is bound and has a chance of configuring the device.

>     This causes problems for non-quiesced devices like display
>     controllers that the bootloader might have set up to scan out a
>     boot splash.

>     What we're missing here is a way to:

>     a) advertise reserved memory regions for boot splash framebuffers
>     b) map reserved memory regions early during SMMU setup

>     Patches have been floating on the public mailing lists for b) but
>     a) requires changes to the bootloader (both proprietary ones and
>     U-Boot for SoCs prior to Tegra194).

This happens if SMMU translations is enabled for display before reserved
 Memory regions issue is fixed. This issue is not a real blocker for SMMU enable.


>  2) Even if we don't enable SMMU for a given device (by not hooking up
>     the iommus property), with a default kernel configuration we get a
>     bunch of faults during boot because the ARM SMMU driver faults by
>     default (rather than bypass) for masters which aren't hooked up to
>     the SMMU.

>     We could work around that by changing the default configuration or
>     overriding it on the command-line, but that's not really an option
>     because it decreases security and means that Tegra194 won't work
>     out-of-the-box.

This is the real issue that blocks enabling SMMU.  The USF faults for devices
that don't have SMMU translations enabled should be fixed or WAR'ed before
SMMU can be enabled. We should look at keeping SID as 0x7F for the devices
that can't have SMMU enabled yet. SID 0x7f bypasses SMMU externally.

>  3) We don't properly describe the DMA hierarchy, which causes the DMA
>     masks to be improperly set. As a bit of background: Tegra194 has a
>     special address bit (bit 39) that causes some swizzling to happen
>     within the memory controller. As a result, any I/O virtual address
>     that has bit 39 set will cause this swizzling to happen on access.
>     The DMA/IOMMU allocator always starts allocating from the top of
>     the IOVA space, which means that the first couple of gigabytes of
>     allocations will cause most devices to fail because of the
>     undesired swizzling that occurs.

>     We had an initial patch for SDHCI merged that hard-codes the DMA
>     mask to DMA_BIT_MASK(39) on Tegra194 to work around that. However,
>     the devices all do support addressing 40 bits and the restriction
>     on bit 39 is really a property of the bus rather than a capability
>     of the device. This means that we would have to work around this
>     for every device driver by adding similar hacks. A better option is
>     to properly describe the DMA hierarchy (using dma-ranges) because
>     that will then automatically be applied as a constraint on each
>     device's DMA mask.

>     I have been working on patches to address this, but they are fairly
>     involved because they require device tree bindings changes and so
>     on.

Dma_mask issue is again outside SMMU driver and as long as the clients with
Dma_mask issue don't have SMMU enabled, it would be fine.
SDHCI can have SMMU enabled in upstream as soon as issue 2 is taken care.

>So before we solve all of the above issues we can't really enable SMMU on Tegra194 and hence won't be able to test it. As such we don't know if these patches even work, nor can we validate that they continue to work.
>As such, I don't think there's any use in applying these patches upstream since they will be effectively dead code until all of the above issues are resolved.
>   arm64: tegra: Add DT node for T194 SMMU
>   arm64: tegra: enable SMMU for SDHCI and EQOS on T194
>This one is going to cause EQOS to break because of 3) above. It might work for SDHCI because of the workaround we currently have in that driver. However, I do have a local patch that reverts the workaround and replaces it with the proper fix, which uses dma->ranges as mentioned above.

The DT patches can't be merged as of now. The enable patches can follow up later after issue 2 is fixed.

>I expect it will take at least until v5.9-rc1 before we have all the changes merged that would allow us to enable SMMU support.

Thierry

>  .../devicetree/bindings/iommu/arm,smmu.yaml   |   5 +
>  MAINTAINERS                                   |   2 +
>  arch/arm64/boot/dts/nvidia/tegra194.dtsi      |  81 ++++++
>  drivers/iommu/Makefile                        |   2 +-
>  drivers/iommu/arm-smmu-impl.c                 |   3 +
>  drivers/iommu/arm-smmu-nvidia.c               | 261 ++++++++++++++++++
>  drivers/iommu/arm-smmu.c                      |  11 +-
>  drivers/iommu/arm-smmu.h                      |   4 +
>  8 files changed, 366 insertions(+), 3 deletions(-)  create mode 
> 100644 drivers/iommu/arm-smmu-nvidia.c
> 
> 
> base-commit: 365f8d504da50feaebf826d180113529c9383670
> --
> 2.26.2
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
