Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC5E11B6B61
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 04:32:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3V4vqTI3xRAAdbELr2LH7Y6LjnIkDvSFZba1khpBBbU=; b=M1Ze18E3yqDcyc
	SBfgwDBW/bSMImiE2tcjwGGFYRAluLlnPJC/KIvLMSo8G3SuSNDYW521ZuGQXUq8NB/5gIIxaki7p
	BD97wICuHoKsrvnBX0B0C0OddV01eKo+MGFHlskEbDRZBN0xU9zl/8neTfrllSlrnvXDCYNko3yAW
	OQ7Z0I0HQJI4ZjnY5fSbcRb3nfC5d6vH/vB3GH3HPbUAt8WgmoOSerAgRyzTDI2fq7v9un29a3n7q
	pKEmt8kuoa7qVAGBXLIiZ2RW+MM5U4AMZxn/6hb7ZmQTSlvi8pKsIL6Jtgf7Ni3giZ4pb0/p3UpLu
	LDAGBQUonhn3AOZzUQSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRo91-0007ii-6Z; Fri, 24 Apr 2020 02:32:47 +0000
Received: from mail-eopbgr20076.outbound.protection.outlook.com ([40.107.2.76]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRo8q-0007gT-Lr
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 02:32:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b/cuqrpTBxz6VafFJ/7ZV1f9OQyZx2KAeicuVxMNRK56pl+V1ZpBDfrDriqGiACjmNaawJbJOYd9n39dRJzquRe3bcs4h4EXQMbhXDEyCeYccR4rdwRzo72VoaVbyU5ET+HwNLpoSLBQdV/qHp3eYER2Q95Vnhl5lNHo92hnHNEKm97MHN933fkJWN5VCYiddBA7qQZEeXp1HTAgvzzqx9cZigH3m77i1LGgDpdtLMwRpiNtyV/49MDtD2Z+VlqMOv5sbAR6NBLoX7QGSLLg01H1fldrhJhE7LDYi8YT7A262y3O41xvljClt3yW8ulCT1quMDTDeiU1YbfCxrRnIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XvNJZRn3xpk+by/M0EwVen0PJlDAdCr91TR+NRnf+HI=;
 b=Q78aLblmgeZMEDwNUwKum43tG9OCyskpA4u+PcHQRx7n3P2R26nTIYoYLzKcHiDX6EScPojQU8BEQR2rDJmq7KzH1CFVEG9ZKocTWB55HzdDf2lB5rXkEq8IACrKme/AOysTe5zvSYTHmRk7AECYwiKOFEvEaE5TOCENY7l4gvYanFKYqI6472+COPQDbnFJXFSw6lFOPsM5SIseTLt2XheC7ZWlAr2LlWBVJk4ksv4Tae8GnLC1K2dujX2VEhTtTUS1kzLX6Qd/kOl3w9ZeJofTKm1OORigfUnXNXZXNbUAnZf5AvAQw2oBugdFMrSf0F4mvx2NkhJg2ldRbcn8CQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XvNJZRn3xpk+by/M0EwVen0PJlDAdCr91TR+NRnf+HI=;
 b=QvF2URTbZnEvLuOc5kYCsj1tsnfpq1wgxzAd1SPZxui5jktFoPOVChG7Pcc4R6ixJ6imeDHvqo4C0JeXTuC5DMwRyXxyGOAAZ5TcT56wFIv/mvove9k2l/d9wur9ALO+CmIHeJklhLKKgTYhtOvw9mt/Cj+8/pb42MBfuDDZLJc=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB4598.eurprd04.prod.outlook.com (2603:10a6:20b:26::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.29; Fri, 24 Apr
 2020 02:32:32 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3%7]) with mapi id 15.20.2921.032; Fri, 24 Apr 2020
 02:32:32 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, "ben.dooks@codethink.co.uk"
 <ben.dooks@codethink.co.uk>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH 2/2] firmware: imx: MU IRQ group number should be 7
