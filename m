Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2851B339D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 04:56:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XQ7kCYrgnt61hNGU2ol94P2zmevLD3M4zD+zKy4e3uU=; b=tws807t3KhvKPy
	EgtsYkY2AOKjNVB/S/wXgzS0l1Xpkf40+Div/1JzKJxSjBPE6iIKGfcw5tDVz1yvpNmKhSmSaCpKA
	GHHb/fjMC1SmszjIMcbyPtK50hl/rsolOcf2SHmsu5otG66DrAEZ3SZwNPRqKGSBtLdxeoUzWQoAU
	M9g8SLTN98lvyZWFod+GsvAVOoZ1yPh0vgPpTG3DEYnbpvq/06woyIRF4XAHAuk/66G8TO724jm8s
	SHSFFJAP+kZK3CNr4yvLf9EQRFShcDV9BhnWhbpsXuEf459k8weMW32Xkk5c/foPWaJTT12DeDdEm
	9Ax4rsm0S60ZJUXDLIpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9hBL-0007In-9m; Mon, 16 Sep 2019 02:56:03 +0000
Received: from mail-eopbgr60040.outbound.protection.outlook.com ([40.107.6.40]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9hAc-0006kr-PI
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 02:55:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WhHoErXWkS//J/ntoGUqN/4ngUvEheLoOoONA3SQecmeEPmhZalGzjVI7oOG7jLxTx7JzT3GCy6dYCZUie7Tsxmh3TzQmoLF8NYnRVRKoOmONH4aBeA+QEnFonfVBI8gC3m/zp7uaylcQGlOs+Vg5TqzT+DgVYBl+jjJYDTnefFnnNePn6Hjn4mivsfA7B6xuy0q5gaR3AVxTo7/ad74USnJYH/7myilDKpFPSOUxFs4cEjJz6SzZt48AypXeujgi6SMJbU7vowSDoOvscEpiY97SgQ2OQ5zOSGNXJT+p2jo1/X9wyLTRe1KfgGQNkxLxBjcavpC6c2CSzeOubxNcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GK5B1itasO3wZTjuFJ38gLthB/MLSxDEu66tpqd+xxA=;
 b=PjPyvuysTwm9bvg3bAZNnqzqtiFU6phtFZ5Qxqg65lFRrj0k9bRqO6NJYSu+Brt3SB/5LBrrTo/JqsA3piBoXpGrk43aNV/NKhWQwaPkGEVwddIbxyOnUaBXCHr6cK0nvVMSmz2a1NO3k5aVgrBXv+bpyJHY9xg5Vex3+pPTOJnECBPW66HcyNSeTLPL4zmIPC1bu9PpZQ/sS4VuC4BDUmJD4BfCrd+kjeJyRR8aocWQ3tE2j4L2sJN7xjGMTjLAxbRLDnM1klcxIaV2cMW3yj7A6gVrdnEfvffUvU8fK58/sHnbvZ4X0U3NFJ4tbLemKKoahFcF59X3THTzqaUidQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GK5B1itasO3wZTjuFJ38gLthB/MLSxDEu66tpqd+xxA=;
 b=qBKgZVrCt/D7kuTnqxu2Y6pOoBvwyfCOXRXdNjjV+ApIct0V0Lng2k4bsYzrj7xcXnz3TfoIvD6eaqIhMKpoD7LqnxeyvePkZ7lwmS5BJQW/wtknVFFTRiAFHsaMyuBmwTCPsvBsaYFbPUU/3l+hZCxUVLs3r1EuRmVNDBl81Dw=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3931.eurprd04.prod.outlook.com (52.134.65.153) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.17; Mon, 16 Sep 2019 02:55:15 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38%7]) with mapi id 15.20.2263.023; Mon, 16 Sep 2019
 02:55:15 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Leonard Crestez <leonard.crestez@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>
Subject: RE: [PATCH 1/2] ARM: dts: imx7d: Correct speed grading fuse settings
Thread-Topic: [PATCH 1/2] ARM: dts: imx7d: Correct speed grading fuse settings
Thread-Index: AQHVaRXTS1M3MwR05keYUt7dEQg8Mactob6Q
Date: Mon, 16 Sep 2019 02:55:15 +0000
Message-ID: <DB3PR0402MB3916411027B6F28179010327F58C0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1568256992-31707-1-git-send-email-Anson.Huang@nxp.com>
 <VI1PR04MB7023E48B04999733859F7158EEB00@VI1PR04MB7023.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB7023E48B04999733859F7158EEB00@VI1PR04MB7023.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: db86a233-5d75-4323-f27b-08d73a514d4c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3931; 
x-ms-traffictypediagnostic: DB3PR0402MB3931:|DB3PR0402MB3931:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3931DDF35F01D82CF41C49FEF58C0@DB3PR0402MB3931.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:534;
x-forefront-prvs: 0162ACCC24
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(346002)(366004)(136003)(39860400002)(189003)(199004)(305945005)(74316002)(7736002)(256004)(86362001)(476003)(2906002)(486006)(44832011)(2501003)(446003)(11346002)(4744005)(5660300002)(6116002)(3846002)(99286004)(71200400001)(71190400001)(316002)(26005)(102836004)(186003)(6506007)(53546011)(7696005)(54906003)(76176011)(52536014)(25786009)(6246003)(66066001)(33656002)(6436002)(55016002)(53936002)(229853002)(9686003)(76116006)(66446008)(66946007)(8676002)(64756008)(66556008)(66476007)(4326008)(81166006)(81156014)(478600001)(8936002)(14454004)(110136005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3931;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 8TP/EOmI9Cn1ryIo2wtGY3yMK7xWIfrrNyOz8MgO8DXE5UQahFGpKZK8ZndXSRIVUUZBhgULacSsOsm3svubSK6slZjACAYPoe+xOtYW6q67uqsS06yQAD232d+zNdMy4ogx4AqJtkVSFABeTW3K6F4PPeHMVlLxseZrY4eKznHFd7JiaarUE5YObLHei0kDvS6GpSWOVN5YC15s+Zo5xFZFNpcGgKHqN0fksFLNd7r353g6pXY9tochhXKxDF4oGXthY49On97/OhJcSWGKR7uDsVBdgI+CzGLOFUIQujhJCVaU8Bs+1ulVbz1SA4LgNpn2mTMt6Bbx+4eFCDbLdDIOUW5aQc3F5Ogyec+gLQNTqUxfSw75KyVxeF/lU7mN7zeoayqUEIX1t3LCaokwtvWZSrMT2XCbcP8JB8ILXHg=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: db86a233-5d75-4323-f27b-08d73a514d4c
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Sep 2019 02:55:15.8985 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: W7aBQhsfC3PPvrFxxlpdtpfJyixUrH/l2R9lLzKs/CFn1lZLMFYLyzD891cWJuweEXrPb6sH014QruZG5OX41Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3931
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_195518_999649_9D60F7DA 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.40 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Leonard

> On 2019-09-12 5:57 AM, Anson Huang wrote:
> > The 800MHz opp speed grading fuse mask should be 0xd instead of 0xf
> > according to fuse map definition:
> >
> > SPEED_GRADING[1:0]	MHz
> > 	00		800
> > 	01		500
> > 	10		1000
> > 	11		1200
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> 
> Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>
> 
> Are you going to add the 500mhz OPP as well?

So far no, as datasheet does NOT list 500MHz as OPP, this patch is just to make sure
the speed grading mask settings matches the fusemap file, NOT sure if 500MHz will be supported
officially.

Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
