Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF96FA3D23
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 19:44:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JLt+W8c50oR9sV13zoe5rp8wGDsgEZ1f2eMfvmf4V7c=; b=r49UbRe0X4Qhk3
	tpaoMEqlzjqiYg+6BukFOHEnahnh28TDzJO2/Z0zWXzH70aFFtuJbmBL1+s+QUU9gHmfVc7fcWXJ+
	W1q63HpzYbOlRocf1isCuYbFiOJdowsJUpzS1TRz588N0dxhz5xbW0jPihL7fHmnytVF5L1IDr6Uq
	hZY0i4bOeJHdVJbUg5NP/tjY9OMr0UXXTXgE6vObJ6U+UOuAg8YZFY0yhVAAvMMcRuFYPTGqyODhc
	WS644HYHVgvSX0hKjb9xiAzmi+U616gpMdvyAvrLndSi4E6hRc65pPZzY4FuUlvvQbYq2s650Vza5
	5yUgCzx+YhIFjg3qwAaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3kwP-0001we-R2; Fri, 30 Aug 2019 17:44:05 +0000
Received: from nat-hk.nvidia.com ([203.18.50.4])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3kwC-0001w9-P2
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 17:43:54 +0000
Received: from hkpgpgate102.nvidia.com (Not Verified[10.18.92.100]) by
 nat-hk.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d6960580000>; Sat, 31 Aug 2019 01:43:52 +0800
Received: from HKMAIL102.nvidia.com ([10.18.16.11])
 by hkpgpgate102.nvidia.com (PGP Universal service);
 Fri, 30 Aug 2019 10:43:48 -0700
X-PGP-Universal: processed;
 by hkpgpgate102.nvidia.com on Fri, 30 Aug 2019 10:43:48 -0700
Received: from HKMAIL104.nvidia.com (10.18.16.13) by HKMAIL102.nvidia.com
 (10.18.16.11) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 30 Aug
 2019 17:43:48 +0000
Received: from NAM03-CO1-obe.outbound.protection.outlook.com (104.47.40.50) by
 HKMAIL104.nvidia.com (10.18.16.13) with Microsoft SMTP Server (TLS)
 id
 15.0.1473.3 via Frontend Transport; Fri, 30 Aug 2019 17:43:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iO38ARpPONeyrT738c+cQRi0jbxFhh2Otikb0ityZjtTW2UFm+VgaT6uEsWmAEHdrUFeW+L/eb96mCQpxlUgpvJPstCbNOhs4mjcB2oSYvdbdnneylg0GQCUsnXzfV3lOIf39iHajb1vh/FJY/3K6eZ7kchqZUfooOZaLVVkEbrG6Iqy7MHK67Q16lLzPow0Owa3GsNEH67Fyja2F45w9np40GSMc36bZ55vYTgl3pVYwnxjQJ/E1ISbnB8MNFG0bxMQZaMhAq9nMfPfKZvyhOLKafYyP4+2+QyrR2XlHJltADyGIvs0zH3DFHajNC2fdEQs+14UQpRlWF11MSk+7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zfUXQKQDnXTEp6T+yicr8c9bK0HtjVyHrhxnOSQ/CVY=;
 b=B1qRF7IJ2NXroF/vmtP5dp5WyCsfqaacndxhkMX1g77DetCDY9gJlyoCPkX8wwwjKyirSB/jjkdIj/zP66GdsYw+deRL1R69NGn1obFrVxc4ILB8i4JEpMJoY7EwJWYewEhRZoIkBTn+L5ws+gdM3p/iGo6wy7UX6xS0CctBR4E6UEHM2qShn3Z2QGgZcDrr/ZPJsKGl751CnqnySW9Rel5rnfYg/o1//fxDpK7l1hDSa0hjjUHyiDsRtrefj+7fL4FKJGS01GjFpkgUu3hy69orPk0qSNhopFJ1oSaiRTyS/uHJsoVM9vO+YNP4RNM1NULRuibfU9ATnjMBVf5T4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from BYAPR12MB2710.namprd12.prod.outlook.com (20.177.124.11) by
 BYAPR12MB2872.namprd12.prod.outlook.com (20.179.90.213) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Fri, 30 Aug 2019 17:43:46 +0000
Received: from BYAPR12MB2710.namprd12.prod.outlook.com
 ([fe80::60a8:9757:8be2:2c56]) by BYAPR12MB2710.namprd12.prod.outlook.com
 ([fe80::60a8:9757:8be2:2c56%6]) with mapi id 15.20.2220.013; Fri, 30 Aug 2019
 17:43:46 +0000
From: Krishna Reddy <vdumpa@nvidia.com>
To: Robin Murphy <robin.murphy@arm.com>
Subject: RE: [PATCH 4/7] iommu/arm-smmu: Add global/context fault
 implementation hooks
Thread-Topic: [PATCH 4/7] iommu/arm-smmu: Add global/context fault
 implementation hooks
