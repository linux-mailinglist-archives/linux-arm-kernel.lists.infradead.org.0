Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61192DA2CE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 02:48:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ptVQTVBk1jleeZNkOaPtXoKAuNwRrjtS2kV5tl1L7VQ=; b=QFYFl84dmrfzH9
	wMlXvVf8ZGjuaLDNXezdALryZwFS3pl+5l9eXlPLjs2RmG835FDBeV4vfRxXlWzChtvcrDg0sSLBS
	VHxTX16APTjyL8YP35boSaZDSsWNl6tCPJDkgAw55ZUdIWL5RgQdvLUZeCcY5sVN8l9RoWxOl5tLL
	wOL0g3vOgvFNaH32p3yTlA0190unC+eeVZLSCes9fBZSvbYxo7riw2qGI5lftfIS4E++oyRyTgxra
	m8PDeS3BoznXTvxxiwEioQebicQjShom8wRIVaVqZiNVjKAwds1Y/6cvAs53Bms57Ttkl74ObKq85
	OWluv5rhA1j2JHxB3qQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKtxP-0000tH-TG; Thu, 17 Oct 2019 00:47:59 +0000
Received: from mail-eopbgr150043.outbound.protection.outlook.com
 ([40.107.15.43] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKtxG-0000sP-Nw
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 00:47:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EcLUiNTTthdnyqfsipp0P5Vv6i3rZa6CnjixHSdhiJEmUn0rrm+jdWSkyHfs2ldaiSudBjLWRpsS3oA56F3eib9CQM+/iym2CziTf17rM8RR0C9yfXO1UtU5wpNY3rV+R24uFC6BYfp8HPXBgK9jeWYIUZy4SBDRjKISM2ZbtTyEflSf/N2bL+JwWYEPzDUHu5ojXAPcX5UHeSHkUTmQTDADQcFUM7TSemPNgmIWx7FTBzS8Cg09PHLvXHaQAN9QSHbAD4Ls66SOXw+bdDrvCbwbr0O0ygoDBwbfa2YtHHZW+Vpx+8n4/S2ClzqbMrjFbcIhrr69Pwc7oeLgKmi95g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dN/v4vvROZcEHKdn11ndJSORGhK465+jRgb+mhzYm0s=;
 b=k5cDTql7/wthdBWWfvVBZY1tVvR8KvOilmi9Opk3kupM1EGtdYhINnZA9nYzdr/Sm0ZNV6iuaAIxaHgD31XXCtne9jWpxifx6czL/xs32iq0ZZWP3u4duqoISdIz6rd0XcJenkRpYKbd8PxXSfSdR+3gMvEoHye12kN5EYr8qVyhlnMi1Q/R/n6AzixaSW/duiT1yBgaa6y8jm/7u4MS45HtVqKE0ZQpeYA0hLKQWty9tYvbK7kVcaL/yvaz1vo9YHB1ybd2X4pKmbmi0CuPWpCzRZMZn5he/9jVF+QvNfxN/QGJH7XWdd1BzKsonR8QklMMQ8hKLxUv0YmR5470EQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dN/v4vvROZcEHKdn11ndJSORGhK465+jRgb+mhzYm0s=;
 b=p1HrmS8qnWqugfwC7w6/eVeNyiUwBng4Yp5V0qKN0v8/daGB0Km7qd7bFEYDam6PEA9AD7zjaOmPIDpUFySGLR6ONTb7wv1KJsmc2MTgfanUfR8X9MlMcuumSGUkZ1BOjucLtcEAa50zn1XAQhwukukiV5py1solAq4KQjQ30yc=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5810.eurprd04.prod.outlook.com (20.178.117.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.18; Thu, 17 Oct 2019 00:47:43 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1%5]) with mapi id 15.20.2347.023; Thu, 17 Oct 2019
 00:47:43 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Stephen Boyd <sboyd@kernel.org>, "festevam@gmail.com"
 <festevam@gmail.com>, "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>
Subject: RE: [PATCH] clk: imx: imx8mn: drop unused pll enum
Thread-Topic: [PATCH] clk: imx: imx8mn: drop unused pll enum
Thread-Index: AQHVgyb7rQc7WB2ptUeNJcHfwDTOYKddtCsAgABNP2A=
Date: Thu, 17 Oct 2019 00:47:42 +0000
Message-ID: <AM0PR04MB4481574F8F7DA3E50E1F6408886D0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1571122989-29361-1-git-send-email-peng.fan@nxp.com>
 <20191016200646.CF8032064B@mail.kernel.org>
In-Reply-To: <20191016200646.CF8032064B@mail.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c3a33b1c-4934-4a3f-7abc-08d7529b9e9a
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: AM0PR04MB5810:|AM0PR04MB5810:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5810F7D7F06BC780D2E1598A886D0@AM0PR04MB5810.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1468;
x-forefront-prvs: 01930B2BA8
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(366004)(39860400002)(396003)(136003)(189003)(199004)(8676002)(186003)(11346002)(446003)(7696005)(99286004)(4001150100001)(4744005)(86362001)(3846002)(6116002)(66556008)(66946007)(66446008)(71200400001)(76176011)(71190400001)(6506007)(52536014)(2906002)(2201001)(81166006)(486006)(81156014)(4326008)(476003)(66476007)(64756008)(102836004)(8936002)(25786009)(66066001)(6436002)(6246003)(76116006)(229853002)(305945005)(44832011)(7736002)(33656002)(9686003)(478600001)(74316002)(256004)(5660300002)(316002)(26005)(110136005)(2501003)(55016002)(14454004)(54906003)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5810;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bMTBYC+/T9Tbr7iRb/U03hKWO7NmijEcLERfhKAl8jsiDQntfwzx8SsSBZLqzGff0cLJ8kVSnx/XT69H+ufwuDKIUH4iO74/685vfcTeb0Pzdk2Xnmb/SESdZYmM1bPvHZ0rIYOgMwqBCec9wM3Cy1X5g25rirMF0b7URZ3Ma4qhAeFV2RwuWI5aWQGTO1ltvGDFeT6y0dBUKxxGNAOZPXIC5QviQhxlWTXa4Bj7pTDpsyvnxbHazYIibq7EQ9RyCIf3LC+xRjQ43VWWygFpS/5St1DMyFXEFJfsGxUxlOyqk+qpFj8Aho8r3FYHBHyBEQ9j23l3lInPlxw7462ViVTayFrso15XcViBbyFHg9I/AYmNHA9O5eEagrr7eEi6zgzQr8atBiqduB5sPadNmuoY/OZAe18McZseEFeur14=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c3a33b1c-4934-4a3f-7abc-08d7529b9e9a
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2019 00:47:42.9607 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: W3YJ8KePngxAkPpiOQiKN95jtwoyNxXb59IprXjH523ehBuJ+dzBD/rj8h6jPt/JY+sNjTo9VRG5f+qbnBuvDA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5810
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_174750_935406_822216F1 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.43 listed in list.dnswl.org]
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
Cc: Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: Re: [PATCH] clk: imx: imx8mn: drop unused pll enum
> 
> Quoting Peng Fan (2019-10-15 00:05:53)
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > The PLL enum definition is not used, so drop it.
> >
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> 
> Was it ever used?

Seems no. It might be added by mistaken. 

> 
> Applied to clk-next

Thanks,
Peng.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
