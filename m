Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F0281620A1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 06:59:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rx9LmqX/+UEQOBZkWQgFBmRKKZCvNX6F8zgbPZ0GApQ=; b=pCZUzJzrd0Mog8
	Uf21yIunTA/cs//3Zr94j/gv0zQSmtgH7Ux1SPBMCfVeyBhmKxFqjnK2GfJ9iBbCojp1WwLxdj3Ej
	zyuqpDtSBEsFkA4WGMgSBcyW/knDUfLppfJKu/xwWgpBhJW133ytX1shg2XvIhs0AeRMPNEJvQoQD
	zZeIgJxt3EQnYaUjs0KiWleygmnrRLDqT9tVBUeBKTERFe5gSJzPMG1C5hHRr4gjoQduilqURXUYS
	FGgOzZaMlYnuIcNHXSWylTJl+YRuL+Q3PzFLyAVE4tZG0RZSRk5ufVTbfZPZ0IhF3AB/rQNuZr8ek
	JBvAmKClpWJgCiJItFtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3vud-0002ou-7C; Tue, 18 Feb 2020 05:59:15 +0000
Received: from mail-eopbgr150045.outbound.protection.outlook.com
 ([40.107.15.45] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3vuU-0002oJ-L2
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 05:59:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ST1XD4Z5UXT9L0Vo/s14XlKnsZiux2kETQ4cFgz/Hq71CJ7dQ58FfklBM65gFopBnpvGc0lgU0FRTqtW4O2kpzlEstB34JlQ3556xTs3/2JUKINwczJiTZU7UvTyWqCKmD8xXJfBuK7bucw04BJtJUrL02F5L/9Ay1XQOAW6EkpHGHKYZdPzri86V/m/LQI+/og1j7neGAfWtMCI2C7rMCN3upItoxVMeYORb0XX2Ery1ZsHtdSUwoqzW9qnw3YjR7WEaunsCN5eTxSZti4N8omQnKRo4VFsT0xhm4S8Sc5TQZKCEhJG1R+NIutqVPBFBDic/EbbdTxwYpplN/yf/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2yhIZ7IzKmnXbLJ1d0gJZNg6seoelNCUTg1d5AEtiV4=;
 b=W6hOWEbEXPz0HbP+bbmpaDXVc0pO4OQDYpx2n9bDAQikiFkSizI3N/JiyL9+E7WyAtjHgqgzhvLIAPIKP9Ek1o6xxxJlPBusKA6aNWIuJeERbfSE5j5NcrKQ9cB28yZpwShY0AAD5eyd11UvYsfnLnc8CMQTvGIxgz+x57+WKpEoXBTCIV5rXXpXo2A+hS+3kJup/l6tnOy2m+UN+04j3fpjTi8uoW6fr5fHNAenxxvyTg5DzXJIxRsyW11rkVbymZ7XQksXZ0uSiF3NNt4zJlA2vpP/lTuSbEEd2mfrkpDEN4C+MzOJylr/9y+utITXkaSlGyf8gYWgHLuXBdlk3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2yhIZ7IzKmnXbLJ1d0gJZNg6seoelNCUTg1d5AEtiV4=;
 b=gS5H2IhZWsWiCtJ7CMCUcfn89kbIOC/iBmIy6FroceLmdBnFtKay8cfeToVT0WcOj1fGu68PDmxRQYwpgjt0XLzFhuK76ZTzGVMQBzl5pez0Aw6VaVTm79J7I4LkB7YG9uZSRqnfnMrCeA8AH3BEOXMTxq838XFhRQTm392P9Tw=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6484.eurprd04.prod.outlook.com (20.179.255.224) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.24; Tue, 18 Feb 2020 05:59:02 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2729.032; Tue, 18 Feb 2020
 05:59:02 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, "agx@sigxcpu.org" <agx@sigxcpu.org>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>, Leonard Crestez
 <leonard.crestez@nxp.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] soc: imx: Remove unused include in gpcv2.c
