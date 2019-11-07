Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39007F25BE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 04:03:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FlCGFh/FeYv2QXrcSgEXk/YY7f8EelzWloF1g5cbm10=; b=oMdW3bRro9XbOI
	15LzuADyDDb5F8q95L031HZh6F3McqwkYjgKAAelLXyA+Md3eQT1x9Fifu7u9vMNx4QpCxyj4o48I
	w7pp278tUl2WunYvvjdfF36teL4MHjddxu1FNMGpCbpZd+TQY4pJNk5iL6G/dC6P/pI+TQWrmduMc
	toA+dKf7VztTN1cAYuXJBQv6B4lzrykXB6dNVql9rb6o9PGl+yT21KXMWVE8pCzVGaa0c8qSyykU1
	1NUvZDbiM4l2PLeFR1mlQlndX742POxhpzpeHEDQoP7eZ/QlAdQSqC1nkZ50NJL2i5ulxckBrBPx8
	EtzbQ4z+5jOE1J/VXbFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSY4Q-0006kU-4B; Thu, 07 Nov 2019 03:02:50 +0000
Received: from mail-eopbgr10073.outbound.protection.outlook.com ([40.107.1.73]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSY4G-0006jd-Dk
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 03:02:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g2dDzL2winvZ11JdSk6FnEAUBPorxhA2TfGYLlmIjc39MoCidEkenhPPBTfHzDNhkUstT0NjBaoIO1Mzd/g68szpMuQmvrIIQLVeCGLcesq+Gt7tv3pOSDdNX34S/MdhKuvOSY/EBYiXt32wLHcxg3lJCaL2eAj25XDBTYAYcc7SAbZihE73Axkcx2e2I3GPkR6wGg/F3ZxGMwsRb5H792vxVsXCjG2boC9Msgq5KeiSgoaYCJ5wVm4zVroKq55B67N7CuxI4skL9vV1T7y0jB2svjVWzMcfmoPaahDR6gw3HpYfa1i3JMDGcY8ZKzRifhWmhgTcRVGr4J6zcxO4vQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mZv4NopV23VFj1A5wzNaysOILdV0J0HgwrzEEO+i07I=;
 b=EANzX9FfY/8Gm1UtgXWAcV1piuCbFakytR5VCQF2J7Fc1+Akz87DoMEo+wqyE9rDfTWXlJ7hjbpG0r9QflmHlJsW6NwekpVi//macwS3ms3SUmvSUSTyFT6N0XZk3SZpmdBg2a36m2kb2EuJXJ0TkWICP/noXugmrlrZWJ0r7OSlmdqqxg9nAlKDSYXj9NrJviA7LsETH5DoK6aTbYue1+5/7Cv6fkr/CkteqGzYKhU3yWTV2aja5XMaggptdG7uNq3CoralC/4/ecT4Ldnx2QnIr0RM3MH6eMHIDGYLZwxa6EQczD2ZkkSj92Fr4nSigXlZOZbyInMBrkff1sdTQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mZv4NopV23VFj1A5wzNaysOILdV0J0HgwrzEEO+i07I=;
 b=Apvtew3b7rUHHksD+/Spy0L0Eo6kfbDZMZ6G4tvt9wUUCcn9jFVWOVbjvn8ExiZNqOZN/NF+xV/KDHrlRu9vcIsXdIvkFt3Az2C4S11BWqzXgatI7zL59NGi5EJKeWEfy8/BEoLI0+sHp57PXvBvGXkV1u7xwX4tO0QtlehBHDg=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5156.eurprd04.prod.outlook.com (20.177.42.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Thu, 7 Nov 2019 03:02:34 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c%4]) with mapi id 15.20.2408.028; Thu, 7 Nov 2019
 03:02:34 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "jslaby@suse.com" <jslaby@suse.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "festevam@gmail.com" <festevam@gmail.com>
