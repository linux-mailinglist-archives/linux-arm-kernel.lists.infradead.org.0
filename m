Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61AE91C6ED8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 13:03:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7KxSxmdx0vOG91exSupzZVHY/3xaBD/T1cpJ3M81UPo=; b=SElfrDqdZj9Shl
	DRUHzn6j5vUK1Xok4duHx5/BzkfzEA+SBVMHux8z0M0W1cJED07ppLmC99Go6LLWY8L+/Vzp+rqaZ
	3ZT5JhdsPGcyHtH5Qc1KnZFkS0dNnoJcap8MgXzvXbjODnBcgYERvZSZ/eh39p1wPsixsIqHptvuJ
	YZBWZ0X/MYrucunn/L8nYRsMLR/a3xNl55z8JgcY3nWFEruQJuOx3Pw/8Mrv3KJ9TK5awtv9uoVrF
	2KB/a6RpUDLlnPWHsQWv5zIZgNAhAQ09Loa7hogritOY6ldNcjiNslvAC5aYECi+gxSWkBPLNWtVY
	wADV2smT9J0+oDJRXtEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWHpi-0001tl-P2; Wed, 06 May 2020 11:03:22 +0000
Received: from mail-eopbgr80088.outbound.protection.outlook.com ([40.107.8.88]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWHpM-0001ej-89
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 11:03:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d+cpHhmxdXhqf2ix2MGeXk62rf8n4KSt+0lQsm1NjINd/ha9T39dkErBGZkIsfWj+uoMTGH1U6GBd3OV0BjbXaQo6v9R418bFCrPUDjeGnGUGeO2xQVvrkUsqYqWDvsCYWj1HWXgiOCr3pwxQQaLTnneTDXo0FC5bDEaO5xsn7BHk2KXxwt56sFwlsK2k7OdUIe9TIsR7l8KZ+gqXdf+Xb2mnt9z2kOrckpr9UTAReVpUEsPQNBBVsqTqOAvDwZ68tnV1FUYR1RtFcoCI8quMxq57XGkTEckVk22SiwuPAsrRI4XJ1K0cBX9rAFYw5tB35bJKxHaha3Bdli38kzPnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WKg7MJxy/TlIWN/F2OSKOVjHChMZ864nWVbBSD4A/W0=;
 b=n29pSpJQGKeS6D3Mo8KALshksk94Gc/J9FPuA3yGUKit50IWPS30OwZ2LsGJ7AhSrM1sLTgqmw9qHDW62eXHDKDLtOXbsPyfKiCCEybqHk47/wm+f7eSzCedpOmEC4R18sFZNcfYjKU/K2m5cuZfnJ1bbe0w/db2hyete7zKdclyfzgzakE0UAV4sNqhFgNoZ981dT+E+pqRuX/oSx+DaM4QQrTOPv+H88HF+21ZQqzTZ7qpWmFY56icFX5PFkVZLAzNMoaKHukOs3vznnBXyMgP0tn3cCxCl9iIuJ7TNF38VrV3RaKe3znY+z3C13Yj7gj3keXK2AcGrW2Gyotjxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WKg7MJxy/TlIWN/F2OSKOVjHChMZ864nWVbBSD4A/W0=;
 b=hvw9DG7N00jWlsO315BNBE5mN+0t5SyVchzo7hERCSKCbIpAkvb6ZME+J8TwxlYdDvNxmH36OXgUSHgs6FftIm6oSmxE+CCD9SEb+2cwdTmlBhDiFFNAxSLPF8o4XdHDF3nmLrAoSowzw2itBwGBowl3FGX/UkW7eXX5CqDNa5o=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB5783.eurprd04.prod.outlook.com (2603:10a6:20b:a2::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.27; Wed, 6 May
 2020 11:02:57 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.2958.030; Wed, 6 May 2020
 11:02:57 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Wei Yongjun <weiyongjun1@huawei.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team
 <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, dl-linux-imx
 <linux-imx@nxp.com>
Subject: RE: [PATCH -next] firmware: imx: scu: Fix possible memory leak in
 imx_scu_probe()
Thread-Topic: [PATCH -next] firmware: imx: scu: Fix possible memory leak in
 imx_scu_probe()
Thread-Index: AQHWI2SwIQ4b8mkgq0u0dmDTFjL/fKia5Kiw
Date: Wed, 6 May 2020 11:02:57 +0000
Message-ID: <AM6PR04MB4966951644D380842EA80D9180A40@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <20200506051410.27219-1-weiyongjun1@huawei.com>
In-Reply-To: <20200506051410.27219-1-weiyongjun1@huawei.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: huawei.com; dkim=none (message not signed)
 header.d=none;huawei.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [218.82.155.143]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: c82e85d9-4b3c-4018-2c33-08d7f1ad08bd
x-ms-traffictypediagnostic: AM6PR04MB5783:|AM6PR04MB5783:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB5783E63BCF0E60B2B86FDD6A80A40@AM6PR04MB5783.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 03950F25EC
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QYrOgY8o4QnmIN4CytDgMZIxiFhPAy8f1IGaFiw+mzVSe11diWmgoIQkM2dWasqH0t/nOEkAOzt+CkudDdl+TOdwLBWvzw0tmNh0dc6ecrpZSQgTnBZSrPRwt13cU6DsNY+3j9ypx81UmQ8IC03snq/AHjbyZXN6tgbtZD8SmsJecSyfRd/am+akwF4GS5B8Xt7qCu7OnAuaaiCjRKg+4E1UkCt2Os5SA3gMdJyrrc28C/LmQnX62xKv60a0czRcRmBt0yxjQ2wM2syMf/JEOlAyAv3XamWuMbc347U0n+Zkaz2phT70ZdqwIZCNsh7RekY2FzwCptQ41iO0qZoW2G9WMDaiR5pNTOV5CLdC/AlQCvYLY2cNcwG0PS/90fAQoAlTqvDsqgqRF7xFJvlF55qUm18R3Jst1CEbY3t7Zg+f1gZc3C76I5gGI/Mg1PgeZC20KqAWE+/XszEU5HVGHVb1M2UOREvy5OnnQfIyA1S4Y39KuoQhGBEaP/4c+63K7Mg47cWDVe5rR326fqA6rw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(366004)(396003)(39860400002)(136003)(346002)(33430700001)(7696005)(8676002)(4326008)(44832011)(55016002)(52536014)(66946007)(6636002)(66446008)(64756008)(8936002)(66476007)(66556008)(71200400001)(33440700001)(76116006)(478600001)(4744005)(186003)(316002)(86362001)(5660300002)(26005)(110136005)(54906003)(6506007)(33656002)(2906002)(9686003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 7tFsmrmpYls/jHdLZfB/Zfm9g50l+kxYNupklRWraZPnGCLiBCxnrYCHa+RFA/M/BQIQxTtZyaCELcLyaiZOrqTrxhQKUKypGf9MEGBmcaFm/Tpl9+wzx/sRyTjGmRYqeMXPCvgpHLtJ13g1KKxCn8sFYIIYRazwVWUTzAbBfNqdvHOXJSGiEGRj72TkIYKrulehJoA6+3KieiCVT45pTT0oUVvvd0g9MY+ptGb8TQeUZPCEk57jSix88UdgtneG9DOd/lrRBCh2w9LmI90pz8av5m98Jz0abNfbWBZ2KKMk55HR+k3omPp7ABhJ1xVk7ZrY9TJPyQRCD7QZbmtjh7DKc6A6cTZbvMKa0d+v5Bnaz+Dc1INuUKN4PAktvxtspmGaMFW3W2KUTePTw0c06B8gNZukXvFpPFx40SzfNH03WlzPYbW4aqT81QVoAtBefnBvyAe0kiUyWt32OyaAaRNpgyOBygevjXY0neGTlS1eekumIsz5HkxGy2zrPLNsSPS5HDKIOhGjg6UunPYuegu5aYkBkBgSsZtYi7H4qwPv+SEsqEk1iQZihLf1ewJTc8q9mthWBMJaeXOpQxJLW2Y9nr88jQhOiOAhDJKrNLjslI0OpMO2L/7/7dfTE6FxZ80f+HGyEQVmsEnCuUshTF3Y7hUPIyaNg61Wtc9hkg+1i4QJs8+UYW5EED7N1JIDq/Is+JVXAsQmY6noilphaSUcXgg88gUPPOHaptVOh9KvnBgZJrc4i+Uvb96vknSG6Z5UVSrO71bfdUz37xzVoObrmoHnANoVPWHK9TFAtMM=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c82e85d9-4b3c-4018-2c33-08d7f1ad08bd
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2020 11:02:57.3606 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3h7mEna0rjES9McivsU+1C1ry1Qdxd8MnWlAI25tfaGL5+LhonjEgqrejdjY48WnWltvV8IuWLcKe4CWJRfH6w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5783
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_040300_378988_F3349665 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.8.88 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.88 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Wei Yongjun <weiyongjun1@huawei.com>
> Sent: Wednesday, May 6, 2020 1:14 PM
> 
> 'chan_name' is malloced in imx_scu_probe() and should be freed before leaving
> from the error handling cases, otherwise it will cause memory leak.
> 
> Fixes: edbee095fafb ("firmware: imx: add SCU firmware driver support")
> Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>

Thanks for the fix.
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
