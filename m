Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85FF11D7337
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 10:46:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W5FMQUh2+MCyFo6r20rAy/1K4LHHXa6kRtYTvoi4QP8=; b=s5SKX4a8YpqgTw
	s2zv7S9lg+o9ylhXawtO1hSCknheA2JaWlzbkrp3yTxitdu5ej5K8bGvriTVKpIhHaQFp2ckKQZuC
	24qrW51bIf4vS2y+4wt2LhpYld1zAbWY+9Wk1XkMGx2uKeg/KKNpJY69OpB5obJpQniNxbHxq1gID
	XHXgPTSAUm55313MmBtShtgfH/qC5Umn+PFFVN/mXDv7XoWa8SerBZz/gPEt5/fnLaXNNk45NKuk2
	+QBP3X4BZOsgA8jqBkjIUh82F8UeKSQfMD/tfv6eXeKzw3NPYgBWeVvw0ci6AxltvVfHYiOG99RnP
	/HYXIEqlR+xTM97WkxmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jabPM-0006Px-P0; Mon, 18 May 2020 08:46:00 +0000
Received: from mail-eopbgr00044.outbound.protection.outlook.com ([40.107.0.44]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jabPD-0006PR-AR
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 08:45:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UESUKORcIO8fVuyiM5dTzQa8bceE1LEAKc7CMgCgF1c2OOE+7Hta1BW1bCxGfvU+S/l9zvmFZ0fV4bmZe77VilR+9EiMiRsYby6XJBV4kGq9qs87aA4Y98Teppl4pTc7IoYDnlp0QM7Frhf9lq9eT+v/7itZhE6/NhP0oVS860Ae+0d4BaFzSxM8mbJFpD3lz9o8gXFFjzccPpP1JjpJRR/L6EYnKnqu+Zxw72yhdaMm5CEfE5zTIXnN/NlhxqsIpN0xxO3pUljX9d9mkwpn8RJY+8VNfvSb48ezx6xEQkleLxzexiQGk2mspwEhWDnMUH7feuHgPvAz7GPoX263QQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9/wMF6dazTLM8tKQBjQQhxOYoSosY0+Phv94o18lS4g=;
 b=WVkbDzuCCcaOO0Yb1lSLz//6raqsR1JFM3HnpM0QiAMF6w2OkFjaeZIwY/xkRxx+qSVkujkVAwjpZhKZLBg3kDw9vvKciPqmXBAAoQ7lMrxWO1e0UjYP3GUb45vyd95mEtpUGzjQR6YyNrjmEtljJbYiolvwWZahVRJKfedVWYXyBOWrD6R6x6NxCRTyJLy92KPUDCQ/lKlB/2vFdHhcIySuxBOySqHFmmgfERW82DjY1hhTJSOpVQbNy5+XjsTyJsN4OBhZEdol9eAoch82shKHU6ojtrppCv1kFtVQxhHwAA6e/NJmurm5HoQWF1o/WGStnFkqZv8oiSVNoY5OIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9/wMF6dazTLM8tKQBjQQhxOYoSosY0+Phv94o18lS4g=;
 b=GQkTxA878qrwl/XRN/UPsXGqEOqwx7DQUbDbsddDJ7aqYgjBfOrkkUQZRZevdzBTzQ1fSMSgvxba8p34LL0NhWEslNiS+14krcH0nzAXLw2P4oTW4Xa8Hx8q4IpR/GSwuCvwklT9wj5dk37Q6ffwXSJP+FN1Q0LG7BCNoE9Mdek=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB4999.eurprd04.prod.outlook.com (2603:10a6:20b:2::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.20; Mon, 18 May
 2020 08:45:48 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3000.033; Mon, 18 May 2020
 08:45:48 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH 2/2] ARM: dts: imx6sl: Use nvmem interface to get fuse data
Thread-Topic: [PATCH 2/2] ARM: dts: imx6sl: Use nvmem interface to get fuse
 data
Thread-Index: AQHWKY2ONnVOEaMUokWwE7Ybd1YO1qitjjHg
Date: Mon, 18 May 2020 08:45:48 +0000
Message-ID: <AM6PR04MB4966EB7B142636A825A150AA80B80@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1589418528-26410-1-git-send-email-Anson.Huang@nxp.com>
 <1589418528-26410-2-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1589418528-26410-2-git-send-email-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 739cf9c9-1b44-44eb-3d28-08d7fb07dce4
x-ms-traffictypediagnostic: AM6PR04MB4999:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB49997D32D164BC830E6AEF0E80B80@AM6PR04MB4999.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1751;
x-forefront-prvs: 04073E895A
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /k5mbDMg8JlQsUBYaygkmBeTuqzp7I8pm76N5GM+DAB1oZGXT0EXiTj7KeKQGDaIVZ+mxluAfVEi9Mm5iM7AmUrbdyxfCeY/ayY2B/hltptiv+pNtxcHN4da/JhDRYRs1YPNGCePqLklWHOqPzN794n8rN/XqJVcFOMiBgnQ2L/OZ+RWgUYegKwnTr1PitJrjzMMJOLYvqlbipFM1DjEEbghFibyfmt3S21LMl0UQbhmlHWiTjHHQgw76HBdFZgiPq4fJdYsc7mQP/q+85cajV159j7kaPK6lSPpbFkyHZjT1sLDcYNIS4Ukp1eFJzx5TI4p2DdEzzta4vMSP57BtaMdpuFsTqKkclDCeA7hqkxSFJnEMd4ST3r27LfRha07qS5Xx0YNoN8EoN8Moiwo3VrGOPXrv/6LBtb2L+0y+tZYxEvICU7KvBTzKGT/RiK1RPxcyy1y6ocUREo9xmfqBXwdQalM74YyWq9d1sTLIiYd/nB6XcxafNri9iX7jDCa
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(346002)(376002)(396003)(136003)(366004)(5660300002)(52536014)(316002)(55016002)(9686003)(7696005)(4326008)(110136005)(6506007)(478600001)(8676002)(8936002)(26005)(186003)(66446008)(64756008)(66556008)(76116006)(86362001)(4744005)(2906002)(33656002)(71200400001)(66946007)(66476007)(44832011)(32563001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: KkYzhOuZdfDg/siVN5u1L1rmywumUYZgLHQBxEh83MNKGWTf1t+f1+I4gTDypaSqy51g/E7JsuMo+7qpaZYv42T+otVpi+RQSywQP6863KimGd3DMIn1UBeUSxwVHjonlmjkMj0tYWKofd8AQVbvTegecQrwP+l6FhAjWEJWO2f5PUeq6+Rr4JJFZrw7JztX2gNJnJZ2AGn6hcNd/4BVERMrPSqbnKYGPDcGzYfXyZ1W8o3arpnRzIH1XyNub4tjI25bamHKFlYK5lWwcnz3Qm3Y9xZOgxofJHoq7tvUAsnpWJtbgGfWhl9pbv6rN4nQ7kGunpfNWpZBM3YqgDl7wPDwrHnnTr9OwHtj2S7a1m5XYv9V+3/cd5Tzy/Sdas15OOwO+Bhy6IfKKGtsYZTdp8RqhZ0XfBHWrqWchtPYLyQ7Hw9QlVnptL2Yikp57La2KfBVTrFqZR+lz+6Jpety4s5mWzQFFlSWNaHm8DU1a5MQLwC/e17Q9imu+dtiSibi
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 739cf9c9-1b44-44eb-3d28-08d7fb07dce4
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 May 2020 08:45:48.4363 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PQcopyR3BhAeEbm4BuE8Ii/nwM6gOrRHSIZCZok8ARoh2lDG3sbwpG41ZzZiU6wX65EW6qWBe/1bFo4aJY2loQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4999
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_014551_356484_1E1A8999 
X-CRM114-Status: UNSURE (   8.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.0.44 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.0.44 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Anson Huang <Anson.Huang@nxp.com>
> Sent: Thursday, May 14, 2020 9:09 AM
> 
> Although ocotp clock is always ON for i.MX6SL, OCOTP can be accessed directly,
> but since i.MX6SL nvmem interface is supported, and fsl,tempmon-data is
> deprecated, use it instead of getting fuse data by reading ocotp directly, this
> makes all i.MX6 SoCs aligned.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