Subject: [PATCH] tty: serial: imx: use the sg count from dma_map_sg
Thread-Topic: [PATCH] tty: serial: imx: use the sg count from dma_map_sg
Thread-Index: AQHVlRfNofENwEaBB0GOB39FR9UWaw==
Date: Thu, 7 Nov 2019 03:02:34 +0000
Message-ID: <1573095656-749-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR06CA0004.apcprd06.prod.outlook.com
 (2603:1096:202:2e::16) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 475b17a9-c588-4dd6-c533-08d7632eeffb
x-ms-traffictypediagnostic: AM0PR04MB5156:|AM0PR04MB5156:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB51560C55260D323459F1144988780@AM0PR04MB5156.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0214EB3F68
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(346002)(396003)(376002)(366004)(199004)(189003)(99286004)(66476007)(25786009)(50226002)(186003)(6116002)(2906002)(66066001)(52116002)(6486002)(8936002)(81156014)(386003)(8676002)(6506007)(64756008)(81166006)(5660300002)(66556008)(14454004)(4744005)(66446008)(6436002)(3846002)(2501003)(26005)(478600001)(316002)(2201001)(4326008)(66946007)(305945005)(102836004)(86362001)(256004)(14444005)(486006)(2616005)(44832011)(36756003)(110136005)(71190400001)(54906003)(7736002)(6512007)(71200400001)(476003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5156;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IK3P7FK6ckhx6PkXhmK5LUcmscCVilQJOdJmDml+/DI6Bl5FQFjPMgd2bSfyMlrZR40hP/3hIP0weugc0oO9dAM9nsxbhxR2GsbFWi3ihTAVunzH3vnQtwyrAY4RcvA/7chqR6ze83WMAWLJA6oepsTOSGq7nN3pLzxmj3pDjM4bTO8r0sZYoOOLEzHPWigO25cHlFSHKuE5WekBPhNKbVmOJOSjtdlnVLrTgGEx2yXELn62pA0agFIHw+PJ8EnvXy6PMAp1BDi3FT6Howu/+Ojk4vZnj42k/wyon+BRYMUgTLP1/h2FEN9midRfWR5qd+VEvB6kpbzbCI9hSdcJvM9lL5duZ9Gd2rO+zj85kSOq2pRsle6/ZGUEjTpu+J1GII/U7KwyZhuTHdVm6c64Hba2r/MAiKGrDoSyJwE8c+MqVtty1GPjmrH+c/JcF2Aj
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 475b17a9-c588-4dd6-c533-08d7632eeffb
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Nov 2019 03:02:34.6662 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RPMswWn5PSJFh9+pV87nsP9zGF9Kvx7wIyhuJCHWajwyZoB1uGg3bBK2sg+Rtcw1j3QCh/wn9IpUizADxCu48g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5156
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_190240_465137_4821B641 
X-CRM114-Status: GOOD (  10.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.73 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Peng Fan <peng.fan@nxp.com>, Andy Duan <fugang.duan@nxp.com>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

The dmaengine_prep_slave_sg needs to use sg count returned
by dma_map_sg, not use sport->dma_tx_nents, because the return
value of dma_map_sg is not always same with "nents".

And update sport->dma_tx_nents with value from dma_map_sg to avoid
modifing dma_unmap_sg

Fixes: b4cdc8f61beb("serial: imx: add DMA support for imx6q")
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/tty/serial/imx.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c
index 87c58f9f6390..bda7f59ec60e 100644
--- a/drivers/tty/serial/imx.c
+++ b/drivers/tty/serial/imx.c
@@ -619,6 +619,9 @@ static void imx_uart_dma_tx(struct imx_port *sport)
 		dev_err(dev, "DMA mapping error for TX.\n");
 		return;
 	}
+
+	sport->dma_tx_nents = ret;
+
 	desc = dmaengine_prep_slave_sg(chan, sgl, sport->dma_tx_nents,
 					DMA_MEM_TO_DEV, DMA_PREP_INTERRUPT);
 	if (!desc) {
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
