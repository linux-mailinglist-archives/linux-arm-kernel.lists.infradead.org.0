Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA2D119F74E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 15:55:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1LXDQGhc8NMYBXrOb0RoJiWFiQN89CbC0Cbqhvtrwhg=; b=dDglJ/QMhlVK8a
	ZWvZcornM02JVRguCWfzI5LyRgaeoS+f/WBngBBCDNmbvYW5FHPMPFBAiQpPyxwsNJv4uzw8jjSBq
	Jj9s2cHOinljqEEcLsTq1egx7+m4lrVUYRUWh7fm0Rieh5QqEvG7Nt3+lqzwj3XuSsWFzNoK5VmAt
	p2r4/OBDrbcgAo3Z1ChWJ7UaAXQaPoDRqaXgIjyjCyTUNMnR19H7M18AmHNwXc0PmD6of2BhqQ+RU
	ctdIT9rexPosp+klwzML4c3lYsltiQsMpyPyfCY1bGil65VWAmaLaKQGNcCcF1w8/eqYW0gMxfJdi
	cA6vPS+Jkx3lTbUqxgYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLSDo-0001e4-Vg; Mon, 06 Apr 2020 13:55:28 +0000
Received: from mail-eopbgr700082.outbound.protection.outlook.com
 ([40.107.70.82] helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLSDW-0008Cl-Qt
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 13:55:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kxprmXZQkicXSloiysV/h2LM+Mgl8qoLNKmPUk52b5c1kP5g5NUKoHrv0Iqyke/kBzUTYo1eEoKnUUrYKnY9N903CyHQPoUr8TAjDzmXUC4R6xGl3m05ixgtHyQtY+1nOUFo7xrA3pv5ZMShdVaAn1V4Udkx2pg/uw5YxAAVmbQ/q/oCBPldhm64R28HShM+ivgspLhEbBCXpJ+IpVKKZGDpYviTyG0UkYvgVUiGM45cpYG42PDycNtTILzd9V+f9EaA2IAvG5aepQL12O8hJ8oU26twCRZjEmTO8LMKmBkCBK8GRIHyw0gkLRcNBuX/8LrZ1U3pMaYfZ+j8H+c3NQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pfYk+T7ztj8tkf80ESi8rb+tlFSMcroZEmsnNXAdqDY=;
 b=TtRlErtXPEWMzp4eZlWYhdm8uqajf3TLMbyS70swf13zYQmQ+8zwui+P/yLolOZ7u8y8QUn9mMF+jldrnER1ZcOZRVqAXE8zWacH+VhY4H8rGwDP14HeEt4DVx17kZMg9o4Cl8OVwLQt9DF6Trk28y4rZv1B5E7VkDUlw8XrqdUJ7/HKXVvB0JC0igEt1e86+revHuQSqN2WkVJIBzqb5Mm+vtne+fi5AHSEliFm3XoiVXIewgssqeaPt/ytoAjtUx936Gg6sNygecu7lD0hSpkSFyW0Qc/csoW7bfH5K66WZ+NIL/HD2cly46xBCah+wGk4XQA5BHqw0bA8awNmBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pfYk+T7ztj8tkf80ESi8rb+tlFSMcroZEmsnNXAdqDY=;
 b=pzqL4h5gqYOVYGofLyY0HlsvdxyZejP4UzEUMzMa11wzrteHn+PBUhahQzB/1FrWiEf49VqR05LthgNc+2QnZCeE4EnAM/lzLhZ3bHPeDqPBMMcwyxf9NuepM9MdTcROzJjj0LKEZxHqG5O3ZHd5eKfNvb8PASASMYWNzx7NlWM=
Received: from DM6PR02MB4426.namprd02.prod.outlook.com (2603:10b6:5:22::28) by
 DM6PR02MB5962.namprd02.prod.outlook.com (2603:10b6:5:179::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2878.21; Mon, 6 Apr 2020 13:55:05 +0000
Received: from DM6PR02MB4426.namprd02.prod.outlook.com
 ([fe80::2458:ae1:e813:f217]) by DM6PR02MB4426.namprd02.prod.outlook.com
 ([fe80::2458:ae1:e813:f217%6]) with mapi id 15.20.2878.018; Mon, 6 Apr 2020
 13:55:05 +0000
From: Manish Narani <MNARANI@xilinx.com>
To: Adrian Hunter <adrian.hunter@intel.com>, "ulf.hansson@linaro.org"
 <ulf.hansson@linaro.org>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, Michal Simek
 <michals@xilinx.com>
Subject: RE: [PATCH v2 3/4] mmc: sdhci-of-arasan: Modify clock operations
 handling
Thread-Topic: [PATCH v2 3/4] mmc: sdhci-of-arasan: Modify clock operations
 handling
Thread-Index: AQHWBlYDfVQqA2G69U+StIaVOIIdzahloRMAgAaHjIA=
Date: Mon, 6 Apr 2020 13:55:04 +0000
Message-ID: <DM6PR02MB442695A77DAFC7358B9DC6CEC1C20@DM6PR02MB4426.namprd02.prod.outlook.com>
References: <1585546879-91037-1-git-send-email-manish.narani@xilinx.com>
 <1585546879-91037-4-git-send-email-manish.narani@xilinx.com>
 <34dffb3a-aa90-db27-7465-df840d148658@intel.com>
In-Reply-To: <34dffb3a-aa90-db27-7465-df840d148658@intel.com>
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
x-ms-office365-filtering-correlation-id: b01af45a-b306-4330-e54e-08d7da321c15
x-ms-traffictypediagnostic: DM6PR02MB5962:|DM6PR02MB5962:
x-ld-processed: 657af505-d5df-48d0-8300-c31994686c5c,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR02MB59628A5163060DE30A90A012C1C20@DM6PR02MB5962.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0365C0E14B
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR02MB4426.namprd02.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(376002)(39860400002)(346002)(366004)(136003)(396003)(478600001)(9686003)(71200400001)(8936002)(66476007)(81156014)(66446008)(64756008)(66556008)(107886003)(8676002)(6506007)(53546011)(81166006)(66946007)(76116006)(5660300002)(33656002)(52536014)(7696005)(26005)(110136005)(54906003)(2906002)(316002)(6636002)(86362001)(186003)(7416002)(55016002)(4326008);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 73r0F97fLyHjM6HZHcAsnYxapnHPecYiPhR69iJtRA2GdaR9PbY8Oc31IS9Bpe6LGEuyuWPmeIR2QbcuYfEUPQZVua9ExiXgcaneIDxDy9cX2oixBCJzMTh5YVIPD1Pgu6Kyg4cZIvslU64Zv9Lm9rd+v6sObjXdS/C+7Z+bwgbqh5gkbvaEeJSwVqwEYhz38PSXSONr4RDYfezWIf+7/pzMG/ExbYzbmHQIHbWbszdjwa/IY6oSDopI1KYg1W+8/noPnvyhS5sIJFenfavtzJds8PJ3bLBcR5pwXXu+uLWt8BpmbKg7DiWmVedq5BQQgOnsJK1PCAUU9RluJ/HBMRxdTYwm/UvJRVSkjDJ/o4EGKmxcZjfp5QL32gJtGJdYwzQT/nXwV3z7hhVj6x4svsqOdEjKUOkQLGA4eihSRpQXnBKdqLqdvbnUmFqV610U
x-ms-exchange-antispam-messagedata: OF+7fBTir3LlxrBM2RhW8NaeotYI1z2Lin2NtnCz3w6tEmFCdKyRdzWTc+RUNAB7xLyedtrKUUj6P6jBTKzWjJ3e+SKPSEKQOVbErgQmXvMDOHrsaNvj71KrFnlYL5/j6Sf83ZNgCiXcTyymmgjnmA==
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b01af45a-b306-4330-e54e-08d7da321c15
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Apr 2020 13:55:04.9602 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: N+RpeKb+AHP73WCQJH5Dylct4WizBcywFrmIk9Vp3REpGLm6+fy6y003v7g7Mub+KhG3WKr0mAn6/PBnWbMxLg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB5962
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_065510_933812_AD16F46D 
X-CRM114-Status: GOOD (  14.14  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.70.82 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

Hi Adrian,

Thanks for the review.

> -----Original Message-----
> From: Adrian Hunter <adrian.hunter@intel.com>
> Sent: Thursday, April 2, 2020 3:40 PM
> To: Manish Narani <MNARANI@xilinx.com>; ulf.hansson@linaro.org;
> robh+dt@kernel.org; mark.rutland@arm.com; Michal Simek
> <michals@xilinx.com>
> Cc: linux-mmc@vger.kernel.org; devicetree@vger.kernel.org; linux-
> kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org; git
> <git@xilinx.com>
> Subject: Re: [PATCH v2 3/4] mmc: sdhci-of-arasan: Modify clock operations
> handling
> 
> On 30/03/20 8:41 am, Manish Narani wrote:
> > The SDHCI clock operations are platform specific. So it better to define
> > them separately for particular platform. This will prevent multiple
> > if..else conditions and will make it easy for user to add their own
> > clock operations handlers.
> >
> > Signed-off-by: Manish Narani <manish.narani@xilinx.com>
> > ---
> >  drivers/mmc/host/sdhci-of-arasan.c | 208 +++++++++++++++++------------
> >  1 file changed, 119 insertions(+), 89 deletions(-)
> 
> Would you mind splitting this into a patch that moves the existing
> structures first, and then a second patch to make the changes.

Noted. Will do that in next patch series.

> 
> Also, I notice there is 'struct sdhci_arasan_data' but also
> 'struct sdhci_arasan_of_data sdhci_arasan_data'.  This is confusing, so
> perhaps a preparatory patch that renames the latter from sdhci_arasan_data
> to somethine else e.g. sdhci_arasan_generic_data

Okay. I will create a separate patch for renaming the sdhci_arasan_data.

Thanks,
Manish

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
