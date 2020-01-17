Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 614D61403D2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 07:10:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=G8zUJqnhRX7tutXmR72ZUM2PcOxQ75gTbIBS9yUJGGk=; b=cp1oz0G6EMddjT
	87Md9IbWntILj0OytumczA6xcxDhIrQGLPeIKOdt2EN0Z8xmarY9/Rs++jTUOGRwBVMcDBs2UnSm/
	V4Tf7pcp+jq3gOtjeJ/qU6riTr640qxxfMq7P2NSC92UEbyxGZbWOwNCpeqdu2csHaxdc27YHuUs3
	4X2wDSX2c/O7cvW20HZjycRLvJrFYt2A6H4SRZfQ8Ay5IzVI5F8u2TP3AMo+6qK9G9KrnpGJ947FU
	IoHL3Iyelz4qw8xaaJX93mlFATOP4yRTb0Cq2D9+AVyN5INf+P63ndyPiiTxxxKISk0oEyMt8Z0bQ
	wAQRyZWgBzYs4PVOXYkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isKpq-000449-RI; Fri, 17 Jan 2020 06:10:22 +0000
Received: from mail-eopbgr80071.outbound.protection.outlook.com ([40.107.8.71]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isKpY-0002sc-0D
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 06:10:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fDAoWeI4o+gduK2ydpfUsaFGXw2WWrfoGdOkWF6R7UbPVyaLIP5YmrpZh+KjxQ+TjOsDVELLZzsujL+yERAnJU5P9pD2TwEnhVMM1RYNuc7fDx03gdlWc+87ZBh4g1OS5HepBiKkJS67p5k8e/6GKlYcKuAXLr4ZKF1abOX/Fnl0WKj45fY4ZQeojO2k20gaA9j4Elvl9rZlIFvXNz0PsNqRBjM1xhMrnVgkxQyu9xC9OZgJEaRlfMGg6cVwKQGEiVsdhQMm3qHkxvqAwNu0Prn7fVvppmiipmFJiE3wlCmpxhp2rKddzIMvEE2cehBrVuVD/Ut+jkMJk6XO7pjqcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=krEU1WMTaCd6aWUb7IZWkt+zlbNLRbHPqg8zKdDrLkw=;
 b=MB7EYvedEurCpbw/X6v3Fdu8HuZiYOlKLK4Kx5AX8dpRGXfg5gSXzqpduYBYJ+JXHOc1DyqOMWB1t0EGmJxPD7EgOaQ9/H7XEFUWb84GhdkNJHTN+6g90TS03qYZ4jG3ZcQ+5/B4NwBexJNIKz1UwUh/HZn6n2c3iWPv31++9sOur7ETbu/UxqCpwCbvQ+NXFxssTtR28f5Y0QoYf7zzosKDw53Ks3EkzNdQcwANF+uXnkQFgUSLwm3OfRUsRDfRS6qDcwaSd2LmPJ5osfnfQuz4TvbgFs5ninud+nQz7l7gc3QC6cjNnIkb68rTOK5bjWSmDeB2BKrCH/KCQ4nAeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=krEU1WMTaCd6aWUb7IZWkt+zlbNLRbHPqg8zKdDrLkw=;
 b=hhW8sdBV/5Ys3cMir2WHx1Im5pjfTsglxeobuupT/jIVg/J5U63HSvHdjCxNZp+d/h9VTH1bEuxGKOjFnFlKqkfAe92TxGN4aLXjotqZ9J3itVRPw4g6A4QmWck3nTSA5M2WBye/fY1cttmxtOALyYJOZk9rzdRYRTOunDy7nn8=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB4841.eurprd04.prod.outlook.com (20.176.232.219) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.20; Fri, 17 Jan 2020 06:10:00 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::5cb4:81c8:1618:5ca]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::5cb4:81c8:1618:5ca%7]) with mapi id 15.20.2644.023; Fri, 17 Jan 2020
 06:10:00 +0000
