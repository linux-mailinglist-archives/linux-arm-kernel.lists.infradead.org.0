Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F92B1B6B6F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 04:38:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GycS3ln5bFkuThqS0+8XF86btwRRZSul2RsJBoPl9vY=; b=KaHM1TJTiiXUil
	6tpfeZtiYmhbqTLQ0BizFpsHXifjqUaW7Og+d9o6Ds0oxK9r7NWJjpxvnP/670b/3c+eDdcjlV5rD
	1+JxvcBQITzBQ92wEWYr4Odd/9fQC3/PqTrHmGI957ml9g7xNi6AIwwnNZ9+1k+5SnWHGOJmJ6eMW
	n9PppDlcBhSmmw+N0W4Lalb42yx2H44S3SrEm4LfGII33eMgQyB3HhARSdPsIeSVy0qjluosUDSDm
	BMT1FiOFy6mUamhlRwpFi7FmiInpP4sfQjAGdKCCrroKMcsyuYzZQQeCnu0V3+eCuAGR24aAgd0WD
	L7q6irZu25x/41WU1BQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRoEM-0003cK-8x; Fri, 24 Apr 2020 02:38:18 +0000
Received: from mail-eopbgr130042.outbound.protection.outlook.com
 ([40.107.13.42] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRoEC-0003aR-BF
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 02:38:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V0PkR4ardmJOHJpvbj6UkRulayP5Lbb0oDQo61C/wzjYFnPyIOj+masSUzRmq696wOFC8yL5X7CnbRIRGUUQUKccsXs05U9GtkkySYqgnfPbZjDG8PlUGZ56SuXntkwENhN4SkeO58i8z1HOkqeucHi7WryuptrGnGgZQ3M5fHPVaNnAHeSFzS8fdFM2tvUzdUNzPlbQa5WshxSYAsPpXn3vVmekcaTzB5w0kzRL2DtLSIublU0GwNhLHkGKpf1Z8bTjsWhn2eWoz4ETIO56AnurS8/FA9iXIgKuCSK52fp//P3NmblsgpdoS31GNewY1uhIRP7wC4E/U3SHvqlbwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hzOAP0XP95f0wqp9u+GeMLzgkZnISNpLIYzB7c6vCeQ=;
 b=i73oOmwvNPtz1vTXpfeIhaj1CwR4dijRqUSA7F3xRDdzwB2Wkzi+ENMpFYh1IGi0jGyH3q7neQMJu4kyF2BsqPw0GxPeFEw4UlQZzGAZu3m3WytvM8LgUGkSPxTCJBtHTd4j/5n0KG/0MaWn/qqezCFT8cu5MmpTzfCDU8izP+jktkZqp8ZQe1oaZq2TRiuLXZyJ9f/6c2c5OcXu/jBv10RAFEE2wS1u6zoLIyBT3iz6JfgOGcjQGx/7GQUEqKvZUmu76v5ILvmDSIdJkkvhzKngePocxRRrKbPzYA1qZ5pnFVi/DnpM4z0E8MH4PtxMkf0hl1nuojeSsc5GJ/d3kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hzOAP0XP95f0wqp9u+GeMLzgkZnISNpLIYzB7c6vCeQ=;
 b=N8ZCMRVZteWFd60gz3slKyr8J/731xnEmCE9xFzWyNJMkTY4d5ZjNdc5dT/OLkIbjpeEwGQDqhtzKyu+HUBYJwkAmaNceOivGzKLgAtIo37pLaq9D3HP262jufKRIJWL9yayFJc1SNkDAHkk/B7aQytM/UI2rospejEIBXkNtX0=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB4598.eurprd04.prod.outlook.com (2603:10a6:20b:26::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.29; Fri, 24 Apr
 2020 02:38:04 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3%7]) with mapi id 15.20.2921.032; Fri, 24 Apr 2020
 02:38:04 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, "ben.dooks@codethink.co.uk"
 <ben.dooks@codethink.co.uk>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH 1/2] firmware: imx: make sure MU irq can wake up system
 from suspend mode
Thread-Topic: [PATCH 1/2] firmware: imx: make sure MU irq can wake up system
 from suspend mode
