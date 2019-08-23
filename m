Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DE189B6D1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 21:12:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cvxAm7I+iKIN/t8kw7WeV+1TjIIILwUo6CayXS6z6I0=; b=iRAfxTp1NAtISk
	Qv2A8j3uU8eRdEcboi8Z7IwVG29KOrMaUgw6KGDzf8eN0vmr9EDaq8UP+OLLlbFG35HZdUURklqnn
	B4zUh8MSK1ZhPgu8CpjXr4W9ELoo3wqlvJL/Vw3RSUkwSbLHQvnBSZzrMesZGJGSg4g6O0/LPDhN/
	qmsqO+f/Jd5GA611XSboOP/8kkDQYPQqmwWl3KgVKZefnmclQkEzr4AUCY70gJWMrkKQyUxyJ2nPl
	kkYvSUpIo9pZ9uWLs/UrNNh/wj14+XNM7JXteSi152jk7uvvZjqX+x6yTt5HPs7QI9pF+QQD/cmSK
	rDXMfxxMxP/n+BiFVIYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Ez4-0004hC-KX; Fri, 23 Aug 2019 19:12:26 +0000
Received: from mail-ve1eur02on0618.outbound.protection.outlook.com
 ([2a01:111:f400:fe06::618]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1EyL-00041M-B4
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 19:11:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F9mTBc0Z9XC9T579ZhWZYwzdWCsC1RZ1k08GLaTfDJGpaQ4fuMv14V5UvDd/TxzZ3R/Dgh/y1E4dKHUBlvnhWYcDFzVxMqbdzs3ZyAvVK5bsMHWIsMk9Feaz0zTNHt5FWjIlxh1fA7ec/JbK1YKZ7wKGZIYQy7vxA8v6pV+R6pXtyP5MSVC8btuVFcA7tbe5hNFFnPgouKGARnPmBxx8qOq0CDzqarYpN8mLRugummcJfuXw+fd3dyh84Kw/FuXdpjUPSAFbQfzMSM6qc7knkkfCPPo4V21gJL5SPQAU1wbU2GnZ6cBJUr6DsJnQqF1DyMlm3VV4EE1lFneX/ydySA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=baq0+T4FN7wutqVLCsogGr0cPRc/vTHMqtYZTX3sui8=;
 b=aHksG1oGjudZ++Wfqnv5S2M7eln5swg40k8dA5U7y97HDZNup2UaR+D8VbZcoC4P5bYnr0U60J5beD+bYP/gudcWfCEgWW2dHBOgyOOEgaYEr/6eVhJ2a+jqu2yR2PDg9V4ts5Wijy3z7wPe+aAyrcqohx8P4e8+lCW8mngJTnQ+mnhOhDPZYHvFe9jsucK9MFow3vM4VdExMd1ggUuT+Ds3VkSxR5f7A4NRgDr0OOztFiHlsEnwrsTRieUuhGDzcXKwAS9WxDd3E2vftQVXKYezk86yrt4Ob2IsLLqpxbwItgQ2K0gzQbsUpfEiXGqh+HFs6jo0T5d0dP6H8xSymA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=baq0+T4FN7wutqVLCsogGr0cPRc/vTHMqtYZTX3sui8=;
 b=lbHmBq2IASDOe8JP01zQ1nGKiQgnvTEB/tXOfrtz4oY0Mns9lcTwnsSsJT6OzaM11RaMm5bmTWE+zeWYh0YYgEVCK8dBal6w5OF4sy45pBdG0OHuGuGRt+DkeQTKepLPOPAzTb1r/NmcD++ulAzXo7Ma6t62XLDUGMftB/+nN4s=
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com (10.175.20.18) by
 VI1PR0402MB2717.eurprd04.prod.outlook.com (10.175.22.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Fri, 23 Aug 2019 19:11:35 +0000
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::7de6:ea4b:9b5d:d023]) by VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::7de6:ea4b:9b5d:d023%7]) with mapi id 15.20.2178.020; Fri, 23 Aug 2019
 19:11:35 +0000
From: Stefan-gabriel Mirea <stefan-gabriel.mirea@nxp.com>
To: "corbet@lwn.net" <corbet@lwn.net>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will@kernel.org"
 <will@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>, Leo Li
 <leoyang.li@nxp.com>