Thread-Index: AQHVXruKZbtcs6ei/UWKtdObCjFLnacT1eUAgAAfx5A=
Date: Fri, 30 Aug 2019 17:43:45 +0000
Message-ID: <BYAPR12MB2710A68E954049D70832E167B3BD0@BYAPR12MB2710.namprd12.prod.outlook.com>
References: <1567118827-26358-1-git-send-email-vdumpa@nvidia.com>
 <1567118827-26358-5-git-send-email-vdumpa@nvidia.com>
 <5ab7c402-344d-0967-2ecf-21e24ecd0a0f@arm.com>
In-Reply-To: <5ab7c402-344d-0967-2ecf-21e24ecd0a0f@arm.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Enabled=True;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_SiteId=43083d15-7273-40c1-b7db-39efd9ccc17a;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Owner=VDUMPA@nvidia.com;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_SetDate=2019-08-30T17:43:42.8305325Z;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Name=Unrestricted;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_ActionId=4c195e78-407e-47cb-9fe2-7fe2b1c29894;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Extended_MSFT_Method=Automatic
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=vdumpa@nvidia.com; 
x-originating-ip: [216.228.112.21]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0ccf2b78-daea-4232-52a5-08d72d719bb7
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR12MB2872; 
x-ms-traffictypediagnostic: BYAPR12MB2872:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR12MB2872B92A6C40BD6C375E217DB3BD0@BYAPR12MB2872.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0145758B1D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(136003)(366004)(346002)(396003)(376002)(189003)(199004)(66476007)(64756008)(66446008)(76116006)(66946007)(66556008)(4326008)(2906002)(86362001)(66066001)(71200400001)(7696005)(229853002)(76176011)(71190400001)(4744005)(5660300002)(186003)(25786009)(256004)(6246003)(446003)(53936002)(476003)(9686003)(6436002)(11346002)(6916009)(6506007)(52536014)(8936002)(305945005)(26005)(14454004)(99286004)(7736002)(102836004)(74316002)(81166006)(478600001)(6116002)(81156014)(3846002)(316002)(33656002)(8676002)(54906003)(55016002)(14444005)(486006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR12MB2872;
 H:BYAPR12MB2710.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nvidia.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: M4WxBu89mlgnmS5ifBpoZEbMWCVnH6yAB1M5OWPawg3tGbnVEZld7ipvO17Q9u2aJmD4N0VOtEOdoY5nJsqPPoPfDu3pf+FxlVFfGJ4YbBghDRHjnbivNbTJUus1TcO2oRAuSTKPyySM1kwn/euroBVncKaaiOO1RI2JofbhKkssbug8U49uoCERlg6tIPBkSgHRxVRZnY/8I7DrdRy8lDhYa84kw57UIchsWd8tkpRIbAgoYRb14q48Hx8gz2mL0fTF6btoutwON1ZofjqLN0+mmchA/PVdepVljqVzaWGjP7IXgnw5VRVqa1q5ImY5LTjaybjahlIrzAj0k3tWCWU/lCw7VpyCyCNsf4/Ad87+x7mBzA34Epjg2auLVYxLZQTEENTyqoDynz0pGBWCJwIAz54C2KC3nqYMW2IxM7g=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ccf2b78-daea-4232-52a5-08d72d719bb7
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Aug 2019 17:43:46.1192 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: x87b3sUUHl5NLZ7YEHpmsGieqnGBiQHAmboxRKkFR9GCBXEij3LwFDwjvheG4HBSXnEhdAaHbom92VVtmljlcg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB2872
X-OriginatorOrg: Nvidia.com
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1567187032; bh=zfUXQKQDnXTEp6T+yicr8c9bK0HtjVyHrhxnOSQ/CVY=;
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
 b=krYPQkH1wZra24IbRn4Bw6cBZLjoRPQCrgyFS3I+QvZuRxK6zKO9e+6T4pcjNxDPr
 qfWXlQElyrvngguZfAyccaYIQIn1OqxfAdMyYkHXXTe8TQabWBq3u/YLqlxvxQ8Qtl
 FhYOk6wndOcSQ4EF2Y8kjO6ppU5fIKKlpS686bR3ZTeaGZV9l2v4iqbz/er/XZZJ3H
 3QEQFHPAnwqA1HYhcQ9zNrsAD6YFmvBHRCRucy1VrHOySprNUQZ1j2njDCO+6cwSj3
 QlLsSn++waN5SBsVYs5pG4GWDZXZAKdtMfNcMF1p0HdeqhJSOX4Bq19lwjMR0Lp5rH
 LgjcWXw3hZKrg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_104353_280072_34EF9030 
X-CRM114-Status: UNSURE (   6.67  )
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

>> +	if (smmu->impl->global_fault)
>> +		return smmu->impl->global_fault(irq, smmu);

>Can't we just register impl->global_fault (if set) instead of arm_smmu_global_fault as the handler when we first set up the IRQs in arm_smmu_device_probe()?
>Ideally we'd do the same for the context banks as well, although we might need an additional hook from which to request the secondary IRQs that the main flow can't accommodate.

When first implemented theis patch, I think there were compile issues in accessing struct arm_smmu_domain from arm-smmu-nvidia.c as it was part of arm-smmu.c. 
To avoid issues accessing arm_smmu_domain. It did this for context fault and did same for global fault for uniformity.
Now, I see that it is part of arm-smmu.h.  Let me update code to register implementation hooks directly.  Thanks

-KR

 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