Thread-Index: AQHWGcUyYFyr/9xk10y5Z68uwTj2MKiHjxag
Date: Fri, 24 Apr 2020 02:38:04 +0000
Message-ID: <AM6PR04MB4966BF03338718776465D90680D00@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1587683231-18468-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1587683231-18468-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [92.121.68.129]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 71efb847-17b9-4bb1-8960-08d7e7f88391
x-ms-traffictypediagnostic: AM6PR04MB4598:|AM6PR04MB4598:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB459827FED219C61F8442310280D00@AM6PR04MB4598.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1417;
x-forefront-prvs: 03838E948C
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(376002)(346002)(136003)(39860400002)(396003)(366004)(2906002)(71200400001)(4326008)(478600001)(7696005)(5660300002)(6506007)(66446008)(76116006)(66476007)(66556008)(66946007)(64756008)(8676002)(52536014)(110136005)(33656002)(44832011)(55016002)(86362001)(26005)(81156014)(9686003)(316002)(186003)(15650500001)(8936002);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Lei3ZMarTjftkYb4988a4oDD/qZ6UHl21RgiBQNDt1l+66LQMpG2Yb82ldHoJsTTRV26EEJspn153esXOEDcPPEDhppDs2gklJjugoad4YIPnm1Ef8v4idjDPoWg0Hda6lmLwDJl3MAH2s4ApA7WOyxXoARDUrWIQTjbDGUhlZMR/i4s+EgxinDwY60zqNb6L+AANA2UH2dM5hlk1ro10bdYr6kmSFXgiVcNxYerg0+GCFinQot7sL+OBrRePsMdhQ53k6d3UjDCWXfpbTLhpgK/9eQhRR8k9QiTd6tJYl7KPPziNllqHlkMIgZ+dp9UrosA7a9poXVd17WBC615i4rVOr2UKT6PsFCOu2zpSsg/IBZPPU2cjMQYpag3l+t0isvoJP5D56ati9u+LXKLFQB2oqjZ34ZwjzP7TDqsPwiGhsL9a5TVC2j6Zn9JP6ms
x-ms-exchange-antispam-messagedata: Uv0oFtWCCF0OE2bF4ro93wbUksMb5SyKICkI2uq4tVidigO6cQjIky7ZnOK+/uUkwIDh33am9TSNzRDCmu0LtqVOJfY2ZTVV1MbU7OCf8rpCYfIs8ZRqKCJ7O6l3PwiMLehz/muAsu7b76caXNDw2A==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 71efb847-17b9-4bb1-8960-08d7e7f88391
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2020 02:38:04.0570 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eIH1mk2EzFnT3X9IS9eufknyBRUotACs8CvOCNuzj8ambCKLxGK2avUNxHIG9XvUy5mYqkoaLqSC0kA9KwlVYg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4598
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_193808_387079_B99DE28F 
X-CRM114-Status: GOOD (  13.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.42 listed in list.dnswl.org]
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
> IRQF_NO_SUSPEND flag is set for MU IRQ of IPC work, but with this flag set,
> IRQD_WAKEUP_ARMED flag will NOT be set during
> suspend_device_irq() phase, then when MU IRQ arrives, it will NOT wake up
> system from suspend.
> 
> To fix this issue, pm_system_wakeup() is called in general MU IRQ handler to
> make sure system can be waked up when MU IRQ arrives.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng

> ---
>  drivers/firmware/imx/imx-scu-irq.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/firmware/imx/imx-scu-irq.c
> b/drivers/firmware/imx/imx-scu-irq.c
> index db655e8..d9dcc20 100644
> --- a/drivers/firmware/imx/imx-scu-irq.c
> +++ b/drivers/firmware/imx/imx-scu-irq.c
> @@ -10,6 +10,7 @@
>  #include <linux/firmware/imx/ipc.h>
>  #include <linux/firmware/imx/sci.h>
>  #include <linux/mailbox_client.h>
> +#include <linux/suspend.h>
> 
>  #define IMX_SC_IRQ_FUNC_ENABLE	1
>  #define IMX_SC_IRQ_FUNC_STATUS	2
> @@ -91,6 +92,7 @@ static void imx_scu_irq_work_handler(struct work_struct
> *work)
>  		if (!irq_status)
>  			continue;
> 
> +		pm_system_wakeup();
>  		imx_scu_irq_notifier_call_chain(irq_status, &i);
>  	}
>  }
> --
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
