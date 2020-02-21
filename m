Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CD44166C56
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 02:30:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kd53ewNbY4Gi0OhW0cbchVegkxpjVJHxrDcvnrL7wv8=; b=EoJy2UbmwbtlP4
	WY6bXppoupdh6yK8rssol5OnIBvxEBJkW6hRqqgOfTcax0WEg9VJTGHnXi/oS7FsyI/VLot7LvOow
	gxOwLIPFCZtjnIwpEifvYIK8Ks7kGo5vroFdJL9JBKjEn0326ewVgbJUnjQ/rGglf4RlO42VxiK+u
	c2ldpWM42x6/1TXm7DMRMaHC/PEErD7aOlHf+HqjkZuva9ZO6THRm9kv1n+9uvs+pqIt0Mo6hmu8i
	Ps/RH0pjY74RyI6NMrbBr+yE9MHy/j+ge9/7sPcvHoDuqcm9qkDCWoFOFuzsR+sl6XVh4AFdVK0k4
	M3WcSftbi3/LCiSeEm8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4x9R-0005Wu-4u; Fri, 21 Feb 2020 01:30:45 +0000
Received: from mail-vi1eur05on2047.outbound.protection.outlook.com
 ([40.107.21.47] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4x9I-0005WO-Cq
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 01:30:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JXvWpEFh6c57m8T3LmzGFjGUPPuIuJgXYMKnbjRHXMZ0LacdO8x1oPMSeCCAoengNwNeOBF7qNkF2Be+Ex74IPgivQEhWdt2ag9o7MUxOa5QAwPBXV/PvT1dTKvxod5IMRRIipwpwDoARDsg3hfwWOWPH1YBh1ObQS0LXZp+zrvV/Pdq2DCCBz2lPUKgCLn6Q76ecs3JrsUG80b/2u+sKDrP7GB9A3u3O8EPDfEv8Qb/EtAD4QhKXgWqI5AucYz5U7D7otnt1A6yBucbSeY3NdnpcSbeRYGZd+5iTwvt0yOQ751Bem7fciso5WY/b0M2hL8ESrKt3sI25fcppxC07A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RqX3MXmUjl7rY+YlYpcaFD1oI55p9Id+Q0l2GMrQPEk=;
 b=Tp8UtG9jYVUqOCL9FwodS8yrpZ4lbCPeQKMcXOoxJkqqSuF3o86qjwEzjSKlI5z9yz7Li7xQdiMN9pdHZ6SVWhTXHuueSeTD+ud3TZH/gT013cFr8Lpfp0SkdcPEt4yUlsFYJMiOueoDHj5CjeIYEPUMUe1DpFVyKhNi0VLQZd/R42jiB5nukFjMcDqSKdP2s8BsKKk/lmfMfM+2KPokvboecJFdBeMlvIF7iQ4Z8Jvl9SI1UkZwrph/8wSFFK97LZM2I024STKAw6oXFgkjaMFVgipwvZxpAxhF7ToSLbwCrkbyKCDRz3gW8M5Io59aWa4d+aOqUQIbV/LqkZ5jzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RqX3MXmUjl7rY+YlYpcaFD1oI55p9Id+Q0l2GMrQPEk=;
 b=bNyHmlna2wHvZDPFPxdQrJu5Nru/cIVwHFEmFXDzEXY3cJ9wJ4rYBWMjv3vlfPiSZdRIPHEhf3e2lukimaLMJnRDR2FTJA8afDofKwtffVMooi/L/bmQvw7lkSwgVo3zIyZ1+ZyfPzkMmsAH8pT8hX0ilqoWouw5xiAXAuGkjB0=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4705.eurprd04.prod.outlook.com (20.176.214.214) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.22; Fri, 21 Feb 2020 01:30:33 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2729.033; Fri, 21 Feb 2020
 01:30:33 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Michael Walle <michael@walle.cc>, "linux-serial@vger.kernel.org"
 <linux-serial@vger.kernel.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH 1/7] Revert "tty: serial: fsl_lpuart: drop
 EARLYCON_DECLARE"
Thread-Topic: [PATCH 1/7] Revert "tty: serial: fsl_lpuart: drop
 EARLYCON_DECLARE"
