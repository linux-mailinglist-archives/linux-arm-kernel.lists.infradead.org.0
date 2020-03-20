Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8827418C8F8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 09:28:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pglwpp7mpmJj+2SYzizizLj8qWBJQ62Y/uJTqGCBLoQ=; b=gdy5yTaU7xM5xq
	83fXgGDMd02FAeZZOUF2L9yCEAOir0yW3RnUU9mG3LEqo+guEd+ib/CAJdFt6wtkTi2IZpS02LrdI
	+b9mWpBjDO/6iPWiyp1lvcN1zBFDEA6CQN6aTZNaagMk6QBJUeWB2W063GJwvqZtFgmZHVMPsLPr/
	oaR1Hq89TZfGZ/OLpXbRDXn2AE5klslNoRb1kC4KaedI22ALV43emdcUZX9lmbqNqBxJD8TkIU6AI
	uL1tZCtx4QoTqFG5VriyDHgTEfPNbgUiVreNKbvHKPDgBITomut4OOVRcCzyc0f0FRsGST8sdPPr5
	T4wP814sv9K8oYKxNIwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFD0Z-0008Sj-TL; Fri, 20 Mar 2020 08:27:59 +0000
Received: from mail-eopbgr150081.outbound.protection.outlook.com
 ([40.107.15.81] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFD0S-0008Rq-CK
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 08:27:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HctYyvl/daw6JTBioJE86WbSIKFNlJBnqaERGRBf81t/cNus2rT4saPxHQ2BYDvVgGszwkFClGap6FZ4jdYf+d27xS8Z7rjIxDUMKO527J91VdMbH/ZwihYamDTonEWS3wtBEGSectI449Fb0Z8KvGWxYAycWM3blWTI17XHvTbOemeILNEiurbmaA/4vExo+bd+iJcaWSPIWVOJsWI5p5BBetDBtx3atfBCuGhjZ481FYJ+6vOu0amVj/ORsNLKxuZbBXn3y9iMxE+Rp1AupRM9V7vbdEc//dh9I7jM/r7Pj3VyBZ0P7IxUAtd3X0JlIZb/dUsQz450IDLsJ8s4+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R4Qvids4YIGC+Xng6E30AP9lfJMQU1IN+afC3qAtQtY=;
 b=Pk+ugyLp/RUCQx7+6tgHDGfd6ZqOfBc4odigu76ZJ0UJhaWNhRw+SeO5TC7622D/jUqwCo765iAi3PfV8UTtphc2u5XmLrpnyi3uTEVnruBb4cFC9ThdqQGJzuUuqETWPqsi193N1OOVVxycMW/PkrxY4pWD+HOJ2N9De7f7sauxmt1fAvY7yjEOPnyiI8/0eWEvwBY4UbMuQO98FsGrerv566wr7T3GvrAZ7K8tDV5ZQ1+bG5xeEorIy9cij+/HSX8VnaKkvLoQ/a693JTJXK9QvOs8GumOlzxDnpJQoiTGkIWqL/N3wBR24TFlJXSMuOCHEjuODzX197cIyPe37A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R4Qvids4YIGC+Xng6E30AP9lfJMQU1IN+afC3qAtQtY=;
 b=PsAGq2FC/7DJnmA+HeDOf0GLiEVs1AbeUROTzY9toj4H7Pl4XuJSqeFdeWDPnn9v4OrJ7eayzO1HBR2XufpUaave1RJxT3jNLBofwQZZwtk/MrYkL6XNG8S+onIAz2U8ie4OFWMgxGCAA+UPdIggvLqOIdHmXB+1ifMDV2uB1R4=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4609.eurprd04.prod.outlook.com (52.135.144.153) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.18; Fri, 20 Mar 2020 08:27:47 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc%7]) with mapi id 15.20.2814.021; Fri, 20 Mar 2020
 08:27:47 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sudeep.holla@arm.com" <sudeep.holla@arm.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>
