Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F479AD256
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 05:41:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+s11AwBlJlflZUr9JjCpn74ezvYdP1nVf3O3Y8bmZFE=; b=dbI8BSBaQsyeRc
	ydwqQc+RYaQl0ZOZL8oP/a+ksr0LxIegAaHZcfUcPiJyF63VgoaEvmYQELE5mLJ6p3+OXeSNoOGIh
	gbuhm9e77uvHY1Qv7+CufeWGAmPD7oexO++qEnJr5R5sCOwV3hnENP5kpiRCTl3s4yVlDXH/YXOAB
	VvxcIgYbqeVr7I8GkY3CPl2COuA9WyZKoQYzDzzZ/8oxfnCvAgeRY3bwy0fslA371wELmKQGFERf3
	/A83X+zYaOTg1KOuXpOyfhWfmAUmn1+DBPzNXITtcQ+gxD0U8rj7v3RmIyOC868LLToG5h+soiJOx
	jdMjJxKoSwe1oqo17Cng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7AYp-0006Le-Sk; Mon, 09 Sep 2019 03:41:52 +0000
Received: from mail-eopbgr60043.outbound.protection.outlook.com ([40.107.6.43]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7AXE-0005Dv-5m
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 03:40:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gNo6KC12MNq/iAH3m1LKFGmy5Y+BRWYwghLQVQDuwxCMr64h0/a+V1bm+O2EQOhCDMKHtahClxz/1eO8b2IZLpC23rmEtj+kQoyXVK+LA8OwqQcdNltBXCpUkCAhFAIZML3fOyCxknvymUNCM37VPZZhA8eNFqxssj04fT1iLH1vG/pRTY85RnTaeJXymINEE7NpYwVVHkFubvqJrgZgxgk709TE3NW8jagyEEgYlBvfBcSw7Nj9jkxDKLcLjYrj+ROBh6VBjFNMqpdcHUk4gvxDNP44/G4nfcSs3C1K13TVR4infRQZ7JeEzbRiZeqotHq146Hsh8wO+whyC5Gh1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gQbl1Heq/eGArwLF///5xF1zd82P3lfPwYfhEG3DN6E=;
 b=axaqblLY0opytOrf1cr+PBU4t+LZbjAMjur650fQHM1oL4f/OPDCDaus8JRksVm0+HOc819l7yEJIB9dJl+j7oPdsdDBSQmiXD9Ni0lY6CIhleA30esECAb8w1IPuCDqw1UmgEiW4w6xwvRQIc/Cp2e/ZwxdO9OQLjisTTLJOV/HdTfUESbki/JSlgs2/VBqjDiQPV+lLLFQkVNyeXDs2EP0vAH6rla35LIIfz+dHgrpRtv+H7eGr3YRmg7dPCrARegG7vKbj42al/PkIMstOCDNib/MwbntM724sPDPDzo0gMaAHtG2MeIXUdtF2p4bHVlULylEMXCGj7G31hVI8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gQbl1Heq/eGArwLF///5xF1zd82P3lfPwYfhEG3DN6E=;
 b=CuIbraE67GrS4pMtigMJVcGvWCxTyNNCr/O39svTr81IQX9a1WwlQHdLGa9UdrHriy8SzZ/be87xu6jMpmUWbADtTwj4oE3PA02A9c5eHgF12KcDgL7uNoGbm72EbhFlKrD56y7cT/iNIWf8nURw5MUbUI2kZTHdp60SEl6ksuU=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6020.eurprd04.prod.outlook.com (20.179.32.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.19; Mon, 9 Sep 2019 03:40:10 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8%6]) with mapi id 15.20.2241.018; Mon, 9 Sep 2019
 03:40:10 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Stephen Boyd <sboyd@kernel.org>, "festevam@gmail.com"
 <festevam@gmail.com>, "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>
