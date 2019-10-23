Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93B93E2112
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 18:54:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MktV94kmOp+yEJzqklLEvcjp2JixWBXkAIhMO+XIdDM=; b=RXogbTKQD03fJb
	ERjJIT/amVzPhXV7tbVvhuUzzFV9OPSgSWu4VRU6VUMGMbMD9LYnxAvX73vh2/rvT1yX3V+tt7FsB
	0oVwW7PMkVUKWc/8NjaJw5H4cITwSIBfXx9YXU0rILeZKfEdgm9o3zCZq96xWImYkJp+YMluKmqym
	1pwTuS5lBEHSqXKFVSKf7jFLvlDpdctuny8XeZQ8OimV3B00sHEh9BtvqE1GyylrMmxfc05fuWBV6
	hnI471cI0wrLWxKaqLDDFeAiTaAvlY6axNEJlNTDHa7GduFMfBqYuUIrQaPSBErYINOOl9TCLOaZr
	g/Q1ydw4SMguFx/KnmYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNJtY-00083b-1a; Wed, 23 Oct 2019 16:54:00 +0000
Received: from nat-hk.nvidia.com ([203.18.50.4])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNJtL-000837-DA
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 16:53:49 +0000
Received: from hkpgpgate102.nvidia.com (Not Verified[10.18.92.9]) by
 nat-hk.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5db085970000>; Thu, 24 Oct 2019 00:53:44 +0800
Received: from HKMAIL101.nvidia.com ([10.18.16.10])
 by hkpgpgate102.nvidia.com (PGP Universal service);
 Wed, 23 Oct 2019 09:53:42 -0700
X-PGP-Universal: processed;
 by hkpgpgate102.nvidia.com on Wed, 23 Oct 2019 09:53:42 -0700
Received: from HKMAIL101.nvidia.com (10.18.16.10) by HKMAIL101.nvidia.com
 (10.18.16.10) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 23 Oct
 2019 16:53:41 +0000
