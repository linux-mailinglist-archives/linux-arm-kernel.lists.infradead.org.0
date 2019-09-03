Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9591A5EC0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 03:08:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UrcJ+XSbpiEukWDYnZ+Os6/CKRidKxhFF+CgZeVoMtQ=; b=a7+Us+dTP15kPf
	6wl1jqG+229SZKU1A/4swfbOjFU3hPovf2+N/f94dtuK0g5RhZKlCQOv/iouZ29EdDHKj8h0RJTya
	PAyf2ONHQ+KD6HHnijuEnxah0mUdf1MHuj7AnL2DahyzjdjL9E1ZQtcIDaES4rplrOcDsOFyZuFYX
	JPnyzZlrwaTbWVocNz+It6esr23JhFUDQLbiHba7jU7SiRFdt3CWX/9cpCvJOspkkBNRQIE/dNISk
	zbODpcFlSVWyVYaMHuZTq6sJK7YtQFCr8OJGB7MXbq3i8kkRz3oezAGBEzB2bejFPDe8WFMDgW2eO
	2qJeJKEgiG7cEvrZwp6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4xIr-0007wS-3w; Tue, 03 Sep 2019 01:08:13 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4xIV-0007vf-Pu
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 01:07:53 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d6dbce60000>; Mon, 02 Sep 2019 18:07:50 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Mon, 02 Sep 2019 18:07:49 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Mon, 02 Sep 2019 18:07:49 -0700
Received: from HQMAIL111.nvidia.com (172.20.187.18) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 3 Sep
 2019 01:07:48 +0000
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (104.47.44.51) by
 HQMAIL111.nvidia.com (172.20.187.18) with Microsoft SMTP Server
 (TLS) id
 15.0.1473.3 via Frontend Transport; Tue, 3 Sep 2019 01:07:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SBIyUBZ3/oN0IY4BSDsJED4DMcfXY6mNfzYxf2PfUy/VNpGAbtQZqGKY0BXOMTjJPMNS0tnB01y28Gi4Z6/KoKNNySxzlj+wuUAji22CTgzWoGngEMpodZvcliOQVjo1VveXb7yHWUU54/23W4C7XTkXD+pLl6xFfYbvloEbRnoBRxfg6lUpgjghG0V482PW2WrvzXagDAVK42By7erEN/apmxKaTehllj9uhaGMfGS65i2PqnmjQnu7mfqb6ZfCD6ibmQXjlclRT5UJnOPl/lgf2DxGhkd2j0GKjjOTN+iQV/htl/CZpFhl84aOjzKYG4LuH5I3BvL+e842CXD5oA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=II5YpH+8PRxBxFj/7eMCnK9NqZPLJ4fvtlS+yvAit0Y=;
 b=TUJ9//4xzOa41DaG3dLXVKws7+Ki8puV7GHPpLFFyuZTtpFf0ktm0cCQeaDwRXDmLLZ9VTNAmPLqF6nkY5yhqk9vdnqnsuIh4NWFiIaEJ/QtB7p1IiI6jGAPTIuLXfq6Pu+N58zNxmohTA+HdbGO4Mtgvc2r0yLYxwgI8iPssYNQsmH8sX2lgqxwDduwMieWGeN3Ign0kYCFH3JApAyttGF0Me9SUWv7PjI0VJfTh5IDbnaYIuEEqQcq/Iq2f59j462WJS+DgNfF2CG+GvrqOzNMCb8vyFovMwzLnGGye1fajuG+Bb7vtVcIeCJLh/8MEJqBzNbmXqlN1nk+uxUinA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from BYAPR12MB2710.namprd12.prod.outlook.com (20.177.124.11) by
 BYAPR12MB3160.namprd12.prod.outlook.com (20.179.92.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.20; Tue, 3 Sep 2019 01:07:46 +0000
Received: from BYAPR12MB2710.namprd12.prod.outlook.com
 ([fe80::60a8:9757:8be2:2c56]) by BYAPR12MB2710.namprd12.prod.outlook.com
 ([fe80::60a8:9757:8be2:2c56%6]) with mapi id 15.20.2220.013; Tue, 3 Sep 2019
 01:07:46 +0000
From: Krishna Reddy <vdumpa@nvidia.com>
To: Robin Murphy <robin.murphy@arm.com>
Subject: RE: [PATCH 1/7] iommu/arm-smmu: add Nvidia SMMUv2 implementation
Thread-Topic: [PATCH 1/7] iommu/arm-smmu: add Nvidia SMMUv2 implementation
Thread-Index: AQHVXruJtN0dV6uzzEqjzwhw4G/PK6cTynmAgAA1HECABGrEAIAAvVrg
Date: Tue, 3 Sep 2019 01:07:46 +0000
Message-ID: <BYAPR12MB2710D40B168C7029758C5481B3B90@BYAPR12MB2710.namprd12.prod.outlook.com>
References: <1567118827-26358-1-git-send-email-vdumpa@nvidia.com>
 <1567118827-26358-2-git-send-email-vdumpa@nvidia.com>
 <2ae9e0c4-6916-b005-f4bd-29e06d2056c6@arm.com>
 <BYAPR12MB2710D045303BE89A7D3FF2C1B3BD0@BYAPR12MB2710.namprd12.prod.outlook.com>
 <3f2cbbe2-f6d7-07e3-3fef-18af518dedef@arm.com>
In-Reply-To: <3f2cbbe2-f6d7-07e3-3fef-18af518dedef@arm.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Enabled=True;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_SiteId=43083d15-7273-40c1-b7db-39efd9ccc17a;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Owner=VDUMPA@nvidia.com;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_SetDate=2019-09-03T01:07:42.8379649Z;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Name=Unrestricted;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_ActionId=11141f53-2ea3-4aee-8f22-cdc149af4425;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Extended_MSFT_Method=Automatic
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=vdumpa@nvidia.com; 
x-originating-ip: [216.228.112.22]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f1ee91bd-d7a2-44a7-672e-08d7300b21cf
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR12MB3160; 
x-ms-traffictypediagnostic: BYAPR12MB3160:|BYAPR12MB3160:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR12MB31601FE1B60E512357DD9D06B3B90@BYAPR12MB3160.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01494FA7F7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(396003)(366004)(346002)(376002)(39860400002)(189003)(199004)(4326008)(25786009)(305945005)(55016002)(9686003)(8936002)(6246003)(6436002)(7696005)(52536014)(4744005)(6916009)(256004)(14444005)(86362001)(71190400001)(71200400001)(74316002)(66066001)(7736002)(8676002)(81166006)(81156014)(5660300002)(66946007)(76116006)(2906002)(53936002)(66446008)(99286004)(446003)(14454004)(11346002)(6506007)(33656002)(66476007)(76176011)(316002)(486006)(26005)(186003)(6116002)(3846002)(102836004)(54906003)(66556008)(64756008)(229853002)(476003)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR12MB3160;
 H:BYAPR12MB2710.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nvidia.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: FgmsUqf06dYWePSbd1dQ9CurTzob97/NVwiYcew8CrlLzEocnfJXcwRcSRo5Mg+h0nSiV0ew9Jb89gmnx7DRFwVpQj1ys+1hjowZ19QYgGHC5HEkli0po3sFuTGznm9kBejGEwKzg8GGQycbpTZ38A24uq+pXR6BahGVuEnI9F0LGsUJY+rwoFJXrvqPrf+LOBZsYVgjeGFijI/YJI+iSMpNtMqyvACykLKWGsMiwuN+EE3bmYSaNbT6lRI63YcmcHfucory730kHtUFzxym4xdePl3N05nkFxg0Xkz+DZnkpUz620/tKjiQva5JEeyzk5hU+igYFk2+Ljbky1tROVBXrkwS1rB8lv2xVVdbODc04TVwLTbN0tOnP8ELurL5n2skmVMACThBu7K9NFZMMKQsNbP8IIoiGWcmOjASzgQ=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: f1ee91bd-d7a2-44a7-672e-08d7300b21cf
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2019 01:07:46.4249 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: r3urcSXR4J4vHeEes5yfk1FZn/wC77G+xupPR7HDYQK9UyuY6dqkpfiWjl3A2swcaSS07NOh8rV3ic2/QZNT0w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB3160
X-OriginatorOrg: Nvidia.com
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1567472870; bh=II5YpH+8PRxBxFj/7eMCnK9NqZPLJ4fvtlS+yvAit0Y=;
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
 b=cxq19L9vieEGoDOWp93qfgyCgePSYf+Eml6NcNeGzizhg+JKg3dpuhXzPN+yV0i2S
 utOXURY7PcvnlT5rCxbZ/9i7WQ6zAlnRkCfrBy/HL/2ilhQBiWAdXwd00GWK6a3pf8
 Wes/6vaPQDeUs1Repb0JyjF36dIzBxtIfZw0KC1ZiyPcu9Lp6l2bFeH02DFxAQWD1K
 LmQHd53S/TP23oDnLNBArd0c0OqETqcX2xnsIDQ+bb9AjlsZfwArpY/WE4ORECjp48
 +cYpOcUwsaxs2QITHBM6nIbQAwhD3Gkyad+hZETqeV6iR0GUinDXVXxsaKY/vHMdxB
 rsLE0mGsVA0pg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_180752_081581_5DFC1A1A 
X-CRM114-Status: UNSURE (   7.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
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

>>> +ARM_SMMU_MATCH_DATA(nvidia_smmuv2, ARM_SMMU_V2, NVIDIA_SMMUV2);
 
>> The ARM MMU-500 implementation is unmodified.  It is the way the are integrated and used together(for interleaved accesses) is different from regular ARM MMU-500.
>> I have added it to get the model number and to be able differentiate the SMMU implementation in arm-smmu-impl.c.

>In that case, I would rather keep smmu->model representing the MMU-500 microarchitecture - 
>since you'll still want to pick up errata workarounds etc. for that - and detect the Tegra integration via an explicit of_device_is_compatible()
> check in arm_smmu_impl_init().

Looks good to me. 

>For comparison, under ACPI we'd probably have to detect integration details by looking at table headers, separately
> from the IORT "Model" field, so I'd prefer if the DT vs. ACPI handling didn't diverge more than necessary.

ACPI support for T194 can be added based on need in subsequent patches. For now, I am updating it for DT support.

-KR
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
