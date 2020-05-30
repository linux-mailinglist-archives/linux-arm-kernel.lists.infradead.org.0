Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE1001E9382
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 May 2020 22:04:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LpOA6L92Pu0LfibXrzLnyZfHq12lihqJZAgYm6V5/dU=; b=CilyMW7P0zMXo9
	iSUD0Og6RxJNm2q0Gk2nq1MgyaU7DJzRjEuBjLMQaiYVq/jxQtkBA2qMd9tVMyDKurQOiTYSoeMIG
	uJDXSSyfKo26UvpZ4tlF5dEIdbLEV1LFiHSxhUMrs57qsXU1R70EDGo/raxvYm2iAcpyuoCp2TVin
	7seeEa4VfNT8+3H/yO1fvposYe14/gB2E9k8vYuNJY8Gfb5cWu/ZXVlv6f2m7hSdQYI6ybA0t02h6
	vZpzAx9l11LmbrElzeG5a4iLG203VQsNSOrHlCTXMAyrKOgo/LlyFXr3opnTLDXiPSC3KUxguFTQ+
	H+QZcrS0Nnq3pyk9gZBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jf7iB-0002i9-Uv; Sat, 30 May 2020 20:04:07 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jf7i2-0002ga-8k; Sat, 30 May 2020 20:04:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1590869051; x=1622405051;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8ZSN6Qr5F4U2RZ2rbn+jKeqUA3e3njrlLuGyASCUpEA=;
 b=Jiy41cEQqZB6L72pbektMBL58a9dzUKb5vbFXn4rYV02uqQ70ZGDH8dy
 eBqRaV3oFmBttxhHO/AKTFy+BR1OlARHkQZLh5AhPnU1gN/m72ABfe+oz
 TdysXx6Jy0bvyFEmIbjiLmEUsgfUaEBDVOKDr2HcQT9r2jLzTaGVDLeHP
 JAOBgLMlZ6LsYAm39MV96wTHFkV2z7KRsuDuebDl80wT9Pl0H/YCOaLBq
 Aj+uBWPr9xW44Cuv0hIazMIIIdJDb9zYIxNsdG7vCyAYuPGE5lxAZcIp/
 kIz2irf5z6aVfcclV+f1sjXrP08Kh/7sv4sgES6G7CFy7nR0iI7p+OEXa g==;
IronPort-SDR: OS8f++Se711KreTj2w7OU4qFmwZIg15JiKQqLxtoaHBrHH6va3Q4luifPej4GH67dQGPs9z9E5
 gBeD78eCx66J6/3TvULPXSDotm72HtPvwJj05gCnV9zXpRhmPDpnShjwG9zxWR6nN9Dx6NB4Ew
 LO9uYGud91UU5PKCu+WgcprmTX60QPYc4yKz50cPJ7RRJn+lrgI41mMv8iYPTVOIFUaEc3Rp9P
 DcoXB/rvjvz1dTt1CSMAf1L7o7YGUj6bK+goBiA4iDOXefLX+/DHGdAxiqxcuXSAvAu4j6r6yL
 JAc=
X-IronPort-AV: E=Sophos;i="5.73,454,1583164800"; d="scan'208";a="241707238"
Received: from mail-co1nam04lp2051.outbound.protection.outlook.com (HELO
 NAM04-CO1-obe.outbound.protection.outlook.com) ([104.47.45.51])
 by ob1.hgst.iphmx.com with ESMTP; 31 May 2020 04:03:59 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BKwTEQWkDcx0kQjU3dfVA1+X6xjMb/MM5Fd0OoAPcgKS81Q9wc8b+1ywceeAqcc84v4bl9tbscxse39E1edvNfezKre9mX4Jeh8vx482/S5k6X/2q5vV1rqNJv7HOYu2dlMLwt1RxQTOSutwpnbiws0SqQ+/FcUTA8EaiJjNOSe8ZMkeH3MLM8zf288vbf0dyjbvW4SNLGs40MIcvkOai5sEtXOFShuqhcvXwjrBclk2DBF69qTZ5BmMUKrA4tDmNAZDjzUBQIWCNA96OFOM6NawyAkL3Kp9KiwZpmXCxtP9zNftc/N774Tj8LEwdFaxNjVLOhUp9ipF40cBEr2CBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8ZSN6Qr5F4U2RZ2rbn+jKeqUA3e3njrlLuGyASCUpEA=;
 b=g3y02Y/VOrwV2jP9Tvk1TsLLcFbnp4D6J8R6RR2Nq+jHfKbC1G/akZKqLj3yRZtN2wQAalL+CrGEn6bufWukEhzs6VnNWFRNyEKw9xsHqWiMZTO/4y0/5wK3VBBfsh3O+BdeNgJu6rZu0/QcVMWG10IwdKZnHpRhB6zXpu8xKalPmNdgKXTGCkM2m1o5XcJpT80bv0O5CbDQG8tH8WUNZQfQbL8keGk1kMBvFnN4ntrHYxW4ff7MHkPqEnIxoE4OcsEGPBTkVuNj0C1Aob0tQhABPGIYibY1nbcXBIQRj69s31mK4BMR2zJpEloDTHegJUp5/uFEp889noJBsfD88g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8ZSN6Qr5F4U2RZ2rbn+jKeqUA3e3njrlLuGyASCUpEA=;
 b=ivorwUyhd7nHxK0kTPpAJCff8toA/V3u8tDfDB0U2yLOQmS5QDh4Wd7EdYRvdpMTvyythJhaJj+8J/r7GOVDTov8A1V5XIlExogJRkpofxZTBsxdkXYxbsCTcJ4/lFQT6RnKB9G7fAusCFRrKyStNzj2QbkAqQfcc/9HDIQRtWc=
