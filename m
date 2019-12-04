Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6B881121EC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 04:59:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cbiiDYfuwnmGrU6UDPq/tG8/86iNIiwYBAQoGdT0UJY=; b=AgLECNyVikTs2j
	jqT0+RqY+hm+ol90lxlwUgS/b8tHVw650GfIhf3EVRwFwcofHLj4JM6XFpF1Gvl9wac7zTN49D8VT
	fpcHQYGSZzbXKef+mqfsHHxW6QdjvS4vjIzte8BbJJktwllhvBlrqTtPoZmtBjh8ROlAlfWvmlC48
	gFRpM9ckZMJ1uCgBT+AVvh0HLiiSLmFg+ZaBlMxXAQGEBptc5T0z7shVhj6Lx/Xy+sfNSX0ufeEjV
	PpXbiVgKc0Q64vJ8bkFD7ptpUPq1O7l25Ky9TMr43F62e14HJQR1Q/+1qF8ISuCNBmzSx3DVmpiod
	K5WFORi64Jk90aLl78nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icLpN-0004wL-JV; Wed, 04 Dec 2019 03:59:49 +0000
Received: from mail-mw2nam10on2049.outbound.protection.outlook.com
 ([40.107.94.49] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icLpG-0004vw-2w
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 03:59:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z6XIA0tNkiwrPS3UBDbhW5c4VZFnmgzyVN4niX0jxXqNw/gXpp/8fMtzbc/CkKErOZAsVXxsx3WETqlOQHORfkZcFLb5hhTmuGoKr0xF1PyHwWtsWl3BjNa7jInJlK/Ie4pJ5h7w+F9++wmAH1ICTeaZfbwtcxdJHr626ejrEBinFlS99pfEP5fTB8BxQtjk+/xjfV+a8vpIBwUC0XkunK9cu3T3a+3AmveAUeza2xkOYubb2dcPBZtyqbeoES+dpXeGX4WHFEpQ8nCwQPknrJnL3FHygByfHrT0u3X+2XcQ/YDj25QHj+KcU6uXa2NRvHmVe3lN8A8V29hVvzwSlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QXexEJVnl/xEIpKkqq1x6epAL1V3IDl57gkiOME/5po=;
 b=aE0s9IH9go3xsPHdMEwgfD3y2EtWDFcZhIPUSkpH3NIg9/jPCNfqrMwJ1NfU+/ITrd6tUyL39Xr1SN4WvU7e/RyLvIKuxVK11FzYHL6gBYCGOImv7TheiQg2lUVREZ9A5bCdKroMAzSEyK9p7c1UdGlqCuRsMc4vE2lXizWLZN9jYPNW1EC1L48N4wNak+R86Fs6tJrvthmsHf+uJ+OMuOFAU6JIrHNIDRhtaB2FizhJ4vQ1Vj24/09+fMOcNfxNLcQlLh7PvW0/lE5crQz6N3HTTm0Pyd+hqW/XFcxePaBzCstVymCIRrwjudETwZd7JbesqeMYyseP/woLZGQfYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QXexEJVnl/xEIpKkqq1x6epAL1V3IDl57gkiOME/5po=;
 b=eh38D/dzYFeMZtv6DZ7xOc/u6UofG8pO83I9Q3KEcT/NscU68TfEb5pefbw384b/Js5LkemNAeE2Bf6a8Po154dZZed1iO0N7eEF8CrUYxrlc2RiXMI6S5TQZHmImfyEku17/fmqOE/jnizJMTWTZK+fw4zC83jdyxaWO1jSIkc=
Received: from MN2PR02MB5727.namprd02.prod.outlook.com (20.179.85.153) by
 MN2PR02MB6813.namprd02.prod.outlook.com (52.135.50.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.20; Wed, 4 Dec 2019 03:59:39 +0000
Received: from MN2PR02MB5727.namprd02.prod.outlook.com
 ([fe80::948:464d:e305:9adc]) by MN2PR02MB5727.namprd02.prod.outlook.com
 ([fe80::948:464d:e305:9adc%5]) with mapi id 15.20.2516.003; Wed, 4 Dec 2019
 03:59:39 +0000
From: Naga Sureshkumar Relli <nagasure@xilinx.com>
To: Srinivas Neeli <sneeli@xilinx.com>, "wg@grandegger.com"
 <wg@grandegger.com>, "mkl@pengutronix.de" <mkl@pengutronix.de>,
 "davem@davemloft.net" <davem@davemloft.net>, Michal Simek
 <michals@xilinx.com>, Appana Durga Kedareswara Rao <appanad@xilinx.com>
Subject: RE: [PATCH V2] can: xilinx_can: Fix missing Rx can packets on CANFD2.0
Thread-Topic: [PATCH V2] can: xilinx_can: Fix missing Rx can packets on
 CANFD2.0
Thread-Index: AQHVqdOPUv7+hq6CjUSnDAohvbmmXKepWmLg
Date: Wed, 4 Dec 2019 03:59:38 +0000
Message-ID: <MN2PR02MB5727E5E2BF394AC2898D5E1FAF5D0@MN2PR02MB5727.namprd02.prod.outlook.com>
References: <1575375396-3403-1-git-send-email-srinivas.neeli@xilinx.com>
In-Reply-To: <1575375396-3403-1-git-send-email-srinivas.neeli@xilinx.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=nagasure@xilinx.com; 
x-originating-ip: [149.199.50.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b377bdd3-2a0c-4805-bbe5-08d7786e628d
x-ms-traffictypediagnostic: MN2PR02MB6813:|MN2PR02MB6813:
x-ld-processed: 657af505-d5df-48d0-8300-c31994686c5c,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR02MB6813C7BD94430386A3ED4E13AF5D0@MN2PR02MB6813.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 0241D5F98C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(376002)(346002)(366004)(396003)(13464003)(199004)(189003)(478600001)(6116002)(53546011)(11346002)(6436002)(54906003)(99286004)(107886003)(64756008)(26005)(25786009)(71190400001)(446003)(229853002)(14454004)(66446008)(55016002)(186003)(102836004)(4326008)(2501003)(8676002)(9686003)(74316002)(6246003)(71200400001)(2906002)(81166006)(3846002)(6506007)(33656002)(110136005)(86362001)(6636002)(7736002)(256004)(7696005)(305945005)(66476007)(316002)(66946007)(2201001)(66556008)(8936002)(5660300002)(81156014)(76176011)(52536014)(76116006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR02MB6813;
 H:MN2PR02MB5727.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cPSu2VKPAILvtkzf4cU3Nmbtf+UtMN7uvrzs1J5BDIbLgk5EFiKhgrnWpflg/z8Mn6TAMlMERBmU4CEyuiijl6S2Sa1VOiivfszCEGPAWZwDlRyuFX0qZO2LcptTCtUb5QRXkKg3A9+sOSHOKNI5aeICjYkucnd+BYC0K9t5XoaROHB9e3QmsBf4+Hs2tq1a+0pJbHeDzQUiV4V8d6NNBkkTa9TcAz4iRIkkZq00rxbmXaF0AgbrrFuzRH3o5LM3IM5DJL9dTwscCiBuaEd1SGkMfhoF8wxnnpgxroWA85MbUqw6p/vlyfZZIgMJ3vYfbOLjxB1tXb9uVrCdaHpAbp7X9An9t2VSvla5x4se+VuX58sxcoU/hqU9LavjYNi+Zo0J5EG0wrhmFltAM5xZp1KdBxhQcH/SvnuwcyK1moiqEuQ9BSdqWgMD5X/AXYR+QUkui0XK1C1ebbZD+qh6AXWaKQiIjh/sUpIowHnWL1pwdf8nsEiDMeb5kmSWaQdi
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b377bdd3-2a0c-4805-bbe5-08d7786e628d
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Dec 2019 03:59:39.0446 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: N39VlpqxBGrIlMGauCvZS9BpQaD1zyD28g3RnbspcDV6pAK+nJWkCoXwiR2c5ZOmL4A38WRFVc0FNCZQJvm2Ig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR02MB6813
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_195942_136976_51E5210C 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.94.49 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "linux-can@vger.kernel.org" <linux-can@vger.kernel.org>, git <git@xilinx.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Reviewed-by: Naga Sureshkumar Relli	<naga.sureshkumar.relli@xilinx.com>

> -----Original Message-----
> From: Srinivas Neeli <srinivas.neeli@xilinx.com>
> Sent: Tuesday, December 3, 2019 5:47 PM
> To: wg@grandegger.com; mkl@pengutronix.de; davem@davemloft.net; Michal Simek
> <michals@xilinx.com>; Appana Durga Kedareswara Rao <appanad@xilinx.com>
> Cc: linux-can@vger.kernel.org; netdev@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org; linux-kernel@vger.kernel.org; git <git@xilinx.com>; Naga
> Sureshkumar Relli <nagasure@xilinx.com>; Srinivas Neeli <sneeli@xilinx.com>
> Subject: [PATCH V2] can: xilinx_can: Fix missing Rx can packets on CANFD2.0
> 
> CANFD2.0 core uses BRAM for storing acceptance filter ID(AFID) and MASK
> (AFMASK)registers. So by default AFID and AFMASK registers contain random data. Due to
> random data, we are not able to receive all CAN ids.
> 
> Initializing AFID and AFMASK registers with Zero before enabling acceptance filter to
> receive all packets irrespective of ID and Mask.
> 
> Fixes: 0db9071353a0 ("can: xilinx: add can 2.0 support")
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> Signed-off-by: Srinivas Neeli <srinivas.neeli@xilinx.com>
> ---
>  drivers/net/can/xilinx_can.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/net/can/xilinx_can.c b/drivers/net/can/xilinx_can.c index
> 464af939cd8a..c1dbab8c896d 100644
> --- a/drivers/net/can/xilinx_can.c
> +++ b/drivers/net/can/xilinx_can.c
> @@ -60,6 +60,8 @@ enum xcan_reg {
>  	XCAN_TXMSG_BASE_OFFSET	= 0x0100, /* TX Message Space */
>  	XCAN_RXMSG_BASE_OFFSET	= 0x1100, /* RX Message Space */
>  	XCAN_RXMSG_2_BASE_OFFSET	= 0x2100, /* RX Message Space */
> +	XCAN_AFR_2_MASK_OFFSET	= 0x0A00, /* Acceptance Filter MASK */
> +	XCAN_AFR_2_ID_OFFSET	= 0x0A04, /* Acceptance Filter ID */
>  };
> 
>  #define XCAN_FRAME_ID_OFFSET(frame_base)	((frame_base) + 0x00)
> @@ -1809,6 +1811,11 @@ static int xcan_probe(struct platform_device *pdev)
> 
>  	pm_runtime_put(&pdev->dev);
> 
> +	if (priv->devtype.flags & XCAN_FLAG_CANFD_2) {
> +		priv->write_reg(priv, XCAN_AFR_2_ID_OFFSET, 0x00000000);
> +		priv->write_reg(priv, XCAN_AFR_2_MASK_OFFSET, 0x00000000);
> +	}
> +
>  	netdev_dbg(ndev, "reg_base=0x%p irq=%d clock=%d, tx buffers: actual %d, using
> %d\n",
>  		   priv->reg_base, ndev->irq, priv->can.clock.freq,
>  		   hw_tx_max, priv->tx_max);
> --
> 2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
