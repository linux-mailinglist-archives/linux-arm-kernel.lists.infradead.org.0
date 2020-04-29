Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FDAC1BD93A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 12:13:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JJO9XNg5a89faU+eFBRVmwwiuC8df2UaiIR1A+Ae3cY=; b=KdyaUbWr2K/lEd
	X6gX6hfO0waiD6CsQKlBK9MYMgmFLDNglnKzkaD2EHvCun80d0cbhEUwCUgBaJc/S1S7xBNmiptsT
	r7cNYduMd4j4sopJ9EAhdJHJUzWN6816xtYvrV7EIurnILZ0uXG/pN59fI8FQJQ/TX6sIygA5o7Zd
	n2bryTi1qwN7l3ooKcOOx9uYQII1HXfF0YuLQ+ru4c80F96lfCknVX6k1mDDfDe32YhW/qdU1XUmy
	lEd8DshMJOezApLwl2BCQcDD4Oz9zSYNirGjoKD8Tz0KQXbDx4ZP3i7Mvk5S3ofRVuaTCgA4S42MX
	g+EY3O7FOErzsZKkxe+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTjiR-0000uK-U9; Wed, 29 Apr 2020 10:13:19 +0000
Received: from mail-eopbgr40067.outbound.protection.outlook.com ([40.107.4.67]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTjiH-0000tE-DC
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 10:13:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KLeg9jBE5NXjRvPcqrSlkxYF1gsS4PLSbU3y3b6RsN2HkAwPb6wki5lqdAeF6kEja1M+9pamIuAUTjIBty3r/xY9xWhIxjZZHXW46hx1joNGNUt3+PRG0+Zi/YiDn/Zdb2ROD1OLK22b0qQNvAiWqG0OIyWEEOFi9BUbpf4DkgzDJ9YNFH/lVIVYIQ+0KfKKwEFP5PLjo73gsx5QFntdVx3AjDPIta+8EpvyMpNz/Rbpc4xPDYS5pHdBAGODIxvq3dt+2b0yuFa2El4VxFs9YYLaGIFVqAkH81prrN7XcuJ9Ig2Q1cptFeM8ww/PuQZAIlkGMphFlmKcdFLHb8O1CA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kAUNEgp3TrIYJJEeYe6qlCP1rTH0JbXPF+dASCSsV/s=;
 b=m7aPmTP8R48yWnVPm0H488aXJ9H2Liz4pCXPIzhQRLSFRj8ZssHhbyKriT5duw8woSOXiydsDy61r29t7LP0SKXbKFvrWmh7bYZnAhkdsQIHXg5x32c5GYJX/104hd6jtHn490FIBjW0QWe0EtpmP7iFJ0Q71k6fljlPd4IVzKRyGHZiFFWMZoPKggBzLtdsfD6gByIUMPnUNwosRig0lLHLQ0FE/hjpK+l7gMlD7hYsz2dW0YUM1036e3jKbzauUizeHsZZOEC5X/8fGQUufQ6XzI6JOQebJVwr48h4i16dX3lLZvunX13OCbb6LZ9kn3H7nCeDCk5/r+Lh5GPzNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kAUNEgp3TrIYJJEeYe6qlCP1rTH0JbXPF+dASCSsV/s=;
 b=NMFjGHXT9Ik+6+LYbMRd9ys4BlBxzfrxnkmSrXbov0TT5d91kWNHkRZJyyCpxeXRcBO3ddoDfXI6B7wsuVOIXXwS+K8zqFoBNevnBpnrJq1qYcCE4jJivmcDmy4PsrI77EbeR9SrzgMYo69f7rBDBTl3lX3PvqelRwDKWyykZ8Q=
Received: from DB7PR04MB4972.eurprd04.prod.outlook.com (2603:10a6:10:1c::11)
 by DB7PR04MB5033.eurprd04.prod.outlook.com (2603:10a6:10:16::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.22; Wed, 29 Apr
 2020 10:13:02 +0000
Received: from DB7PR04MB4972.eurprd04.prod.outlook.com
 ([fe80::8cb5:8821:ad1a:7f6e]) by DB7PR04MB4972.eurprd04.prod.outlook.com
 ([fe80::8cb5:8821:ad1a:7f6e%4]) with mapi id 15.20.2937.026; Wed, 29 Apr 2020
 10:13:02 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Andy Duan <fugang.duan@nxp.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Subject: RE: [PATCH 1/1] arm64: dts: imx8mp: add "fsl,imx6sx-fec" compatible
 string
Thread-Topic: [PATCH 1/1] arm64: dts: imx8mp: add "fsl, imx6sx-fec" compatible
 string
Thread-Index: AQHWHg47YrygX0mIJEOxLhRnMOvDo6iP4TZQ
Date: Wed, 29 Apr 2020 10:13:02 +0000
Message-ID: <DB7PR04MB497216070F792503C6A8DC2580AD0@DB7PR04MB4972.eurprd04.prod.outlook.com>
References: <1588154654-13684-1-git-send-email-fugang.duan@nxp.com>
In-Reply-To: <1588154654-13684-1-git-send-email-fugang.duan@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [92.121.68.129]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 7bfab5f3-994e-46c4-cc51-08d7ec25e6cf
x-ms-traffictypediagnostic: DB7PR04MB5033:|DB7PR04MB5033:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB5033043DBD421334E5FC8C1E80AD0@DB7PR04MB5033.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:949;
x-forefront-prvs: 03883BD916
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB7PR04MB4972.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(136003)(396003)(366004)(376002)(39860400002)(110136005)(9686003)(4326008)(55016002)(54906003)(6506007)(66446008)(66556008)(76116006)(64756008)(71200400001)(66476007)(66946007)(4744005)(26005)(5660300002)(7696005)(316002)(186003)(86362001)(478600001)(8676002)(2906002)(8936002)(33656002)(44832011)(52536014)(142933001)(32563001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2+rmoV7W3kO9Q2z9smip50DX7voCGEVp+oZ2F3pZofjXo/TuJ2g/DKlrE9TBLNYh0H5wKZCb2B11iMOgbLypLyRjH/qzD9Z6593RfEK+JPu3WuHYCVAKrnJBIm2NpGns5ZEGogCAD4AThM1aF4nsnVV7JWZ8t5MOUAtyWcr4FP2x2+idks+io5KobiPlp4Q5AI7rdHbrBXoZLBu/gymoGiSyVjP5F6j9Pyy5kLV+yGdqWOiLr7dKD7xMX8AFIPhnjx2l1wDbq2GkViBvYRPD8/6Teaxoqb9vM8cwpyP95o9ZhqFjCyL7PPgyuIzlyMQTaq3mF45yJqPVWVn2aWOsyBVo+KVn5UkWSLdooLCbuCjeP0BUOwMABjmkcYdZQz+X8UgeuwGwPHEgVxFP8lXI7tNzXtOL8a+anfstLDpHO1IgyvB9Mhev+U5WlF8wA0SoXVYVy7OD+ExyiCfih2Pj2+jE3oL3cMm/QS7XBKjRUqxam2eNiXxqGHCwinPJ6gSIeBbK98nviscFKIYlvAJZVA==
x-ms-exchange-antispam-messagedata: NZEHwZKPe3JOCdxvdtHuhKsyvmNPI+4GV2QNHllcVZynE8z3u7RPINudl447oUvTDYkdkdMZATOshF6GrfE+JMDZJNclz0fLieQTOGJENRFqF9rS/iSm39pphVRZfnUMte2V+3U6bKQCxKXXb3atv2+JtGH8bp2ngHFbJN90bOj5p0Uk6JEsPryNqaacU9ARChLp6Uevzp3rmUKDOWuST5mIxnpCpj0V95b0SoitEYA4+1QpVbm4mJZniBOqOM5aDqQHKy1HupHqIoOKtj+BkQPAm0QfmCxwZqKLTTrUXDmwSI8WulKZw/rK6KIjafyixWFSesGNWIqmdJwl7dHJIWIZpkanNzUgDk95ePBQ1EfDvq1lBT/m5jIgTXlWEqgAsB961lEeqMSIDFbQ9tI8cZNqGY44fFdOXZ6lrHXfK4iWe3ZycazaeaSTpHqsZDduBBOR9tisDOl8vg6gG01u/AOcCkJbIBg1B4hS8Po9FpeC5GoQHQwuNPGt9D8IxXTOYkkB3x2i5FNClUvIDqX4+iRh4KU9RaaSGZwKsce3lxfY593QRes7h7XqB7uAP8BOD2f3hPWNbsOqBDVtiQWYm9yqEespmiZ8ue3kSfqp/Welln3ZqZTIyzZX6LsU3LtVMKlypUGISY3O8f39f0YAiNaWjT1WFVyqOHf7nM+WNWIgAU/1gstXRagqNR31GJlcfHhBj01jETEXmj1ZNPtqvoPTxwfXBH3wAwIvrs2AYEmFyR1fFRQpQmxxBVCx2kC8gUX34uaPIfQVuQjmFTuXtSWM6cRQMhdTEwm723xedEA=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7bfab5f3-994e-46c4-cc51-08d7ec25e6cf
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2020 10:13:02.5158 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YECx4yaO9KjCbZce7zmt/GRTpi5fmZ72CcC49IjkteZNPS0VSAzTtaffl7NeINFf0MXgOhU47enUWJvdbWHMYA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5033
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_031309_451038_94B75452 
X-CRM114-Status: GOOD (  11.64  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.4.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.4.67 listed in wl.mailspike.net]
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
 Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Andy Duan <fugang.duan@nxp.com>
> Sent: Wednesday, April 29, 2020 6:04 PM
> 
> Add "fsl,imx6sx-fec" compatible string for fec node, then i.MX8MP EVK ethernet
> function can work now.
> 
> Signed-off-by: Fugang Duan <fugang.duan@nxp.com>

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng

> ---
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> index 9b1616e59d58..b5df957c5063 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> @@ -615,7 +615,7 @@
>  			};
> 
>  			fec: ethernet@30be0000 {
> -				compatible = "fsl,imx8mp-fec", "fsl,imx8mq-fec";
> +				compatible = "fsl,imx8mp-fec", "fsl,imx8mq-fec",
> "fsl,imx6sx-fec";
>  				reg = <0x30be0000 0x10000>;
>  				interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>,
>  					     <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>,
> --
> 2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
