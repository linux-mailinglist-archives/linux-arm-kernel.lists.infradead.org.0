Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B066162104
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 07:38:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vl+p8EdMVosd3eUBwIkgvwPlTGG6pWxYGUiBPNmJWWg=; b=Om2FCdq6wFM8DD
	4OAGZJr8pcfy8hJZbJd+Pi2ZTI4J7/a25Y1bTiKQv4G6S97yd2UdZjLq+EAH7o/H2ZMI6m7mNNZAY
	oQC+SBiFZyUr72LgCzy+gAuaf35zV/zh5S5w/Qi/QKydxG5oOQFdwcJrhhJgYczjyxNsCz1IYtXJQ
	klMiW/vOgAXVSNDdxsDEuY17+L0KyD9/vW8aDhOYsS97qOUFx4DVzltefCoqjmoNVhGZ6fPl3xuf4
	B7ddPK+J5dwEyEueRxwM6WySwokgcsmBn46QoaDd/d8bZvxlkSmNIeKi3MCq+wkz+qk4+V1hLxsev
	vXQ1I/nUwjRXpiCcBDJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3wWZ-00084D-FD; Tue, 18 Feb 2020 06:38:27 +0000
Received: from mail-eopbgr40056.outbound.protection.outlook.com ([40.107.4.56]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3wWL-00081l-GK
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 06:38:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OfJ37iQ+W9iCbOCBrnPQ6gZAwY+cjIRslGikFwkoAezC4OJBt1zdNXWIqGUtQv5siosRYqYx4yHX6ftBuHhhdaOZ7APLsS3ANV3eU6VxumzW9KuFANqEf3NtEVSyJNWFJQpHx/gPYRzkHUwGHmfQi8SEMlCt9p8vjMIniroFmZXaYR1dESMFxUZHQvwGcm8+DD6Bi7aE+Lc3ht5NZ+B31leMgB38nepsYCAsoTYMzaGR0pWwwMz/Ma93FsSAkZ2i+74Jt8d55hTnFdD2YYKNpzcjsBRSpnGstVBosH+UVpzGRFW+A1TL5kIyk79s3d5pmLEySM2yKGhBtjRYHt15Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WehSuJh/StYJdKMdOSsx+Hr5FuhMeMwFTU5aHbBniqE=;
 b=fOQV66mn4n8Mg56KWYqKIYsTym1o7SMI/40IPxG9l6mBftG2ZUCzcDh3+oVnFbfHXQHzuqvLAHc1HcoSVHywO3aB6FeKkv/X7tueGRrk0JNbS2Z81DOT6kEb/pns+9p0P0L2fK1Dsy08m/rHjtXFOR/hLYAxoNpdROUUofTOqeyj0UdQiz+L+X1XZhD3GEulpT7XDo9usrF3EIc+842XmdJ/UDnal/vIe39UdRcfQaXDSPplUA22g/yBK8wRJ4sm2oEF+dRZZZ3iDr8ln76Ez/+brQ13vVg7BC6B5xcD+89FDiczTFM2vEJ7HnlyzL1JydtRgDsPFLy5DLYvb16AKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WehSuJh/StYJdKMdOSsx+Hr5FuhMeMwFTU5aHbBniqE=;
 b=l1wJMqarAyYjhB/uAjrFdpTKSJ9MghHa9RXFkuc68kiO/L5zN3a1aDM8gOWGTY0J9NBa1fD+Bwpwd7pOTyLxap2ENQsUTJpsLxkTZD1o+jIze+CEQBBhXoaPTwG9zJtPBv0HI0TABRBgkbWNb4NEaWdRadteCEyfYSfS+8lLa3g=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3834.eurprd04.prod.outlook.com (52.134.71.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.23; Tue, 18 Feb 2020 06:38:10 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96%5]) with mapi id 15.20.2729.032; Tue, 18 Feb 2020
 06:38:10 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "agx@sigxcpu.org" <agx@sigxcpu.org>, "andrew.smirnov@gmail.com"
 <andrew.smirnov@gmail.com>, Leonard Crestez <leonard.crestez@nxp.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] soc: imx: Remove unused include in gpcv2.c