Subject: [PATCH v3 3/7] serial: fsl_linflexuart: Update compatible string
Thread-Topic: [PATCH v3 3/7] serial: fsl_linflexuart: Update compatible string
Thread-Index: AQHVWeaU4T6zYLj2ak+wDZxA8SV1Xg==
Date: Fri, 23 Aug 2019 19:11:35 +0000
Message-ID: <20190823191115.18490-4-stefan-gabriel.mirea@nxp.com>
References: <20190823191115.18490-1-stefan-gabriel.mirea@nxp.com>
In-Reply-To: <20190823191115.18490-1-stefan-gabriel.mirea@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.22.0
x-clientproxiedby: AM5PR0402CA0007.eurprd04.prod.outlook.com
 (2603:10a6:203:90::17) To VI1PR0402MB2863.eurprd04.prod.outlook.com
 (2603:10a6:800:af::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=stefan-gabriel.mirea@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fbf7c670-1192-44a8-b7cd-08d727fdb749
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VI1PR0402MB2717; 
x-ms-traffictypediagnostic: VI1PR0402MB2717:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0402MB2717175A9EE3EA0A73E8D144DFA40@VI1PR0402MB2717.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:296;
x-forefront-prvs: 0138CD935C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(39860400002)(366004)(396003)(346002)(189003)(199004)(446003)(476003)(2501003)(66446008)(76176011)(6436002)(6486002)(386003)(6506007)(50226002)(81156014)(256004)(86362001)(66946007)(64756008)(66556008)(66476007)(66066001)(186003)(8936002)(6512007)(25786009)(81166006)(36756003)(478600001)(52116002)(8676002)(14454004)(102836004)(6116002)(5660300002)(486006)(26005)(2201001)(71200400001)(53936002)(71190400001)(1076003)(316002)(110136005)(7416002)(54906003)(4326008)(99286004)(7736002)(305945005)(6636002)(3846002)(11346002)(2616005)(4744005)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB2717;
 H:VI1PR0402MB2863.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: oDFgqHJn7ZolwviHpmarpMdXcD1QcV6Y0+BRDzWJaVDzl5tc/bASainnqX/3ztof47SU7zutkG6cNYjnqQBHU4OPW8BkvDC21/EtBBKYmAidNsGSyWpAt88BmxZiQxKvgAIOw++uL1c/IkTgfINqILkC3VBNJvVZnZW3A0RrZvqakvxANjCJHWppztVNbGYTJjQP6n6C1O3/oSFJoIY3yf7ubmANyFv3BIJGslb+QP53vVJGvg44XMr8WQZj8ybjNmAv/lklwDNVKqprJqcW81FCayKt5WuoZo1OossEJUIe/YQtlOA2ohybiKVKlD3TfBtlc2Z2S5+276lfbkxlmuHRje2QMQgduM+drirKMzs55VGSbHlx+9ojsOhGDdpX+nYMqvfLILD7NHwAOQR4nAuQ4W0Bs5rn7QZ1HGaRMIs=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fbf7c670-1192-44a8-b7cd-08d727fdb749
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Aug 2019 19:11:35.4763 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gtx7180Iwk1ypt1//1YPT0iTd406RINy75nNKCVHxI4el+MKW56iRNtaRzTHy6JWn2z05I4jdkGc44k64554P6w7WgM9TmYgJW7lxO0Rwfw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB2717
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_121141_385413_6FC1E25D 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe06:0:0:0:618 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "jslaby@suse.com" <jslaby@suse.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The "fsl,s32-linflexuart" compatible string is too generic. Make it SoC
specific.

Signed-off-by: Stefan-Gabriel Mirea <stefan-gabriel.mirea@nxp.com>
---
 drivers/tty/serial/fsl_linflexuart.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/tty/serial/fsl_linflexuart.c b/drivers/tty/serial/fsl_linflexuart.c
index 26b9601a0952..e54c65830e5e 100644
--- a/drivers/tty/serial/fsl_linflexuart.c
+++ b/drivers/tty/serial/fsl_linflexuart.c
@@ -127,7 +127,7 @@
 
 static const struct of_device_id linflex_dt_ids[] = {
 	{
-		.compatible = "fsl,s32-linflexuart",
+		.compatible = "fsl,s32v234-linflexuart",
 	},
 	{ /* sentinel */ }
 };
@@ -801,7 +801,7 @@ static int __init linflex_early_console_setup(struct earlycon_device *device,
 	return 0;
 }
 
-OF_EARLYCON_DECLARE(linflex, "fsl,s32-linflexuart",
+OF_EARLYCON_DECLARE(linflex, "fsl,s32v234-linflexuart",
 		    linflex_early_console_setup);
 
 #define LINFLEX_CONSOLE	(&linflex_console)
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
