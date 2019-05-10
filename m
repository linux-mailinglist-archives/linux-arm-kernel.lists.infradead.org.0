Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0231197E3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 07:05:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wu4KtngyNVlZQoTI12BRYi8C4PQlbLnY3N/ZfFIjp2w=; b=UBUb82FhYgd5jI
	IvyTx66MnzyJhSsciX/zLJY9HAtklkX4TFBlPmvcwggZ/F2Z0TnnYp2j2Y7GLqmab8qE3Ze1ZcTR/
	DoZgtVjlEsHX9xDGcZLQepwr0JzX2fNT0n+FnQifxbe6yQV7VpOa1XxqdqdO5VHZdj+nxcgAXtWFk
	BAK4V+iVA99TOFrajeMot+Jf/MbUkcM+AI9BR7br4dc736FsLJAhcsR/ybNVIj+gzO2Y6qa9Q08fv
	pGEYI458aeNnSlI6dlg0GpeIQxVMIlGpnH55Fvcu1BpzuRzjYd3wiIJN7K6weqvm/a1p6bVwBsqbF
	exqyAwaYr2j39yNWYqEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOxj3-0000ET-0z; Fri, 10 May 2019 05:05:41 +0000
Received: from mail-eopbgr140073.outbound.protection.outlook.com
 ([40.107.14.73] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOxiu-0000DX-OY
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 05:05:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uSQDM1ha7kkR71pR5UbVrq5KtnZfPXR3nW4J+rDHq2I=;
 b=RJlk77teJK+HP3Mh99sqvAQ37Lgxaao8INfMPtLcoP93PDnlw1wApIpRHOUNsd1AIdbANMlO3+NtN+8fGo2k3uVuaixDXGBFjqBTZszYXYIPCYrfHAdOMQw+XzLJpVySOXnBsCu27HQx835HPPEovV9Mj/VDS5zPIFm3Q7H6724=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3820.eurprd04.prod.outlook.com (52.134.65.152) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.12; Fri, 10 May 2019 05:05:18 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d%2]) with mapi id 15.20.1878.022; Fri, 10 May 2019
 05:05:18 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH] ARM: imx_v6_v7_defconfig: Enable CONFIG_THERMAL_STATISTICS
Thread-Topic: [PATCH] ARM: imx_v6_v7_defconfig: Enable
 CONFIG_THERMAL_STATISTICS
Thread-Index: AQHU+k2bJJ9MRtHiIEOyvuqXcpXxpaZjzH4AgAAam8A=
Date: Fri, 10 May 2019 05:05:18 +0000
Message-ID: <DB3PR0402MB391661070B9F664C9E9577B0F50C0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1556076113-4593-1-git-send-email-Anson.Huang@nxp.com>
 <20190510032917.GG15856@dragon>
In-Reply-To: <20190510032917.GG15856@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bc47c5ca-8689-4459-7f88-08d6d50518c5
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3820; 
x-ms-traffictypediagnostic: DB3PR0402MB3820:
x-microsoft-antispam-prvs: <DB3PR0402MB38203374E86E03C399820473F50C0@DB3PR0402MB3820.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1728;
x-forefront-prvs: 0033AAD26D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(136003)(366004)(376002)(396003)(346002)(189003)(199004)(13464003)(6916009)(486006)(6246003)(9686003)(53936002)(71200400001)(305945005)(446003)(53546011)(68736007)(11346002)(476003)(25786009)(74316002)(7416002)(33656002)(66066001)(71190400001)(73956011)(66476007)(66946007)(76116006)(66556008)(64756008)(66446008)(4326008)(14454004)(256004)(7736002)(478600001)(26005)(102836004)(44832011)(186003)(6506007)(6436002)(52536014)(54906003)(316002)(81166006)(86362001)(55016002)(5660300002)(2906002)(99286004)(81156014)(6116002)(3846002)(8676002)(8936002)(4744005)(7696005)(76176011)(229853002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3820;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: y2AN9omLSvBhB96ISO1wyN0O0VfOcJX2/zwTGtFi0Tc6fJ67IZm9sxu2PgFJkuCysof4cDorfgVg+41QsTSvouc2PUWbzLJAsKGGq9irNjgffzDQ7VyQ56mcTikOcOtBseta9yOUo1OhLH5HZD577YD3qhZVbVbiIxzjdC6jkmQIEjt3lVm2w+V9Ln4Bii1np/a3r1F2gMy/yt0KcBWQ+ZywZBIe9fmfTxHz90zq8Fh+R3th4afT2tsE1cqFX5xVD2T/gclngqCaK50jTlEKygHkqjoNv6kS04kqpzEfm6jXL6zukf75BhyU2Z0V/K7CJRSy5kKuH49EyMrFOL16cdUaj67NdpbzuZXgvCip34N0fW5mAjtuZ7MiYrbVMCzXnCjWJHDuwxmf338NW35JdrXFZBhsYEAX10CaVYrRabU=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc47c5ca-8689-4459-7f88-08d6d50518c5
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 May 2019 05:05:18.6252 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3820
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_220532_900103_A857EF99 
X-CRM114-Status: GOOD (  12.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.73 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Robin Gong <yibin.gong@nxp.com>,
 "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "jan.tuerk@emtrion.com" <jan.tuerk@emtrion.com>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Shawn

> -----Original Message-----
> From: Shawn Guo [mailto:shawnguo@kernel.org]
> Sent: Friday, May 10, 2019 11:29 AM
> To: Anson Huang <anson.huang@nxp.com>
> Cc: linux@armlinux.org.uk; s.hauer@pengutronix.de;
> kernel@pengutronix.de; festevam@gmail.com; otavio@ossystems.com.br;
> Leonard Crestez <leonard.crestez@nxp.com>; Robin Gong
> <yibin.gong@nxp.com>; u.kleine-koenig@pengutronix.de;
> jan.tuerk@emtrion.com; linux-arm-kernel@lists.infradead.org; linux-
> kernel@vger.kernel.org; dl-linux-imx <linux-imx@nxp.com>
> Subject: Re: [PATCH] ARM: imx_v6_v7_defconfig: Enable
> CONFIG_THERMAL_STATISTICS
> 
> On Wed, Apr 24, 2019 at 03:27:13AM +0000, Anson Huang wrote:
> > Enable CONFIG_THERMAL_STATISTICS to extend the sysfs interface for
> > thermal cooling devices and expose some useful statistics.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> 
> I don't apply patch using base64 encoding.

It is our server issue and we have reported it to local IT, will resend patch once issue
is solved.

Thanks,
Anson.

> 
> Shawn
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
