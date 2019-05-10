Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C920D19A81
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 11:18:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6SHRz7ywmehf+nMXH3tcZeF+JxJ9zKzFY3D5r7ER2iE=; b=Gg1t48kGeZbWUT
	f93sx3Ko5OahHUPIUl9ruJzIg2sWex7emwA1ck6WlOiBaHFk6nqxigSDT+nX36Y/w2AHXWmVQGh6/
	eZpgJubc0kHFICCf+q3dKbqzXERJwKCxIsMVB2meZQSeQSIkXdWZs5bd6ZQMWQn/S0hGUMRVaF9Tb
	NBwtgH8KR1PUO5LkvaRpmAIn+vV/Q4cXozuHvYPDqs1LCQ19BOjKAuVxKPYQ/xgIC0VoAjOC+XMUd
	GcsOWbBOB7/rtejlcHk0L8v0lam+Kve71gsJRjnitVjuLwsn1xFeML+xbpEhbhwXXdxiTTFVi2eyl
	kK1xRbpgs6w5t2khTaEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP1g2-0008GS-AE; Fri, 10 May 2019 09:18:50 +0000
Received: from mail-eopbgr80077.outbound.protection.outlook.com ([40.107.8.77]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP1fu-0008FO-J5
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 09:18:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hRiDv4jD5A7jbsbBGmD3Svw6RVjD33Kjb7JlfNReCh8=;
 b=J36L1B27uiiaN3QGwqHWO/RCtVc5PLaoGZ/OC0hFvUVvbC0TgwWPxnUznEHWlmrs+EOOYTKYdspT6vjwbo7ssx5w+Us5I+PrxKkw+ZFjDARipyDjwNNLrG6h/bXpOL0ytLBowG3v9Zgi9YBxIc6dqhoZn8AX4a9Xb5nGzhSMH4g=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB4419.eurprd04.prod.outlook.com (52.135.152.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.12; Fri, 10 May 2019 09:18:38 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13%6]) with mapi id 15.20.1878.022; Fri, 10 May 2019
 09:18:38 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Leonard Crestez <leonard.crestez@nxp.com>
Subject: RE: [PATCH v2] soc/imx: Read imx8mm soc revision from anatop
Thread-Topic: [PATCH v2] soc/imx: Read imx8mm soc revision from anatop
Thread-Index: AQHU+4rIT/ijyv4jiUSPqAI7rf6iRKZkE5CAgAAXvOA=
Date: Fri, 10 May 2019 09:18:38 +0000
Message-ID: <AM0PR04MB4211D7C44635B611E088B678800C0@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <95ae35956d5488989833e2287f3c6fef55ba2aa8.1556212347.git.leonard.crestez@nxp.com>
 <20190510075232.GH15856@dragon>
In-Reply-To: <20190510075232.GH15856@dragon>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 48c14c24-b22a-4c66-d83d-08d6d5287ccf
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4419; 
x-ms-traffictypediagnostic: AM0PR04MB4419:
x-microsoft-antispam-prvs: <AM0PR04MB441953DE020FF9F88F020ABD800C0@AM0PR04MB4419.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0033AAD26D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(376002)(39860400002)(346002)(396003)(136003)(189003)(199004)(53936002)(14454004)(11346002)(4744005)(7736002)(66066001)(66946007)(2906002)(478600001)(71200400001)(73956011)(71190400001)(64756008)(66476007)(66556008)(66446008)(4326008)(55016002)(9686003)(76116006)(3846002)(6116002)(256004)(6246003)(6436002)(6636002)(52536014)(316002)(102836004)(33656002)(81156014)(54906003)(476003)(25786009)(68736007)(86362001)(229853002)(99286004)(7696005)(305945005)(5660300002)(76176011)(53546011)(6506007)(81166006)(8676002)(44832011)(486006)(110136005)(74316002)(446003)(186003)(8936002)(26005)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4419;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: bQkbnFSoms/8VQ+nSC5Uz3YIxm0Ch83gWFn7WWx+TajVUz8b78IGAh2VAUtiZVG0M0Cf8hfjvTTo4u0FKvVJ7hqL4vYNzLMBdTNZi1OchoYKCvc6i/PvjuWHhOLG/xYRWmvC5xaU0dnsdBKAn1zIkvJyvsTCyiQf8D7LAdmb3ev2lp9ynEIYKzZo5PuT1ljUxIIOIsAzBDn1V47KF+3QK7suCyMQjdiS09Kj6dAXAaCufeEiwW/Aod0x+zfxdxEioFezQGeiJGTZi4eSd+D9M/nfjwIN8Ux74r1FCvV0nWqIsGjQ2jQZpNssNGYy3s95/xOhmcMVHQx/JFcCMO3ZAPpIV6lBChslnKSOfVzzUsD+CxUnaTaalg4otgSGEWuJXSLpdstb/riUj1OEPoXXnSaYdicHcanb7PMRjMbCuyc=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 48c14c24-b22a-4c66-d83d-08d6d5287ccf
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 May 2019 09:18:38.8338 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4419
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_021842_824422_8519FBBB 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.77 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Shawn Guo [mailto:shawnguo@kernel.org]
> Sent: Friday, May 10, 2019 3:53 PM
> Subject: Re: [PATCH v2] soc/imx: Read imx8mm soc revision from anatop
> 
> On Thu, Apr 25, 2019 at 05:17:39PM +0000, Leonard Crestez wrote:
> > Like on imx6/7 we can read version information from a register in
> > anatop, and in the same format.
> >
> > Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> 
> I do not apply patch using base64 encoding.
> 
> BTW, we use format 'soc: imx: ' than 'soc/imx: ' for prefix.

We're now trying to fix it with our IT.

Regards
Dong Aisheng

> 
> Shawn
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
