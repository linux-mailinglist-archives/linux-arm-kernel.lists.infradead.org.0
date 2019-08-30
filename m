Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E591A3D90
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 20:16:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QaDuwByMxRhABji1ojJui9hgumieVu/LFug+5usxjGU=; b=LqlHEXHwYIYr21
	2fL/efUEI3oisbBa0JasHtih4fkalVPsQB09sbaVgrITln5pn6ToVq+1Wb0ToACMqj3FoGosbeVIX
	hUB0Vg+OOpmLWasVw3bSBWPu602SjTiKW99GhpVy5WPYT52gtpWZFK1pvZa7eGCUfvsjDeZrmrn8o
	5JQLsC02Ll3U0go9s34Ys5x/xsi3Ef2PXIpPQzddigkzxQZg2QElhkpGlmjRy1Z2qAULwkuwvH3DX
	SK/2ZoVHcnIh50trphfzHr7OI3TpNjFe2iMdeqHOhUk9KD33xU0n9+Xdk4Zc3rerp3DGQUaWBgQ1B
	JVBZDxDh9FjaQa56xyXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3lRd-0004pY-Fo; Fri, 30 Aug 2019 18:16:21 +0000
Received: from hqemgate15.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3lRQ-0004pB-L2
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 18:16:09 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d6967ea0001>; Fri, 30 Aug 2019 11:16:10 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Fri, 30 Aug 2019 11:16:08 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Fri, 30 Aug 2019 11:16:08 -0700
Received: from HQMAIL109.nvidia.com (172.20.187.15) by HQMAIL101.nvidia.com
 (172.20.187.10) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 30 Aug
 2019 18:16:08 +0000