Received: from SN6PR04MB4640.namprd04.prod.outlook.com (2603:10b6:805:a4::19)
 by SN6PR04MB4736.namprd04.prod.outlook.com (2603:10b6:805:b2::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.19; Sat, 30 May
 2020 20:03:48 +0000
Received: from SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::9cbe:995f:c25f:d288]) by SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::9cbe:995f:c25f:d288%6]) with mapi id 15.20.3045.022; Sat, 30 May 2020
 20:03:48 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Stanley Chu <stanley.chu@mediatek.com>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "martin.petersen@oracle.com"
 <martin.petersen@oracle.com>, "alim.akhtar@samsung.com"
 <alim.akhtar@samsung.com>, "jejb@linux.ibm.com" <jejb@linux.ibm.com>
Subject: RE: [PATCH v1 0/2] scsi: ufs: Support WriteBooster on Samsung UFS
 devices
Thread-Topic: [PATCH v1 0/2] scsi: ufs: Support WriteBooster on Samsung UFS
 devices
Thread-Index: AQHWNpT2nA2KBmD3zEe9LyN/iNuOVKjBDRoA
Date: Sat, 30 May 2020 20:03:48 +0000
Message-ID: <SN6PR04MB4640B45DD91BA7191FB1AB50FC8C0@SN6PR04MB4640.namprd04.prod.outlook.com>
References: <20200530151337.6182-1-stanley.chu@mediatek.com>
In-Reply-To: <20200530151337.6182-1-stanley.chu@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: mediatek.com; dkim=none (message not signed)
 header.d=none;mediatek.com; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [77.138.4.172]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 54c9124b-157d-4798-f84f-08d804d49132
x-ms-traffictypediagnostic: SN6PR04MB4736:
x-microsoft-antispam-prvs: <SN6PR04MB473603C2F9C66F82A7DC723CFC8C0@SN6PR04MB4736.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 041963B986
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BaWFgmdTBDEYIWjLLQwp5HFV5rA9iBRxsgqL8BWs4aKCZHnRG7tu35f2q1v/PpWpfMnR2/04g3PVVdMyZFkEp3SQYoQK8KTOPiaCQxqaUJxxLY5SrsUBRkPxysk6Ju98VIPK/EGhQiFNoA6tAP2nYaVfdEO7Q6kttrSUxXuIb5RerK8kFW5fB5qsu3LxDYnSrqFKvUc6NVsYpUeIeFj/d9pt8HuBChQVifoQDOJjLd9qhNiB1PGXPNZEMH7l6J45vZK0CTau93dW0kY+6J0U59qa41ZR1PyC/P7XD3NoSRNRMr0hg7DLRxWXVa+GPplG
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR04MB4640.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(366004)(396003)(39860400002)(346002)(376002)(316002)(86362001)(110136005)(54906003)(64756008)(6506007)(66556008)(186003)(52536014)(4744005)(7696005)(66946007)(66476007)(26005)(71200400001)(66446008)(76116006)(5660300002)(7416002)(2906002)(8936002)(9686003)(478600001)(55016002)(8676002)(4326008)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: B2qL6bvGpWjCLKpCOZq9jvBKre4QEjeZ0NmWzO/tnDNqwNjj/HmAOn+h79MJRqlh+fvsuSVwx36IIplTQDAkcgS/hMoQGJjncyQCoRDOzjkVSJz2A+yMPUsvJ+SgC6epBMEFGDx9E42eyqm5qx3u/Viw+lh1dQqNRdqQ0qehSTOQEpH5kFig2NbVfjE8/BopOLm8lreyuyApEy8vlR5ryYestk2g3ZWzGg/uioqabIpniYkDNjYiMcrqMwfJaqDak1lPCUhyPMbazdAW3kXXXpRPJzOoWpCAyN5NeEb1xVHCHApP3Lg9SDR3Pn/gVyuFSNgaSmnr6+LVhJf1QC8LyONqP7CAwopmEiS1I/eSFTy9W/9IuTpw/9LMxTi50WORMQX9q52JpZhmOvpzYOeqryawUp3X+Q7+THe8hrT7kSbv4aSFvwC0DRpW49HX2oVyAS1+mZXCUXYSsSIY/efRSZuHYnSYNteJFFGP76SvKCA=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 54c9124b-157d-4798-f84f-08d804d49132
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 May 2020 20:03:48.6860 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8kLTsl/uXozQKmUQGdl3MlsvQvrb92j6V8McST00rGLSFMi6z6GlYel19gerwt8shtve8N8BlN7x4DqDDoP7FQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4736
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_130358_397419_B83EDC0C 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "bvanassche@acm.org" <bvanassche@acm.org>,
 "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "cc.chou@mediatek.com" <cc.chou@mediatek.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "cang@codeaurora.org" <cang@codeaurora.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "beanhuo@micron.com" <beanhuo@micron.com>,
 "chaotian.jing@mediatek.com" <chaotian.jing@mediatek.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "asutoshd@codeaurora.org" <asutoshd@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> 
> Hi,
> Samsung UFS devices are widely used in the market, however these devices
> need some special handling to support WriteBooster. Introduce a device quirk
> to handle this special requirement.
> 
> Currently Bean Huo is doing some nice cleanup work for device descriptor
> length so our series will have merge conflict. I would like to submit this series
> first for review and then resend with conflict fix after Bean's series gets
> accepted.
Maybe better to wait few days for that series to be accepted ?

Thanks,
Avri

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
