Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9333155087
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 03:08:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b/n6xjW2EDN2KdaXqqzePhR/Shx7ZWMca0t3ToR0Kyc=; b=mPTTCYAyiatFjE
	Ocl/OIApDhKyfcXmoRJQpM5cNyMBixqQOgmIEqUOnjXrZ0rZXBvoIhZxMMCaY8XBBuEm5Ag2D76zr
	sUy6OwkDLqt6mY9yhzVUhOqlGx7xGuVce77ItMqUXJd6YUfM/3PEbGWug/CrBoS3dPMEUmHQvcaqn
	2l3d5+e4iqgBsjTGnduOhkweXSyMnZdSbW36i+Nzk/ag4PahrM1qBo1+0tGOn+Dc8ahG1VXT55n0O
	koeUcSRbIi/wMXJuHCx4Cc/f1WKmmEMyBN7r5FQnECgzseh6blfa7wmZ3fLuNUSZnboMgiiTGyeg1
	mOPcz2qj3ikPoq13Degg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izt48-0001mJ-9J; Fri, 07 Feb 2020 02:08:20 +0000
Received: from mail-eopbgr60081.outbound.protection.outlook.com ([40.107.6.81]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izt3x-0001lL-AF
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 02:08:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MTfjyEpo0C2+pRg+SSoximUGRzKjUXpJlu6w0KSyuWqxny3Hlb8xeJL0+h8JU+zWoRjkX8x0xxv6CgYq5DPr1bZBeIvLBqLt47G6rZ0IzVQBv85eRwaVIxooixPkVT6LgPsfdPACtDSW9JfJM+WT/sRzAUdt7/jsfksWwavs7/yE8+vZV0H+bZGoeLMsGGuWmuSJyYOyebQyzCL6I+hPgguTGjD9XMuiy0+A6duxbCiCpzBAcHSqYzmqmSbrV/6D0p3lbht2rpGeCDWh++9EReLGLVNesFZsp7NSeSKU2OdC8y8c3JLTUHkvXYQOniRHPLSIbeo/o6cY3AfltrWY2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zPtvfXJTWSAbU09S9T3YXw6E5hfOBZ/SlxjwKvjn64A=;
 b=SFpoPFeXS3Sn2QvG6CeKRn8OYKZ5jMUhlahytzMA/TpMxGuEZOTJq5//7J97zNL1gp4W/j3GK/nughskBD8H9b+4Q+hwrHi3mM442meUmQnZR0a56CSR8S+2A21Rk6+Iml0lWeP52M+1ByHBH5nNhl2ysOEpuo1/CS91l+JpzXLt44PuJCgwZWnWoSsh6gTr//Mxvy36R/qbsJvS7IT84ukTuk9kiYINPa4aQ9rns3981UzfmfBxFx6ZPlD4IwtAB/v/KjCU/LWx+iqX05i7JzB84wkXpQDkpJtoHHXNy6Mwdt8bDS05PSjsY0hSCEDe7eY6/9Aw9FfmU8ydTCtnSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zPtvfXJTWSAbU09S9T3YXw6E5hfOBZ/SlxjwKvjn64A=;
 b=L/27GFwPxYjIrn15gh8UBCzDHk0GGPEJvh0IIzsUvXQv0VUAobqm+FolmZ18PYssrOFmPBMkTW7Z5KlXxSVKGmOrsj9Vt1O+yHYUkjsI7Kee+aiDUncCY92giAtaGUwwnNtdkNIq3AZE9azmT0G+FxJz3UjEKeKn1RKxwjS29/s=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6962.eurprd04.prod.outlook.com (52.132.214.214) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.24; Fri, 7 Feb 2020 02:08:07 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2707.020; Fri, 7 Feb 2020
 02:08:07 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: RE: [PATCH 1/2] firmware: arm_scmi: mailbox: share shmem for protocols
Thread-Topic: [PATCH 1/2] firmware: arm_scmi: mailbox: share shmem for
 protocols
Thread-Index: AQHV3O24QXHBlTcD4kSCPnFpCByfEqgON8AAgADC2KA=
Date: Fri, 7 Feb 2020 02:08:06 +0000
Message-ID: <AM0PR04MB4481A6C089DD233D4099566D881C0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1580993846-17712-1-git-send-email-peng.fan@nxp.com>
 <20200206142204.GB3383@bogus>
In-Reply-To: <20200206142204.GB3383@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 1079dd0e-55c2-4332-fefd-08d7ab729296
x-ms-traffictypediagnostic: AM0PR04MB6962:|AM0PR04MB6962:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB69622262C1DE239BC74E0486881C0@AM0PR04MB6962.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0306EE2ED4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(366004)(39860400002)(396003)(136003)(189003)(199004)(55016002)(4326008)(7696005)(9686003)(6916009)(478600001)(86362001)(186003)(26005)(33656002)(2906002)(81166006)(81156014)(8676002)(44832011)(316002)(54906003)(6506007)(66946007)(8936002)(76116006)(15650500001)(66476007)(4744005)(64756008)(5660300002)(71200400001)(66446008)(52536014)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6962;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 28rlNzxYzCvqJid+0qesx/QmPRnw326Mz4r4ob77z7lCdCwIXhfdmNG+D23AUgWCqD4UXeXvPuSkJUqBdwSQKHYG18vmWSTLp8Hbh4zGwtPk4pDHunN5P+MJqPf8/rDA+a5scVd+bLiM1dLXWGgEjiBJPAoWKnTxt/EboKxe4gc8BLwgHe/dhXiaUeHYk8f4epk0N6UwpDsmzCf/o9CkRTMvj72YxOm5eTwQarqOG/9bYiGSIuaqD10lAv0UDRMGPHes0CUh+aYyOIxIsFvohqsuQl+PdBqXYyWHWeGCJ+2bnQEVt3ULwp+zkiTwySARtkgdTdOMysV1bU541+06B0Shw8PXC/HP8Qm6Kd/9uN1fwiu+ex0KoLOAhmq3RSVrcaFqTCNIWVGmSzx5raEcRMqz9YyJCzmSr+tlwOs1OzbZ/uyJ32QCPJHhk/HHT2Vr
x-ms-exchange-antispam-messagedata: z8RDvtFEF1IbM2oqJDu5TnH56yuzEQo+RMywyynJ2+UIyELW/kTxXhcoeOslboLUdyGZt1qpRx7z9r41o+Py11sHUlQqr4Y+GTSGlvK/4OHsEkCnA2EjshuSoy23TQm7spauil0YRxIGRufCiCS+fw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1079dd0e-55c2-4332-fefd-08d7ab729296
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Feb 2020 02:08:06.9625 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DDoLfJfjC/NY72pto8uRtVEc9I7yT7Gl8gb3pW0IKQpXlwREvh1k26xLxSqIfI0PdNfqsphuiIX3dxt7693jaA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6962
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_180813_371128_C9C4CAA1 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.81 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 dl-linux-imx <linux-imx@nxp.com>, "moderated list:ARM/FREESCALE IMX / MXC ARM
 ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: Re: [PATCH 1/2] firmware: arm_scmi: mailbox: share shmem for
> protocols
> 
> On Thu, Feb 06, 2020 at 08:57:25PM +0800, peng.fan@nxp.com wrote:
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > When shmem property of protocol is not specificed, let it use its
> > parent's shmem property.
> >
> 

+arm list

> Why do you even need this ? If shmem property of protocol is not specified
> then why is the mailbox property ? Either you need both or none. I don't see
> the point of this patch. I am interested to know how are you even hitting this
> case.

Without this patch, I need add shmem property in each protocol node.
With this patch, I only need to add shmem property in scmi node.

In mailbox_chan_setup, cdev is protocol device, input parameter device
is the parent, saying scmi device.

> 
> If you don't have mailbox property, then chan_available is false and hence we
> don't call chan_setup.

chan_avilable only parse mbox properties, not shmem.

Regards,
Peng.

> 
> --
> Regards,
> Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
