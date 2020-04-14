Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C871A7323
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 07:49:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iDKzczo5ovbb9NkJoY2g7lhonzdNCU0Jz4uvRhdflmE=; b=DY1GRaK4EYLC9Y
	6b0US5xLeR5sPS6ZMSTUaiGnIKfZmTSP8Ul6rOpvZHVq3LMjqiY7CiU82pVkBJlLjFKblsfvT7f5u
	b/wRFapMG8xXJuZ/zBkXdC7BbSaU0tUNN/JA3CCVwgvGRFumhXHHde3K8F1415HEQ49zekw3vWF21
	mo+oiKcNLQ7Pw3OYCNrIHqYaqjC3ApgdkXdSXSUGvgGEOLvaKOMqnjsg2pFb3csYZTIMAISMZgo2i
	MtcjthB5Q2hwexzyytD7ybpdeeuFkR9tE7wsRDs7RjDCpSPqFrz1g0SLvBH1dYNZYR9lQqzemAabb
	WHAjYDhxOxTVeavGX9Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOERn-0002zu-Cq; Tue, 14 Apr 2020 05:49:23 +0000
Received: from mail-mw2nam10on2081.outbound.protection.outlook.com
 ([40.107.94.81] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOERb-0002zX-2W
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 05:49:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g0/myYQnNp6Mh+uIXG5Dkqq7hqHp28L7P6uWPVc2XcHP4+w/jhsAQBGFAUpeGCEo4ON89YqzmFLcdpWDXj1H74I6r5OlvF164mPl1maI9MgdUzQYrlzIbYXOq0nuYqjtFsrBDMUaMkipDSgzFuGKFO3ywUvfQoLBD6SLG1KsV7jY6IPzkhxiDG4K7mQNanmughzFFfSRwJT7eemwISLCkmbeoAx4IHxkhAr0j24V2zVnLkfoySgPk2Q3kQ45nyJHdTZomCDBhtOWFpk70aQoNTGDTQAMRU/MVi7dkgtWNw7DZEZ9m7q7RB7DMQR1MVHQw4IWREuYGXPi+fJY5mr2AQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1T+h6ZTNnmu/FTHXu5fdBtv4AFr3LYnrqQecMNzxO5U=;
 b=Kti6wFgnktpJJJZMEiP2kUTlbPVrZiGPNscRC3ZeVtV03Lyl3DSNQv/hs6zz0r8NbWRONvUOTg2t8elfUpORYQZKJlO74mSZ5BYnV8UmuNLSpkXCYbiX3+uwGheRoOKAQ4yF78OvLOoWd2G/+NdmMPErmv6SDUGqdYJbPEGQwJtH6O+CiQrq+h6Odtm/hJrc+lTrWQoWJf0os+t4VksjLjJL2i17e6zu3pugAjRE6Vi3h6iJ2coNigANixYpaYMJe9CVOjF+kAVvxwXRokNC8HBctdTMQ/I4p++t5GlZwrLk+MlVV3WGh+B36SDokMVP9cV59NH2q9KIIvsHLq4ODw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1T+h6ZTNnmu/FTHXu5fdBtv4AFr3LYnrqQecMNzxO5U=;
 b=SynwL+OKXxiWLQWFEWXnL88xZAzB/kXNmbDIC9mj0JhKHmWlGbnFXrbzJKsmUZEuqiEW30CEv1gtlC7/wciB4hrpVqAIsXhvZOrUX17GDB/PCvx0GH++bpaaFsZOnASHpmR1b1g74nUBAfKBwFoPJvU3NKRtqKz8S/WkkE6IUVQ=
Received: from BYAPR02MB5896.namprd02.prod.outlook.com (2603:10b6:a03:122::10)
 by BYAPR02MB5253.namprd02.prod.outlook.com (2603:10b6:a03:61::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.28; Tue, 14 Apr
 2020 05:49:06 +0000
Received: from BYAPR02MB5896.namprd02.prod.outlook.com
 ([fe80::c9d7:1fa3:6ec1:f7a9]) by BYAPR02MB5896.namprd02.prod.outlook.com
 ([fe80::c9d7:1fa3:6ec1:f7a9%5]) with mapi id 15.20.2900.028; Tue, 14 Apr 2020
 05:49:06 +0000
From: Manish Narani <MNARANI@xilinx.com>
To: Manish Narani <MNARANI@xilinx.com>, "ulf.hansson@linaro.org"
 <ulf.hansson@linaro.org>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "adrian.hunter@intel.com"
 <adrian.hunter@intel.com>, Michal Simek <michals@xilinx.com>
Subject: RE: [PATCH v3 0/6] Add support for Xilinx Versal SDHCI in Arasan
 driver
Thread-Topic: [PATCH v3 0/6] Add support for Xilinx Versal SDHCI in Arasan
 driver
Thread-Index: AQHWDDsANGwar7+SeUGv1U0VGn/7m6h4KBHg
Date: Tue, 14 Apr 2020 05:49:06 +0000
Message-ID: <BYAPR02MB5896E3E2BB1DC4C2D454B2E2C1DA0@BYAPR02MB5896.namprd02.prod.outlook.com>
References: <1586195015-128992-1-git-send-email-manish.narani@xilinx.com>
In-Reply-To: <1586195015-128992-1-git-send-email-manish.narani@xilinx.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=MNARANI@xilinx.com; 
x-originating-ip: [183.83.137.1]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 7b2dfda0-e2e2-4279-b329-08d7e0378baa
x-ms-traffictypediagnostic: BYAPR02MB5253:|BYAPR02MB5253:
x-ld-processed: 657af505-d5df-48d0-8300-c31994686c5c,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR02MB52534E3F5FFD5109835E607FC1DA0@BYAPR02MB5253.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0373D94D15
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR02MB5896.namprd02.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(376002)(39860400002)(346002)(136003)(396003)(366004)(478600001)(110136005)(7416002)(26005)(4326008)(6636002)(107886003)(54906003)(186003)(71200400001)(53546011)(86362001)(6506007)(316002)(7696005)(55016002)(66476007)(33656002)(64756008)(66446008)(9686003)(8676002)(52536014)(81156014)(66946007)(8936002)(2906002)(5660300002)(76116006)(66556008);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: i1Owk4emep2SVnad8d+DjVlKRwteCaqalPovln/QBAIK1suWLgEGio79ZmfYPO7XQxQfJ7lLc1LolhhPRv8/EP1TS/coOwzUc9b7+crNto1wdZB+EkwWN5tIhiYot1TwqVCKzBF7s6VJc/a+e6ZE/x0eIuAFrR7RIfL7+Oi/8zpOUq8Mo9P8SjORH4czCcnKNADm4gV1RRUJUSs9pb56c6V/ZtjeKnTsm1+Y0pXkAfB1JdW6HtilxT+vNpWUzUAuEWyQUJaXR4MDttjhFKzqXs09UYeFZtsYpckn6RlytSCyMjaP2qVXs80DWuSviKJL5Lgcqvhtpjn4O1XByEx3p6qPAWwvswxFS0hemFCYvCPCNbmwCs5aaGmBx0UOjp3Sc1DwRx353RrSog/4n8hVIpKyDAkWQxDQ61Cq6Y6fnpiooRg/40FpFDurXko5vmIA
x-ms-exchange-antispam-messagedata: VVQ0k9LQpQB73gSRh4Neb/oIcMqQzQAsxHfCQTH+Wh6qbrnbCML2glnELf1E5V4MC4k2a10yTSrjt2sV4J+8IDVbdurorHd5cSOc3mtTUAW0cGf5X6WDP82ynME5wZ4sEU8Wxzls9jgZU/jsH04Qlg==
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b2dfda0-e2e2-4279-b329-08d7e0378baa
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2020 05:49:06.4989 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: u7sYt1lapZ6f/3vwiNdXEeQ5Rh9u5b33TpJB8y31bHHuEL3qipptBuDWb4XeDT8ilFMVgXWJudPiPfpvKZJTWw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB5253
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_224911_116587_802DB9E7 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: -0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.94.81 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.94.81 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 git <git@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ping!

> -----Original Message-----
> From: Manish Narani <manish.narani@xilinx.com>
> Sent: Monday, April 6, 2020 11:13 PM
> To: ulf.hansson@linaro.org; robh+dt@kernel.org; mark.rutland@arm.com;
> adrian.hunter@intel.com; Michal Simek <michals@xilinx.com>
> Cc: linux-mmc@vger.kernel.org; devicetree@vger.kernel.org; linux-
> kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org; git
> <git@xilinx.com>; Manish Narani <MNARANI@xilinx.com>
> Subject: [PATCH v3 0/6] Add support for Xilinx Versal SDHCI in Arasan driver
> 
> This patch series includes:
>  -> Document the Xilinx Versal SD controller
>  -> Add support for Versal SD Tap Delays
>  -> Reorganizing the clock operations handling
>  -> Resolve kernel-doc warnings
> 
> Changes in v2:
> 	- Addressed review comments given in v1
> 	- Changed clock operation handling for better modularity.
> 	- Changed comments to fix kernel-doc warnings
> 
> Changes in v3:
> 	- Addressed review comments from v2
> 	- Move platform related structure before doing clock related changes
> 	- Rename sdhci_arasan_data to avoid confusion with another struct
> name
> 
> Manish Narani (6):
>   dt-bindings: mmc: arasan: Document 'xlnx,versal-8.9a' controller
>   sdhci: arasan: Add support for Versal Tap Delays
>   mmc: sdhci-of-arasan: Rename sdhci_arasan_data to avoid confusion
>   mmc: sdhci-of-arasan: Rearrange the platform data structs for
>     modularity
>   mmc: sdhci-of-arasan: Modify clock operations handling
>   mmc: sdhci-of-arasan: Fix kernel-doc warnings
> 
>  .../devicetree/bindings/mmc/arasan,sdhci.txt       |  15 +
>  drivers/mmc/host/sdhci-of-arasan.c                 | 473 +++++++++++++++------
>  2 files changed, 361 insertions(+), 127 deletions(-)
> 
> --
> 2.1.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
