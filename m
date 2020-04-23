Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE89F1B5EDC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 17:14:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0EkqCl/2GBJtLRivZstNOxCyk/GJP5uy3p2lQ+hyigE=; b=iQJACvGcETwPdm
	2CJ/GzDdrFU1GjJ41Cuz+M5iNaA9kc2tkrOkIT612JhDC+cpaVV/qL5GG4gwq4q9u3y3xKCU7wvfz
	x91wYUCNkrXBJardJJ7/dnPhf+61QXVpu2Mk37q4706R5ojjpYbUkab3NJqm4psTMAuxSmtwJ7GvO
	kbDViZySHTEjEt705GW7RwFPAFtfTKESJE+5zx2Ug9+qlltiC8hffaYzDGjOCHseCQ5d1UKgqKtj2
	NNTXOaHaTLAQsEto2B/fRD5C/Cq5nsz+Fe9TcpIK+j3LCtGeEmqGZxMOwS+fYKC6gNTNJPQD7VLVX
	4fJDShXI8BtiRkUECXcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRdYj-0007WZ-30; Thu, 23 Apr 2020 15:14:37 +0000
Received: from mail-am6eur05on2056.outbound.protection.outlook.com
 ([40.107.22.56] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRdXv-0007H0-Iw
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 15:13:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lfa0IK6xH94nJW1hecaAd0nSPsBdWcy5rsLukqwAI1kM100J17s/3+UjuZBgDi3u9G4Kl3HIhEqqR9z7G5HZvKo13MA58IrvvKoI/ijpLIgfhUkrJEYU6u9d8Nbxoonrl/3lmFFGo8HS5U3wgNueMqRDIH9Te3FejpssJdqZwlHzCVHeau9OJ5gJOdRQezKGxDph2e1tKb/Es1r6ALtnrDi0+6ncIvp8m+XEt/ngNADfeuD9b6GzM0WmSQ/RuCWW0MC0Qw+/1S34LdcaBG1pZls2r0CtP9L38D3vZH0aqxw+CasWlmV6/w09RqXjERmptN3tcX4ReWBMHT9+WNvBlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NfKMt9U54UidDZNSYbwSfk5TSJFD890lozB5/YerqB0=;
 b=M0SlX/JjjhAOGnXXnVekmIOvusCk3L7N7woLHzA0Eko+TfRHqif0B/W8R4ZAezbla204i8f6gRlpnzbQSfhUbkpckVFcCCtOgHo1+2EJbuMqm5SYn27POwedlf252noSh402BxFRSGT0bSUOFJsiif98xZxGP8/c/FRG5xDvsOdO4nLWor7nOhZSnv4E4Hg0Cxic1PbV+cLb2veQzmenV9AHD9gmXX3U1iK3xjzS93ZecboreBEIV3T16PCksIdaErraPl8omoj4d4RSdvHjsj8J9ByWhcomOGr35mhCwinWzkoeV98yJOaHdRqzzKhT7qjKs0lgyVZpqqWNaBe+7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NfKMt9U54UidDZNSYbwSfk5TSJFD890lozB5/YerqB0=;
 b=Q3d4rXOVcBMcCHfwDhQxna8/RoDteQDQZBWWNNcv0cKtnh58h8jzsHINGflLtbjaR31B1uiXPQE20aShtL6tnHYoe6btOzdYImBghbTCmIRrdSgHTtKKvb+RjzbEyeE34P1JGyWb0Gjwz3qbfBVQZaluX2odxlqaEKUDemIlW5M=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB5288.eurprd04.prod.outlook.com (2603:10a6:20b:5::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.29; Thu, 23 Apr
 2020 15:13:44 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3%7]) with mapi id 15.20.2921.032; Thu, 23 Apr 2020
 15:13:43 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, "rui.zhang@intel.com" <rui.zhang@intel.com>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 "amit.kucheria@verdurent.com" <amit.kucheria@verdurent.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Leonard Crestez
 <leonard.crestez@nxp.com>, "linux@rempel-privat.de" <linux@rempel-privat.de>, 
 Peng Fan <peng.fan@nxp.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-pm@vger.kernel.org0001-dt-bindings-firmware-imx-Move-system-control-into-dt.patch"
 <linux-pm@vger.kernel.org0001-dt-bindings-firmware-imx-Move-system-control-into-dt.patch>
