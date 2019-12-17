Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0815122593
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 08:38:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bUYdJNJt7kXZMm7TYXD3+xVuD/EC9VUxdr2W1bYutU4=; b=jJHvqGrWpBHjpm
	dpComli2K50xHWI+xqTgX5OGoNC2FQynnwAFx5oR5PqpLIEb9V7MEyXb96Bqhb3RS5lWtUpd6PAHU
	4ivSZPHbd5dZ3D9c20wTG6J0n9PZjviRf9PhfaEJeIdUJVZNXN6BZBXP0NUjCLE68XW3i/3mlK3F1
	uFW2MrKYto4ALw7JE0PbBJdyQ3bKOC9abupPPXsiTvsvo5G7HJAUvQbhEuvBvQE1QjP2x7aRa4cOU
	MnhaTizXPRfXoK1+Yb5h70XibzPmLKGZQp21nxm2nkQWRE+bp3B3dXFLmGPxnSWlxe/5ajrSFnZO+
	968m5+7VzB5fMlyx3KeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih7R4-0000q4-PV; Tue, 17 Dec 2019 07:38:26 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih7Qs-0000ny-6F; Tue, 17 Dec 2019 07:38:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1576568295; x=1608104295;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=plvsS3EbFtnT2jEj+CKpl0ADN0AY/rYgqgK33djc6Jc=;
 b=b7/NKg9LVqOtqbBJaZUwKaPZS7FnIUmhcG/8C1wwvbFUomgnA0LTkbnk
 bDs/VyrhhHHT9ervPj4Ojap5snSyHCNfa3HGM+4aoFoBjRfu1yJpHCavt
 mU9wAXS5oGkWMhP8EkXMIFIlIpHi5bs0RKeGZZ1I024u0jtD559YRRGmc
 rUO3HXDlGY58fsjFv4/oDOMX0bjoGY6w3G63H+Ny/3kGCazvgLINSqWEE
 aCSsUeqwvIHFXphHvwtkrcVPxwdtd1YxLDFIaa6VM1uliyP+hes4QPPMo
 D6v4DhaVa4Yj29wx1y9b6AbKHVkK9OMsWkzVTt91miFFWN5nOjJfYQO99 w==;
IronPort-SDR: hW5mPVhkRRnuUCvCMhZL/pkSWE9B3p0F9jZF9DArTQFAjqkvOlkIJcFfSEt0CDDiO+7XPhfQ6s
 SETxKEFCzNuZsMw/FaiWhKIV88koHQiYNdasuiLRS7Mhu5UtmH0HjKneVU6I5zpKG0XoGtrePy
 aaO8WcV8MGrz1odPB4HTd5nQ7jlX5ZEWB+/JVMoc3x30HyAcz2kyUA0emeU2U69frZ61yS3yIy
 HErVqu5nMfz0fiJC7m42NDyBOdxixbTvQGwQGpYxv60myGW/qVtlGMZ+tGiVpjl59coyfFx+//
 XEM=
X-IronPort-AV: E=Sophos;i="5.69,324,1571673600"; d="scan'208";a="126294481"
Received: from mail-bn3nam04lp2055.outbound.protection.outlook.com (HELO
 NAM04-BN3-obe.outbound.protection.outlook.com) ([104.47.46.55])
 by ob1.hgst.iphmx.com with ESMTP; 17 Dec 2019 15:38:11 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i5cM0ttULvWSEHlr1Xb4SsZ96clZCL1mKfMLunYK1ff6gxqyivvNkT3JF7Yb9PVlcCL+DEa1CXB05JNYQMGrYcjon/EGO54mkfwNnl20wHgFRR3XLbxja0+bsoXX111Gfigs1T7a0w49C9YW04iGjZQSgrQV3sGLeh0diAeVwYsD5uB9c1bZWhjkhZCfCEzjYsz7PDx6pCGRMASAqpwn11j23aW4YS5+LG2vsoAFAdHJIrWaiyT6KnRbYEQwNLYCwz/fE1YblhPBjZ7ijIZdDo6Ak6QND+IIruQ5C94u36knzPSSgyVEbr75gL0T5RFNAFP913skhO1TF3Vqcv+uOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=plvsS3EbFtnT2jEj+CKpl0ADN0AY/rYgqgK33djc6Jc=;
 b=C5M2sFfb6KrcgkkZxgNVRmq/mfsNSREATxBK2wfgVEJ+kkLJqOLeZmjCdBlXLIvYfw8mDRoB8X1Zi1039r6C+EG6GVTb6erVXtPcippXL+r4dMmEGyZODOePktcd9XJd5S79V+yROzuZUNcFRGG/TeljyznWBPgIDnj6WOy8DlUwPmh9UgWfLyfgNWzK66jifzqXw48xBHPJXAtU+gaw+xKJ1hD+wDmE+rqiCWmYMQO5xbAbRFMgnGRmxzrGxzCqbR92QKgm2bdA1HeopfQlHrvVysU0qJW1rkHQvGFqTKnHctzFzwxMLStBE/dmoWgFqXBGP6UwxIfyWLKJ+/oC5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=plvsS3EbFtnT2jEj+CKpl0ADN0AY/rYgqgK33djc6Jc=;
 b=pNOxsnoucfZuVGYer8avxZbKK3LtETglXa49mUYZhjo3Haumx8gsFpShMp00s/IWs5PF7vwCU+hXQFiG0976qc56HiD54OL06jUPAqo/BgST1tkJ9IAmeiJIHvsV/YwG1H6tnb6QeRtQey++6+/GJEfgAvUYSkQOTerVIC2M3Ts=