Thread-Index: AQHV6BVTF5F9eyvotUSiqL0QbCpNFagk3KrQ
Date: Fri, 21 Feb 2020 01:30:33 +0000
Message-ID: <AM0PR04MB44817308EA80EBEDC0338E6D88120@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <20200220174334.23322-1-michael@walle.cc>
In-Reply-To: <20200220174334.23322-1-michael@walle.cc>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: d65e3365-6452-4f61-2336-08d7b66da51f
x-ms-traffictypediagnostic: AM0PR04MB4705:|AM0PR04MB4705:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4705DC4A197131C6A0AB3D2888120@AM0PR04MB4705.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:83;
x-forefront-prvs: 0320B28BE1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39850400004)(136003)(366004)(376002)(396003)(199004)(189003)(110136005)(86362001)(54906003)(316002)(44832011)(33656002)(6506007)(8936002)(7416002)(7696005)(26005)(186003)(81166006)(81156014)(8676002)(478600001)(71200400001)(52536014)(9686003)(55016002)(2906002)(66476007)(66556008)(64756008)(66446008)(66946007)(76116006)(4326008)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4705;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: h5uzTNUJBvw1QTPLlgWtQQ3CTvUGOUeGAu1kmMxhr2IxRGJwF7MV6N5ZCzdg8Tg2CXLxR9WAa7PQIXjiYXAwhS/aLzOTdmVbsVEj2+3u9NUMNovJAVE0412nwSbjzQ6HD8jHc3VeJh3qD2Q0H/dDBPwKjZaTfqCE7bBtHMQoHL1SmifILfZ1Fng6bknUi/Ji0r4C753U7sbyPnoUFSDfqWGycpqNFeDJIFNM7DQ/kphyjRFJW5WiVF8ZRUAMZ/F+AlsZGFwxj3TrpPMCsUV6iXs/5xAa30E0VltpZpOKAIJ9XaMqHpWIQE5zUzT6dCHIOgJEkCr4nWDw9vsWfEzvS/0hnA3H4VwnaS8fu+6u5JImNqSRXI4XTA4VIKDQdAf2uJ8AkU8hPJT6y0I+sBFmgoMg8ckXU5khfMDQMRYK0adHZ/TUZT7YX94t+KRlulCo
x-ms-exchange-antispam-messagedata: Z3XEwukUvEr7DTT+hWxr3CbLJhV0ksZ7tiQRImDKfPEY1vj3leXIUxlL7ZX+GWVuFLiSHqqpyDVw3OJAw2GIfrHqkfA7RVX6eaKba+Q9hIeTcQbhbXl3LoGjIptFt1lOtvwvynngxaedT6k0hbcjZA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d65e3365-6452-4f61-2336-08d7b66da51f
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Feb 2020 01:30:33.3226 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: n22Oce0rTQYUVvpIEhck4DllfeY879p0O8ajuGfGDlLzh9WqPrC23rSvj5Rf7KS5Qm4SRK4hsa6iCMKc/D1nmw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4705
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_173036_437789_78EAA4A1 
X-CRM114-Status: GOOD (  12.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.47 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.47 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Leo Li <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Yuan Yao <yao.yuan@nxp.com>,
 Vabhav Sharma <vabhav.sharma@nxp.com>, Jiri Slaby <jslaby@suse.com>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: [PATCH 1/7] Revert "tty: serial: fsl_lpuart: drop EARLYCON_DECLARE"
> 
> This reverts commit a659652f6169240a5818cb244b280c5a362ef5a4.
> 
> This broke the earlycon on LS1021A processors because the order of the
> earlycon_setup() functions were changed. Before the commit the normal
> lpuart32_early_console_setup() was called. After the commit the
> lpuart32_imx_early_console_setup() is called instead.

How do you pass earlycon args to kernel?

Regards,
Peng. 

> 
> Fixes: a659652f6169 ("tty: serial: fsl_lpuart: drop EARLYCON_DECLARE")
> Signed-off-by: Michael Walle <michael@walle.cc>
> ---
>  drivers/tty/serial/fsl_lpuart.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/tty/serial/fsl_lpuart.c b/drivers/tty/serial/fsl_lpuart.c index
> 91e2805e6441..27fdc131c352 100644
> --- a/drivers/tty/serial/fsl_lpuart.c
> +++ b/drivers/tty/serial/fsl_lpuart.c
> @@ -2390,6 +2390,8 @@ static int __init
> lpuart32_imx_early_console_setup(struct earlycon_device *devic
> OF_EARLYCON_DECLARE(lpuart, "fsl,vf610-lpuart",
> lpuart_early_console_setup);  OF_EARLYCON_DECLARE(lpuart32,
> "fsl,ls1021a-lpuart", lpuart32_early_console_setup);
> OF_EARLYCON_DECLARE(lpuart32, "fsl,imx7ulp-lpuart",
> lpuart32_imx_early_console_setup);
> +EARLYCON_DECLARE(lpuart, lpuart_early_console_setup);
> +EARLYCON_DECLARE(lpuart32, lpuart32_early_console_setup);
> 
>  #define LPUART_CONSOLE	(&lpuart_console)
>  #define LPUART32_CONSOLE	(&lpuart32_console)
> --
> 2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
