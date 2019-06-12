Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34B5E4274C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 15:16:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=W7jPAOUXCNBVvLH131YTFcRm3zgrIgGSXKFIIbVW9i0=; b=Z28varpefMjhvA
	9HAHHgbW8oa8CqWFmepnOEdW4c5fWHgCIqreXijkTfoivYAGnYL2fFftZUBLKNEcoDdYbvEPLFdp5
	QeyBtpo6KZI+/EwweTT9oNaEGtpGoSKoPfGWcbZdcvLcNPs4M07tw7yapZo7QO7lMOKN04nY5ozYm
	89/tixBp+9FFZzJn+Q+cjkTrEFQ7H6Lo6oSGE4sF2u51M3pK2ETQbK26Fb38XU3Pu5ZRWA9ztFpp5
	IubIujwqe96adJezi+XIeiHQprJtTQk32b8v5+6IWh4stPINBIsmVwaeixSxqQ5RoFoWZCggJSzdg
	Lc7q+PDFSna64KOUrkXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb36j-0008LK-CB; Wed, 12 Jun 2019 13:16:05 +0000
Received: from mail-eopbgr30049.outbound.protection.outlook.com ([40.107.3.49]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb36W-0008KJ-VE
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 13:15:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WXdIHPpuSjDheyPgihf3Q7vYaDMAM59wyvzLKc7MtHk=;
 b=PWMgHjMgAKCSU8dx/dSoYG/IYECgOllH386KQWzHOqqAcFAc60y4NZCZNo+B39m+NatK+e3Se/HFUu/SGSn8Cy/rnoZhurgjy/BNuClFt6ZQLQ9VdDtEJx0F+W+TOPKouFNDEqIDpM8U9CSMjfza7zvRRFv4GRFJNX/CptHZ9VQ=
Received: from VI1PR0402MB3485.eurprd04.prod.outlook.com (52.134.3.153) by
 VI1PR0402MB2877.eurprd04.prod.outlook.com (10.175.23.7) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.11; Wed, 12 Jun 2019 13:15:46 +0000
Received: from VI1PR0402MB3485.eurprd04.prod.outlook.com
 ([fe80::ccaf:f4a1:704a:e745]) by VI1PR0402MB3485.eurprd04.prod.outlook.com
 ([fe80::ccaf:f4a1:704a:e745%4]) with mapi id 15.20.1987.012; Wed, 12 Jun 2019
 13:15:46 +0000
From: Horia Geanta <horia.geanta@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH] ARM: dts: imx7ulp: add crypto support
Thread-Topic: [PATCH] ARM: dts: imx7ulp: add crypto support
Thread-Index: AQHVHD5HxT1VnrKm20mxf/1ryD4CPA==
Date: Wed, 12 Jun 2019 13:15:46 +0000
Message-ID: <VI1PR0402MB348596BF52CE43B5D4CD534798EC0@VI1PR0402MB3485.eurprd04.prod.outlook.com>
References: <20190606080255.25504-1-horia.geanta@nxp.com>
 <20190612103926.GE11086@dragon>
 <VI1PR0402MB3485A573518D60A573BA55C298EC0@VI1PR0402MB3485.eurprd04.prod.outlook.com>
 <20190612130602.GH11086@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=horia.geanta@nxp.com; 
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2ef5e611-3773-4889-3fa7-08d6ef3814ac
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VI1PR0402MB2877; 
x-ms-traffictypediagnostic: VI1PR0402MB2877:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <VI1PR0402MB2877041CF702412A516A242298EC0@VI1PR0402MB2877.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0066D63CE6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(366004)(346002)(39860400002)(396003)(376002)(189003)(199004)(99286004)(6436002)(305945005)(76176011)(446003)(316002)(7416002)(74316002)(7696005)(6116002)(73956011)(76116006)(66946007)(4326008)(229853002)(64756008)(66476007)(66556008)(66446008)(14444005)(2906002)(6916009)(6246003)(66066001)(256004)(3846002)(71200400001)(71190400001)(8936002)(25786009)(8676002)(53546011)(6506007)(81166006)(81156014)(966005)(68736007)(52536014)(33656002)(102836004)(478600001)(5660300002)(44832011)(54906003)(14454004)(86362001)(9686003)(6306002)(186003)(476003)(26005)(7736002)(55016002)(53936002)(486006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB2877;
 H:VI1PR0402MB3485.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: G8XmBXCZJGn40PLT3TZJCE4KySzicfIQZv03UcS7DZbS8tYhWE8SWc/GN03xHePvSIUUz2q5aZLqWSsMGrCemtLCPYxok0GrBf5KgRLuULv2lTweYVvONuUskvr29W3WFEWhTXzGpdduzVelnfX9MtoxDuH7Lu12GPXK+NVy2twzWk8ZbkYs5XHoHGBz7bpV3i7GFsJ8W6fumlSe/0/EMTApNVaTSO/jeg2qzYo2GmftuvSmoPfxOexw5npNQILPoVn7v5awn8Ozytyt0huVD05mQBFy+xSsLJUMUjUJXBMwggFWNyhyKJH2nbj5Dgk1qc93hw73eYd05GJGR4QyjPU4i0fjogtfc8cv/udh4Pf9b3CaOWhbhJCIxN6xMYlUpcaij35RzJD5KVHqPL46mGFzmRRVPXN4p9cHLn62vHM=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ef5e611-3773-4889-3fa7-08d6ef3814ac
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2019 13:15:46.2354 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: horia.geanta@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB2877
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_061553_080451_9B1831AE 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.49 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Aymen Sghaier <aymen.sghaier@nxp.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Iuliana Prodan <iuliana.prodan@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Franck Lenormand <franck.lenormand@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/12/2019 4:06 PM, Shawn Guo wrote:
> On Wed, Jun 12, 2019 at 11:45:18AM +0000, Horia Geanta wrote:
>> On 6/12/2019 1:40 PM, Shawn Guo wrote:
>>> On Thu, Jun 06, 2019 at 11:02:55AM +0300, Horia Geant=E3 wrote:
>>>> From: Iuliana Prodan <iuliana.prodan@nxp.com>
>>>>
>>>> Add crypto node in device tree for CAAM support.
>>>>
>>>> Noteworthy is that on 7ulp the interrupt line is shared
>>>> between the two job rings.
>>>>
>>>> Signed-off-by: Iuliana Prodan <iuliana.prodan@nxp.com>
>>>> Signed-off-by: Franck LENORMAND <franck.lenormand@nxp.com>
>>>> Signed-off-by: Horia Geant=E3 <horia.geanta@nxp.com>
>>>> ---
>>>>
>>>> I've just realized that this patch should be merged through the crypto=
 tree,
>>>> else bisectability could be affected due to cryptodev-2.6
>>>> commit 385cfc84a5a8 ("crypto: caam - disable some clock checks for iMX=
7ULP")
>>>> ( https://patchwork.kernel.org/patch/10970017/ )
>>>> which should come first.
>>>
>>> I'm not sure I follow it.  This is a new device added to imx7ulp DT.
>>> It's never worked before on imx7ulp.  How would it affect git bisect?
>>>
>> Driver corresponding to this device (drivers/crypto/caam) has to be upda=
ted
>> before adding the node in DT.
>> Is there any guarantee wrt. merge order of the crypto and DT trees?
> =

> Do not merge DT changes until driver part hits mainline.
> =

That would mean driver changes would be merged in v5.3 and DT node in v5.4.

Would going through the crypto tree with this patch be such a big issue?
I don't think it's the first time (relatively small) DT patches
are merged via other trees.

Thanks,
Horia

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
