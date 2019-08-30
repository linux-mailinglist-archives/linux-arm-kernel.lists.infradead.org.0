Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94C18A3E12
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 21:00:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nrvgi6YOFqkZnX/x6XBj3TYeL0PrgIAqWltbg1sl9Yg=; b=qQlRe16wa1vvWz
	o89KUxW//NOv7yigq7kOnzvQzWKs8PidRSrUGTbiJpeyx4uxWMas9vqgyVhaT02mo2D/nL4hus4Md
	L/fUPiSIEqcUcjC2ZTCmBCbaNIPHu9ucWOXKTLPOOUuPDcCptvnREIQzViWahVvmKx35f7H6pChzS
	ahDYDorwSM+odrAyWLfUsWZJ3z/xvDv9UCucJVoKsLXNiSbKEapJt9DiUbCSJQPOHj+Z2zjOoAvn8
	uiDunW9xGB79SsNm0OeBsmApAfRzystMkxCkt0o0xIHmODpj8zR3m+voM8iy92VPcEN+ysDWKb32d
	jUrvkU3YtmlC88fj/x3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3m8b-0003za-F8; Fri, 30 Aug 2019 19:00:45 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3m80-0003Le-Tz
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 19:00:10 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d6972380004>; Fri, 30 Aug 2019 12:00:09 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Fri, 30 Aug 2019 12:00:08 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Fri, 30 Aug 2019 12:00:08 -0700
Received: from HQMAIL107.nvidia.com (172.20.187.13) by HQMAIL101.nvidia.com
 (172.20.187.10) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 30 Aug
 2019 19:00:08 +0000
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (104.47.46.57) by
 HQMAIL107.nvidia.com (172.20.187.13) with Microsoft SMTP Server
 (TLS) id
 15.0.1473.3 via Frontend Transport; Fri, 30 Aug 2019 19:00:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HwpTExgUkknHDlbQRc3kHV4Qk/2l8SxYiPL20LkTxLt02MpkR0sQrCtI+LJlj2euthn9wq/o6n3aRqbcqdrPERWa4Y8smmwiS5jU/7pX5w7UmpqrzlNWFdywnPh44kj4YfbgY9x7FO3P7WemZefMosUTP0kloMBQeK8dFCCC8BYJGQYow7pyDh8LZONccxRrjJl4oJQ1n+UfLeysmbBTYy8UftGgXQFI7qSDz9/oCGQXHlrmQVB0CnVG/Uzy963A8brwE0kGPyqwj2Y13xcg50dwuwvbILTHS37XkPsLbyeuLV8ypI3z6fcGLfZF7w5oiaP6cTzpeLt1zBAf8/adKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zhBJyUeeBMWlb5MwS/4aa5ADzd8lFV3Wa8GKZs9whsY=;
 b=P2XfL3aXaKsAbJt9xZIsWQA9nDEGoKpTPsow5MAbGjqvok/Xugt9ZWsrkCV4VOW8CIGDvNslSnXbGKvQQaX9D5LltTnoyEhFUcZnyPTfyKRQ+OIYK8EAnJl5eBZryJ7z4MMWr3ZZH6K4ZkeGC8EipVjK7FcOEXjed5wcv9/ErRR+Tt4iF4V750dRGsyJ4wB6A70fRMm60MgszwIQN8eTlQBJRXzKhdE03HnBVPaCdfRmrV7K5vZxZNcmkw70crcDbmJkBvfUI2eJ3lm5r9ynZ40tmUPiUEl8YTAKcoGPhjOe6aWMEUh/2ODdan5x7stXGDF//SovITJ0cvDo6MSuPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from BYAPR12MB2710.namprd12.prod.outlook.com (20.177.124.11) by
 BYAPR12MB3128.namprd12.prod.outlook.com (20.178.54.221) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.18; Fri, 30 Aug 2019 19:00:05 +0000
Received: from BYAPR12MB2710.namprd12.prod.outlook.com
 ([fe80::60a8:9757:8be2:2c56]) by BYAPR12MB2710.namprd12.prod.outlook.com
 ([fe80::60a8:9757:8be2:2c56%6]) with mapi id 15.20.2220.013; Fri, 30 Aug 2019
 19:00:05 +0000
From: Krishna Reddy <vdumpa@nvidia.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: RE: [PATCH 3/7] iommu/arm-smmu: Add tlb_sync implementation hook
Thread-Topic: [PATCH 3/7] iommu/arm-smmu: Add tlb_sync implementation hook
Thread-Index: AQHVXruLTOWAUKMP0EGEhzK6CNK386cTissAgACAtPA=
Date: Fri, 30 Aug 2019 19:00:05 +0000
Message-ID: <BYAPR12MB27106B630A0E1A2A0CBC79D9B3BD0@BYAPR12MB2710.namprd12.prod.outlook.com>
References: <1567118827-26358-1-git-send-email-vdumpa@nvidia.com>
 <1567118827-26358-4-git-send-email-vdumpa@nvidia.com>
 <20190830111446.GC23902@ulmo>