Received: from NAM03-BY2-obe.outbound.protection.outlook.com (104.47.42.59) by
 HKMAIL101.nvidia.com (10.18.16.10) with Microsoft SMTP Server (TLS)
 id
 15.0.1473.3 via Frontend Transport; Wed, 23 Oct 2019 16:53:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X3ZWCJlaOOKMMDcIE1V8qqbtAFfw5nc7NvYjwV/liJYjiXfgc+rBHhxVbDVX3KgJ3XCVGkOwBUeyKwzxdMktCigbWvCZIW5QCKzhIsqjlfqLi5PTSoaSg2YA2jzEBZUuuoZwHgJxb3rVGL1wECc5229/eafb4BVHCmIen7AZJibiZV8SntjrgQ8vSuKxDX+FKvK0HUQKxWt3i4S87ZT+Pbzzc2DX6DbK46GfQd8aSjAjhYtpMjiivc2Qz2u98FLx4OATDMeIciupXEevBGrtZ0v8bqVs7PO+jzWLYuh91FUZrQPH/ZCdWztEEeGcsxtmfMOQNZtCwqQbQMLgFrpoXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hi4XzK4tXAVJrLhIawWrtrXOktjCNc2063/Z7qAaP0k=;
 b=GernBwRpzJnam0/63w5AyrVe/H6tED2F6pP6l49We8rJO8c2UT4AzjMlEV27J8nQnGvFrBAqi2JMEnSzAaWcB3ySffCYf6GSNTkAVO6X23K+ENj5QOyoP6EBG2AO2LCEaEJk4Wjf+zlFJcooo2I9ws5DdIovWw6PUyYQBsoCINpeUwJEXSl9qVzaNCo0pGAKXpKhNeHFG8fBMp+myUc82/HfaTponSisebNZ52fsiFnsMnyjyfq0KhT44su9Oo3QsewDasRM1zrM27wq6KMVRSzx/7zfJv8Bd83crr+jHbCqL2a5FrFs0nbM+/huisYkWA35smMdKSO5Cutm1pMOsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from BYAPR12MB2710.namprd12.prod.outlook.com (20.177.124.11) by
 BYAPR12MB3431.namprd12.prod.outlook.com (20.178.54.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.17; Wed, 23 Oct 2019 16:53:39 +0000
Received: from BYAPR12MB2710.namprd12.prod.outlook.com
 ([fe80::c0fa:c019:dd8e:dd40]) by BYAPR12MB2710.namprd12.prod.outlook.com
 ([fe80::c0fa:c019:dd8e:dd40%6]) with mapi id 15.20.2347.029; Wed, 23 Oct 2019
 16:53:39 +0000
From: Krishna Reddy <vdumpa@nvidia.com>
To: Will Deacon <will@kernel.org>
Subject: RE: [PATCH v3 0/7] Nvidia Arm SMMUv2 Implementation
Thread-Topic: [PATCH v3 0/7] Nvidia Arm SMMUv2 Implementation
Thread-Index: AQHVhgwr2/1seTuEaUyC0D9/Qf1q8adm9sOAgABg1jCAARnGgIAABb5A
Date: Wed, 23 Oct 2019 16:53:39 +0000
Message-ID: <BYAPR12MB271030490C786A1A209F4FF7B36B0@BYAPR12MB2710.namprd12.prod.outlook.com>
References: <1571441492-21919-1-git-send-email-vdumpa@nvidia.com>
 <6d9e6425-fa69-9b76-b477-1fe50c459ca5@arm.com>
 <BYAPR12MB2710879535971E290E8B25D3B3680@BYAPR12MB2710.namprd12.prod.outlook.com>
 <20191023162716.GA27010@willie-the-truck>
In-Reply-To: <20191023162716.GA27010@willie-the-truck>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Enabled=True;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_SiteId=43083d15-7273-40c1-b7db-39efd9ccc17a;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Owner=VDUMPA@nvidia.com;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_SetDate=2019-10-23T16:53:35.7984770Z;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Name=Unrestricted;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_ActionId=c4838a45-f850-4dc7-b25a-2499199a20e3;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Extended_MSFT_Method=Automatic
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=vdumpa@nvidia.com; 
x-originating-ip: [71.198.163.33]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9a713936-9dbb-4395-a79d-08d757d98e13
x-ms-traffictypediagnostic: BYAPR12MB3431:|BYAPR12MB3431:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR12MB34313CC0297BBA5FDF492D53B36B0@BYAPR12MB3431.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 019919A9E4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(376002)(366004)(136003)(39860400002)(199004)(189003)(55016002)(6246003)(7736002)(66556008)(6306002)(486006)(9686003)(6506007)(25786009)(229853002)(64756008)(26005)(66946007)(66066001)(76116006)(76176011)(478600001)(71190400001)(99286004)(102836004)(52536014)(66476007)(316002)(558084003)(186003)(6116002)(305945005)(71200400001)(3846002)(7696005)(14454004)(54906003)(476003)(66446008)(6916009)(81156014)(256004)(8676002)(2906002)(86362001)(8936002)(81166006)(107886003)(5660300002)(4326008)(74316002)(33656002)(446003)(11346002)(6436002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR12MB3431;
 H:BYAPR12MB2710.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nvidia.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ajITlW/m9JsQH8P4Vp3I7qtBB5pZiva1jDFC1XnDfmINeQGeFhXdh/LHg7OF97rpIIhA4D7G6Wh2CjeCFvQjYjm1/qq9l+EW8LVfjFZr3TkKVGR0SHh+H6WkqW3hZvfjzG59o+uNWg8ojMiBpXOpXM4f9kx6BaX8X7c99pt11AFVP3eSeOrGbkvzc2kstyo9v2gQP2SPzbvdkhadn/62Vk1AvBbbxm7M70Q7ireaGwh8QK6Bjjx0u3n7A3HInTQpKgwNdg2VpZHrOfInLjj9+zulY5bYtorvy2v+M6LhQzIgN46YiOC3tb1rY6mVS7LvK89N3pN3dgI2UX6DvTYSVNZQUlkrRaFxXlYRcK89avUksPiOqztTADWh+GrHFpFBu2xsRQkZF60DUWIB0toqJ5v1MJQjIVEyiWioMcyKnyOYU5IG9gyGagA8tNYwa4hRiMhRaEjccozYO9rND+QicZlsf/IyBFEypM5yztIuvdA=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a713936-9dbb-4395-a79d-08d757d98e13
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Oct 2019 16:53:39.7977 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AkE2ZWcteOaAaQ6DeBCRF5O0v8i9t2o+CO4C6br7sHCyWNL6vVZxvlxOs2lYCBTvilUP5MJAFPrtPujlNGbH+A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB3431
X-OriginatorOrg: Nvidia.com
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1571849624; bh=hi4XzK4tXAVJrLhIawWrtrXOktjCNc2063/Z7qAaP0k=;
 h=X-PGP-Universal:ARC-Seal:ARC-Message-Signature:
 ARC-Authentication-Results:From:To:CC:Subject:Thread-Topic:
 Thread-Index:Date:Message-ID:References:In-Reply-To:
 Accept-Language:X-MS-Has-Attach:X-MS-TNEF-Correlator:msip_labels:
 authentication-results:x-originating-ip:x-ms-publictraffictype:
 x-ms-office365-filtering-correlation-id:x-ms-traffictypediagnostic:
 x-ms-exchange-purlcount:x-ms-exchange-transport-forked:
 x-microsoft-antispam-prvs:x-ms-oob-tlc-oobclassifiers:
 x-forefront-prvs:x-forefront-antispam-report:received-spf:
 x-ms-exchange-senderadcheck:x-microsoft-antispam:
 x-microsoft-antispam-message-info:MIME-Version:
 X-MS-Exchange-CrossTenant-Network-Message-Id:
 X-MS-Exchange-CrossTenant-originalarrivaltime:
 X-MS-Exchange-CrossTenant-fromentityheader:
 X-MS-Exchange-CrossTenant-id:X-MS-Exchange-CrossTenant-mailboxtype:
 X-MS-Exchange-CrossTenant-userprincipalname:
 X-MS-Exchange-Transport-CrossTenantHeadersStamped:X-OriginatorOrg:
 Content-Language:Content-Type:Content-Transfer-Encoding;
 b=W+QxxVkRpIwbtpmz+NlrhB1D4gPBm8N+3y6Az7HCX2lBDvCme32gQ0ssfzkF9qISI
 m4hqHrq6AWdIOcesBqkoB6H1J4ZoyHSi3/DPELrtH9LNA788YUPDOAF+cvbZqetyaK
 BGJWDJiwLK/xf1GsBw54cPLg2SgEhNdk9mPX4w4pUK/6rHd5KdRct2mjY4QJ5ksnjW
 g3cUxSg37mIECR8diy4TBLMm1eWcCc5nkyY+NbELUym27DaXkDWtPp0b+fHJHX5C+B
 KdJoStaUuSXAluX0dyjPW84FCTkK2rMUAAKm8USekED4WXQmnu8F2GCdVr1lN/Dtgq
 db4ibDshWCGwQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_095348_070971_531B69AD 
X-CRM114-Status: UNSURE (   4.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [203.18.50.4 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sachin Nikam <Snikam@nvidia.com>, "thomasz@nvidia.com" <thomasz@nvidia.com>,
 Juha Tukkinen <jtukkinen@nvidia.com>, Mikko Perttunen <mperttunen@nvidia.com>,
 "joro@8bytes.org" <joro@8bytes.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Pritesh Raithatha <praithatha@nvidia.com>, Timo Alho <talho@nvidia.com>,
 "olof@lixom.net" <olof@lixom.net>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 Nicolin Chen <nicolinc@nvidia.com>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>, Yu-Huan
 Hsu <YHsu@nvidia.com>, Thierry Reding <treding@nvidia.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Alexander Van Brunt <avanbrunt@nvidia.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Bitan Biswas <bbiswas@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

>>https://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git/log/?h=for-joerg/arm-smmu/updates

Thanks Will! Let me rebase my patches on top of this branch and send it out.

-KR


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
