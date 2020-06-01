Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB54F1E9F6D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 09:43:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zncwjZPQ3geHenpjSwXQscQxTve56RgvnIRyxRvDaDk=; b=Lq8PXYDxC4+ssW
	XFskGtZNtHqNSvqxE4GJsshb3q4p0rsSqweam2uTy/3vY8LVK+t9f2t5XtFaGd8+5oyQB2NYkGEVF
	snEB3Civ27IndLMfRy2mW6LTwOwrMQDH7BpUPbE9EKxRafzB8J/Jtn1kJ7GyAQx8WCWuXT2FCidld
	juD5jOG61tuAAC6s14mSsG1rWu72ZW4Cnb/pJ3XTVNNxz1/2R8o3Kg2nFjdkX8Gw+ZTixlBmpVVYw
	5L770ryhFSHnHHUs4mH3AbQpN7panGkgxSb0aGc2NeXbcWw2/UzNiiQlbUC4Lcx1BHhPKpl4TE/Jt
	NmXro3VKDloAd3oOsSgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jff6s-0003y7-D0; Mon, 01 Jun 2020 07:43:50 +0000
Received: from mail-eopbgr10050.outbound.protection.outlook.com ([40.107.1.50]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jff6j-0003wn-Fp
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 07:43:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QTut3K0klCc/prrnLFhyguAewnpBsKtKdwih6nctXsjdguEBlVE75FMTiqGgX66j3lkR/VseQUWbsUnh7TU6cDy7feFg6PW+7T15MEvznBXw6QxGy0toRygC7AFko6k/9FmPbXIqbHeWUJm3t7ktP5VULpfR+ub4AYQg680q/WITC+FptFOXRerKnCV3NzVcFttk6vMIrE3x3pF6JjW7lceAFvImyCJj3fsXWp6BjWnTBbTt+oV7/QdbgQE6Pauh6Fc1eKYTqJOqqPvtcmmKoc2htV8J8NlSuKnmOi/t1XlEpJRSD3v67SlWWzaaUJqyN7kJ5EAuzBPGAsGHDBRbYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RoK29iLef5lr99A9FfnGNN8n024RREy+zWVfGJNg2I8=;
 b=Y05nqmZM5pZbQULEOhTlxGp9nxLvseh00+QnUwTQCX7U2G/YFjbiNntZkzvekaVGdbD47sQgvFCEjl9SGlt7gY6m3jbj767V9p4Z4Rv93QC/6MOwZmVgcHlxuoPVlOJTmEcUKknv9Fw2McpL54HQhOJ8t5A3Ao51UQwEvR0XD/rIDHr861pL38d9VdisLHXBDFC+ktAcyA5GYASuAGAo22bF98B8uutj0peFBPvdClycneMpQxhIyLH/wOiDDx4/jYvqg3qWBAxve12SVxuFNT0w+mxB98f/4UbJZxRplOKxxUlWNJnDDFWu+eMjw326iYP8AU9XOb3OF+b6CzJREQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RoK29iLef5lr99A9FfnGNN8n024RREy+zWVfGJNg2I8=;
 b=C4f7EYczKho95L5gjzJFGXwO0BZxzZefOZo1qraXuE4KBmLdUTxxxlAAc2gbsaVQjbLBV6lfMjs3fECFNQCXM0JcmdfgWxW3MvYzh+psaAboNVI//2ChpEU9L82NNMcX7J7BzHzuoBP5N5wqBixk5C+JonxRALQgCFsL7N4VbBY=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB5160.eurprd04.prod.outlook.com (2603:10a6:20b:e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.22; Mon, 1 Jun
 2020 07:43:36 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3045.024; Mon, 1 Jun 2020
 07:43:36 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 Fabio Estevam <fabio.estevam@nxp.com>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "sboyd@kernel.org" <sboyd@kernel.org>, "linux@rempel-privat.de"
 <linux@rempel-privat.de>, "jaswinder.singh@linaro.org"
 <jaswinder.singh@linaro.org>, Anson Huang <anson.huang@nxp.com>
Subject: RE: [PATCH V2 1/3] dt-bindings: mailbox: imx-mu: support i.MX8M
Thread-Topic: [PATCH V2 1/3] dt-bindings: mailbox: imx-mu: support i.MX8M
Thread-Index: AQHWN8hCZjmk5RkUXEC5rON2mzz/bajDYM4Q
Date: Mon, 1 Jun 2020 07:43:36 +0000
Message-ID: <AM6PR04MB496668011F3AB2BEEEE6D1E1808A0@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1590982999-7149-1-git-send-email-peng.fan@nxp.com>
 <1590982999-7149-2-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1590982999-7149-2-git-send-email-peng.fan@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 3458bd1f-1301-4715-3956-08d805ff7e3f
x-ms-traffictypediagnostic: AM6PR04MB5160:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB5160E97D65F65EC753ACC8BA808A0@AM6PR04MB5160.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:126;
x-forefront-prvs: 0421BF7135
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 35lsrjIvMARJuuuTYjvU+6plaWCjFiQykfoFvuhpmR41vCw5ezK9EuG2X4dERIMM7Z5cQ5ktSyZl1js4aAawshFuslJ9zQi5/zGbzjtKEoHWfn82YFa0DprVpXW/5fOHX7ocFEU37gZgRKD01hbptEaG0tg0DfzK9bMfrAdqoewBf/3ADHOMzriHIXLdSeZPFUuWgJXKdZfTGOo0O9AK5+TXHwY6RCPLfzbNVIsuX//ddyi38cZGsU4D9svnOqvWLMJmWqrPO/lcoxy/bU4Diw15GRpzCpzaz7+PA2AHI1v/ybWDqe9pauGR/5oBTolr6FPjTrMMykjIk3Baz+Vyd4782J88iPeyn/Ui7uZkHvLXwZJQ7X3aKLBqbtcx1Oyh
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(366004)(376002)(346002)(136003)(39860400002)(2906002)(44832011)(7416002)(71200400001)(76116006)(66556008)(64756008)(66946007)(66446008)(54906003)(66476007)(5660300002)(186003)(316002)(110136005)(7696005)(4326008)(478600001)(26005)(8676002)(9686003)(6636002)(8936002)(86362001)(55016002)(52536014)(6506007)(33656002)(558084003)(15585785002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: YCZ7DHOi8+e1aG/5go0/txCatjgJR13pvSgZPeopz0RfkzqbEYnCYfouSQfhu42m9ack+DQMOeIpiVxrmYjlAV12r5B0awrJ1kgbu/iSiSMZRGRcuWyIYTx5Hce54nrFvr0SVEveB4OJ31DID+CsyPY6Fgqa28yCDY+EtJNzH4hAZ+Qb5ujVTrQLpGkZOwijL4yzoOwxWwktEow8X/VvPZfBpPuTK5ua3HwGuLzPXXuNDdXexHVCLIqYXhLCs0HetUSzQobf6CEF/rvSo2hbNl5F4cfjoaNti/Y+TbcBXM5Ed4wa0pd9zwcxAHhLY5V/l/lsgSa8o9x9nRgsCiIT/HHgQ3sNv+jGxJOkf3cPJNvrGbw9ymU39Z6IS9zk+J1zWmrGLoQFEocpAZUDC9Np3Lc4N2MqlylQ47qBeROjqTR4TnaVVCL1bxT0FvV83Emr90KkGqvWwF/k8bLostMo4rPPuZYumpgNzLyhlvY7z3U=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3458bd1f-1301-4715-3956-08d805ff7e3f
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jun 2020 07:43:36.4897 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3zc7nyYFLA2EAEPZIErSd+do/HBTwPobwlmHTrCC7IaNvGurZWRAN3xvhvVOzHBTvZDdIDz/YiRKNTCCQ5P6sw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5160
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_004341_612805_58A3D9ED 
X-CRM114-Status: UNSURE (   6.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.1.50 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.1.50 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Leonard Crestez <leonard.crestez@nxp.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Peng Fan <peng.fan@nxp.com>
> Sent: Monday, June 1, 2020 11:43 AM
> 
> Add i.MX8MQ/M/N/P compatible string to support i.MX8M SoCs
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

BTW, Anson, 
will you continue to help convert MU binding into json schemas?

Regards
Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
