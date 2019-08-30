Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF8D6A3D78
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 20:12:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sgn0y/nKCLNeW1Xe733Pulv9sAln7/x3wCfGPyYWE1k=; b=iYZgQMhG55poD3
	O5Jhf0ONx/P4ZqPOtj29FnRWpR37AE4sRRUW88/YO7D2oC0FxwVpnkFI21KDFoaNvZcaCIDBLQkFF
	Bt2C9lA39/Xk9mmPSwje+n4QCkuiUCxSjZ1/5A4XdDVKCYdPz95/+vW7L0OLj2sHzbCLWABDSJw69
	GDYTDZULg0ji4Cn2eG55OhC31QFINR8Dh7e2cECgt/xbkK6DZMvxOkMoDEZgoNB1G/I47a54iQiDU
	qts7mulQgScPmrancTXKEsWODRnUX11O1jlKTftQstfXuAhHnfQvizBFWjMweGCbmDS18eD04PYqu
	3ZI4baM/o1G1rsSQ4OHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3lNr-0002iT-7A; Fri, 30 Aug 2019 18:12:27 +0000
Received: from nat-hk.nvidia.com ([203.18.50.4])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3lNd-0002he-Db
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 18:12:16 +0000
Received: from hkpgpgate101.nvidia.com (Not Verified[10.18.92.100]) by
 nat-hk.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d6966fb0000>; Sat, 31 Aug 2019 02:12:11 +0800
Received: from HKMAIL102.nvidia.com ([10.18.16.11])
 by hkpgpgate101.nvidia.com (PGP Universal service);
 Fri, 30 Aug 2019 11:12:11 -0700
X-PGP-Universal: processed;
 by hkpgpgate101.nvidia.com on Fri, 30 Aug 2019 11:12:11 -0700
