Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A251A3CFF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 19:25:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FRCWUF06R0H/qRv1vNhFKpYyjynPhBB4JBcOl7yFVtY=; b=jYzWQ+VdVQAUJO
	gtyOqJFeKmWqBWZFH+E+fL1/bNCollByfbdttWRV5ph3ad7c8nSDnvDSNbLmZ71fHBewy3J1CkErb
	7InuxDSCYXbSHyPt3gx9UOQOLVQJ7aG0hlR8XV+uT9/e6XgRFhSqW5k01o/8Wr34k087oXK4BUvS1
	5CCYHfagmxgcd/8jCdO3EEJOe+lIlh1Qndu8lK59RX9+aB9c4uqQSoMVM3TKOXQwpPs+PIOmAbSkn
	RyPpVHvy2yM00ymgDrLJz7Zaa/RbG7OashMTVKo18Gr2jO9CFPGFDQkGTkcLrxvbniyLlWrygDYIF
	gG1Sf0eB+jnF12VVjy/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3kes-0005Ul-1E; Fri, 30 Aug 2019 17:25:58 +0000
Received: from hqemgate15.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3keB-0005R7-F7
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 17:25:17 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d695bfc0000>; Fri, 30 Aug 2019 10:25:16 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Fri, 30 Aug 2019 10:25:14 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Fri, 30 Aug 2019 10:25:14 -0700
Received: from HQMAIL110.nvidia.com (172.18.146.15) by HQMAIL105.nvidia.com
 (172.20.187.12) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 30 Aug
 2019 17:25:13 +0000