Received: from localhost.localdomain (119.31.174.71) by
 SG2PR01CA0102.apcprd01.prod.exchangelabs.com (2603:1096:3:15::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2644.19 via Frontend
 Transport; Fri, 17 Jan 2020 06:09:56 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: "maz@kernel.org" <maz@kernel.org>, "jason@lakedaemon.net"
 <jason@lakedaemon.net>, "tglx@linutronix.de" <tglx@linutronix.de>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "robh@kernel.org"
 <robh@kernel.org>
Subject: [PATCH V6 0/2] irqchip: add NXP INTMUX interrupt controller
Thread-Topic: [PATCH V6 0/2] irqchip: add NXP INTMUX interrupt controller
Thread-Index: AQHVzPzAinimUXRRJkOyca2IU2HYbQ==
Date: Fri, 17 Jan 2020 06:10:00 +0000
Message-ID: <20200117060653.27485-1-qiangqing.zhang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-clientproxiedby: SG2PR01CA0102.apcprd01.prod.exchangelabs.com
 (2603:1096:3:15::28) To DB7PR04MB4618.eurprd04.prod.outlook.com
 (2603:10a6:5:38::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 5f039d13-a926-462f-d747-08d79b13e295
x-ms-traffictypediagnostic: DB7PR04MB4841:|DB7PR04MB4841:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB48411181C09C9657C2BCEF75E6310@DB7PR04MB4841.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0285201563
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(396003)(366004)(376002)(136003)(199004)(189003)(1076003)(5660300002)(66446008)(6506007)(8676002)(478600001)(81156014)(81166006)(6512007)(6666004)(16526019)(186003)(2906002)(36756003)(86362001)(26005)(316002)(110136005)(54906003)(8936002)(6486002)(66946007)(71200400001)(64756008)(4326008)(7416002)(66556008)(66476007)(69590400006)(2616005)(956004)(52116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4841;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jKn32lrME+D/JTAjbmF4UurGHKG7hS2weqBhbC6lPHUla5eld6zce7kovqvmTIrCMb9+TGVCHuarIR/4cuOnBVikNX1F8qQl1F4a2v7PHY2bKRuAdCz+AK9ZBAS62XkQ8xLn8JR6lmKXF73RPWdW9rT6EUm5zca6exNIaH9OwalGCoaadippT2E59vGinwABSYAi/HeTQcp5OjbFONt0n+i/yzvZXqywpetoM6WIUqD5+SDG6MPdW9oujZeGvjUXnvetX/vXXKVYSSvphcKIYiYiWQw18X1JRR6xTskZ2fqfj4RPx69AApokKnKbXjfj3+9TvQMQICmcP62ngwhpN3K92k7kUP0HnvvP0tJA0kmgRE7y0+uZxnHV9BpLuu4eOSWV+FPXM6m3PIItPdxExDZ/mtxnk43GwxQUaYxklX+xQ9e0fhuoC+7xwO9UEu35L21/OroLUxBytWKAJ5Z0Yxv9nK8kfyY2mYJjlxfGDkSHPRgzx709CPa0SzixWiJf
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f039d13-a926-462f-d747-08d79b13e295
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jan 2020 06:10:00.6867 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MY0lIT3SnOkb9zVarVP31Y8+/2Bo0P8KUXAHQWFfOq0yExXGCuB5qJC7pF8m9hj52ZwzqhC5khJFBP0B+KWosA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4841
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_221004_060303_4FEEEA03 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.71 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Andy Duan <fugang.duan@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch set adds driver for NXP INTMUX interrupt controller.

ChangeLogs:
V5->V6:
	*fix DTC check failure from binding file.

V4->V5:
	*get number of channels by platform_irq_count() instead of
	'fsl,intmux_chans' property
	*update binding files and remove 'fsl,intmux_chans' property.

V3->V4:
	*set IRQ_TYPE_LEVEL_HIGH flag in .xlate callback.
	*fix comment format.
	*use an intermediate variable for irq_domain_add_linear().
	*disable interrupts before enabling chained interrupt.
	*disable interrupt in imx_remove() for level interrupt.
	*convert binding to DT schema.

V2->V3:
	*impletement .xlate and .select callback.

V1->V2:
	*squash patches:
		drivers/irqchip: enable INTMUX interrupt controller driver
 		drivers/irqchip: add NXP INTMUX interrupt multiplexer support
	*remove properity "fsl,intmux_chans", only support channel 0 by
	default.
	*delete two unused macros.
	*align the various field in struct intmux_data.
	*turn to spin lock _irqsave version.
	*delete struct intmux_irqchip_data.
	*disable interrupt in probe stage and clear pending status in remove
	stage.

Joakim Zhang (2):
  dt-bindings/irq: add binding for NXP INTMUX interrupt multiplexer
  drivers/irqchip: add NXP INTMUX interrupt multiplexer support

 .../interrupt-controller/fsl,intmux.yaml      |  68 ++++
 drivers/irqchip/Kconfig                       |   6 +
 drivers/irqchip/Makefile                      |   1 +
 drivers/irqchip/irq-imx-intmux.c              | 309 ++++++++++++++++++
 4 files changed, 384 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/fsl,intmux.yaml
 create mode 100644 drivers/irqchip/irq-imx-intmux.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
