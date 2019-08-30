Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CC54A3DC2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 20:36:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2CXK8vUTcd38bTluIXcgW1bnJtJu2SZrDK4VeNUHATI=; b=hPR87g3YkLuK2/
	8GoypbmM9vtUODpV+eqYtEn4042WS/ouJtTz1t43BjsgoaJNHxucbHomUOUzZpCUe9dNVz7gY468L
	11Nwtd9zi9yxrtcnhpdzszS4sb4GQvIC+4lGZrI9qD26pYoMVDSqsqkVl4tnI/KCHn/0qGOddMjvC
	A+2PYDO/mDAl+ESaGtX5RkjlP/VTjxHtDVeZOCodKeivqwIS6pQ1foVUAybGwVlEqbvjxq53Ay+ZQ
	6cqxaUDym4A/CV1+lh3l2h/Ma2do90JkdeEf6kkV7hua/pQ7+3PRkQ7PL0WeQlm+ct6Fswoh1O4C6
	MG5wiMfmwhJZkMQoBKbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3ll0-0003MC-Li; Fri, 30 Aug 2019 18:36:22 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3lk6-0003CW-Kw
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 18:35:28 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d696c6e0000>; Fri, 30 Aug 2019 11:35:26 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Fri, 30 Aug 2019 11:35:25 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Fri, 30 Aug 2019 11:35:25 -0700
Received: from HQMAIL109.nvidia.com (172.20.187.15) by HQMAIL105.nvidia.com
 (172.20.187.12) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 30 Aug
 2019 18:35:25 +0000
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (104.47.44.54) by
 HQMAIL109.nvidia.com (172.20.187.15) with Microsoft SMTP Server
 (TLS) id
 15.0.1473.3 via Frontend Transport; Fri, 30 Aug 2019 18:35:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LugS0lbc78H1GmT0R7Ni8/MZPPHvpgTnjnbvg7Ys4cKnpVkmKUCKYV1hgX5tsLOsL5UoGEqYus6cAvjLjDEOTKx3ubKK0lID12if90NNe/ngDPQ7ku+433YvZKaMd3JHoxNA6IAsGgu+pucKAb2St3Skfcr3vLS8wighUYH+JPnwV1hZkxJvHdXl2s8Y4zUSIPsml1ChTGgTUtSlsRt6JhjVflOs+2nhUfd8wKUK18O3XYrEkW1HjfvB2BOPmCvHLKngtoAhvn/1EgQAr4hF45EOpVE4TD5z1kGIckUSXAugxZku0peU7n4PA4EuRwBZK+L97BLwQ80jyPnPwSnrVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pl9uNrlQxRZnm8gkVDCjR0EIe2465ZjPfWys2AUBhKM=;
 b=hZEQo8mjrx3tAxm1ayMybEiSSPbHbR2Tly6H3ZaMT6xOiQ6syyo124vr0YCpFwM9BxhJtAur1LWbtyGmZc4XXCrXSZMfxFfbLyc5NT9bFUfpqwEKeco1X3i2pZOiqhkw3O/GoGbzY+V97JpSJoVBzx/TX7LiVrc8YWwwZleWMsulHYcg/1awzilXm4Q2SP0LEEPZrom+xhOEa3xaQK+167mx9KTm918MUo2Tg4Pa6zU0nHrmfrw3ZR++xrjDVhueCn5KPH/DnKxSDxNY5gjpdMkRdi4964ar4v3qWrLV3gggqI4/O+W+Lw0kxy8Zbmntxn8R0/jh2IQRlblyuNHUQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from BYAPR12MB2710.namprd12.prod.outlook.com (20.177.124.11) by
 BYAPR12MB2615.namprd12.prod.outlook.com (20.177.125.221) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.18; Fri, 30 Aug 2019 18:35:24 +0000
Received: from BYAPR12MB2710.namprd12.prod.outlook.com
 ([fe80::60a8:9757:8be2:2c56]) by BYAPR12MB2710.namprd12.prod.outlook.com
 ([fe80::60a8:9757:8be2:2c56%6]) with mapi id 15.20.2220.013; Fri, 30 Aug 2019
 18:35:24 +0000
From: Krishna Reddy <vdumpa@nvidia.com>
To: Robin Murphy <robin.murphy@arm.com>
Subject: RE: [PATCH 6/7] arm64: tegra: Add DT node for T194 SMMU
Thread-Topic: [PATCH 6/7] arm64: tegra: Add DT node for T194 SMMU
Thread-Index: AQHVXruJJaNjwNgb20yUxCVyNgmdfqcT1imAgAAZ92CAAAfbAIAACotQ
Date: Fri, 30 Aug 2019 18:35:23 +0000
Message-ID: <BYAPR12MB2710B0F6F5630BF0BE7B4663B3BD0@BYAPR12MB2710.namprd12.prod.outlook.com>
References: <1567118827-26358-1-git-send-email-vdumpa@nvidia.com>
 <1567118827-26358-7-git-send-email-vdumpa@nvidia.com>
 <b834ceb2-b296-0a52-c913-5a8923466cf2@arm.com>
 <BYAPR12MB2710BDF98FA472A77D106814B3BD0@BYAPR12MB2710.namprd12.prod.outlook.com>
 <da30773d-5831-7cc6-4d82-b304d9b8a29b@arm.com>