Subject: RE: [PATCH V2 1/4] clk: imx: pll14xx: avoid glitch when set rate
Thread-Topic: [PATCH V2 1/4] clk: imx: pll14xx: avoid glitch when set rate
Thread-Index: AQHVW/KK74JBQxFn0kSNJpxYwL3XVace9ziAgAPQ26A=
Date: Mon, 9 Sep 2019 03:40:10 +0000
Message-ID: <AM0PR04MB4481BCB4A02FC868F5B442E288B70@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1566855676-11510-1-git-send-email-peng.fan@nxp.com>
 <20190906172145.CAD3C20838@mail.kernel.org>
In-Reply-To: <20190906172145.CAD3C20838@mail.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6aae4df6-1488-4233-a1fc-08d734d76a69
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6020; 
x-ms-traffictypediagnostic: AM0PR04MB6020:|AM0PR04MB6020:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB60207D6293B5117E158CFBEA88B70@AM0PR04MB6020.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 01559F388D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(396003)(39860400002)(376002)(136003)(346002)(199004)(189003)(43544003)(7736002)(76116006)(186003)(26005)(54906003)(316002)(66446008)(52536014)(64756008)(76176011)(7696005)(9686003)(14444005)(446003)(55016002)(4326008)(11346002)(44832011)(3846002)(6116002)(66946007)(102836004)(110136005)(2201001)(25786009)(8676002)(2501003)(478600001)(14454004)(99286004)(66556008)(5660300002)(66476007)(86362001)(4744005)(71190400001)(6246003)(6506007)(2906002)(256004)(476003)(33656002)(486006)(53936002)(8936002)(229853002)(66066001)(81166006)(74316002)(6436002)(71200400001)(81156014)(305945005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6020;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: uVfZZh3emXR9QSp3y46OlXKjRZa0LGA/Ycbh8+jxgX9Xv7aXAgk2wIZhGDNq4viygFK/pwXTstEERXL2bRZUyImsPVMj5WJKbeeYDvemNHWuq2wAhEnV0upAqL3zMkfxorz4Lr3jNwM0RcGvvjJQ9YAPp2lISS7594lsynAifqzyVMiXKzxvnS9ZosKxka7AsLD7vfvGD87Jq5/Ho5+B+z0l9f/sAwETQy9AiTHdtjEAjiRBZ3yW2ol95PVamJ4HdSBXT3QgRs1/28UPWWF/tplUeCGybqZuAaEbG9ocknA2+/88nhtZclWquC/sa2GYCMiFeug4nQ1fnrmqrtxVNFVmDPwTQO3GD9y03bfuNNNlem3bzg8hq5tWj1ApZbLN/TCiW6RqkJ6ZPh1PgPK7LaJ+Z00mqildwaLRDclworg=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6aae4df6-1488-4233-a1fc-08d734d76a69
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Sep 2019 03:40:10.2476 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HgME3AwdcBBdUtdh1GCZMYdBKzJCxkpjkGNCjs7PkzS1S5Q7k3GQJ4wjNWcI4JxFAs/dUWZPODKlf0a7UCOwKQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6020
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_204012_725472_729E5268 
X-CRM114-Status: GOOD (  14.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.43 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Hi Stephen,

> Subject: Re: [PATCH V2 1/4] clk: imx: pll14xx: avoid glitch when set rate
> 
> Quoting Peng Fan (2019-08-26 02:42:14)
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > According to PLL1443XA and PLL1416X spec, "When BYPASS is 0 and RESETB
> > is changed from 0 to 1, FOUT starts to output unstable clock until
> > lock time passes. PLL1416X/PLL1443XA may generate a glitch at FOUT."
> >
> > So set BYPASS when RESETB is changed from 0 to 1 to avoid glitch.
> > In the end of set rate, BYPASS will be cleared.
> >
> > When prepare clock, also need to take care to avoid glitch. So we also
> > follow Spec to set BYPASS before RESETB changed from 0 to 1.
> > And add a check if the RESETB is already 0, directly return 0;
> >
> > Fixes: 8646d4dcc7fb ("clk: imx: Add PLLs driver for imx8mm soc")
> > Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> 
> Please make cover letters for multi-patch series.

Just sent out v3 to include cover-letter, no other changes.

Thanks,
Peng.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