Subject: RE: [PATCH 2/3] firmware: imx: Remove unused include of
 linux/firmware/imx/types.h
Thread-Topic: [PATCH 2/3] firmware: imx: Remove unused include of
 linux/firmware/imx/types.h
Thread-Index: AQHWGXikllCxH492tkWmUtYS8ArEHqiG0H/Q
Date: Thu, 23 Apr 2020 15:13:43 +0000
Message-ID: <AM6PR04MB49667E0135A0675CC5ADE1EF80D30@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1587650382-18586-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1587650382-18586-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [92.121.68.129]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 15ace320-ecdc-4485-2087-08d7e798e9ce
x-ms-traffictypediagnostic: AM6PR04MB5288:|AM6PR04MB5288:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB52887F1E33D687D310E01EE080D30@AM6PR04MB5288.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1850;
x-forefront-prvs: 03827AF76E
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(346002)(376002)(39860400002)(136003)(366004)(396003)(4326008)(186003)(4744005)(8936002)(5660300002)(71200400001)(8676002)(33656002)(52536014)(9686003)(7416002)(478600001)(2906002)(81156014)(55016002)(6506007)(26005)(316002)(76116006)(7696005)(66476007)(64756008)(110136005)(66556008)(66946007)(44832011)(66446008)(86362001)(921003);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gxddJABAXmUFpNFmGQCGJ0TbNxQFzMmMWABA6434CPaSL314FpxDTxwX9YP8B30G2z7OEUY0FszTNH5hpmM3N5nt9BbFBPeJtwEw3KIhRUCnfImh9ByPOOnIz9q2VoKGYkSBxbYM4Rb+xi8pjHtLXffWTdevM7HOIRha8vTy2s549PL+jEMAHVuM9gcL2DGW2qfFPm8KUqo/iDDA+wM/L8DkEJvNtfSdovWjFzXP+ZNZyRRuth7CHSLT/I0YzQOUzI6h1+xzj6G37EL94g0OqXQME9Cq2RIgS15KEbGKNh0FHEdWLAu828AiQuqp/uAb/mk3CgCqAsWY4ADoqO0p65iPxKVvlAAzPSmjoY00mHmw3Wj51vzuW79nPLGr2jekN2YUPEnj0SRQpsHF/7mLQnsR0jyqf9yki6rPY0rWKUAE4R9jMfWSiuFgoP1Ebqh3KqE3mAoSrQPET+2Pvan4Ir9HZQFLrhj4RIMvTvOxltE=
x-ms-exchange-antispam-messagedata: WScZD+nEp7fAs7fthusdcOG5dvRU1joXlMJAbfIVz41hidrL7/BS5tX4SpgOT1rXIDKLs/mzTNYZBpLvbndsZbeVQ028hWP3UpDTgJT8QHiwhkJn/S39og+Q+J6TmAwlXllfxYEIuEUweS/UUfSHWA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 15ace320-ecdc-4485-2087-08d7e798e9ce
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2020 15:13:43.9380 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ESjMqJqzvJhNYK8IP8hnnmIeKFkm+xLDb7raqndpZwAgPewAh5Rw8Zv37FV/ZtudokiPhoV5SNScbEy6jmTDsw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5288
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_081347_623007_DC5C1B25 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.56 listed in list.dnswl.org]
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
> Sent: Thursday, April 23, 2020 10:00 PM
> 
> Now that linux/firmware/imx/types.h is removed, remove it from the include list
> in imx-scu.c driver.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

You need combine them in order to not break bisect.

Regards
Aisheng

> ---
>  drivers/firmware/imx/imx-scu.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/firmware/imx/imx-scu.c b/drivers/firmware/imx/imx-scu.c
> index f71eaa5..f3340fa 100644
> --- a/drivers/firmware/imx/imx-scu.c
> +++ b/drivers/firmware/imx/imx-scu.c
> @@ -8,7 +8,6 @@
>   */
> 
>  #include <linux/err.h>
> -#include <linux/firmware/imx/types.h>
>  #include <linux/firmware/imx/ipc.h>
>  #include <linux/firmware/imx/sci.h>
>  #include <linux/interrupt.h>
> --
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
