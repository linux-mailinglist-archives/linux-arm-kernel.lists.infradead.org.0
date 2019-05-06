Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AAC115430
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 21:10:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=zuxSf5g1TcRS5W/VkmfQ9tcsfi8lcvoM+qt7epR1Pkg=; b=X+oytAHjN7O08L
	TmPbRWtc8ETS5f4f/ILKcNEXC8S7v7CXv3plflJuRKABHsAd9b2RDdTYPyDgSlUfwFrXJnPN+0wK/
	ab9NqRC46hpd6c87iwtoFYkxjTu5mDGzYTIO2jBTunjxM//3o3/XjY4+YRPTcZsxOhGJA12acSU4+
	gYgDoux0iG4HFZmLp4Wtg+1zfKC3pQkUcK9B+wwPwaexfN3u/88ejZHBbsjaDuaptU6lJOADal8ti
	6EfkwY1bcfNG+UtfpdZuWSEMU7mH5sadaGL2XQ1Z+Qmii72Z/ubmst52e1+uncImxowqbU2WSDgqa
	hce/rgn11osPjMA6vGcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNj0V-0003yO-Q9; Mon, 06 May 2019 19:10:35 +0000
Received: from mail-eopbgr10084.outbound.protection.outlook.com ([40.107.1.84]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNj0O-0003xf-LW
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 19:10:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dENG2K/OFDz/YftZ8YyB72ZruTaXkUGT2KXQ02Sqjxw=;
 b=lOZOLsstP/dTUsAMEdHUqq+gdHzs/ocgk3hAs9lbJ1jItAus6T+5Xp1MNpafhZjjAgcGhsRLLcvyCz+pHLCkCNxXy0wOiIjbFbmXocykA+zzV4AjjvwVgzjCIbDX2wXYH0iVywm3EZBfcGnMnoIKP9vYMUQQf4JPTmW7/QockeA=
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com (20.179.252.215) by
 AM0PR04MB5571.eurprd04.prod.outlook.com (20.178.114.220) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.12; Mon, 6 May 2019 19:10:22 +0000
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec]) by AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec%7]) with mapi id 15.20.1856.012; Mon, 6 May 2019
 19:10:22 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>, Olof
 Johansson <olof@lixom.net>
Subject: Re: [GIT PULL] i.MX fixes for 5.1, round 3
Thread-Topic: [GIT PULL] i.MX fixes for 5.1, round 3
Thread-Index: AQHU+LotMRIj3iIcMUilQvp0o4ve2Q==
Date: Mon, 6 May 2019 19:10:22 +0000
Message-ID: <AM0PR04MB64349811AD49484EE269E2AEEE300@AM0PR04MB6434.eurprd04.prod.outlook.com>
References: <20190422031900.GV19962@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ca8bb46e-df6d-46f5-c032-08d6d2567d19
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5571; 
x-ms-traffictypediagnostic: AM0PR04MB5571:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <AM0PR04MB5571FAC5CDD5FE963DF96494EE300@AM0PR04MB5571.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:425;
x-forefront-prvs: 0029F17A3F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(346002)(376002)(396003)(39860400002)(136003)(189003)(199004)(66476007)(66556008)(64756008)(66446008)(73956011)(66946007)(68736007)(8936002)(486006)(446003)(102836004)(52536014)(44832011)(7696005)(26005)(6506007)(476003)(76176011)(186003)(53546011)(74316002)(4744005)(99286004)(110136005)(54906003)(256004)(33656002)(25786009)(6306002)(55016002)(71190400001)(71200400001)(6436002)(966005)(7736002)(6246003)(2906002)(53936002)(5660300002)(66066001)(3846002)(6116002)(316002)(8676002)(86362001)(91956017)(76116006)(81166006)(81156014)(305945005)(9686003)(14454004)(478600001)(4326008)(229853002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5571;
 H:AM0PR04MB6434.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 05G4wi5fOjpSt/tOQ0XOA12yFM61nzIhss17RFoTUH4ZCMfHcih3FNWQbe7zLS3o3BNSIu8GM22p7BAcnIvRNE7ppT2Rg8zOnJpEyxSCaFYw6iMeobwk3StHI4NSvTWYkRPF7M8wufbXGMNZOPxMirH2pqDyriHmY57e6N5E6FVVtqFhVVJO9/C3UUpWqiRFNSC5yvBDwHFj74+y7P0nDJeDyVDjCXJEWpjZujPZ99ixWVpiw39nmX+sP9WzvqZNHAOaeIDLoPwO5W+SZQxge+sE+t5Huy3FVvu52hg3YH4nTOM/etCqkdKiWYZGN9Bt+xJ56YO5e0+T+k1SaqtVPclqAnJqcJW306+eQPMYSbksw9D4lTPhYQduIZWvlhzJZ05tQiT1aXoTOunkWU2aDhr0Dh6HOyRaZnkN6UF5hgk=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ca8bb46e-df6d-46f5-c032-08d6d2567d19
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2019 19:10:22.6514 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5571
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_121028_810958_74EF4763 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.84 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.1.84 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Andrew Lunn <andrew@lunn.ch>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 4/22/19 6:19 AM, Shawn Guo wrote:
> The following changes since commit 7aedca875074b33795bc77066b325898b1eb8032:
> 
>    ARM: dts: imx6q-logicpd: Reduce inrush current on USBH1 (2019-04-11 13:45:03 +0800)
> 
> are available in the Git repository at:
> 
>    git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-fixes-5.1-3
> 
> for you to fetch changes up to c7861adbe37f576931650ad8ef805e0c47564b9a:
> 
>    ARM: dts: ls1021: Fix SGMII PCS link remaining down after PHY disconnect (2019-04-21 15:51:28 +0800)

I am confused by the path these fixes take to Linus.

The rgmii DT fixes from commit 0672d22a1924 ("ARM: dts: imx: Fix the 
AR803X phy-mode") are still not present in v5.1 and netboot fails on a 
large number of imx6 sabresd boards which have been stable for quite a 
while.

These should have been included from "round 2": 
https://www.spinics.net/lists/arm-kernel/msg723998.html

--
Regards,
Leonard



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