Received: from HQMAIL107.nvidia.com (172.20.187.13) by hqmail110.nvidia.com
 (172.18.146.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 30 Aug
 2019 17:25:13 +0000
Received: from NAM01-BN3-obe.outbound.protection.outlook.com (104.47.33.58) by
 HQMAIL107.nvidia.com (172.20.187.13) with Microsoft SMTP Server
 (TLS) id
 15.0.1473.3 via Frontend Transport; Fri, 30 Aug 2019 17:25:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MAQlqwyjG5bfVXbSD8cBchSgnB+VlKokPANq1CYKxbPn4a1V2suKI/OURCFx0X91E9A8LpeZO35bBftL/S50RdrCpNET0maSwO58hmBQyDQIP1vy66M8CstKXnY1pPtZ/V2uIeqTyxkgQdxL5LiqRXsfIyJN+1YbHtKj8KqXpgOjByNIBs/awYpsy+m2E0WvTpO/9h0qYYsOdu1RrXYOyZXrKZoLd0hrDYJnCCgf2Xy7OrSAv2/AnfzTBNxFHRLMT/J7iFFaNduSPMBBVjG4+dDzNcKZQPxpvY+w5hlTag9bbR0QiWa1Pvl2+Ol8I7EFwhb49VAOLma8bC2T4yQKzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hBYQzXGSSqiSlRRKp0339GbPc2xiTkMeMT/N2OIhMlU=;
 b=GtrvGDePBAbVsHXAQzYrn7LZlUOMd3Cou+It2hn37u/9IV6cOrkzU/63hbXic+KPbO/Q8T3bFN7vqQ111zCmWx7v2SQUpItVL1dlZLctqqTqgkeeVKd9yzsPLuAq9eDilXNMpHWyh3ir9Z4u0KLhj+UnFB79ey865k3fAnQBogTUWhhlS6vSYyKX0yPDT5F0q86zVKtW35vtLPb9pefk8Vy96E49b0BUac7FwwCD22CmNES3MnKpK0Fz62sIqJgXkw9wKi0ItXWZnIMt9YHwRZqqqfPIoJpNUMajrd3z2MJuFTJwuDbDoas63ySJGEhHImzhHFz0bABYnCEKXf+zuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from BYAPR12MB2710.namprd12.prod.outlook.com (20.177.124.11) by
 BYAPR12MB3574.namprd12.prod.outlook.com (20.178.197.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Fri, 30 Aug 2019 17:25:12 +0000
Received: from BYAPR12MB2710.namprd12.prod.outlook.com
 ([fe80::60a8:9757:8be2:2c56]) by BYAPR12MB2710.namprd12.prod.outlook.com
 ([fe80::60a8:9757:8be2:2c56%6]) with mapi id 15.20.2220.013; Fri, 30 Aug 2019
 17:25:12 +0000
From: Krishna Reddy <vdumpa@nvidia.com>
To: Robin Murphy <robin.murphy@arm.com>
Subject: RE: [PATCH 6/7] arm64: tegra: Add DT node for T194 SMMU
Thread-Topic: [PATCH 6/7] arm64: tegra: Add DT node for T194 SMMU
Thread-Index: AQHVXruJJaNjwNgb20yUxCVyNgmdfqcT1imAgAAZ92A=
Date: Fri, 30 Aug 2019 17:25:11 +0000
Message-ID: <BYAPR12MB2710BDF98FA472A77D106814B3BD0@BYAPR12MB2710.namprd12.prod.outlook.com>
References: <1567118827-26358-1-git-send-email-vdumpa@nvidia.com>
 <1567118827-26358-7-git-send-email-vdumpa@nvidia.com>
 <b834ceb2-b296-0a52-c913-5a8923466cf2@arm.com>
In-Reply-To: <b834ceb2-b296-0a52-c913-5a8923466cf2@arm.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Enabled=True;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_SiteId=43083d15-7273-40c1-b7db-39efd9ccc17a;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Owner=VDUMPA@nvidia.com;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_SetDate=2019-08-30T17:25:08.1305198Z;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Name=Unrestricted;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_ActionId=27c1526a-15e9-4826-93e8-329f3444bf1f;
 MSIP_Label_6b558183-044c-4105-8d9c-cea02a2a3d86_Extended_MSFT_Method=Automatic
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=vdumpa@nvidia.com; 
x-originating-ip: [216.228.112.21]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 177d8ee7-67bd-455b-ccb7-08d72d6f03ad
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR12MB3574; 
x-ms-traffictypediagnostic: BYAPR12MB3574:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR12MB3574EA79B6B4F8776EF29C02B3BD0@BYAPR12MB3574.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0145758B1D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(366004)(346002)(39860400002)(136003)(396003)(199004)(189003)(446003)(256004)(52536014)(14454004)(5660300002)(186003)(6246003)(7736002)(305945005)(486006)(25786009)(71200400001)(71190400001)(4326008)(4744005)(86362001)(316002)(478600001)(33656002)(6916009)(229853002)(26005)(6506007)(11346002)(66066001)(66446008)(66946007)(66476007)(66556008)(99286004)(64756008)(55016002)(476003)(81156014)(81166006)(76176011)(7696005)(8676002)(74316002)(6436002)(6116002)(3846002)(54906003)(53936002)(102836004)(76116006)(2906002)(8936002)(14444005)(9686003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR12MB3574;
 H:BYAPR12MB2710.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nvidia.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Vv1qDg0j9Z36PuJi5cFFCBaZE8WkMB3f1ZgN6yJDSXMpKkEOPaKPqOQ3MyLq0ITRe/LzRzVtpK/1IDJtRKjpDCOZmK/Z4H01XQKcANM/88Imv04ce65mKfsnStzbEbll5KVuVoNGu4kdZY1cvlpxXomBBfy2lZ0HCy+PMfQB02hDDdbz51CSQ6YV5OgfrWaGBJ7UwQ64DOXUpaKrhgfMJcPa2B63dSOA2jcRfV7nWvQTZBoxViO8a1UhUhXGjHzuaxJPG26uZtmfawBBy5ikL+cgh59zKv86YwfFmx0bv6M0K8ThQV9DgOFy7Wb8ZAdSp/+uOG0RTPPm//ERgEjxOT2fcW6zMXpg1aMWgF9+16ZZw2NMISoy+Pi0ENEvTeiJut6F7qXUfhPjXokwi/keqmiexSMsXm2k0sFdtREiHc8=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 177d8ee7-67bd-455b-ccb7-08d72d6f03ad
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Aug 2019 17:25:11.9887 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qazTpIEnqfmVXCUzxG6Phze+I9RVmDL/w16KUfalKe2ImOvoJkf6+/AVhzXEIrKVAFDUs+ZtL5JPyM4glgb/mg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB3574
X-OriginatorOrg: Nvidia.com
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1567185916; bh=hBYQzXGSSqiSlRRKp0339GbPc2xiTkMeMT/N2OIhMlU=;
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
 b=I3AOU4gYw3gBtNvcJt06i/GXDwcKXX4STHTsLZRGJj+3VvfCKxmWhh88jznceHO3q
 qpwtwWUFXv9i9KR0rOZbIWjv5kGljd5QYFmAATWrSebSTwTNH886UNoNbwM1S6Qh9Q
 Ft3abSwDUv/w4jFyoMGfH8q//4ZGMKhNCaXRUdkCjL16JksCUnYiWqUFUBfAFAZdu1
 4XmYazhfYi9jAtn7K+3ek4xrdq50PBI/fpxn50MxUgK3NziWuRsW7n//Xnzfek60vb
 7TLiQtlu6ASdANsruhvXDgvFsoOWzJ9VCZXJmxpIveIbY3AC8SX9+/6XsRKOhAfbSa
 BBbzaxWHVu5KA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_102515_939147_47F1C1A9 
X-CRM114-Status: UNSURE (   6.85  )
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

>> +		#global-interrupts = <1>;

>Shouldn't that be 3?

Interrupt line is shared between global and all context faults for each SMMU instance.
Nvidia implementation checks for both Global and context faults on each interrupt to an SMMU instance. 
It can be either 1 or 3.  If we make it 3, we need to add two more irq entries in node for context faults. 
In the future, we can update arm-smmu.c to support shared interrupt line between global and all context faults.


 -KR
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