Received: from HKMAIL103.nvidia.com (10.18.16.12) by HKMAIL102.nvidia.com
 (10.18.16.11) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 30 Aug
 2019 18:12:11 +0000
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (104.47.38.51) by
 HKMAIL103.nvidia.com (10.18.16.12) with Microsoft SMTP Server (TLS)
 id
 15.0.1473.3 via Frontend Transport; Fri, 30 Aug 2019 18:12:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RpBXupuwK6rr4hu6KtDg0qVNNFT3jBDhDqpAY6dM3PjEfk/POJvs0VikVGxM/9d6ll4SalXJ/22s5J9DPt8g72c5+cijVkyg2GFnhZ5saxuUxgs4AsF4EhCi8f1cPpFz0trj4WOEBmVfsiIza3wFYOgUWK1Tzg5VLcNm81uheDd0UZ4Km4dAt6rERNtuDbv/uIiXI29Fi2HA25p6F7DP/e/zvizj6GIrJ9icFU1QjgVXFuS61hRK9P7tzfe0P1WFR+LJuRTDqJ5c6x0Curw47yCajslYS3PkqrAVtJM4Zr4lrKISzUnnv+e1sKyWWNdc31bU3LwPghhJzoMdv+ZmaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=afkDbhS5QlnNmnCKmQRcQ2VHcTWD0C8t7DOHFHJwYYo=;
 b=ljAdvvTY6dtARATP9DGkBGbCyHnls4AvDjZxAmELKzaBzacrH+UWXJOlOfgUVSpRHT/XSDLS1SmxdGDiVQWF463kb0NyQ3DAsvcCy6FiALKquM4AgmND765PhjGJRVkiDWTFZS+aG8txKWUNxSDyEhAro8iEtWKPY9TVEBTzLbRiFNlDK0ayw3JQaCPRWmiwOLFQqSbd9tuFSqBoVcB0CF8NPb4OY0DlQFaWsI6CvF0uSjXEQ4yDFhVGcJKUZQmbOd/3v6PkGg0lrfwUEZGVUdtbYtkKaCioOH4F9rGqB9W0gXDDXl7iBs8uNOdvwFAHSi3JIHIfUTuyhTHXGq7i6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from BYAPR12MB2710.namprd12.prod.outlook.com (20.177.124.11) by
 BYAPR12MB3400.namprd12.prod.outlook.com (20.178.196.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.19; Fri, 30 Aug 2019 18:12:08 +0000
Received: from BYAPR12MB2710.namprd12.prod.outlook.com
 ([fe80::60a8:9757:8be2:2c56]) by BYAPR12MB2710.namprd12.prod.outlook.com
 ([fe80::60a8:9757:8be2:2c56%6]) with mapi id 15.20.2220.013; Fri, 30 Aug 2019
 18:12:08 +0000
From: Krishna Reddy <vdumpa@nvidia.com>
To: Robin Murphy <robin.murphy@arm.com>
Subject: RE: [PATCH 2/7] dt-bindings: arm-smmu: Add binding for nvidia, smmu-v2
Thread-Topic: [PATCH 2/7] dt-bindings: arm-smmu: Add binding for nvidia,smmu-v2
Thread-Index: AQHVXruKO4f1UhWPvU2lIJwxk9hV3KcTzW4AgAAwllA=
Date: Fri, 30 Aug 2019 18:12:08 +0000
Message-ID: <BYAPR12MB271012F225E35C1459E58D07B3BD0@BYAPR12MB2710.namprd12.prod.outlook.com>
References: <1567118827-26358-1-git-send-email-vdumpa@nvidia.com>
 <1567118827-26358-3-git-send-email-vdumpa@nvidia.com>
 <37034b76-7e3f-5f3c-25b2-696e25127682@arm.com>
In-Reply-To: <37034b76-7e3f-5f3c-25b2-696e25127682@arm.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Enabled=True;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_SiteId=43083d15-7273-40c1-b7db-39efd9ccc17a;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Owner=VDUMPA@nvidia.com;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_SetDate=2019-08-30T18:12:05.1263803Z;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Name=Unrestricted;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_ActionId=95932347-7c76-49bd-9d4a-388d72b92c7b;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Extended_MSFT_Method=Automatic
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=vdumpa@nvidia.com; 
x-originating-ip: [216.228.112.21]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 93d802a6-50f7-4835-5cbb-08d72d759233
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR12MB3400; 
x-ms-traffictypediagnostic: BYAPR12MB3400:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR12MB3400D4A911FD3BE3E9238CC8B3BD0@BYAPR12MB3400.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0145758B1D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(136003)(39860400002)(346002)(366004)(376002)(199004)(189003)(7736002)(54906003)(6506007)(86362001)(5660300002)(229853002)(486006)(71190400001)(9686003)(6436002)(99286004)(74316002)(76176011)(11346002)(4744005)(55016002)(102836004)(476003)(316002)(52536014)(26005)(7696005)(6116002)(3846002)(6246003)(256004)(33656002)(6916009)(76116006)(446003)(186003)(66946007)(53936002)(66556008)(64756008)(71200400001)(305945005)(66066001)(81156014)(14454004)(8936002)(4326008)(81166006)(66446008)(25786009)(66476007)(478600001)(2906002)(8676002)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR12MB3400;
 H:BYAPR12MB2710.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nvidia.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 3PqVvmI6GIYh8oTFFZZ/coh+01+yUXp8EGuGYw5MGYV0K6XIADIHfQDFINe73bk+WNi/TZsUhmryhFy+IFzE+imJjG63xCgOJWsUdcvnEMwjeidiWkxrDeAVVJptsUdu4RkftMF0cNFkMnzZbU0Luu0L7O6o6YeOsiSgdpIRVUUcxDARCsPen2F5nQA3KCmnVizckDGsXQeIiUtgfeCJzRlLIr7kUzMf9Upf9iVHcxL/my6w3iLq7x9d63GSbyU094bX51KGa0o1zUxbRRyav83pdrnQLXwRwpc8wKDfI6xYkoVCWW3VxV68jm0k4GbjB3msE1z5RAYXavIpRJW4oj1oovbZFUB8sP34TocxSukIts+Kg3zxwhACFkA4Tmfg+EsXmEn1/xmT00/AnWeBoz2JuJBxzRQltXwyq+7iURc=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 93d802a6-50f7-4835-5cbb-08d72d759233
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Aug 2019 18:12:08.2298 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: l1TgTOLpMuHg+fSx0Bix1MVsfkuljfIqXKye436zSyDnycwTQ2TlVDMDcrFeFjGRLz+dVKfA85tSMWwYchPkVQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB3400
X-OriginatorOrg: Nvidia.com
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1567188731; bh=afkDbhS5QlnNmnCKmQRcQ2VHcTWD0C8t7DOHFHJwYYo=;
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
 b=MafNGO9y5FPOyLgc4gHSnPBpPuD7B5+I9NEgnkkt1Wu82aE9QQ83rvrEa1LBB5gcM
 HasetZfr8V+pX63W5WtwdkaCjm8N5S7KixzdasA/DNu6GFGly3qZUaSMbXeBBgNTwm
 +hKJfuIcaB9K8MsqFUYH8Ud7PWsRj5zwESOVT+UWrWNbZJw4p3BCb8+4njIUVwD4Af
 GYXIbwE4fy0EAv+zbTAvRdlDHO8Tepn3Qjkl0mdYLvdLNd2LG+X47pIS0nRDix9AnN
 /7XNo8huQD+KGPsbjSEGRdCKuKOxDqf/7ZUdc4luLY8LtHJ61MXP7UoiCAIhe8afEK
 kqlJbI8slxtgw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_111213_933274_D061C308 
X-CRM114-Status: UNSURE (   6.13  )
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

>> +                        "nidia,smmu-v2"
>>                           "qcom,smmu-v2"

>I agree with Mikko that the compatible must be at least SoC-specific, but potentially even instance-specific (e.g. "nvidia,tegra194-gpu-smmu")
> depending on how many of these parallel-SMMU configurations might be hiding in current and future SoCs.

I am correcting the spelling mistake pointed by Mikko.  The NVIDIA SMMUv2 implementation is getting used beyond  Tegra194 SOC.  
To be able to use the smmu compatible string across multiple SOC's, "nvidia,smmu-v2" compatible string is chosen.
Are you suggesting to make it soc specific and add another one in future?

-KR
 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
