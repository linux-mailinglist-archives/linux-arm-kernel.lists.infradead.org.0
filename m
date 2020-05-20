Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A9871DA869
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 05:01:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TBuVR4/OXwBrlIXIoI6CDPxEAydcbPJQN4TqDFUDK+8=; b=letvf0RzPV35oz
	iDOgQfKr2sn5ty4GosqC92MuTJWgNEmGz5GZlDZ8RcrBXElyLaTNEzwWmu8UHdJcxqzp0fLa9mwpD
	fStx6h1RdvZk4LV6W9pYMDO//HRzqnyQo83cN0Qw8qSEiy2SfJivyECpmj789UGGZb+ROLhpChiPq
	XF1v605bpJfcFoI4b0QAkCtMf8OvGjSgXVvzFCDICLxkJlDYLkRsK9iIzrgqrz1J2yj+BuyE+BunD
	Pwr8we0U0WhQR2IqgueTMQaAZo746mtFb/+qDCGCqzzTQJbUwE77LW+4P2nUeu1wTa7UfIoXRlX+3
	Ah+Esj/VMvIKbxA8Xtcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbEzB-0001FN-5W; Wed, 20 May 2020 03:01:37 +0000
Received: from mail-eopbgr150079.outbound.protection.outlook.com
 ([40.107.15.79] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbEz0-0001Eo-3T
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 03:01:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jVPPuJZCZTB7h+R77HFt3RjVCzsgbRJcJHmF+9zY72UO4klUxfKJKT0XatKKHXU8Ptreb6SwqXtx594jXGO7nF7lHd1Q0A26hRmyINh501mMBCG8VK15d3Wt0vTkCFmPO26jjUxEOQzouVAFlYESg5F2AaLKP1cxpHGYGCMnwtuPxqmyR7pchxMovlY+d1noNhhAjNygpMz7wePpDJ6hGtYFUw+adeWrIoBsg0HnQP8iN0gw2xM+Vzz2IGLXMtEkwy5L9RNNaFZEHElw2KRQLIqMtR1CzKj3oRCXuwfO32Xz/hhK1OpodbqJdVcqdHwTqi44IEXnSGcnYWko9tmAkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FqYx3Ua7kL60hAsLDKtyrWzaWQwaY6lSxmbTkwtYS6Q=;
 b=lraI2zMe5FCOWPHiapU35YMjjK01xybZLaWk1p3sC8D7Hh1fAYAMywv3Dhy3hFJ7iN9hxpv7T6dgNNPToLNYO90Rfi6XsW75VKwDcbDaGbBYWQ/gDEdfdNUYYTev6Prg0SAKTTVcqx4upHjo6z0F0KV581ip3ob104Ndou43KztZN72rOI/owdtySso5TlGy8d3y/37fDniRLaJjwYBtq9ErSMyzpjYYKemyPV414vjVvUryjP3pvEyFCWs3YbZls/bEbqIODKihbSeZMEinR2RhtZMj2pIbNsn9c+vcFQZKLRo+ZV/e9UtBbXcHumae2GEg+fsw3GqqtpBaVSYnSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FqYx3Ua7kL60hAsLDKtyrWzaWQwaY6lSxmbTkwtYS6Q=;
 b=bpoz9Svh3rqja2uWy+turxh3HZ3WV8TNEoTbQNEQ88s63eoLcWuus7BQZCFG/mPLAdrUEtIAjX3o1BK6YxaHg8Ugk6s0trM1pN4cmBSoRgO/XBeZ8XrqmyoEvnEf+qyyCJ6OtK3JL67ecG5aSVgu0DN3l4FqHkgHTCY9AqpbW1k=
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2870.eurprd04.prod.outlook.com (2603:10a6:4:9a::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.31; Wed, 20 May
 2020 03:01:23 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.3021.020; Wed, 20 May 2020
 03:01:23 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Fabio Estevam <festevam@gmail.com>
Subject: RE: [PATCH 3/3] arm64: dts: imx8mp: add mu node
Thread-Topic: [PATCH 3/3] arm64: dts: imx8mp: add mu node
Thread-Index: AQHWLkxzkzQ2vaqxukCIUytKVqWONKiwSJ8A////3aA=
Date: Wed, 20 May 2020 03:01:23 +0000
Message-ID: <DB6PR0402MB27602682E90E4CED55244BCC88B60@DB6PR0402MB2760.eurprd04.prod.outlook.com>
References: <1589940278-3680-1-git-send-email-peng.fan@nxp.com>
 <1589940278-3680-4-git-send-email-peng.fan@nxp.com>
 <CAOMZO5BPPRy_XGHHyZfE3eOrmCwW_VytueY-An8qqke6HU06TQ@mail.gmail.com>
In-Reply-To: <CAOMZO5BPPRy_XGHHyZfE3eOrmCwW_VytueY-An8qqke6HU06TQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [221.225.35.13]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: dbf9c2b1-5829-421f-0a2b-08d7fc6a1452
x-ms-traffictypediagnostic: DB6PR0402MB2870:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB6PR0402MB287057010F5D3F677029785D88B60@DB6PR0402MB2870.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 04097B7F7F
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zLrs44IBw3cjkIBR7hY28CJkK0qJaBMdssG+pATxcdckMm0YfM50bouUMh708emDxyBxF349i606e7+/wC4e3MFjhDUEvUoJqFNlKGW5zM0xM+IXVvAOkrDjifuv0Cagz8gUw05UhOrFIV3yPNoNsszbq2RiNt01jUp6rbbqm5XY26mF+4oxbyvnbVPE6QCzFNVJTWreidJLnj58bDs6rzDnXUqDnDJoRmDSJpsp8JcSwOrckBEVwv0rXmRA0yUq4IHits1KyXMUQF7fpSSAlMsgwqBoQiBbogW5CfEjjIOXpGfLJaQ73xqGJXm5oWZbnlbxvyXNZE5C5XAtS0wfBD3Y8uzA9nE18RzA4mcJ2x7sL25OP1fvjxtVVsGV+w5jhyg5UhiGl6bnvpANWnKamceCdFNINTIkHIXVrU+3oJns5WELeJF7uk2WqQzQLZX6AbCCWe9I+HN/x5tZKcpmXGaI8gwrklcA+Q2iRIXuH6rKzqs6A0pIx5aYNMWHVeIG
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(396003)(366004)(346002)(39860400002)(136003)(54906003)(5660300002)(66446008)(64756008)(4326008)(66556008)(66476007)(66946007)(8936002)(44832011)(8676002)(76116006)(4744005)(33656002)(53546011)(86362001)(316002)(7696005)(7416002)(6916009)(478600001)(26005)(9686003)(55016002)(6506007)(71200400001)(52536014)(2906002)(186003)(32563001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: i2B83DEH4q6QyvA0r+yWv5Nz1Xxd8LSIcSN+GMdZt7lKmMTu0Juk6UXmqcMMRi1OOZfbpkPWPcHHlOBGeXlqrm304EpsTeU4ltAyO6dbFL/25PUs2wh2uctUCeNwiAP4rGplXzS4T9GhlV9IEijB5R+bBMlGBzO58zknxcilz7cgI/D9mX9IkIaPxXxkxoRB7IR07qWXAUKaM7Oe6LAvr3kSXEA8GG36WH490fZksaT6IkLAgl0vM5uROhfSxB5i9ncGqoAS4+WKNn99u/HHn2+yewd6KZ8XJKYKaBnA9/qVGyy/X2GJzAYlAmiFlui6aOqXF/ROVhCNuC9k1LdFxD9dkciowGYFua/K6UO7ivL6huCdKQhqXV9btrDZSaLrZaGMDC1BpGuztre86/CObs1pV0cW94ZuP0YpCGSIm3vH1io+jQVurNT4rqdmpiNXOQrgUCZvVdW84l5sHA/Qp3MHqqWWMjQMdSo3PVw0kow8+7p1rmys90LYfq9WEMTS
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dbf9c2b1-5829-421f-0a2b-08d7fc6a1452
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2020 03:01:23.2808 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: g5HQDgh+hQdURzQwxCaWZlMRW33VXRtOZs6K7nTO+ayRHu4gnfgp/l8IjRd8xp9SO6aZNv1+94zcKlpj/nKnHA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2870
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_200126_150981_F8BB44F0 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.15.79 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.15.79 listed in wl.mailspike.net]
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, "open list:OPEN FIRMWARE AND FLATTENED
 DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Daniel Baluta <daniel.baluta@nxp.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>, "moderated
 list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: Re: [PATCH 3/3] arm64: dts: imx8mp: add mu node
> 
> Hi Peng,
> 
> On Tue, May 19, 2020 at 11:15 PM <peng.fan@nxp.com> wrote:
> 
> > +                       mu: mailbox@30aa0000 {
> > +                               compatible = "fsl,imx6sx-mu";
> 
> This should be better described as:
> 
> compatible = "fsl,imx8mp-mu", "fsl,imx6sx-mu";
> 
> From Documentation/devicetree/bindings/mailbox/fsl,mu.txt:
> 
> "The "fsl,imx6sx-mu" compatible is seen as generic and should be included
> together with SoC specific compatible."

Nothing specific in i.MX8MP for the mu part, so do we really need
add "fsl,imx8mp-mu"?

Thanks,
Peng.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
