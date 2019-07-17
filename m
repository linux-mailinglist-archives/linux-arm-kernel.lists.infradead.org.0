Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E006B7FA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 10:16:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u2XPE9Dnq0QvmDQiWAIwaRMcSoZYvN/2m1mGh3IiMWY=; b=scObMOKFhPGoxz
	B1nKdLKWHGR9lIOiVQbRYMaUhNc/c5Mr8wvehy+Z9UaXl7crIFpdDLZxUixaP5NZQTXH985qoShQ0
	rZAdv8zeLXz1hSiWDV5NwF+Hdu0cl8ywVQYRBG0qMBLCeEJckBq347bfea4AZn9K7LUA9kfwkokZd
	xOKfBGVSMYwxpUcnr14jjlwMKeKY7F7eDzJNmUfhmckxMFjOcFbGSda6Bsu6S2KsNQ7OZFjVBahIV
	HyaMPOgfV5CBIBrM5Z//XHOM12f3J5K4TjrKx2HHJ6D9xbfsxUW7nQW+2RoJF8A+j2zh9erWl8GYt
	VSMNWQ+U28DaWCChJERQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnf79-0002Xr-W9; Wed, 17 Jul 2019 08:16:40 +0000
Received: from mail-eopbgr150040.outbound.protection.outlook.com
 ([40.107.15.40] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnf6w-0002X1-AQ
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 08:16:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Aq0vnfTyXGGdVg0hbgdJ1rPlzLCwSUstAyFIiFBPrT/depMiLmBxRyTqR0GzFxpjnZV55sISLXxnwhsrIZz4DM8RrKPVu/axFFLB0Jjba3IC3LYCIEIvI7O8Ydl56bDr/djHCUNzinn//jjPcWFzcPCqxPfHKNgbbYGaE4NGYk2sH9mcDockve5NDGIBF5eHz1DM0O83eanGkcHg2WoJESzlb9JtKMibF1PKSUnDr3mRhPeE8EYzRivnlwZOQrZLcLE5O+rRn1P/Kks6bNL60JdzBLDa21jyAuenjBfg3ftPcDBaYxERE7nnsTDHNSpF237BLR7JjZ6WThPxCmUSaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NiEgK6ehxZIO0SdFuk/dMElR5TLP7K7n2KVDyt+2Ev8=;
 b=RTFoBqCZRuTlHGf9oVztag/VFzb6of1SDtby57rOnS3Vt1CRmF9frM547rzOFlMzQ7BaFjcnMxYArpVsBdxxA566dMY3STGlunytHEqZkK6UP2TFev86Y5oyAdekZLn0fe7E0OFthJoCKOcTS6vC2VocKgJTwqeUfkBJxlPsEpMq/sCTfuk7ucy80Yz5oE5XzU5uxg+r83V2k1NYBn+9o8OLsr3+gI1wYTlfPFyA2+6gTNCB+REuuECpTcefmGzC5LGumHmOdpHwP5T9SXLozmheNBVmGNVmUyz1N6BQgBEO63AwOcHrnWc8NRxPxGzOo2pUr32uhIzmqDtG7mEs+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NiEgK6ehxZIO0SdFuk/dMElR5TLP7K7n2KVDyt+2Ev8=;
 b=RLh6cFguTJtWnq5150oEXkgN2gZv84F9ALmBJIY16Rfpzrq80AvgoVb31YbHcwIya6gK1cQrmdEoVEvm19Nlzl/5vNKLqC9hx60sXOPgE13apRcvkAVpkNS8dniK9i5q4Eu7K9ZkZvtGVh1sNxLWpGFDssn8OQ5GnTuDI+4HC9U=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB4130.eurprd04.prod.outlook.com (52.134.92.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Wed, 17 Jul 2019 08:16:21 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::7882:51:e491:8431]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::7882:51:e491:8431%7]) with mapi id 15.20.2073.012; Wed, 17 Jul 2019
 08:16:21 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Fabio Estevam <festevam@gmail.com>
