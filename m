Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4EFC4B42D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 10:40:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aa1rOdWDzlvouEIpdLSJTjEsf11UZHvXWi6Lvf5HQnQ=; b=h7bz0MrUiLNldk
	ah00FguuE0WqH0YmLCKMfBofUE3LBZylUpyHEC1iZo+6XA/YjvUdozK5JJhEQDa1a2Sp9MTvIdqzh
	6+U0V5odMIgSCHwBX//8Ma4Lr5mNKmBn4VCeHqYGSbFNH7y2B+d2HWRJt2XmSvI1pgVujoDB8guGi
	Q/HHfdyN21t9chcknU23cGgFXsCKLfePSCRyNlRUdXLKMCECc6/a6oN0j6MVs5fTRCBwajHrMpsM/
	QHvdICL8B3hAiiNASQhsePKGH1qvbRJn+9gmtGn32eYr7o2O9DeXfzZOQFLc2haXK7XPNM98Qtx+e
	aFxww0BvUqPAbGbW6KGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdW9I-0001Y0-Ul; Wed, 19 Jun 2019 08:40:56 +0000
Received: from mail-sn1nam04on060c.outbound.protection.outlook.com
 ([2a01:111:f400:fe4c::60c]
 helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdW94-0001Wy-Ci
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 08:40:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l7U/WCR6BCULOmh2jJCdOpnjjteIdVUj4zPU1ANIguI=;
 b=jVZh7i5NjX+XHpub3gy5uDEqk8U0RbIcXJJWgYBtoKJJ9NNkQdA8ncMS39IrgeM5o3jT/NYGPvqADDfkbLc6fnzxQz0sPjvNXCZfuPBxN42YSFI/s4r+9GLr+TNcOEKQzpjyExpILvDQ9Uu4bA7d2a0uXUFvKtW2D58DVeCB4rU=
Received: from MN2PR02MB6029.namprd02.prod.outlook.com (10.255.7.10) by
 MN2PR02MB6272.namprd02.prod.outlook.com (52.132.174.221) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.11; Wed, 19 Jun 2019 08:40:37 +0000
Received: from MN2PR02MB6029.namprd02.prod.outlook.com
 ([fe80::e55a:e2d1:953f:ed3b]) by MN2PR02MB6029.namprd02.prod.outlook.com
 ([fe80::e55a:e2d1:953f:ed3b%4]) with mapi id 15.20.1987.014; Wed, 19 Jun 2019
 08:40:37 +0000
From: Manish Narani <MNARANI@xilinx.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Michal Simek <michals@xilinx.com>
Subject: RE: [PATCH 3/3] mmc: sdhci-of-arasan: Add support for ZynqMP Platform
 Tap Delays Setup
Thread-Topic: [PATCH 3/3] mmc: sdhci-of-arasan: Add support for ZynqMP
 Platform Tap Delays Setup
Thread-Index: AQHVIDwWKZKZdF95gUaFGq/oqBvspKafu1mAgAADioCAAA8FAIAC5Ktw
Date: Wed, 19 Jun 2019 08:40:36 +0000
Message-ID: <MN2PR02MB6029DB87CEE32655B0F1E794C1E50@MN2PR02MB6029.namprd02.prod.outlook.com>
References: <1560247011-26369-1-git-send-email-manish.narani@xilinx.com>
 <1560247011-26369-4-git-send-email-manish.narani@xilinx.com>
 <CAPDyKFrJwpwUUX_q2kcR9QY_fv9Lgos+ixPmU6JMeJVqJAiFpg@mail.gmail.com>
 <5feac3fb-bef3-b7d1-57d6-81e115e1f555@xilinx.com>
 <CAPDyKFp_ZvSjFp2FGonzGsnc9xPyZ7qOCaRnX1SimBxLpfz9-Q@mail.gmail.com>
In-Reply-To: <CAPDyKFp_ZvSjFp2FGonzGsnc9xPyZ7qOCaRnX1SimBxLpfz9-Q@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=MNARANI@xilinx.com; 
x-originating-ip: [149.199.50.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 17b2548e-1602-416c-380e-08d6f491cd5c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR02MB6272; 
x-ms-traffictypediagnostic: MN2PR02MB6272:
x-microsoft-antispam-prvs: <MN2PR02MB6272111C0B1426BF54177471C1E50@MN2PR02MB6272.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0073BFEF03
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(366004)(39860400002)(136003)(396003)(51444003)(13464003)(199004)(189003)(4326008)(256004)(66066001)(71190400001)(71200400001)(5660300002)(8936002)(52536014)(11346002)(7696005)(99286004)(102836004)(476003)(8676002)(4744005)(74316002)(486006)(14454004)(76176011)(81166006)(81156014)(6506007)(446003)(25786009)(478600001)(54906003)(110136005)(86362001)(6636002)(305945005)(55016002)(9686003)(229853002)(7736002)(2906002)(6436002)(53936002)(68736007)(72206003)(186003)(33656002)(3846002)(6116002)(76116006)(66446008)(64756008)(66556008)(66476007)(6246003)(73956011)(316002)(66946007)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR02MB6272;
 H:MN2PR02MB6029.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: WJX/FACNmavOXlyP/KqvQ6DeHtyxcdUETgvD0uaVOMRDD4kCJuO5TzEXv7UADRxVLkUlviMdjn3ejmkDuzxZr+EjHCpe0KLu0ksDFiNLaXKZ4R+lGv5pEiBUHiiflx6VEjBxZuW/9AyVcT+FC2/odtZWRFmFKpmNkdbeHfbSv4M+gg3/muVb0G4yFHwQQxwpM2AOLldQK+HG6vr64K76svaikBy6SMo4/GYk5z8AsPiuOEmQdEJnZCQm108TIXZF4Hy4a7zHTq2BKi5C7VHlmAh0aUPNQXgpkD3h2PvXMXTDyBYZFpCnxAvL98KS42sPx2oRoKZLvkeHNj+IZMjsMxXKXnEGl7a7JBwg2re1xpArLIGiY1lol3cXD9ta6O8S1nNceFBsNxvH8EiVPxTpGjM8YCNuOSRLCodIL2aYPOE=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 17b2548e-1602-416c-380e-08d6f491cd5c
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2019 08:40:37.0593 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mnarani@xilinx.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR02MB6272
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_014042_435586_360539D0 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 Nava kishore Manne <navam@xilinx.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jolly Shah <JOLLYS@xilinx.com>, Rajan Vaja <RAJANV@xilinx.com>,
 Rob Herring <robh+dt@kernel.org>, Olof Johansson <olof@lixom.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Uffe,


> -----Original Message-----
> From: Ulf Hansson <ulf.hansson@linaro.org>
> Sent: Monday, June 17, 2019 5:51 PM
[...]
> 
> The "const struct zynqmp_eemi_ops *eemi_ops; should then be moved into
> a clock provider specific struct, which is assigned when calling
> sdhci_arasan_register_sdclk. I understand that all the clock data is
> folded into struct sdhci_arasan_data today, but I think that should be
> moved into a "sub-struct" for the clock specifics.
> 
> Moreover, when registering the clock, we should convert from using
> devm_clk_register() into devm_clk_hw_register() as the first one is
> now deprecated.

Just a query here:
When we switch to using devm_clk_hw_register() here, it will register the clk_hw and return int.
Is there a way we can get the clk (related to the clk_hw registered) from the
clock framework?
I am asking this because we will need that clk pointer while calling clk_set_phase() function.

Thanks,
Manish
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
