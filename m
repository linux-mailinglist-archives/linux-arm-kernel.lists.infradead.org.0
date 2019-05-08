Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A214416F8A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 05:42:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O1Fh2H0R6py2SCtu/3ByTAvNUXkNdgph/5GeXGex9nA=; b=cufizNYOVdE39C
	blwwtpDiEnwXoEesrYb39Vb/MKR6vFrvjIN0xBfL6baOfEFZy8fMH4ESG2FZ6BbL4PFsFvkWpg5MJ
	5HR5MgB7UUWUCPLbnibuk+dTirdsPQOd11MEd1ZcvXhqvfjwMIjWQPFB2Kn7DiCIriJ9Zowcz9Dw+
	21tmZPucsX28D5w5Kw3KOCAOKvY/CFSAEXLGacuG3F/Kq8rP4sErML2Dr83vVU8pXr1m4EG382E/w
	sjJ6WJ/voIyIRPjDGb+c70saU6/ttlhkO3qwhcKLSkHx/xNLPv4LwFMlg/VsBebNFI9Mr9PnsVmb/
	fxhWErOBp8jm6K/2x6pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hODTS-0000Qw-Uo; Wed, 08 May 2019 03:42:30 +0000
Received: from mail-ve1eur02on0612.outbound.protection.outlook.com
 ([2a01:111:f400:fe06::612]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hODTL-0000QY-KG
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 03:42:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q/zUq08HnW7dhwD6miK7ZR98RL0VOqWKdF+9oKHCrtw=;
 b=MfvNU5LGdRwsjpkmWxI8KmVv3Vs9WDmXq40V8x1I7F2mKEO4mhVx/8skF+5MAK9krJcwTlkg/wjxkAXlCj8fWllfwMnHjskjBs14VGb7uUE7bMxzrKQtO9r++N2anMxpUuDqrbgCrhHl7IgPK0VyWFe8HZK9SarCu9MaBJxq5+U=
Received: from VI1PR0402MB3600.eurprd04.prod.outlook.com (52.134.5.23) by
 VI1PR0402MB2733.eurprd04.prod.outlook.com (10.175.22.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Wed, 8 May 2019 03:42:19 +0000
Received: from VI1PR0402MB3600.eurprd04.prod.outlook.com
 ([fe80::9889:fa82:4172:14df]) by VI1PR0402MB3600.eurprd04.prod.outlook.com
 ([fe80::9889:fa82:4172:14df%6]) with mapi id 15.20.1856.012; Wed, 8 May 2019
 03:42:13 +0000
From: Andy Duan <fugang.duan@nxp.com>
To: Fabio Estevam <festevam@gmail.com>
Subject: RE: [EXT] Re: [PATCHv2 1/2] ARM: dts: imx6sx: Use MX6SX_CLK_ENET for
 fec 'ahb' clock
Thread-Topic: [EXT] Re: [PATCHv2 1/2] ARM: dts: imx6sx: Use MX6SX_CLK_ENET for
 fec 'ahb' clock
Thread-Index: AQHVAmkSkfnHjuPrDUuL+rGIVj8MEqZcLD7wgAABdICABCF2AIAAS6QQ
Date: Wed, 8 May 2019 03:42:12 +0000
Message-ID: <VI1PR0402MB3600C57B5922EC20D87DF913FF320@VI1PR0402MB3600.eurprd04.prod.outlook.com>
References: <1556190530-19541-1-git-send-email-liuk@cetca.net.cn>
 <CAOMZO5BbA6oq8okTR-r800k4XY76XxxEdufd1mjcV6HdTpVotA@mail.gmail.com>
 <AM0PR04MB421133A3F3C6B534B6ECEA7880370@AM0PR04MB4211.eurprd04.prod.outlook.com>
 <VI1PR0402MB360058CE70AD60C116EE0634FF370@VI1PR0402MB3600.eurprd04.prod.outlook.com>
 <CAOMZO5CSaRZEiaqxBTcBhaYjRLxMjb6Boyy0eO6OAEFBPv3_Kw@mail.gmail.com>
In-Reply-To: <CAOMZO5CSaRZEiaqxBTcBhaYjRLxMjb6Boyy0eO6OAEFBPv3_Kw@mail.gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=fugang.duan@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e71f75e2-0754-41d6-1d7e-08d6d367284d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0402MB2733; 
x-ms-traffictypediagnostic: VI1PR0402MB2733:
x-microsoft-antispam-prvs: <VI1PR0402MB2733BF7F84DB9E963392C06BFF320@VI1PR0402MB2733.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0031A0FFAF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(366004)(376002)(39860400002)(396003)(346002)(189003)(199004)(102836004)(6506007)(305945005)(8676002)(6436002)(6116002)(1411001)(11346002)(446003)(6246003)(8936002)(74316002)(7416002)(53546011)(3846002)(68736007)(81156014)(81166006)(186003)(99286004)(25786009)(7696005)(54906003)(14454004)(256004)(2906002)(26005)(86362001)(14444005)(52536014)(7736002)(71190400001)(229853002)(76176011)(55016002)(71200400001)(4326008)(476003)(9686003)(486006)(66446008)(53936002)(316002)(6916009)(33656002)(73956011)(66946007)(76116006)(66476007)(66556008)(64756008)(5660300002)(4744005)(478600001)(66066001)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB2733;
 H:VI1PR0402MB3600.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ZSAMTL0OwWaYPbDHFGtgOyBO1Pgg2Rrs7t9a/Rx3oTiDjK290TxKgzq/NeT5oKQuFjHJsA+d32m8AEaBYdKtW2k21N8via+30Mh5qY5g+AWIxOBtn5yFKW3OB1d8TmOZXkmF+LJDHU8YPpRN0zRenWo6DpRd/zqpl7wSCaIQDInDq96SzMrgQnYjZoV+UUWPCzP4I5tZ8k+Cs4vCRhucDLrzg/gy7/ACm2mDgt57JPx2YYnHCvUXRa6FvRMfekUNQW8Xk3NJSRep5tWqqgzrisP9GdM6spbXOdqf8mfokQZgX1jUdYJYcCDcerOpBy5c7X/sL6T3GPJ/Lq4Oy/g84UdZwfRk51n7B9TEsmR/V6sxVXFk59niZkt7VFaVaktEZEpPpvJnXyNf/2MWchxQVgw2SosfdtP8PJlG3VZZdsc=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e71f75e2-0754-41d6-1d7e-08d6d367284d
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2019 03:42:12.9527 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB2733
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_204223_663008_75B842B8 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe06:0:0:0:612 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Mark Rutland <mark.rutland@arm.com>,
 Kay-Liu <liuk@cetca.net.cn>, "open list:OPEN
 FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Fabio Estevam <festevam@gmail.com>
> Hi Andy,
> 
> On Sun, May 5, 2019 at 5:15 AM Andy Duan <fugang.duan@nxp.com> wrote:
> 
> > Nack the patch !
> >
...
> > Secondly,  for your issue you caught, which was fixed by patch:
> > commit d7c3a206e6338e4ccdf030719dec028e26a521d5
> > Author: Andy Duan <fugang.duan@nxp.com>
> > Date:   Tue Apr 9 03:40:56 2019 +0000
> >
> >     net: fec: manage ahb clock in runtime pm
> 
> Would this also fix the case where power management support is disabled?
> 
> If I understand correctly the explanation from Kay-Liu he would still see a
> hang in the case when PM is disabled.
> 
> Thanks
From current design, it still work even if disable PM.
Please double check it.

Andy
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
