Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5906E1ACF9D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 20:27:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m/+Wbw4cA54MyZ99ORF/5dcwul18WV5S+AtPgXC4lH0=; b=dxg77iE08AUVJB
	pIx0kzSO3gbRtAHfxndkGEN16arDwajzeeI21WMdZy2e3yvdqmkxAZyC7pj9qcjmbmn7Trw/eYmlA
	ktMWrj+Gsohzno4RZaKPq5ilJOF8c4ffc6aAlk8lPF3HBzAP8oxpkw8fXaaYYo1h0bi26t2M7C+To
	b2fxz/tJerDOkf4NmQYYoxLsFADpHh1gipYFPgDVI067NF4cDFqtqtOq8/BNxIEj5QE46x68xm1Y0
	MaaaKk7iv7KBKUPwbMdphkkcEloDeImhyTpZq8xEhe7HmfJtVIKw6Em6R5tUVNk+hueudDorPGA9M
	4dI/1A97bcCzdaJcHrfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP9Dz-0004Do-E5; Thu, 16 Apr 2020 18:26:55 +0000
Received: from mail-bn8nam12on2074.outbound.protection.outlook.com
 ([40.107.237.74] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP9Dq-0004DA-VE
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 18:26:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JX6/1VXfeWzeHH8snX1A5hVTat7/eoM3u7uNAGOVFlj/TRIrzDiLfHpJgj4OTx6lyqWiGihpRffc1eC/NXg0zE2qr4ZFPyXP8F5gdaWmb0UyoQ78136VOnzS8nCj3xQRKmPNvbZ5ALcRWIWCIkfLmCwM7dMY2kcMrwP15h43N/S2lu/bjXlNhCwUOxc85M7q2N+AOhs2BVW8uLv5SHwWGYaUugWvQx8mJGI0ZHxD4qWpJs/M3D7bpLpbDIAmvAQemWTR/fX65m7eUK360prvYQ+m7CWi7wz9d4Anw5wjTR5Xtau1uRIyeFC9pYI0zS/JF/qQv6yjVkE5spDYEdkjxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nUC1s/XNOjLPhGKh77zIdZcv0ikaQzwppB1UpUBH+CU=;
 b=bSRLsvCFGuB1Uc8emdC4KIbL+xUX5PMfgLrmrph0g9h0dp2OLNY8EPhzXV9BdAwnSGHdIyIQRWW4AwS+kO1IRuwoZTU6sEaDXWMtXObc4xMpW9bEQqPsTEWg2guEgG7d2zCSYDC196Hqpa2yrA8RGm2Xw/TcvFrHaH8vE3y/aLGb2O5wJFUgXY1tPXtBhpIyqjSJO1hdYg5wSWaAtwW8rcQr7o0JhFWb89rz2cer5zKImPeN7bHH9FjUfJYxI/BpZf7z/JRe62ohdXvwEaZsgqjtNEbT3Ay8iEyMqCzrACII5tRsPA4+Tz7fvWrVyfxHAemx3VLFqdJ7a3XBS/v6sA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nUC1s/XNOjLPhGKh77zIdZcv0ikaQzwppB1UpUBH+CU=;
 b=roL3XP1AzJvkT5bpq/g67mYHLgb4RpbNrjiJpmoc9QGWBdtrXunWF4QfNHM1PpOHNPahhwV14vGzXaVfiyqtKEmqlVR8yJebBWrEBPF2mdhL36S2FETD/+47G75IIFTsioC02ttlb178vylZ8OD/66C6XscOU5UHGkZ9yHjTKLc=
Received: from MW2PR02MB3770.namprd02.prod.outlook.com (2603:10b6:907:4::15)
 by MW2PR02MB3772.namprd02.prod.outlook.com (2603:10b6:907:3::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.24; Thu, 16 Apr
 2020 18:26:43 +0000
Received: from MW2PR02MB3770.namprd02.prod.outlook.com
 ([fe80::1846:3334:1289:1f7d]) by MW2PR02MB3770.namprd02.prod.outlook.com
 ([fe80::1846:3334:1289:1f7d%5]) with mapi id 15.20.2900.028; Thu, 16 Apr 2020
 18:26:43 +0000
From: Harini Katakam <harinik@xilinx.com>
To: "nicolas.ferre@microchip.com" <nicolas.ferre@microchip.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: RE: [PATCH 1/5] net: macb: fix wakeup test in runtime suspend/resume
 routines
Thread-Topic: [PATCH 1/5] net: macb: fix wakeup test in runtime suspend/resume
 routines
Thread-Index: AQHWFBbHfzHTc4wzLUmw4FeI8KiR0Kh8D02g
Date: Thu, 16 Apr 2020 18:26:42 +0000
Message-ID: <MW2PR02MB37706E6E182F19F278B35707C9D80@MW2PR02MB3770.namprd02.prod.outlook.com>
References: <cover.1587058078.git.nicolas.ferre@microchip.com>
 <eba7f3605d6dcad37f875b2584d519cd6cae9fd1.1587058078.git.nicolas.ferre@microchip.com>
In-Reply-To: <eba7f3605d6dcad37f875b2584d519cd6cae9fd1.1587058078.git.nicolas.ferre@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=harinik@xilinx.com; 
x-originating-ip: [149.199.50.130]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 2b48911d-bcbb-41bc-9ec0-08d7e233b68f
x-ms-traffictypediagnostic: MW2PR02MB3772:|MW2PR02MB3772:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MW2PR02MB3772424D0C8EDF9CDB0E8CC4C9D80@MW2PR02MB3772.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0375972289
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW2PR02MB3770.namprd02.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(346002)(376002)(39860400002)(396003)(136003)(366004)(76116006)(5660300002)(2906002)(26005)(15650500001)(8676002)(9686003)(7416002)(8936002)(33656002)(186003)(4326008)(81156014)(55016002)(316002)(110136005)(54906003)(52536014)(64756008)(66476007)(66946007)(66446008)(66556008)(478600001)(71200400001)(86362001)(53546011)(7696005)(6506007);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: n6oB8HsivFgRC9RAKqYVozDBokyrxxSza462tf4RuCrPsh3jztL3c8pPIaVGtPG34NYVHLknl8/yW0UwnpUKlNtXg5F5dkTndb3ZiZMGiAi7mauFFIcpLtpc7K7AxgHb1exPtpkSEk3IUjHl5Xqhkh1OPDgKSKV1mcvZjDl6aWiAs/dBuduO3bJrVyM6m39ykIQEEB4h2M4H1kk4pIJ4XP5Woh0tG+9bl27zPrMS/993ZWcNUGjNpycl6Dj4N/tBGakXwEN/YFzt7KuEu2Hlfq+avFWmVVge2VEll0ysSElR3YCnUqykK/uxzk4m4vZdFr6U7efn9H9sNQzv2TLJ9DAHUFNRkBtZBXLIyDuKWGrv/QUxAYA8Nkuuy9s4SGRVbHKBNLH3/QGEVLaD1uw3VEdZ2LHBUsd3wx45VxEyVGCb7L7bToiOF1kCloxDqUnp
x-ms-exchange-antispam-messagedata: rukRdoh5nrIZrjspW1cS0vzR5wqQ5c3Kku/6lZYVqeRYy6ENycX7KDyuiwcnsifhCRAdSDNUfHHyolbg42bQBfnpWFhPiybtpaFvh/o1SoPdZLCpkccjBEVaYbOQchJdQtAB/zGjSKqWHlc4z3pD8Q==
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b48911d-bcbb-41bc-9ec0-08d7e233b68f
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Apr 2020 18:26:42.9260 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1xPp7TqMdz9RFR50fQRYbdKGZPvLuOLUGtrTLMzFtVY53is5QaenzGJfcTI3jDz0lxhFunGv99OeR6d0nadXEQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2PR02MB3772
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_112647_002928_5A429E88 
X-CRM114-Status: UNSURE (   8.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.237.74 listed in list.dnswl.org]
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
Cc: "andrew@lunn.ch" <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "sergio.prado@e-labworks.com" <sergio.prado@e-labworks.com>,
 "pthombar@cadence.com" <pthombar@cadence.com>,
 "antoine.tenart@bootlin.com" <antoine.tenart@bootlin.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 Michal Simek <michals@xilinx.com>, Rafal Ozieblo <rafalo@cadence.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nicolas,

> -----Original Message-----
> From: nicolas.ferre@microchip.com [mailto:nicolas.ferre@microchip.com]
> Sent: Thursday, April 16, 2020 11:14 PM
> To: linux-arm-kernel@lists.infradead.org; netdev@vger.kernel.org; Claudiu
> Beznea <claudiu.beznea@microchip.com>; Harini Katakam
> <harinik@xilinx.com>
> Cc: linux-kernel@vger.kernel.org; David S. Miller <davem@davemloft.net>;
> Alexandre Belloni <alexandre.belloni@bootlin.com>; pthombar@cadence.com;
> sergio.prado@e-labworks.com; antoine.tenart@bootlin.com;
> f.fainelli@gmail.com; linux@armlinux.org.uk; andrew@lunn.ch; Michal Simek
> <michals@xilinx.com>; Nicolas Ferre <nicolas.ferre@microchip.com>; Rafal
> Ozieblo <rafalo@cadence.com>
> Subject: [PATCH 1/5] net: macb: fix wakeup test in runtime suspend/resume
> routines
> 
> From: Nicolas Ferre <nicolas.ferre@microchip.com>
> 
> Use the proper struct device pointer to check if the wakeup flag and wakeup
> source are positioned.
> Use the one passed by function call which is equivalent to &bp->dev-
> >dev.parent.
> 
> It's preventing the trigger of a spurious interrupt in case the Wake-on-Lan
> feature is used.

Sorry I have some mail issues; meant to reply earlier.
Tested patches 1, 2, 3 in this set and they work for me.

I'll try patch 4; it looks similar to what I'm using locally but I'll add whatever
tie-off queue handling is required on top of your series, thanks.

Regards,
Harini

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