Subject: RE: [PATCH V5 0/2] firmware: arm_scmi: add smc/hvc transports support
Thread-Topic: [PATCH V5 0/2] firmware: arm_scmi: add smc/hvc transports support
Thread-Index: AQHV9U3Qw/Abi3aPd0Wpj3X8/OF3VqhRN+vA
Date: Fri, 20 Mar 2020 08:27:47 +0000
Message-ID: <AM0PR04MB4481F673F90C735F272C171F88F50@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1583673879-20714-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1583673879-20714-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 21d9c2c5-1bd8-4a2e-fcc4-08d7cca89228
x-ms-traffictypediagnostic: AM0PR04MB4609:|AM0PR04MB4609:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB46098A4E1C3BE474095B584B88F50@AM0PR04MB4609.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2887;
x-forefront-prvs: 03484C0ABF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(136003)(346002)(366004)(396003)(199004)(86362001)(52536014)(6506007)(44832011)(966005)(55016002)(26005)(9686003)(186003)(71200400001)(7696005)(33656002)(2906002)(110136005)(8936002)(54906003)(4326008)(8676002)(66946007)(66476007)(76116006)(66446008)(5660300002)(64756008)(66556008)(316002)(478600001)(81156014)(81166006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4609;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Y62BUhUaWv00Ou6YEXKITVJgNHeJAJYzlkE8BLrVDTgcpi4F86jTI67Oi8jBZ9OgQVtwDF3qrLFCHfAtO4sqfAye49ALXnPAlD8bsxWuWqOeD6eopLOMAc8+5Hu2faJoP5xpiL9coDtCQ8oUNYlTzGdMsh38jVe6ql3/TNljgkt17brxzndC3H6HzEEH9NPR5ZHNLZC38/mdZJA2D1OsbY1KLziNlSyGgA0shroUvAfKEj1IEWsUIF3IBLmxJ+8U6p/Ey78pSQBZkyCLX/uWgvycIGk3GqlMydkI9b/wkeXuiHm9eeLbX7aHtKd2cbPkICO4W+4D08pjsekeVrE4cBI5a7aVvcqRH+vOCW0nAB85ju/6UusXzqLOXohIFcaYz1pBMpxoqDwF+AiRjlfYq3LtIznU+ckJT4RzTgfBuxk+w9YmWApnSO0L/tvBqC5y0Pm33qdFl53qQtPgYXbNzwUA1Un4a8pV724x2cZgiJEpNLjGKGVq5rFyynGbUVdlzAMMFC83MvnfQBCWpSVDzw==
x-ms-exchange-antispam-messagedata: YEiYcphiLfBW0dkRmG3XS0qNSSZaFRvsRPrdU/iOylWhCK8MmaDRh34VxnP00L6ADN8v3IxJlarFlSP9BzjHou2f00hhb6Jq216177zbIJJ4r+0K7lmgCooCVCQuSaZ1SZdqKN7AMx/hPzClb6XWHg==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 21d9c2c5-1bd8-4a2e-fcc4-08d7cca89228
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Mar 2020 08:27:47.4266 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 84p0aQa8D1GJk6CfEld5EUZVz0AOXFX6jpZlR2wujZawPn1YcvsLYyezqSzyEh7ReDqkrPBtwG7UqqfyMowEFg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4609
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_012752_496719_4FC815F2 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sudeep,

> Subject: [PATCH V5 0/2] firmware: arm_scmi: add smc/hvc transports support

Are you fine with this patchset? Or You expect multi channel support?

We have some features depending on this for long time, so hope smc transports
could be finalized sooner.

Thanks,
Peng.

> 
> From: Peng Fan <peng.fan@nxp.com>
> 
> V5:
>  Add Rob's R-b tag for patch 1
>  Add mutex for patch 2
> 
> V4:
>  Drop prot_id in scmi_chan_info, since not used for now.
> 
> V3:
>  Add back arm,scmi-smc compatible string  Change smc-id to arm,smc-id
> Directly use arm_smccc_1_1_invoke  Add prot_id in scmi_chan_info for per
> protocol shmem usage.
> 
> V2:
>  patch 1/2: only add smc-id property
>  patch 2/2: Parse smc/hvc from psci node
> 	    Use prot_id as 2nd arg when issue smc/hvc
> 	    Differentiate tranports using mboxes or smc-id property
> https://lore.kernel.org/patchwork/cover/1193435/
> 
> This is to add smc/hvc transports support, based on Viresh's v6.
> SCMI firmware could be implemented in EL3, S-EL1, NS-EL2 or other A core
> exception level. Then smc/hvc could be used. And for vendor specific
> firmware, a wrapper layer could added in EL3, S-EL1,
> NS-EL2 and etc to translate SCMI calls to vendor specific firmware calls.
> 
> A new compatible string arm,scmi-smc is added. arm,scmi is still for mailbox
> transports.
> 
> Per smc/hvc, only Tx supported.
> 
> Peng Fan (2):
>   dt-bindings: arm: arm,scmi: add smc/hvc transport
>   firmware: arm_scmi: add smc/hvc transport
> 
>  Documentation/devicetree/bindings/arm/arm,scmi.txt |   3 +-
>  drivers/firmware/arm_scmi/Makefile                 |   2 +-
>  drivers/firmware/arm_scmi/common.h                 |   1 +
>  drivers/firmware/arm_scmi/driver.c                 |   1 +
>  drivers/firmware/arm_scmi/smc.c                    | 152
> +++++++++++++++++++++
>  5 files changed, 157 insertions(+), 2 deletions(-)  create mode 100644
> drivers/firmware/arm_scmi/smc.c
> 
> --
> 2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
