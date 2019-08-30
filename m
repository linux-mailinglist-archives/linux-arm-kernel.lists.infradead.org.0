Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82EA3A3DD4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 20:40:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L+afcGchdtTEblKUPgJvyQGgaOzyKa/LN0dsyf+SfW8=; b=ArMH7Sx7OLP3XX
	URzqtKifs66fXT/5+rNZ8tF/ODY/C8T+L2QkUSwcO4Rm80NT4Y+gSExUUkI/HwtnGVVGFViMmMMjP
	P1n2Ar1K0zgaGJokmpBeDLIlMcwqtOUspNixGdvaQUGZLpP5SFua97Fj2/C6mZifxvFUFe1uVBAB1
	gxgUsWx42tReKFa/LG796hSuPMt4wh820h752/wVwR5c5tH2TUrM502Yn+srwd0tG+RqmZZlXx3Dq
	nt0772eSlXTIk9DT+ujheb2CR3pG20VsQKprsuJZmLme2Zy09wQp5nNzXKwyk7QF2OmJf/D1ao/Hq
	dRgWj6LhiqtiZgEDh2qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3loy-0005GI-1y; Fri, 30 Aug 2019 18:40:28 +0000
Received: from nat-hk.nvidia.com ([203.18.50.4])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3loY-00045p-LD
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 18:40:04 +0000
Received: from hkpgpgate102.nvidia.com (Not Verified[10.18.92.100]) by
 nat-hk.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d696d820000>; Sat, 31 Aug 2019 02:40:04 +0800
Received: from HKMAIL103.nvidia.com ([10.18.16.12])
 by hkpgpgate102.nvidia.com (PGP Universal service);
 Fri, 30 Aug 2019 11:40:00 -0700
X-PGP-Universal: processed;
 by hkpgpgate102.nvidia.com on Fri, 30 Aug 2019 11:40:00 -0700
Received: from HKMAIL102.nvidia.com (10.18.16.11) by HKMAIL103.nvidia.com
 (10.18.16.12) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 30 Aug
 2019 18:39:58 +0000
Received: from NAM05-BY2-obe.outbound.protection.outlook.com (104.47.50.55) by
 HKMAIL102.nvidia.com (10.18.16.11) with Microsoft SMTP Server (TLS)
 id
 15.0.1473.3 via Frontend Transport; Fri, 30 Aug 2019 18:39:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kAFo6ZD+gtWAnflM+tvX84w9OsBuJYdkZfJzhanf7mptGYh70dJCtP0/zaS9wkNUSgb7lLHM25l4j342Wqbdyk4hWvmChihEAor7/WPDB9P9azZm+W4Ic1/rWe+2Og2ZZrhaUShvM0m2IvXJU3qL47Iu0KXV8AtkliI5G8CiJDdPX/0TA19B81VCnyQ7Q3/6JMxAbemgjGKtC3T8fMAjjnkESVaPax9vcRhebdla+IYH4yKZh4t/tW+y95QOvRZiiG8qVMOUrmwFcHsQgMycbxSmmi/Anz5lpE+/SY3mQTqahH5KuLFkRqooAYP+PcRjoSquuoSHrpik44Dl6ozPnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nOIrub0GG5GdEx6ukwJwd7Nt+n/r7td696T06hV9ESs=;
 b=Z96ySNdKTJYCbp8YTO2PdFzTGMwAsvlx8LUdYDWpwKChY7/OHaq37ECh4RAl9TbtKxYlzkndxbJD75sdBE9kXCl3ggsycRwooWuaUmhj2w5vyWmmG6KHLd2Nj9fyLJq3iRkt/DLVhRGx4Bn6UDUu3WBaTv5OYDvAGZkNlEW2mzAyVyMB4gNSuKusOgZ1WZal+fZhMjQ/EdO0eaC7cGXnT9Yukn/65gzMZI1GvbXleN7qriLCmTDs6mH4HkaZoAXMF/lfDEPiPMXk2vl/kfvnuuxUDEPnlQIFsD3HTy7U3VHCh1qPQWcTpRuU7f6gVIVZB/C80fypZ2/+k2Wqe2oJvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from BYAPR12MB2710.namprd12.prod.outlook.com (20.177.124.11) by
 BYAPR12MB2758.namprd12.prod.outlook.com (20.177.125.223) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.20; Fri, 30 Aug 2019 18:39:56 +0000
Received: from BYAPR12MB2710.namprd12.prod.outlook.com
 ([fe80::60a8:9757:8be2:2c56]) by BYAPR12MB2710.namprd12.prod.outlook.com
 ([fe80::60a8:9757:8be2:2c56%6]) with mapi id 15.20.2220.013; Fri, 30 Aug 2019
 18:39:56 +0000
From: Krishna Reddy <vdumpa@nvidia.com>
To: Mikko Perttunen <cyndis@kapsi.fi>
Subject: RE: [PATCH 6/7] arm64: tegra: Add DT node for T194 SMMU
Thread-Topic: [PATCH 6/7] arm64: tegra: Add DT node for T194 SMMU
Thread-Index: AQHVXruJJaNjwNgb20yUxCVyNgmdfqcTmhgAgABsKyA=
Date: Fri, 30 Aug 2019 18:39:56 +0000
Message-ID: <BYAPR12MB27102584FA929CBD92002DD9B3BD0@BYAPR12MB2710.namprd12.prod.outlook.com>
References: <1567118827-26358-1-git-send-email-vdumpa@nvidia.com>
 <1567118827-26358-7-git-send-email-vdumpa@nvidia.com>
 <ba06d6b8-c6b9-f9bd-c2c1-d5e39292f67d@kapsi.fi>