In-Reply-To: <20190830111446.GC23902@ulmo>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Enabled=True;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_SiteId=43083d15-7273-40c1-b7db-39efd9ccc17a;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Owner=VDUMPA@nvidia.com;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_SetDate=2019-08-30T19:00:00.9073949Z;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Name=Unrestricted;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_ActionId=0fb73aaa-99c5-444c-8088-3fc4ea15b944;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Extended_MSFT_Method=Automatic
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=vdumpa@nvidia.com; 
x-originating-ip: [216.228.112.21]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f8cd9ed4-a895-46a1-eb13-08d72d7c4533
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR12MB3128; 
x-ms-traffictypediagnostic: BYAPR12MB3128:|BYAPR12MB3128:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR12MB312833BB4AFDCB3B576B2292B3BD0@BYAPR12MB3128.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0145758B1D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(39860400002)(366004)(346002)(376002)(136003)(199004)(189003)(52314003)(11346002)(66066001)(446003)(476003)(256004)(71190400001)(71200400001)(14454004)(26005)(102836004)(6506007)(6916009)(186003)(74316002)(3846002)(76176011)(478600001)(8936002)(7736002)(305945005)(6116002)(6436002)(486006)(54906003)(99286004)(316002)(86362001)(66476007)(66946007)(81166006)(7696005)(76116006)(81156014)(33656002)(5660300002)(64756008)(66446008)(53936002)(4744005)(66556008)(4326008)(9686003)(55016002)(52536014)(25786009)(229853002)(6246003)(2906002)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR12MB3128;
 H:BYAPR12MB2710.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nvidia.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: PDr+Sli4zRyUzDC5kHHZmyZd3GdMJWSSu2OPqYlDB7PEDZT8P0Y1U4jllh5eN7IrvovDdM/QvUY1CkxhgCe9ReQY/ku+XdSpSLQ+ai7MyrmyTm8IScV1CxynhHlyw4DFaLlwMjrj0DD8WBQeBmx9lbBg9ihKolP4c9K5ExQKdAh+rRXbeVHAK7n58LZ2tGFe+OvxTt16N08WDCHrLdNIt91FFxAPE1eHooiX1LScZpfryiW7gbQJgag26aCWY0VLfKTGvb5HiPwlFX3HJ227u58dnEud+Bz5dKyo7EmY/q5/O3TXcx5Ui2TZUpq5KhzL/uNfYr9ZO2aq1Ln7WKvolYeSWQgzK7XMstQ7M8XpZq4aBzcFql0WQevfz3ycEnzqYmUVx2TZKZIfLh8Xw4KwU+b2ChF9f4Nreb9ZyU0uV10=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: f8cd9ed4-a895-46a1-eb13-08d72d7c4533
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Aug 2019 19:00:05.4690 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JJtRLGLcAHmAphaiEH0+da2Iqk91PAUb97h3+KBCT7OEvXBEj98jcMuwsU+DWzEAp+BLNCEjK18Ej14P2hG9UA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB3128
X-OriginatorOrg: Nvidia.com
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1567191609; bh=zhBJyUeeBMWlb5MwS/4aa5ADzd8lFV3Wa8GKZs9whsY=;
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
 b=IwAsu7mf9ASt1Rv5AP7niQoslQdfFlFxjtE3Ud6sT8RaED1zn+CtfVLvT0fbtee9F
 XkuQPsLw6O41UPyCmyYUTyHKrWkcMlEp/+AOI0M4b2PjDlAOZPP3F+WT4XcxN6m5YN
 RCbBBdFx3bBc/wq8LR6Dbhu2h49BBsIYvMTlWjI/B9LO/HssalUn927ZcramPlgmjh
 rivyNI+uQJcHQxRy/dTRk8RrzALwc94OqKaTzMyrlvV5qQDKZfo0EwwuKeaN/h5nc4
 BlCQZKOYfdcrsv8clfPAtTgp095fWvRUbRNHpDwejp3qmR8N16bbomm59rj0QqPATG
 HTfepYYbPfu6Q==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_120009_050016_1BF3304F 
X-CRM114-Status: UNSURE (   5.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
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
 Thierry Reding <treding@nvidia.com>, Robin Murphy <robin.murphy@arm.com>,
 Alexander Van Brunt <avanbrunt@nvidia.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

>Wouldn't it work if you replaced all calls of __arm_smmu_tlb_sync() by
>smmu->impl->tlb_sync() and assign __arm_smmu_tlb_sync() as default for
>devices that don't need to override it? That makes this patch slightly larger, but it saves us one level of indirection.

The tlb_ops->tlb_sync can be overridden directly in arm-smmu-nvidia.c specific implementation as pointed by Robin. Will be updating in next patch.


>> +	void (*tlb_sync)(struct arm_smmu_device *smmu, int page, int sync,
>> +			 int status);

>Can't page, sync and status all be unsigned?

This is to be uniform with original tlb_sync definition is arm-smmu.c.  Anyway, this hook is not necessary as tlb_ops->tlb_sync can be overridden directly.

-KR

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