Received: from NAM05-DM3-obe.outbound.protection.outlook.com (104.47.49.54) by
 HQMAIL109.nvidia.com (172.20.187.15) with Microsoft SMTP Server
 (TLS) id
 15.0.1473.3 via Frontend Transport; Fri, 30 Aug 2019 18:16:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l60QvOkITuq4NumLGWaweQmOFZ9gK1caZ3YQ9S1p+HwRsrBgB5EF206tY+qDKp3ETcd9QSJ0wg6e7pU3ozLKwX3d+KV0bQmxa6neIyOASHd2sOvQCzWWrwccENuoF3IvYUfeYc8/qBaWiTcyzsR78x45N74fQFU9vPQe94aIi+nXKWa0WGWslO7tJK7OtVOcmfYj4OqpyJu1hdVl5r1+Eif8f7ymYWnb1j9GzsyAXeB0O/SvkUekXog+tYPnH9so+9+o++XL23wXQpBgZ9+nHB1qcNSRnyU6bRMRij7JIKRkVBPY28Tzhqfwib5C0oXc9CTOO0lyRZUQGxYW8O9uMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q58EjWQJyW0GmdS5OjjpB5SaY8gDQCjHZ9Z5EE9pOu4=;
 b=G75FGwBACgBHuTfIOG5h2OlxQRyNttr/CutK56vf15WiqZcPpyrxznhjshwKs4ds4o6h0iQUszyp1woMOjFIHHKfa/MUpYqnM+RAxSe3eAbqeToUSIlfQionqmoE1INpBUjmeI/w6p7+WXB9D1cD8jUWgWAMZMamCD4O/XSIc9UUoLrpq8QkQedHidjOx36TAbm5FYVKuJhhlKAympH0NzzqiZuc5v8BmrriNYOQZcmCwcLCo8Gp366u+36pBYW7kijNI1PWN798vdh+4v3yfRc32LgsKVQDmlzbGZ1G1kPkdwFKUapMFiRgkfwaIIiEX8w9/C52/h7u71SOY9+RJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from BYAPR12MB2710.namprd12.prod.outlook.com (20.177.124.11) by
 BYAPR12MB3576.namprd12.prod.outlook.com (20.178.197.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Fri, 30 Aug 2019 18:16:05 +0000
Received: from BYAPR12MB2710.namprd12.prod.outlook.com
 ([fe80::60a8:9757:8be2:2c56]) by BYAPR12MB2710.namprd12.prod.outlook.com
 ([fe80::60a8:9757:8be2:2c56%6]) with mapi id 15.20.2220.013; Fri, 30 Aug 2019
 18:16:05 +0000
From: Krishna Reddy <vdumpa@nvidia.com>
To: Robin Murphy <robin.murphy@arm.com>
Subject: RE: [PATCH 1/7] iommu/arm-smmu: add Nvidia SMMUv2 implementation
Thread-Topic: [PATCH 1/7] iommu/arm-smmu: add Nvidia SMMUv2 implementation
Thread-Index: AQHVXruJtN0dV6uzzEqjzwhw4G/PK6cTynmAgAA1HEA=
Date: Fri, 30 Aug 2019 18:16:05 +0000
Message-ID: <BYAPR12MB2710D045303BE89A7D3FF2C1B3BD0@BYAPR12MB2710.namprd12.prod.outlook.com>
References: <1567118827-26358-1-git-send-email-vdumpa@nvidia.com>
 <1567118827-26358-2-git-send-email-vdumpa@nvidia.com>
 <2ae9e0c4-6916-b005-f4bd-29e06d2056c6@arm.com>
In-Reply-To: <2ae9e0c4-6916-b005-f4bd-29e06d2056c6@arm.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Enabled=True;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_SiteId=43083d15-7273-40c1-b7db-39efd9ccc17a;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Owner=VDUMPA@nvidia.com;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_SetDate=2019-08-30T18:16:02.1702597Z;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Name=Unrestricted;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_ActionId=719396a2-db9b-4c3c-af08-b4b130e729d4;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Extended_MSFT_Method=Automatic
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=vdumpa@nvidia.com; 
x-originating-ip: [216.228.112.21]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0fa2a69b-de19-44e8-7242-08d72d761f7c
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR12MB3576; 
x-ms-traffictypediagnostic: BYAPR12MB3576:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR12MB3576966C6D06F6D843283452B3BD0@BYAPR12MB3576.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0145758B1D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(39860400002)(376002)(366004)(346002)(396003)(199004)(189003)(5660300002)(229853002)(186003)(8936002)(14454004)(316002)(25786009)(4326008)(76176011)(52536014)(33656002)(7736002)(26005)(8676002)(64756008)(66946007)(99286004)(6116002)(81156014)(3846002)(66446008)(66476007)(76116006)(7696005)(81166006)(66556008)(102836004)(71190400001)(71200400001)(2906002)(55016002)(4744005)(54906003)(6506007)(11346002)(446003)(478600001)(53936002)(66066001)(256004)(74316002)(6246003)(6916009)(486006)(6436002)(9686003)(86362001)(305945005)(476003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR12MB3576;
 H:BYAPR12MB2710.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nvidia.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 3i9CPVbSRcLguZUCbBmUl7xt0RS8Kr57XabDmKQ9z9hx16tGlmELV4PdbEE8c9J7recYDNYkqKigAUAeCheyH/R1PXWSSTDYcwcKcu7hLbPFMZp0iMXrDwilDHAiqy5ShOBFdly1ImwaSBwWc+K1CoP8iOeTNVeL+i1GU9pFSzAdK91onM55tDBZwt2nvq7hdGeFr930+hWJy8C9MUj17bCaD+YCExddZUHawgOTsuGcKKx/9hfrf4r4B4ZZqaqEI5sppeckVOXVO8fs7LogDrM50iiOk3Xe4WcI+4xd0DUxFlvk5HWmiQDy42Ey/bhsDc9eoyZpwRvUVa2JrlIF9/h366+uwFtK7XtyaRFn+HT5L/f7bXROQINJ133k0v51nRjkYhbLFVRG4OWCVaz76I/pxoNiqjFnq0b0KPWmCw8=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 0fa2a69b-de19-44e8-7242-08d72d761f7c
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Aug 2019 18:16:05.1905 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tR9IcYUTaJtovJoe63L5+hflVH7kcpeNMtqlaZ6+QKFDQGAAP+JxvVC21eOuy/fDai+1wfQEvx+jhrpR81meyg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB3576
X-OriginatorOrg: Nvidia.com
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1567188970; bh=Q58EjWQJyW0GmdS5OjjpB5SaY8gDQCjHZ9Z5EE9pOu4=;
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
 b=bi+67q9/gXF511pd+SesAp24kh9ZBbopRbDLkPA5OqVaN+D4PPMnjPmre14Flf9WW
 zpP/fYqIazYmtdykC1UeNGxKCj8CDjdY0z4b2HNio97KFW38Q5zH/B/SkZ4A1g+lmI
 r8ZBQtAxoExdF/dhlYcXQVUNiQjjEE6fYph69uWAl0JruQh3l7tRWUJ/ibqGkA0Ldy
 /m0zDkXDbyOE//jLlwBKtlb4BGVbf/YBfTBICaAtPtshdhUL4C4Ys4eoPV3LGSljDP
 Ia1Nqh5wPyiYH+G6E5HKlUYeSzRpxgkywZ09uscJ9uzTgn94h0/fL6jYEJ8+Q9XG0o
 7U8fBSV53Rv3g==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_111608_708902_6F2C368B 
X-CRM114-Status: UNSURE (   7.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

>> +ARM_SMMU_MATCH_DATA(nvidia_smmuv2, ARM_SMMU_V2, NVIDIA_SMMUV2);

> From the previous discussions, I got the impression that other than the 'novel' way they're integrated, the actual SMMU implementations were unmodified Arm MMU-500s. Is that the case, or have I misread something?

The ARM MMU-500 implementation is unmodified.  It is the way the are integrated and used together(for interleaved accesses) is different from regular ARM MMU-500.
I have added it to get the model number and to be able differentiate the SMMU implementation in arm-smmu-impl.c.

-KR

 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