In-Reply-To: <da30773d-5831-7cc6-4d82-b304d9b8a29b@arm.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Enabled=True;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_SiteId=43083d15-7273-40c1-b7db-39efd9ccc17a;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Owner=VDUMPA@nvidia.com;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_SetDate=2019-08-30T18:35:20.6178276Z;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Name=Unrestricted;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_ActionId=a4d8d298-2ba8-42f4-8234-97588e94a045;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Extended_MSFT_Method=Automatic
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=vdumpa@nvidia.com; 
x-originating-ip: [216.228.112.21]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8e33b27d-8389-4f85-852b-08d72d78d21c
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR12MB2615; 
x-ms-traffictypediagnostic: BYAPR12MB2615:|BYAPR12MB2615:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR12MB26153993916A9725E545F848B3BD0@BYAPR12MB2615.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0145758B1D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(396003)(346002)(136003)(366004)(39860400002)(199004)(189003)(7696005)(81166006)(33656002)(81156014)(76116006)(66946007)(86362001)(66476007)(25786009)(229853002)(52536014)(8676002)(2906002)(6246003)(53936002)(66446008)(64756008)(4744005)(66556008)(5660300002)(55016002)(9686003)(4326008)(26005)(14454004)(186003)(6506007)(102836004)(6916009)(486006)(11346002)(66066001)(446003)(71200400001)(71190400001)(256004)(14444005)(316002)(99286004)(54906003)(478600001)(74316002)(6116002)(3846002)(76176011)(6436002)(7736002)(476003)(8936002)(305945005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR12MB2615;
 H:BYAPR12MB2710.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nvidia.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: oFhzkMTb2wxvURM7fM6PygLbVYZq6lPnF7fPkPe35TcAaR6qM8heYBcHNc26tMkdVdosBaYRpdoBK0AizP3aDslZ9EiMdlrNp+Eprk8B0HzF7XKXC6P8krqiqGaESdrnWQ/vLeah0F4u4KdG+LdJgfPBkO9vJ7qbpKDYqtfk+u441PJcrzeA/FarkitXicuue+8Nx1SmESkWGrZKzUzl8E2HyCN5xVDYCW1qXAKNFQ6CaKLmc8EfZaaEvKa8XE7GslWNwLY5MSU9dqnI+DH2m1VljEe1sMGDJq1G4dmTEZiBW4P8Glfgaf2dtmjSsQzfnGS77Da4T/M2cnug1RztsqSK5DwJN786ewMoAGgm/30hSc7SmjCvWyORNJsmdEjpbHTJBcW8DIraoNS1wdtrbgpTJ0Mq1/SVch206EiDAjA=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e33b27d-8389-4f85-852b-08d72d78d21c
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Aug 2019 18:35:23.8615 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: L6sqhY0ZWnVPU86Wnul2ZbvwtRsOMiunQbUzZ2Ow0r7JvGIMjd1+lAfwg8hztjmVZEDf7/DtVxq6/JljfZDF5w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB2615
X-OriginatorOrg: Nvidia.com
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1567190126; bh=pl9uNrlQxRZnm8gkVDCjR0EIe2465ZjPfWys2AUBhKM=;
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
 b=rAKLAcERSrQZmHfyHqhTnt9iCpKBII/WLvypAENCqbjYibVNk4BMho+4Vfnn8+Mxp
 6gV6tgyuEOiNAf0DzvxJnrtnaVxRAz53O5Aw609hsWAwU8SAkEhpXlQYxgm6Eqj7Gt
 1iophk1Imczs9LQXkX/s4UPmPWN145h9CzXIWiA3e4uJdJExxCUlAL8bTWHMfHP/u5
 MmBIonkesc7RjNg3cOMUrnQn7tVTh1agwAfOgv/exr1F9Bdi3OUHESMMkiKZ+/U5br
 LXd2nwz0n7nJNI+skWWpBDySJ8Di4Un2h3FT2ppCYp78NHZsIyeVItzUi5+S4jqxs6
 BCm228RfouvKQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_113526_817265_A6BFA827 
X-CRM114-Status: UNSURE (   6.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

>The number of global interrupts has never been related to the number of context interrupts :/

Yeah,  They are not related. I was trying to use minimum irq entries in the DT node as they both would achieve the same functionality.

>Clearly you have one combined interrupt output per SMMU - describing those as one global interrupt and the first two context bank interrupts respectively makes far less sense than calling them 3 global interrupts, not least because the latter is strictly true.

Will update to 3 in next patch to make it better for readability.

-KR
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
