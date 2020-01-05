Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DBAC13092E
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Jan 2020 17:40:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=92+veARAGL77vK/G2SBr2oWGmLjJ+bBcH5kxHe1ynCA=; b=twBtEozWkWbCzQ
	aCMNVH/LGoeXnZMlmujae2NHqEAsxNfrfHiO2kNPa3JbNC2B/z1iWlyCv444AiUxjZirSm7bn/JJg
	V5EOi6rkx6bv3rATGGTALzQtnZAlEjPqUZY+n1FSERYHqnM+07Uidp5GyGqbt86BGsT4qu/2fUPa4
	HreCUvUkKwW2pI0GgKEjOvvIwzVi05Og5nSeCPZ8Pssr4WrlQgaiOgALl3tt9V0BixWQxmp7VVGPn
	1KL8/TspoI5qf2o18tW2/9SagUEKANzkvzt3eXTe7Or1nW74L1Nb9X3ZB7QDCYPqSGSG0p00gZmbJ
	WgBfGFJStLq/icwoIwBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1io8x4-0002Mf-Tm; Sun, 05 Jan 2020 16:40:30 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1io8wi-00027e-S8; Sun, 05 Jan 2020 16:40:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1578242409; x=1609778409;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=o6v7kswxB+kQK3MbMK/j3XVKjA+EkM9m3g9GM7Rwpb8=;
 b=QghVGtgYbRojhjoWH7IB9XP8rOBVEFrZ8NtbtTyoCa+Xr82kp//YwBsA
 xoVTowxykuPMJXBosdHTHUaw7UEMn9RxcitHuM18dCgSrX5jl1tvb9qNm
 zYN9olkLvdaIeHGF3ChxCLyPSemyqIMEfTonlXzoMkZVuiXLzagYQjcPu
 4OWLw2VXzCS2gRsW8RFrr1RHGFFLCi/SH7tMvoSrUZGp33Xn5bnfY5sSL
 PameBNiCMJTvhZN8UDm5DamiNVrpNgPvECJM76htOCWiuLG9dGsUau2bh
 QdLm7P8fpsHMMwf1EMwXW+YPRkCBO11q51Els3VFQQzZPOJ4UECrlVx3r g==;
IronPort-SDR: t18BIxUjT1leyurv/zBGXvMZCPOb6TrLa1Hjf81GSVZvH8XXSasZf8rTdk1gjINYa/TBCM5lRK
 +HrVm2107n7S1uPNWIiRTq0ugY0G9YnQFzwJy3gBKFYIc8nOtJ1nAix8pTegmKGSK3vFUNquJM
 3yuWpuGgHpP0u5bGfXyMBTS9t1iKbo8sMLMov8T+SFH6sdTNMW6t8jxnWXxJhJG0ARslUSN9a6
 YX3rjecJBIwdzZqATI5doPtf/ISUO4a4qRaN2UHSR8bWCHWSCHoALak2D5kpACl2audYi0VUcX
 4Yk=
X-IronPort-AV: E=Sophos;i="5.69,399,1571673600"; d="scan'208";a="127475997"
Received: from mail-bn8nam11lp2173.outbound.protection.outlook.com (HELO
 NAM11-BN8-obe.outbound.protection.outlook.com) ([104.47.58.173])
 by ob1.hgst.iphmx.com with ESMTP; 06 Jan 2020 00:40:05 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OxAVKrEz2pSvHBbfhJGI9aBulwmIAqbOP7/KauaqWrX+EQI8WG7k8XE9cB/LjCcdNOpWLgJBjvoOySu4o5KwWZtXIaoFtTddbthvXTAvp1EieODZPljmIBz9VburGLAD3F1vZMU3WYOliVxTORVDtd3NH1+eXWBQP5DM2VnmU5dlINKwF8arPCZNzN+W4Rhixjmc1VM1tMoTyn/QF4vt/XuLq9hcxJqIAsRDyVG6WzZkqG9b9/WzoMeWEu/uVb7kx8Bd38opJSNzq8wx2TkdPBr7AJ/RtE3C6i8dhzmKqBica9EFJc14Za9zAjU43AthDBDyOZ63dXqi5P8VpClTng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o6v7kswxB+kQK3MbMK/j3XVKjA+EkM9m3g9GM7Rwpb8=;
 b=LZ2CY4pEOXXufJgJcMUpdx2MSw0TM3vkuI59qKX3BbSwnGyyBiBU2Kydtj/xZunPBd2IKmiP9wASJqrfzGI9+Vp9fFBQLfTgt49NSDFSMkgQ2LRM9o7JwXdLYwSfk5PJfAjpGO4bvFt+5pDQQJUyOOFwv5VLp0XbMCHuGWEzA82n0Nd51+dbVPzKhn51z+O8I2SLysNu46lDtkm0/ECg0KpFgXplGHuIfyqzq+IyXDRvebChF64rsi/5MABeNe8gkeEWlYs3dI/ftFWYT1AANWMIQhaUZ5k5qn3cyra+LNZH/I2V99sJLd9Wzh6RgpjRAzUyIHJ0HjPyGyEeMoZPfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o6v7kswxB+kQK3MbMK/j3XVKjA+EkM9m3g9GM7Rwpb8=;
 b=Z8MLGF/bfcKspBHGKPyaBBKm9xqH8Av8gqNGS9J+BGZ/5snkTuzBFSLq/vfcVJKHObsf50Hkx+Wx7bRpglRPuMVBym4dtuZdYHuDazeCCMtso8s8ZAx11Rzc44VodkNbvxvNKx+eFFPNb7BQhhpOyrCgjxL3cWga/YNU9H6Vqig=
