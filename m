Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D85B1EDCD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 13:14:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vulZ2j4Yjzw46KtGxRUnxYsXz8LBMul/8rBASamOl8Y=; b=SGKQUjAaqBH7Cc
	TQH9Arsg7NIZH5ChT3LW+E7WruviM9lSHVCUWShlMRj1ZZgS9lJaDqTK3NlVpZBsweCxY4hJN/H9y
	5pX3O1RTAkk2hkS9B7tvrpfjuHg86FmWxFf+bkhgc7IlwU+YAalPHYVu1UClSRAWRIT2e74NgiFZT
	lWY6tptiTWPNIRS5lc+ES70c+92A2ANmyNZfxWNW0smuQrpME1riqANAioD7S4wBqzBPPlsQnDpXe
	gPsEh2zRzvbqcBTO3NRRvgK+KOREqG+RZIcoVK9LJmHriyqYzypguiOy0oQvIGF9t4gBstcW1x0/X
	aIBhs+TWRz/+Q8TjZxYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQrrY-0001Bl-Ve; Wed, 15 May 2019 11:14:20 +0000
Received: from mail-eopbgr70049.outbound.protection.outlook.com ([40.107.7.49]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQrrO-00017n-Ts
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 11:14:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i7BGuuaGOnQc9nBqNlL/Om1S/Ms76Y+ujewO4AU7h2c=;
 b=oXaVrloNKQ4B8a2I5UPJZs9OAGKZWNSYKb+MySAEp257/SnMykcRmTOXCIObO426o+mn66tFJ3O4Zc9aWthmE99yfiGLak6dahylkh1S3uW1wa5yt4OLNHGbK7cSAIf/3LioXrQpe3/J+akKVnNJ8sCE0A/gMGuTZpkdHzawuDQ=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3673.eurprd04.prod.outlook.com (52.134.70.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Wed, 15 May 2019 11:14:06 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d%2]) with mapi id 15.20.1900.010; Wed, 15 May 2019
 11:14:06 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Leonard Crestez <leonard.crestez@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "sboyd@kernel.org" <sboyd@kernel.org>, Jacky Bai
 <ping.bai@nxp.com>
Subject: RE: [PATCH 1/3] dt-bindings: clock: imx8mm: Add SNVS clock
Thread-Topic: [PATCH 1/3] dt-bindings: clock: imx8mm: Add SNVS clock
Thread-Index: AQHVCr2yrHCSJQGcuE+Cdq63vYcty6ZsCLIA
Date: Wed, 15 May 2019 11:14:05 +0000
Message-ID: <DB3PR0402MB39164F45F288EB251D5C10F4F5090@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1557883490-22360-1-git-send-email-Anson.Huang@nxp.com>
 <AM0PR04MB6434DFD7728BD5B105EF2A31EE090@AM0PR04MB6434.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR04MB6434DFD7728BD5B105EF2A31EE090@AM0PR04MB6434.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 70ea0596-93f0-4071-98ff-08d6d92671c4
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3673; 
x-ms-traffictypediagnostic: DB3PR0402MB3673:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <DB3PR0402MB367364FD467C714C023798CAF5090@DB3PR0402MB3673.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0038DE95A2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(39860400002)(376002)(396003)(136003)(346002)(13464003)(199004)(189003)(76116006)(66556008)(64756008)(66446008)(52536014)(66476007)(66946007)(68736007)(7736002)(81166006)(446003)(305945005)(11346002)(8676002)(81156014)(66066001)(476003)(102836004)(6116002)(3846002)(44832011)(4326008)(256004)(25786009)(53546011)(6506007)(14444005)(186003)(26005)(76176011)(486006)(6636002)(71200400001)(71190400001)(7696005)(110136005)(54906003)(14454004)(2501003)(99286004)(7416002)(316002)(2906002)(6436002)(53936002)(966005)(2201001)(73956011)(33656002)(86362001)(478600001)(5660300002)(8936002)(6246003)(55016002)(229853002)(74316002)(6306002)(9686003)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3673;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Ln/s82RfGRvJbVZsY8XVAE9J5rY+MqCGo7Kg/II+VlSWJoik8QFFlOg06ZmHTQBrE78gT03hdfGCtQ4GiZhTQpg9kXw94z2wulqRKs4v0Lr3dBad7ODoLteNGqG2rctbIgMwIdAqUufgabytKPMrKKSrEK/B+39TgMoLM4FbGJmIu+5+E3aIe6ZeTXE55TXUKcez1LWgh8EZQVjXVRlOY47nVj/08iFTnlqbaB8BFP92Cgx6ttxUFrRMJojgIUvlgFVD1tBhaNm1uevoNYY2EG0MGeOSK+GoJXadS3DQPkdFjU3BSASu0Alh4IksJkZd2L5JjZ/8qk9QURwEi22QKnuF4yEbUVJePQb/2rMrLJAikZEoJjshgMbNtes+r07txCcx7IgXMtDg1r5vqEq8el4vKCzIvuAiY3GHTdgV6xM=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 70ea0596-93f0-4071-98ff-08d6d92671c4
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2019 11:14:05.9137 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3673
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_041410_968636_2AE84AB7 
X-CRM114-Status: GOOD (  13.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.49 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Leonard

> -----Original Message-----
> From: Leonard Crestez
> Sent: Wednesday, May 15, 2019 6:18 PM
> To: Anson Huang <anson.huang@nxp.com>; shawnguo@kernel.org;
> sboyd@kernel.org; Jacky Bai <ping.bai@nxp.com>
> Cc: robh+dt@kernel.org; mark.rutland@arm.com; s.hauer@pengutronix.de;
> kernel@pengutronix.de; festevam@gmail.com; mturquette@baylibre.com;
> devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> kernel@vger.kernel.org; linux-clk@vger.kernel.org; dl-linux-imx <linux-
> imx@nxp.com>; Abel Vesa <abel.vesa@nxp.com>
> Subject: Re: [PATCH 1/3] dt-bindings: clock: imx8mm: Add SNVS clock
> 
> On 15.05.2019 04:29, Anson Huang wrote:
> > Add macro for the SNVS clock of the i.MX8MM.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> > This patch is based on patch:
> > https://patchwork.kernel.org/patch/10939997/
> 
> Numbering also conflicts with one of my patches:
> 
> https://patchwork.kernel.org/patch/10940303/
> 
> The conflict is easy to resolve but I don't mind resending if your patches get
> accepted first. If should probably resend anyway to also add gic clk to 8mq.

Thanks, I did NOT notice this, feel free if want me to resend the patch set, both
the GPIO clock and SNVS clock patch series.

Thanks,
Anson.
> 
> For series:
> 
> Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