Thread-Topic: [PATCH] soc: imx: Remove unused include in gpcv2.c
Thread-Index: AQHV5iBRqFnrgW/qQ0yczkbDA6XARaggdHxg
Date: Tue, 18 Feb 2020 05:59:02 +0000
Message-ID: <AM0PR04MB448194F2C0E2043661556C8588110@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1582005089-23767-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1582005089-23767-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 846c25c2-63e3-4a99-42c0-08d7b437a78b
x-ms-traffictypediagnostic: AM0PR04MB6484:|AM0PR04MB6484:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB64840E8DEE2C6F35DDB5B7E688110@AM0PR04MB6484.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 031763BCAF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(366004)(346002)(396003)(39860400002)(189003)(199004)(52536014)(86362001)(4326008)(45080400002)(33656002)(478600001)(2906002)(6506007)(71200400001)(8936002)(966005)(44832011)(76116006)(186003)(26005)(316002)(110136005)(55016002)(64756008)(66556008)(66446008)(66946007)(9686003)(81156014)(81166006)(7696005)(5660300002)(66476007)(8676002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6484;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yHeMA2NT04OyHYncnHAo/D9czd2gQI4T5jmFaMBfc9JOTErHgnMl1EbaDUvCC+E2py50hLTxxmfRJ5u+eNA/Z0p/BArfL33j4XtzuOcGUegD+OHoygC3cL7sZgLwg6Tkf4lf8ppYpgKkfTRPB7KjgbJlmP9h4Jg93VLyj1brHlr8QEiisvbEqtZ/yFnkvgmOm6DO+ku4feeGHY8yisjvA7LLjVNQVG/l7cWo2AmtbDaxl4t1qSLIBrcyXMs9inaF0sqEdBUJq+djZ0h9Bok7DFPfJltqOw4USRYgb/5QEjB0YYIuGm/5K+QHZlinOw1xBdNHZW5n+T8TBDQb3ys4T1w3vZ7io8KdfkG3z//JlXjq4iLY0DrgTJ2RpKtzyNN5kUSIYjevhWYtV2T5/fFpYnVMnVf/dtfaWZat5B5bt38dtp/iXz9PlnxMbufufKe2goUO5M3OnXTswnHcL7m1eda1loY8GhRUl0l62tybk4wuN6LNTvhoOUFCEl2N1bnoFvPey+2nELRAVfowx+zQADlsoj/pBbkg74S80mbmvltQqClb0Mx3rJtMoo0QhlW/VF/x0B+gAhiq31N+h24xLg==
x-ms-exchange-antispam-messagedata: 9Y4uyZ6CIqkdghZobsafDJz4BdIIifaB6BJ96Je/Z0TEAvXNXylM8gFf01q/7nJhPxc6T8C39BBybCczCsC0R7yRIrct3k/+ZTCQAQDg8xoNsYM2ERBtwTeFCYaRMzqQYowMwZeTwYDEF41N8JmnCQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 846c25c2-63e3-4a99-42c0-08d7b437a78b
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Feb 2020 05:59:02.2667 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zxakHPlgJaODkRQ96sscN9Ts9hGA4EUq5FMvrVWvUzsq/ZKFQ2q9T1XsswXNTYOxPk8VX+O03tkRGl4XQH5L1A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6484
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_215906_753255_6131E101 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.45 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: [PATCH] soc: imx: Remove unused include in gpcv2.c
> 
> There is nothing in use from sizes.h, remove it.

This is needed when moving to support COMPILE_TEST for
soc/imx, please keep it.

Thanks,
Peng.

> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  drivers/soc/imx/gpcv2.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c index
> 6cf8a7a..b0dffb0 100644
> --- a/drivers/soc/imx/gpcv2.c
> +++ b/drivers/soc/imx/gpcv2.c
> @@ -14,7 +14,6 @@
>  #include <linux/pm_domain.h>
>  #include <linux/regmap.h>
>  #include <linux/regulator/consumer.h>
> -#include <linux/sizes.h>
>  #include <dt-bindings/power/imx7-power.h>  #include
> <dt-bindings/power/imx8mq-power.h>
> 
> --
> 2.7.4
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Flists.infr
> adead.org%2Fmailman%2Flistinfo%2Flinux-arm-kernel&amp;data=02%7C01
> %7Cpeng.fan%40nxp.com%7C0101da7d79d34d01963008d7b43773dd%7C68
> 6ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637176022563909614&a
> mp;sdata=bGqSvUHqnMcnkkvYQwyFNaxUEsPFWNpxjc%2FPcAg0wl8%3D&a
> mp;reserved=0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