In-Reply-To: <ba06d6b8-c6b9-f9bd-c2c1-d5e39292f67d@kapsi.fi>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Enabled=True;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_SiteId=43083d15-7273-40c1-b7db-39efd9ccc17a;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Owner=VDUMPA@nvidia.com;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_SetDate=2019-08-30T18:39:53.6480000Z;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Name=Unrestricted;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_ActionId=a7db7ccb-ad06-4e30-8dc0-dd6a83dc6893;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Extended_MSFT_Method=Automatic
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=vdumpa@nvidia.com; 
x-originating-ip: [216.228.112.21]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a38429d5-3fbe-4d0e-7bb4-08d72d7974ba
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR12MB2758; 
x-ms-traffictypediagnostic: BYAPR12MB2758:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR12MB27586148D028A9F168CA0B7AB3BD0@BYAPR12MB2758.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 0145758B1D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(376002)(136003)(396003)(39860400002)(346002)(199004)(189003)(11346002)(71190400001)(55016002)(14454004)(229853002)(9686003)(6436002)(74316002)(25786009)(478600001)(6246003)(54906003)(66446008)(66556008)(305945005)(66476007)(4326008)(76116006)(7736002)(3846002)(6116002)(64756008)(66946007)(52536014)(5660300002)(53936002)(316002)(8676002)(7696005)(76176011)(486006)(14444005)(81156014)(66066001)(8936002)(4744005)(81166006)(2906002)(6506007)(476003)(6916009)(86362001)(186003)(26005)(102836004)(99286004)(71200400001)(256004)(33656002)(446003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR12MB2758;
 H:BYAPR12MB2710.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nvidia.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: KYN5d0lS05xxaQBF2FZArZC6zkU0Rzqf0nkJ+Do1OkCuqABfiqnKl0jU/doEmf2zwKKAxR6Z3bydvYWmmfdsKBoYP36nPs9cxLI5V/CwWJPlGnwg1jLX6dtj2+Y3x+H6cL4JOW06jNszLOKq67FIZ+MqOfKqf7zpm1eABlWAU6eAOGvut+fGJBRycQy4ucbysCDC1wFtvyuOiPwLtRoykvm3qqprkWtt2EZtmTd6y7OhyWDXBxlMw+mcYl3dXBpSH+1KsuYi6bDGClw8XC77Z/A0xzSLOIWlz9Z9L4ZnXrto7i69CwT5l5EYz/UbWONF4JqEM2/7wCAIcEbfMVFAb0CEEeCqG5VhZjjSwA/OKQG9SFMTIQRfaDxvJ8E618eH8RRjiWUNjYDEeqEdxlxTZfh5l29xj9q9iVvlq3x3r+c=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: a38429d5-3fbe-4d0e-7bb4-08d72d7974ba
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Aug 2019 18:39:56.7136 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8xrW0bC/ukeXc7UJGHkE3MKH1lXhWmympJ9WXt99HsIx9FS82JxwPJGWeibUnJreGs1Ys1Q1rC8tA9//gP8Dyw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB2758
X-OriginatorOrg: Nvidia.com
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1567190404; bh=nOIrub0GG5GdEx6ukwJwd7Nt+n/r7td696T06hV9ESs=;
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
 b=Wvlyj4HfkLWitNtAHC+O7EcfSCLt7YDxqjsOyygGErNsAHGN8MF+Sq7Rc/DRuzKBL
 S/iW1xX+jRxsbaLmNWzyGrT3w+REevtJjCCvnAxtF1n+9wMtOrcxd+8tTAEnORqXzj
 B+aQ4C0W5eUI0cpiY1hwNaQz7wkP4uT5CASMd6hmyDnhv+L0hDDLYNNM+3NyKQTSPh
 fZ3WUhNLAaQIwMlnEmJH1BfrkCG2aeVonsVEJR834PntfjTTbepk99/gt/kY9kKGeO
 XNXc46cvGlyakxH0irrrYMO3oN3HhfrnTeuEpxZxE1ybPsiqWC5vA9snXugY06Qs27
 7Ye8qnG6yzsvw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_114003_250118_3DE2F297 
X-CRM114-Status: UNSURE (   5.26  )
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
Cc: Sachin Nikam <Snikam@nvidia.com>,
 "Thomas Zeng \(SW-TEGRA\)" <thomasz@nvidia.com>,
 Juha Tukkinen <jtukkinen@nvidia.com>, Mikko Perttunen <mperttunen@nvidia.com>,
 Pritesh Raithatha <praithatha@nvidia.com>, "joro@8bytes.org" <joro@8bytes.org>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Timo Alho <talho@nvidia.com>, "olof@lixom.net" <olof@lixom.net>, Yu-Huan
 Hsu <YHsu@nvidia.com>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 Thierry Reding <treding@nvidia.com>,
 Alexander Van Brunt <avanbrunt@nvidia.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

>> +	smmu: iommu@12000000 {
>> +		compatible = "nvidia,smmu-v2";

>Should we have a compatibility string like "nvidia,tegra194-smmu" so that we can have other chips with SMMUv2 that could be different?

As pointed by Robin as well, as Nvidia hasn't modified ARM MMU-500 implementation, we can update it to specific chip based. 
Let me update.

-KR

 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