Thread-Topic: [PATCH 2/2] firmware: imx: MU IRQ group number should be 7
Thread-Index: AQHWGcUy/MHx513YSkqpWUZybaROrqiHjXLg
Date: Fri, 24 Apr 2020 02:32:32 +0000
Message-ID: <AM6PR04MB496669637FE86E928B9E0EBE80D00@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1587683231-18468-1-git-send-email-Anson.Huang@nxp.com>
 <1587683231-18468-2-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1587683231-18468-2-git-send-email-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [92.121.68.129]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: bf7000ef-c6a6-4a57-02e7-08d7e7f7be1b
x-ms-traffictypediagnostic: AM6PR04MB4598:|AM6PR04MB4598:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB45985F253267DB91F644516480D00@AM6PR04MB4598.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:421;
x-forefront-prvs: 03838E948C
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(376002)(346002)(136003)(39860400002)(396003)(366004)(2906002)(71200400001)(4326008)(478600001)(7696005)(5660300002)(6506007)(66446008)(76116006)(66476007)(66556008)(66946007)(4744005)(64756008)(8676002)(52536014)(110136005)(33656002)(44832011)(55016002)(86362001)(26005)(81156014)(9686003)(316002)(186003)(8936002);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YGGB6dQi5nPTsuV5gSYbm1N/vnixrdRxpCVeM2qJU8jw7v/JITnFV5IvePoU2Nk1Z0eGAQpzUOo7xOzpPww5q2m4wFc9RKUkf0DuEVanHd/+rlFGzRMxoirDRCumo9vwNme5ayfb/hyQQ053QYDCekkdxbaTUHLSxcCA04djsiLuZX/gjY2HHZVpwOR7/LoR/B2VYO067vKUUMWbesIw7CurMTDUooXowq6kK8dGl5AHv+PppAEzhDS73sVcKJEVwLAG4QLR6fNEneLvATgarcqyxUZXO/icclgjR1uqXvaZYvSuu5+9Jn74+7PrLCa6xkzqpS0rxKgrT8sisLPKmAEjaCtSKqieoH0fxHpw+7KoNrgLLZWTYnLv4HqoWD3koD9oS9u64vXZxaTMr5CnGqA/7db5RazTKC1t1sjCNKQEaz7iih/AVbfJG/pmTz0h
x-ms-exchange-antispam-messagedata: lDB6FBqD2p0cJo4dMhVve0rAnBzgWLGAlYEBc8N7SC4gi6KgCO6hTy12HTBaMOUmo0rNO08LxXKvrxFiqzC2SQqn+iRHpMS++XKK5uAU6EwFVLtMftry0A6TWIVaDmrh6hRoekyrxPNKykpF4Ab8Qg==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bf7000ef-c6a6-4a57-02e7-08d7e7f7be1b
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2020 02:32:32.7052 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xWHw1UhPmlM05UVc2PYqx8YGuFO4ihfLSgt2wnjtIzYD4OIZm7APXSS7XUQ7K9yKzJsO66B/xi4qSRnkYnW72A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4598
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_193236_715300_16D6D833 
X-CRM114-Status: GOOD (  13.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.76 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Anson Huang <Anson.Huang@nxp.com>
> Sent: Friday, April 24, 2020 7:07 AM
> 
> The MU IRQ group number should be 7 instead of 4.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Are we using others IRQ group?
If not, this change may slow down the irq handling speed.

Regards
Aisheng

> ---
>  drivers/firmware/imx/imx-scu-irq.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/firmware/imx/imx-scu-irq.c
> b/drivers/firmware/imx/imx-scu-irq.c
> index d9dcc20..66fef88 100644
> --- a/drivers/firmware/imx/imx-scu-irq.c
> +++ b/drivers/firmware/imx/imx-scu-irq.c
> @@ -14,7 +14,7 @@
> 
>  #define IMX_SC_IRQ_FUNC_ENABLE	1
>  #define IMX_SC_IRQ_FUNC_STATUS	2
> -#define IMX_SC_IRQ_NUM_GROUP	4
> +#define IMX_SC_IRQ_NUM_GROUP	7
> 
>  static u32 mu_resource_id;
> 
> --
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
