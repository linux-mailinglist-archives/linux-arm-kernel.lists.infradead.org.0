Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01AC71086EA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 04:58:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zv98vlNLpB27h7HOjzWQOdSSvTWNfXFV211vUBRGcc0=; b=Vju9EcotxQ2MlN
	HkIuKVEB9E1hQ3I8U+tuCxJBHyEA1LKAbfanL/S3ZZL5snq+Ta6bUxU73ahnvvA7Tyj0yHDwrPp4r
	UN26vs0f4zA0Jzn1aRgLLg0OPacRKJmqINzlhRy1fUV9EuhbVbxjqNNqcGRvgCpVostn2Z8g5lckP
	Awd3z8dx4IKtmU3llFtbybdo0FLRo/2R5YFkBkMMEWRnx+6oBNbAVni4VB97HFjYzKWPHZ4UoCgHz
	kEI778zwce7yt8FgK/3c4LnzAPs7A0lkkhwBdFzxI4kphfJTUWUgB2CjglrlDsiAdKcDeH6keU6Cj
	T0pykF/P41myP2kuevXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZ5WB-0001zO-QG; Mon, 25 Nov 2019 03:58:31 +0000
Received: from mail-eopbgr750083.outbound.protection.outlook.com
 ([40.107.75.83] helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZ5W3-0001z2-2Q
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 03:58:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Tx7JeXjWM9jRpnWXHulwkxytc3vTQn+6Bz2LUUIY9rFTxAa/iChSovDs4P7cSH/nqZNf/PCZekrWymjS1ZFzsQ+3NjDKqjD1bmjh6EBOXE5VBFRyxH8wRK8uH8/T71Kkvnd0jo7xJRQ5S2dUQwY3ZYxU2AWA4K0w2NyCoVHufEqH+Mt9n7SNuKXJ+7nlhcTbnlWmuwONIK0fqeOxbqVAWBaLIRRk8s2xdQiGJb072ROc2HeurRx4pAKi0AMo9gJIIcH5vlewIJLDS6xyVEH5rx//wxsaOugsJcsgVvJhbg68U3Ka7L65HhBaY2JjtOc3S02cb48GrYz7MgVxUoRu6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dqsbP0bNaK4BIfI5jh5tXmvqonm9zCaTH/Ru8C/ebC0=;
 b=J55Pg2XRvqktcQd05bWniuGElDLRFMhj4DPgUG4Wu/rb3MFLzCI9eRVH1b5BxPWXgzoaFfF49Od2hHNXiLwbnr39L3mV1Jjnfp7tcco74WDwHR5xpZ+TT2B7nIwcUd08yqVb1mUFAkQ7Fv4xiwZ6cfdL6bB+TTvOm+LcCa6gLF1Fq4YMvPlvGlLZi9k146wJC1vyMBgGRJ8Pd5Lw7QoVkTgIwmZt9XVTiTWEkmjMsYolT44U2D+aK0vJCFadUbuXQ8aJRRQeX3lO0pxFiP9bLeBkFpks2LHswpRqc0hrzbDW2KbhITsflcaIuciQSa4an75Neu5T1aId/psUBOTbuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dqsbP0bNaK4BIfI5jh5tXmvqonm9zCaTH/Ru8C/ebC0=;
 b=a5Y+DE8J8VZZt6Si23a4+MU9fZJ2B1BQfcJldvhlUntFaZsAtToxvZtO/Gg4/XniB2Y7JmgW8+DplmVTM3310Qn+Ww1ga3SQgH1ej79AKVEd4cI6gB4Lqy7Meehq9tDmlSRd7pJVrPmYu7IQONB42W/GzftOkGN7VMnGc+0oFg0=
Received: from MN2PR02MB6400.namprd02.prod.outlook.com (52.132.173.155) by
 MN2PR02MB5983.namprd02.prod.outlook.com (20.179.86.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.16; Mon, 25 Nov 2019 03:58:14 +0000
Received: from MN2PR02MB6400.namprd02.prod.outlook.com
 ([fe80::c413:7dde:1e89:f355]) by MN2PR02MB6400.namprd02.prod.outlook.com
 ([fe80::c413:7dde:1e89:f355%7]) with mapi id 15.20.2474.023; Mon, 25 Nov 2019
 03:58:14 +0000
From: Appana Durga Kedareswara Rao <appanad@xilinx.com>
To: Srinivas Neeli <sneeli@xilinx.com>, "wg@grandegger.com"
 <wg@grandegger.com>, "mkl@pengutronix.de" <mkl@pengutronix.de>,
 "davem@davemloft.net" <davem@davemloft.net>, Michal Simek
 <michals@xilinx.com>
Subject: RE: [PATCH 1/2] can: xilinx_can: skip error message on deferred probe
Thread-Topic: [PATCH 1/2] can: xilinx_can: skip error message on deferred probe
Thread-Index: AQHVn5uyvnYOjQUpgEOekQq4Dc1LUqebSOAg
Date: Mon, 25 Nov 2019 03:58:14 +0000
Message-ID: <MN2PR02MB640088D5A6812ED36864C55CDC4A0@MN2PR02MB6400.namprd02.prod.outlook.com>
References: <1574251865-19592-1-git-send-email-srinivas.neeli@xilinx.com>
 <1574251865-19592-2-git-send-email-srinivas.neeli@xilinx.com>
In-Reply-To: <1574251865-19592-2-git-send-email-srinivas.neeli@xilinx.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: srinivas.neeli@xilinx.com
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=appanad@xilinx.com; 
x-originating-ip: [149.199.50.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: c2633ec4-379e-4dad-20b3-08d7715bb238
x-ms-traffictypediagnostic: MN2PR02MB5983:|MN2PR02MB5983:
x-ld-processed: 657af505-d5df-48d0-8300-c31994686c5c,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR02MB5983A03A6241BBC2C3F572E2DC4A0@MN2PR02MB5983.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1060;
x-forefront-prvs: 0232B30BBC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(396003)(39860400002)(376002)(366004)(13464003)(189003)(199004)(33656002)(6506007)(107886003)(6246003)(2201001)(478600001)(25786009)(305945005)(9686003)(7696005)(74316002)(102836004)(186003)(86362001)(53546011)(4326008)(76176011)(7736002)(6636002)(55016002)(66476007)(110136005)(71200400001)(66446008)(2906002)(52536014)(15650500001)(5660300002)(2501003)(8936002)(81166006)(81156014)(76116006)(66946007)(14454004)(6436002)(446003)(11346002)(229853002)(99286004)(6116002)(3846002)(66066001)(316002)(14444005)(8676002)(26005)(256004)(64756008)(71190400001)(66556008)(54906003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR02MB5983;
 H:MN2PR02MB6400.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NIFWHqtd6j18T0Hn8skp9c1y7o22q7JUICuZ2tF0X1WVLGwwPthhkU1c+bVLVKiLU/TZPmkLJWamXoYE7VtVKCYttKKLLiqGarnhYjN9UGHBvYlhmtY4pIQ73XLm8flS+mtPZut9FAUYvkZOTe5ixS8d7/qdXzo+B0/7/d0aAkaAZRAWXKqDGoJeoMa2+ONIxmibrKYonBBtMRkTOfK0GqZPOxwAZe0XvnJaSDAU4vsgcUiZ18zQeyP34r2dgX3V414vRt3SIR/F9pnHaRr63ACtBV8D5dOeyw4FUjC3OfwOlc+gv3T9txxKMINqEYU6mqEhZRJgCdKcR+n1CtxDrXQnYialidP6ldCHZ/VBBqDS4J5uspq8tvFgiMoHBbq5gD9g8Cs/zV8BbT4BLYiStd0m0eBV+1Q6PUPH0+k7ovkaZHjC5elLsEUjSIL3p7Y2
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c2633ec4-379e-4dad-20b3-08d7715bb238
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Nov 2019 03:58:14.0371 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BXtq/ChvD3w50W0tSEfRHmd8Cyu05eCZw6Ptb0OfDyu2vgfpleEugfEuqqGbCKIf53YMStxv82rDB2lTDGQ15w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR02MB5983
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_195823_266286_0B4F02DF 
X-CRM114-Status: GOOD (  14.75  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.75.83 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Srinivas Neeli <sneeli@xilinx.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-can@vger.kernel.org" <linux-can@vger.kernel.org>,
 Venkatesh Yadav Abbarapu <VABBARAP@xilinx.com>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>, git <git@xilinx.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

> -----Original Message-----
> From: Srinivas Neeli <srinivas.neeli@xilinx.com>
> Sent: Wednesday, November 20, 2019 5:41 PM
> To: wg@grandegger.com; mkl@pengutronix.de; davem@davemloft.net;
> Michal Simek <michals@xilinx.com>; Appana Durga Kedareswara Rao
> <appanad@xilinx.com>
> Cc: linux-can@vger.kernel.org; netdev@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org; linux-kernel@vger.kernel.org; git
> <git@xilinx.com>; Naga Sureshkumar Relli <nagasure@xilinx.com>;
> Venkatesh Yadav Abbarapu <VABBARAP@xilinx.com>; Srinivas Neeli
> <sneeli@xilinx.com>
> Subject: [PATCH 1/2] can: xilinx_can: skip error message on deferred probe
> 
> From: Venkatesh Yadav Abbarapu <venkatesh.abbarapu@xilinx.com>
> 
> When can clock is provided from the clock wizard, clock wizard driver may
> not be available when can driver probes resulting to the error message "bus
> clock not found error".
> 
> As this error message is not very useful to the end user, skip printing in the
> case of deferred probe.
> 
> Signed-off-by: Venkatesh Yadav Abbarapu <venkatesh.abbarapu@xilinx.com>
> Signed-off-by: Srinivas Neeli <srinivas.neeli@xilinx.com>
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>

@Srinivas Neeli: Please send v2 with improved commit message as Marc suggested, feel free to add 
Reviewed-by: Appana Durga Kedareswara Rao <appana.durga.rao@xilinx.com> in v2. 

Regards,
Kedar.
> ---
>  drivers/net/can/xilinx_can.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/can/xilinx_can.c b/drivers/net/can/xilinx_can.c index
> 4a96e2dd7d77..c5f05b994435 100644
> --- a/drivers/net/can/xilinx_can.c
> +++ b/drivers/net/can/xilinx_can.c
> @@ -1772,7 +1772,8 @@ static int xcan_probe(struct platform_device
> *pdev)
> 
>  	priv->bus_clk = devm_clk_get(&pdev->dev, devtype->bus_clk_name);
>  	if (IS_ERR(priv->bus_clk)) {
> -		dev_err(&pdev->dev, "bus clock not found\n");
> +		if (PTR_ERR(priv->bus_clk) != -EPROBE_DEFER)
> +			dev_err(&pdev->dev, "bus clock not found\n");
>  		ret = PTR_ERR(priv->bus_clk);
>  		goto err_free;
>  	}
> --
> 2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