Received: from MN2PR04MB6991.namprd04.prod.outlook.com (10.186.144.209) by
 MN2PR04MB5631.namprd04.prod.outlook.com (20.179.23.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.12; Sun, 5 Jan 2020 16:40:01 +0000
Received: from MN2PR04MB6991.namprd04.prod.outlook.com
 ([fe80::460:1c02:5953:6b45]) by MN2PR04MB6991.namprd04.prod.outlook.com
 ([fe80::460:1c02:5953:6b45%4]) with mapi id 15.20.2602.015; Sun, 5 Jan 2020
 16:40:01 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Stanley Chu <stanley.chu@mediatek.com>
Subject: RE: [PATCH v1 0/3] scsi: ufs: pass device information to
 apply_dev_quirks
Thread-Topic: [PATCH v1 0/3] scsi: ufs: pass device information to
 apply_dev_quirks
Thread-Index: AQHVw4RnKOmg85o31Eufk/ca9N3SIafbkG15gAB7awCAADp4MA==
Date: Sun, 5 Jan 2020 16:40:01 +0000
Message-ID: <MN2PR04MB699151E6AEC7D15CBE1224A2FC3D0@MN2PR04MB6991.namprd04.prod.outlook.com>
References: <1578200118-29547-1-git-send-email-stanley.chu@mediatek.com>
 <MN2PR04MB69913F0B671032A388747CF7FC3D0@MN2PR04MB6991.namprd04.prod.outlook.com>
 <1578229802.17435.3.camel@mtkswgap22>
In-Reply-To: <1578229802.17435.3.camel@mtkswgap22>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Avri.Altman@wdc.com; 
x-originating-ip: [77.137.86.228]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: ea8ff0d8-1397-41a6-a1a8-08d791fde908
x-ms-traffictypediagnostic: MN2PR04MB5631:
x-microsoft-antispam-prvs: <MN2PR04MB5631C3F8D846BB866A11C46AFC3D0@MN2PR04MB5631.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:2803;
x-forefront-prvs: 027367F73D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(136003)(39860400002)(396003)(376002)(366004)(199004)(189003)(55016002)(52536014)(71200400001)(4326008)(8936002)(81156014)(9686003)(81166006)(7416002)(8676002)(478600001)(6916009)(76116006)(66476007)(66556008)(64756008)(66946007)(66446008)(26005)(33656002)(6506007)(54906003)(2906002)(316002)(7696005)(186003)(86362001)(5660300002)(4744005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5631;
 H:MN2PR04MB6991.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: s0UKCPbaVIEYfrJoR64SFOIDbL45K3L9TpSx8tY2RYlAOCrOtD+PLtsmIaOZzEp+Mto4HwQ1X53l1QVp7s3Y7DfIqWfAqpAVZ50BbA7Cx/1DPSKvWka0AbqFkFOK5pXuwM2r0lS4XH5sKu5XlWlnZq6v7OdebOLi8hPKZ7tjvosSoheNG1xEQE4RBYynvLJyCKOCFFokxAJa7+sSCpnU9LEHLRYfKX08ktjp3pRDtFcWAnbDGiUwrTgGTXRT+jb+0GBCPo9tKh6q+mRRXfRk0dqEvWCj9ZjUBLOdvN/JnthbfYev8Ay2EDj9q5CWq4dvqBN5XxbjrZs2XD9amXq9QoCZQe88aPfkkuuT5GxbLvsSh5LmX3YXMEJ9fkX1F808RqW3MOFW+tnGZe3yTXo6bJIP04Ep5XPZvB/KJ1GBsuquB//HBCkOkiGQVLhq63fy
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea8ff0d8-1397-41a6-a1a8-08d791fde908
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jan 2020 16:40:01.6096 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OdKrKHwBDq0oyKqbvZooTj+iza5vcjwY7eezVZIRu/93CqMg8lQVb1zRH6Knz4GSHN0iF+WnxHgfp/QeTKtWEQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5631
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_084009_027928_A3D31408 
X-CRM114-Status: GOOD (  13.61  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 "martin.petersen@oracle.com" <martin.petersen@oracle.com>,
 "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "cang@codeaurora.org" <cang@codeaurora.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "beanhuo@micron.com" <beanhuo@micron.com>,
 "bvanassche@acm.org" <bvanassche@acm.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "asutoshd@codeaurora.org" <asutoshd@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

 
> Hi Avri,
> 
> On Sun, 2020-01-05 at 05:51 +0000, Avri Altman wrote:
> > You have to squash patch 1 & 2, otherwise your patch 1 won't compile.
> > Other than that: looks good to me.
> > Thanks,
> > Avri
> 
> Sorry because I sent 2 series in these two days.
> 
> Would you mean patch 1 is series: "scsi: ufs: fix error history and complete
> device reset history" and patch 2 is series "scsi: ufs: pass device information to
> apply_dev_quirks"?
> 
> Or patch 1 & 2 mean the first 2 commits in this series: "scsi: ufs: pass device
> information to apply_dev_quirks"?
This one.

> 
> Thanks a lot.
> Stanley
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