Subject: RE: [PATCH v2 15/15] arm64: defconfig: add imx8qm mek support
Thread-Topic: [PATCH v2 15/15] arm64: defconfig: add imx8qm mek support
Thread-Index: AQHVO+xQyEr4H6miyEOxYbBKQCsvQabNoGEAgADXCLA=
Date: Wed, 17 Jul 2019 08:16:21 +0000
Message-ID: <AM0PR04MB4211AF3216E3A641DA80B6C680C90@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <1563290089-11085-1-git-send-email-aisheng.dong@nxp.com>
 <1563290089-11085-16-git-send-email-aisheng.dong@nxp.com>
 <CAOMZO5CTmAdxRK4FZu+Lw3WxkBzdufNJ=gE11TFSoizdYwXnbw@mail.gmail.com>
In-Reply-To: <CAOMZO5CTmAdxRK4FZu+Lw3WxkBzdufNJ=gE11TFSoizdYwXnbw@mail.gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b1f69d4a-3f18-4048-30a5-08d70a8f0d68
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4130; 
x-ms-traffictypediagnostic: AM0PR04MB4130:
x-microsoft-antispam-prvs: <AM0PR04MB413021A5B92892A29F0702E580C90@AM0PR04MB4130.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 01018CB5B3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(396003)(366004)(376002)(39860400002)(199004)(189003)(2906002)(1411001)(66066001)(54906003)(76176011)(71190400001)(33656002)(186003)(66556008)(26005)(4326008)(7736002)(229853002)(6916009)(486006)(7696005)(71200400001)(14454004)(4744005)(52536014)(5660300002)(74316002)(102836004)(86362001)(53546011)(8676002)(6506007)(44832011)(8936002)(6436002)(81156014)(81166006)(256004)(99286004)(14444005)(446003)(3846002)(53936002)(55016002)(6246003)(476003)(76116006)(316002)(66946007)(68736007)(9686003)(478600001)(66476007)(66446008)(305945005)(6116002)(11346002)(25786009)(64756008)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4130;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 7quooohflrF/rwwp/0BcaBYX0P3hLlom7YBecz9wSgrT/S6BuMRbMvIHJHFnz6SBqxKqZyZsl1YImmqZ7HSiWNGeCoxyvi+cBtypH5OovhJikr2w457heethI9TfmcmW3Fur5fFuvuOevrxUYRB87xpuj/9mpyvMcvYLxAqib/1EgDJn6nOgzbkTqbD8q7a212UyG8LOL1mXC8QNl+ZTGCovRG+j3wRxJmuJgbCSyB7OFG1WMQIRvU+MVwgiycqeHng/qOTRAmrsoJmhuZvkEymmSjYeXtUGHgKKclhlGBCSel6qaVQ4PBTos/g4k1x40tqKlfuD7wawBTCCXiYweMd7Uf3Wjw4nDMafNjm8ftUUEkH1eD/x1OHWrBGG7cJjIv0nLNtF17To9iiSG4ONZ/AFMM2Scd3rAd9tBkjpgpk=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b1f69d4a-3f18-4048-30a5-08d70a8f0d68
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jul 2019 08:16:21.6368 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aisheng.dong@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4130
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_011626_504137_29B7244D 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.40 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Dong Aisheng <dongas86@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>, Fabio Estevam <fabio.estevam@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Fabio Estevam <festevam@gmail.com>
> Sent: Wednesday, July 17, 2019 3:25 AM
> 
> Hi Dong,
> 
> On Tue, Jul 16, 2019 at 12:38 PM Dong Aisheng <aisheng.dong@nxp.com>
> wrote:
> >
> > add imx8qm mek support
> 
> The Subject and commit log does not match with the patch content.

Because mx8qm shares the most things from mx8qxp which has already
been enabled in defconfig. The only one left is pinctrl driver.
I would update the title a bit to be more specific in next version.

Regards
Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