Thread-Topic: [PATCH] soc: imx: Remove unused include in gpcv2.c
Thread-Index: AQHV5iBSEpuvkLJISUqKDGnVgUsxmKggdMkAgAAKVNA=
Date: Tue, 18 Feb 2020 06:38:10 +0000
Message-ID: <DB3PR0402MB391676E0648E09A9E9864916F5110@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1582005089-23767-1-git-send-email-Anson.Huang@nxp.com>
 <AM0PR04MB448194F2C0E2043661556C8588110@AM0PR04MB4481.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR04MB448194F2C0E2043661556C8588110@AM0PR04MB4481.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [220.161.57.125]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 1dea4a92-e965-4212-1ab5-08d7b43d1f2c
x-ms-traffictypediagnostic: DB3PR0402MB3834:|DB3PR0402MB3834:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB383498538408AF04CE758F7FF5110@DB3PR0402MB3834.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 031763BCAF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(136003)(376002)(346002)(39860400002)(189003)(199004)(66946007)(76116006)(5660300002)(7696005)(2906002)(55016002)(9686003)(316002)(186003)(110136005)(66556008)(66446008)(64756008)(52536014)(26005)(66476007)(6506007)(4326008)(8676002)(86362001)(44832011)(8936002)(81166006)(81156014)(33656002)(478600001)(4744005)(71200400001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3834;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8k1HC2mR3MHVKKS9pQb8nzHf/9+OOuQuJdKJ1fbslC/Ts3U9PgfSuBD6ryDdPCHkGkEFAzdUj1bOFiI9vgJIBc8ccajLEEuIUXH4tJD9MnOAxaPmFwemMnyEn4Fgn2uoqOgsCiqEyboMm8kM+gRr4IMSqypCs5i4ptdWzmesaRocHwEDOtERzmdVeWTcfdqHD0Tethqm/40skVF1MtY55WkuA/yEs8RG39GlcEgRZsUGaOi5vIkG5NFJJLgLSruXzvlEW1AURUm9+BxUI7RIGnAoGTGLeAh2mPxYMSnuBlSTnJ0RsS0YBVn7zTvqhg/aRvAUibwu8XuMFCSxslJcfgVR++6yTA9XQpSkwPTzV0lofWuLTJkO6yBMByKg7VbYZjCpWDS2I/sA+UVJc6qdaEE1/qXGjyYshSQRtKB+pKZ2/MOAamEDQuX7o3c9ZbKhpEt574zMyd2ZrAP4+rPPCYE9sSwo42b2cNfn+jnK85qaTEP9qrOw66V1xv3G/Os/
x-ms-exchange-antispam-messagedata: xTiIKNiKmMCkRQ0tVwclQjFIJQBJxAA3KtIcvQNzHMkRGzNh01UzEDCLnW7/o4pn2VT3iCxpqg2d8s3JPP2xMe2FvgXPPnVTGmHmXLRwf3l2wkPCeudLBMM64Q/kkNxQuhvJ8k5sguM/AHmwcv3MeQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1dea4a92-e965-4212-1ab5-08d7b43d1f2c
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Feb 2020 06:38:10.4563 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tVucgw/thfq8NDdjk5j1YES3afqmhJPcdZIEpohnwn+4Aa1MTDjiCRGEYtPXzBVwzP5uYJ5RU9GkZLd1AviGgA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3834
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_223813_543467_3CB1041A 
X-CRM114-Status: UNSURE (   7.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.56 listed in list.dnswl.org]
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



> Subject: RE: [PATCH] soc: imx: Remove unused include in gpcv2.c
> 
> > Subject: [PATCH] soc: imx: Remove unused include in gpcv2.c
> >
> > There is nothing in use from sizes.h, remove it.
> 
> This is needed when moving to support COMPILE_TEST for soc/imx, please
> keep it.

Ah, yes, I did NOT notice below patch which is in purpose, so just ignore this patch.

commit b5cc96d3bfcbc495a350f78aa2e1295b238d26da
Author: Leonard Crestez <leonard.crestez@nxp.com>
Date:   Mon Jan 20 14:51:28 2020 +0200

    soc: imx: gpcv2: include linux/sizes.h

thanks,
Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
