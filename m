Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 497F91EA11E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 11:45:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T0VLG1H8qAGUNC1sGetG3NmroP3DoNMDBuBtXiVYpEs=; b=YchOGaaAkYOAx3
	Xf5PtpdSYD1Y5uOOyWGBFdsfpk4Pat1gCQ+DeOK8VRtGqn0PRToSSu/1omLqCqzOLw62i+tkNJIq8
	QksluGr0uPS+tO7DCa4+LgoECGZzrTcQ/g+tVfGVQsDICLgWLSYWsvryhTrJpWJmA2GvCjvzidgaP
	0B1sRbiBRepJlRjc6hbp6OTS1oX5k5RPOqkhsCD0v3e+UaidfEKMpigaQrwtoRzvEI9SFT4D5ARm2
	J8A8VNcFEEF0cuxxfYNDyB8MeKgcTDw7H7ReHGCQ7cq9faGpkuQgOSGcSZhCntV0U1OeP55OfvTTu
	53LBgRwQDSwzkcBOfsYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfh07-0008QJ-UZ; Mon, 01 Jun 2020 09:44:59 +0000
Received: from mail-eopbgr130051.outbound.protection.outlook.com
 ([40.107.13.51] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfh02-0008Pk-1B
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 09:44:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U+TUGOY5AJEO2bwFAAQt3R1sT/IQvVU2Ee8yYB6KGUBoT6dQ+bpOW0hUThJIY/PqLKZgRjLBULb55pewSXUKqiH5gsO9upXHl3P5Yz1LGsEq0nWCcLE7suaoU6o7qL+eTZqu1EjQfdqGjdZhdgbSgZp6mrK7x/kzHXiajjvaGfiZyG5VlCaZlXUwXvH7HMLJ0x3iWfkqHKp1noISAybWHPIzxqU/SKAsjHXtyLNwqpxGdQdlfbn6VubmmIMgYknF1uWlCHIPX9TNiQFXe++rlcb5ZvfgokzG8pVdsVbR35WzeTW3w++5RPS0cPGuST72kduT3/Eza8vxIAp/jE0lyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oNVCvnknVIbsRvH0a4C7yLhWuewAZIr4dOtFK3VKzUA=;
 b=ip3JoXxr7FLyV231eoa69PY9peiz2v3TH1mgPBC/amkZo7hUNv7Sq8BLDUdPBuHPfuyskpB+y5o5WXn7CB0KY8Ce3regtU0u0LlRQfy+Ji/TZ3QQjfmkpeL8DtjIngdQh9c/G8wGlEtHke+j8HH6SRpZmZEZTd4nY4HjY9pj8ag3bShruvnC4YDtAQ81Pk9SVHqdOZtCqv+AHKNWtkDxWtANh7/nzAV1IxwXzmeN8JChioNQ6YbdHvCrwcoY0C7tBfiqN7Kvuhx6ErmXCXryyIZ+TxpZk3zp38beM9W8QzPzsYOX1rtB2OWQfbPHo6uwzdHktDhrjcfnDwKv+bYifg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oNVCvnknVIbsRvH0a4C7yLhWuewAZIr4dOtFK3VKzUA=;
 b=TxxxXinNRD7f2C2ucanU/KSiXKqDVniwUhdkxfHgTaZ57ZgMWx3rG2fVKZDG57TUXDGaqxfY2iieZdeKnjQPuNdRJfQxKAfNrgjzoi3okscvFc6BOlInzEOHFzQ+lAMeu5yrEZ08yqxer9e0F1G5WxzfKO4QE4sOzECLT/2N0G4=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB4888.eurprd04.prod.outlook.com (2603:10a6:20b:12::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.19; Mon, 1 Jun
 2020 09:44:48 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3045.024; Mon, 1 Jun 2020
 09:44:48 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 Fabio Estevam <fabio.estevam@nxp.com>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "sboyd@kernel.org" <sboyd@kernel.org>, "linux@rempel-privat.de"
 <linux@rempel-privat.de>, "jaswinder.singh@linaro.org"
 <jaswinder.singh@linaro.org>
Subject: RE: [PATCH V3 2/3] arm64: dts: imx8m: add mu node
Thread-Topic: [PATCH V3 2/3] arm64: dts: imx8m: add mu node
Thread-Index: AQHWN+7u7ougiNgAe0WWy8Mq+xUtFKjDgpXA
Date: Mon, 1 Jun 2020 09:44:48 +0000
Message-ID: <AM6PR04MB49667751EEAF5D3AE1199C01808A0@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1590999602-29482-1-git-send-email-peng.fan@nxp.com>
 <1590999602-29482-3-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1590999602-29482-3-git-send-email-peng.fan@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 23769fe4-7f07-4292-b7ef-08d806106c99
x-ms-traffictypediagnostic: AM6PR04MB4888:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB48885C2A519C7B5B2B515EA0808A0@AM6PR04MB4888.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:628;
x-forefront-prvs: 0421BF7135
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hxts2vYuEYG+ZMC5/u3cWDArXFOfH0TTrBQRIN7rmb7NQgnx0AoMpqfUOX1qb8Ms0Sy+eZobiRcBfcx6WHuxdOBIxNuw/xkqxFei/L2OWGfCk/xcIAFbCCO4to3/YximdOrcbTYTqIbdHMS2UpGuGKtkHXAQUewvwjwlbDMzzGKJzhvvFB00onNSrJW+7x5p9lZu4NPQeVekSl/3YfHOYepcGqll5Zjk9hDuWO7C5tpm6u8xUcl/CeeMG0HoSdom5LG+uAZo8ZsKJ4u4qyl5iH9Rg3U6uHzVmZDhF2qbpmP+g4m7d6wftJVTzRBczFyuhMSw27qVoWbj5+2QZmMQmBLjjOFCezwAkPQ3ay492GjMJgNkynfObgPT9Vs5hWHV
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(396003)(346002)(376002)(366004)(39860400002)(44832011)(71200400001)(86362001)(2906002)(316002)(55016002)(9686003)(4326008)(5660300002)(64756008)(7416002)(66476007)(66556008)(110136005)(54906003)(66446008)(26005)(478600001)(186003)(7696005)(66946007)(76116006)(6506007)(558084003)(33656002)(8936002)(52536014)(8676002)(32563001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: NREo4XqbnpE7/bBbY0Pmdax/9HWwm9RnpqKtumDbTzPR2Rk80lSdN70BRxSvlY3gva8MqV5sAmrN5UN61ksesal3+O53eiAxlQ7+c8NG07cGcr5Ep9m63ES5akhF1tCMBUxFxIGcMpOv9xpNcjfF99cVR5ViO9lBYR9z4dtM59pMJyl8NzBMo1Ld0n2jLIwTzR9wFodkb4UkHeiMj2abCWvL5oeEtkeXQ09me2+iD0xBz5WVVQ+4MANQiKm+HLlfiaGw8RPw2jXY3cLGS+73ZUi1HKengQsvYdXUkVHR+NCBYIDgNBUzwHXbXTf5FavTLJfiWVMIUCufK1hETvqKXuA/5eriJBod4I5It4y0G51teouA4Z5pTR8C2UiaPytourMpPI2bZ2u281uIzwNvA6Q8mW8OKGpQNTa0JGx2+lwkifFjC3Ce9hRAzoMkQTovctEGrYXxbWxjwcWHUXC7xqkQEOTpnrqEEePxgejWINA=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 23769fe4-7f07-4292-b7ef-08d806106c99
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jun 2020 09:44:48.3212 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Th/mVdywt824pEQ3/XyShbQYkEOtP//0pk6VxW1RxO4apV99jxFWncGfKlHFG8qrufYzb5XIHxXhLp779WJ7xw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4888
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_024454_171011_D58562F5 
X-CRM114-Status: UNSURE (   6.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.13.51 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.13.51 listed in wl.mailspike.net]
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
> Sent: Monday, June 1, 2020 4:20 PM
> 
> Add mu node to let A53 could communicate with M Core.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