Received: from MN2PR04MB6991.namprd04.prod.outlook.com (10.186.144.209) by
 MN2PR04MB7104.namprd04.prod.outlook.com (10.186.147.212) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.16; Tue, 17 Dec 2019 07:38:09 +0000
Received: from MN2PR04MB6991.namprd04.prod.outlook.com
 ([fe80::9447:fa71:53df:f866]) by MN2PR04MB6991.namprd04.prod.outlook.com
 ([fe80::9447:fa71:53df:f866%3]) with mapi id 15.20.2538.019; Tue, 17 Dec 2019
 07:38:09 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Stanley Chu <stanley.chu@mediatek.com>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "alim.akhtar@samsung.com"
 <alim.akhtar@samsung.com>, "pedrom.sousa@synopsys.com"
 <pedrom.sousa@synopsys.com>
Subject: RE: [PATCH v1 0/2] scsi: ufs: fixup active period of ufshcd interrupt
Thread-Topic: [PATCH v1 0/2] scsi: ufs: fixup active period of ufshcd interrupt
Thread-Index: AQHVsV/LOTQTZ9v6wk2kTdk6DisVqqe99tMg
Date: Tue, 17 Dec 2019 07:38:09 +0000
Message-ID: <MN2PR04MB6991F22FCFF3BDEB0EC7713EFC500@MN2PR04MB6991.namprd04.prod.outlook.com>
References: <1575721321-8071-1-git-send-email-stanley.chu@mediatek.com>
 <1576205295.12066.5.camel@mtkswgap22>
In-Reply-To: <1576205295.12066.5.camel@mtkswgap22>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Avri.Altman@wdc.com; 
x-originating-ip: [212.25.79.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: ccca7b09-5bc0-46f4-ef1c-08d782c41040
x-ms-traffictypediagnostic: MN2PR04MB7104:
x-microsoft-antispam-prvs: <MN2PR04MB710445C8B9E42A0CA8B38E98FC500@MN2PR04MB7104.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 02543CD7CD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(376002)(396003)(39860400002)(136003)(366004)(199004)(189003)(8676002)(5660300002)(54906003)(66946007)(186003)(8936002)(81156014)(81166006)(26005)(33656002)(9686003)(66476007)(66556008)(64756008)(55016002)(66446008)(52536014)(7696005)(71200400001)(86362001)(4326008)(110136005)(7416002)(2906002)(316002)(6506007)(478600001)(4744005)(76116006);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB7104;
 H:MN2PR04MB6991.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ihigtQ1DYwDR+CVbkxOumRW1C62PStKncC5mtDeRoTaXBfCXqEx3fwyTBIxRHDXyXOnShO26A76CmaO3deaemoF0hDFZnDtf2Ooe/Ta9xeNUYmFWPA9bbIoCShg03cpffrC7qJM2L73f1/7YjOfHi+48E4QaKji/4i8VDlgMGgVWnngAW7haY0APAcJEWPQ60Dw77PeNM8pUGnZcFjR0GdfYZzqUC7/6K/rV/+3jeeNYvImWnNknhGmEpOFklEyhkMwpUPW+y24yARvd6+hQwPQW5r+AaeIzRq2nlduJY34jROjpqe7FwmeE0lfO2a70Ji8KMS5XgcCyMg+pzVUBvj7fLpP2/103KYSLiSeYxY9no5Pmlz5vfxx0JXiIDqYwJAPbZsyAwLccrZ5OCSpo1qzw2zw1ko1pAMHosvBYc7YZPFSCtBJbS5YY3209sjlP
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ccca7b09-5bc0-46f4-ef1c-08d782c41040
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Dec 2019 07:38:09.2184 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3Q0t5ia0HS0vCL+itKWgQ1qRbyfOzN4kaGkNSi8GwR6rUvjdLPSDjMJ0hITVMdzgk2y6WXcUSdDD7X1JkIl+Gw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB7104
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_233814_414116_E245F55D 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "martin.petersen@oracle.com" <martin.petersen@oracle.com>,
 "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "beanhuo@micron.com" <beanhuo@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Looks good to me.
Reviewed-by: Avri Altman <avri.altman@wdc.com>

> 
> On Sat, 2019-12-07 at 20:21 +0800, Stanley Chu wrote:
> > This patchset fixes up active duration of ufshcd interrupt to avoid potential
> system hang issues.
> >
> > Stanley Chu (2):
> >   scsi: ufs: disable irq before disabling clocks
> >   scsi: ufs: disable interrupt during clock-gating
> >
> >  drivers/scsi/ufs/ufshcd.c | 15 ++++++++++-----
> >  1 file changed, 10 insertions(+), 5 deletions(-)
> >
> 
> Thanks,
> Stanley

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
