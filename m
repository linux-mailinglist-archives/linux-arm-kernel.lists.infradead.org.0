Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B82BA1DAAED
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 08:46:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F3HB7ZGE3vhAGLbFZjEmorqrn4uCWd74jLKkWraylu0=; b=acM4utnOOFNkZC
	s/VZKgkKOCuuSPYLo4pPaKHDT1h6Ye02gLA3iLBbKUifl99e7nSbLUHMg2yeBfg4EAwvAfKIZGaHc
	TMUwCwrmvUV8u3M2TPBMwD+rgPamM5bv1LWnLdWJ+gPWLnnFUmAYA1QQ3orSymCaue8QuuDXL1fVy
	TPf0R8pst4uH6TRStimGCZEVlZ2G+tECAdQA/g/KwLh6TGNiYgbN2ve+qS7xr0v0AIsKdwDb5AiiO
	QRWB7tVhUIbID+fIGlBdA3XNbfgiPOQAruNizIKMBPMmUDSwRnHkWqrP+b91DqlqPAcbuwmjDQwyp
	0ON0p154GnnT6bmAE8Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbIV7-0002uj-K0; Wed, 20 May 2020 06:46:49 +0000
Received: from mail-vi1eur05on2076.outbound.protection.outlook.com
 ([40.107.21.76] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbIUx-0002ti-Ar
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 06:46:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jmGmIvDtc8thoWQQiC7o0XyBiVHzpq/PqeR8W3bX3Xq2LV98JGGq+YZUfigRjBDjF4dd5v0l+JVIjTgdULcOvzEZ3e5MyMxcgiSKHbrBFWf+N8LO77+m4h5rm/JuEqA7r77MqvyYAu+b40i2NWMzd7VmU5A8K3Os5g8B4z/UY8uYMXfozAeFvy4panWA0v2b9BBQGvNQI9LkZITsS4T5LeXlWuSP7W/dbEOOIRBLn2bARbOZQawvFhmdhxWiOz5N2K8bvRdq696p9aTxnldSviewBjgExQLAgWzRN9RWehhoEYQIue1GHMrqoXTddB/ouo9dQEgRVR1gvAYcTZylyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LvdOZeXO0hjYVcoC/Wu3Ndo4zzPVA3pxbNXW9OWGksY=;
 b=ji6tGdwVcchtIrCxX5b2rdAVuE3ePtQO37A7+7xyQnABMqLgAhEy6fmrix2MYKrDIP+mphKV8ZhXRRg0qcx1ArIML1GePheEn+ux2bybcagxZH0Om63RpEUzIFbtZdLmV1mbfeKSzvI8CEtOYN3nVzkiH3Rcuwcrpd7wm5608yZL6eo1l8RQfMSSg/jD2bSwugZ8yqahdWI9N/7YGZKj4EzxUOQ3ICybMFlKMw07udyhJJD6ElAeJXswtM7wISeCbTWC6xrom+v4ODB54QU50ICcxR0ciEEajttrbqDd1asYLd0/+QU7qyjxxKBY2Ov3lUplqSKCfUq0DCUjBTw+9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LvdOZeXO0hjYVcoC/Wu3Ndo4zzPVA3pxbNXW9OWGksY=;
 b=YmaVJ5b8vsvgy8iU5D/EfI+DWtzdeOXDO9MpKZwuvkDqJal56v5xJBJjj0PeaBf377PnjK2flQwf9JfmDGIzZh3t3pTNRgE2+UW1/egI6INry1yWmzrUYoBhKx1AQXM8GzCZPjwHNUVfUlC8AZGibjPaCFEoMmtxucD5cvlpv4c=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB4935.eurprd04.prod.outlook.com (2603:10a6:20b:7::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.25; Wed, 20 May
 2020 06:46:36 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3000.034; Wed, 20 May 2020
 06:46:35 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 Fabio Estevam <fabio.estevam@nxp.com>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "sboyd@kernel.org" <sboyd@kernel.org>
Subject: RE: [PATCH 2/3] clk: imx8mp: add mu root clk
Thread-Topic: [PATCH 2/3] clk: imx8mp: add mu root clk
Thread-Index: AQHWLkxwbNYAyOGGV06xbpdJkiUISqiwh9ow
Date: Wed, 20 May 2020 06:46:35 +0000
Message-ID: <AM6PR04MB4966F6FBA01677BCAFF3E43680B60@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1589940278-3680-1-git-send-email-peng.fan@nxp.com>
 <1589940278-3680-3-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1589940278-3680-3-git-send-email-peng.fan@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 8080a0f5-edff-4666-49e5-08d7fc898a26
x-ms-traffictypediagnostic: AM6PR04MB4935:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB493503AE280A2A0762D736DC80B60@AM6PR04MB4935.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:538;
x-forefront-prvs: 04097B7F7F
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DenPpde0Fb3wvZPydZirC2aG6O9yWC2O1kLPZgtgSi+nztKw/Zw4jGjmL9g7XCn7T2YIIMpfSoekCitD3L5rOHqqrqt2R/ZKHYtJMiWvi2FE0WVPiG8vXSKHDTwSrCfTleClPOXJ7gGt3xgg5Wsb/qB5zUAEPPr4/NQK/45esGD1fZiobYmdZHdBEIUEtyS2H4UxRZ7JaxJ5VRFXxPbYurZPW7G1rFi77eVLX+8WHHgJjuKjChnb+vw79NKGQtTnSzlgiidOiacAjH26WktzA6bzCZc+W/q3aOouAOetfwfiSgMx2+tlLKs5LYqTndGxxngTUap0eLK1neJQKr9Lbx9Be0PmFSi8izX9C00g8fW0G0nAvBongwpRyfelhQ4vBBAbhCz2FmvF8qQ9Sheh1G5QZOfQIIq4YI7R3yFUNgqARX/Sqphev3jZd6z5pFysVv0/9wOzT5KuY89on3TRz3D8tXNfvQ9CB2kt3j0QlBr9t+jqvaeSr/dx3c3h8GIc
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(376002)(366004)(346002)(396003)(39860400002)(44832011)(316002)(52536014)(6506007)(66476007)(7696005)(186003)(71200400001)(2906002)(66446008)(64756008)(66556008)(76116006)(66946007)(8676002)(8936002)(4326008)(33656002)(110136005)(26005)(55016002)(9686003)(558084003)(5660300002)(54906003)(478600001)(86362001)(32563001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: jzAOiWKwbPy1hv+BKYG/nvUBW4JWe0OSwUDVbmMEM6z6qV7heBOlBRjrld9c57VJwTPrIxHyRjInJugMjEEaxC8M6Czed1G+BOmH928xfxgnuLgcUa9VKzwhF/mcU6hjntDjUVbwY2WM+eUurz0gomcNqrvRDc9iOiVHxliKZCF0OGN6y4UgfX+Y2L9hU7MOswmQbGROVtKUEN0x3oYwwila20KPBC8oz2B0KMMqrhHIe55GwVYZH3KgxqpZaiGbMOmw/b4zfXTcugvDJC0lNEeR95WVkW8AORHuwXubeyyngGd3SSVY0b3ao3FUumaUPowbZTZhhkztZvJjK5iJ39FcgumN1LaqWDXDgG8vYVDCJjk0Dpyu1y82YNO927piIvCEkagYkRWI6ZUY5LmEIA+j2KBFjna0Iyfd2sbKIGKS7CShDdMY6ChW2jPzIRni0ukhlvxuViSxrf2ATMRxOtNAS1XTdNQssgEFAMHXcGwwVi1m3ZvLwjHKZc44RvDC
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8080a0f5-edff-4666-49e5-08d7fc898a26
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2020 06:46:35.3519 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NnW90emCOAXpXkmYeXu0hiDBPw3uNpR3tmI4Ts7MuN1l4Fhi751Atuq3S6+deZB0TUvvlVZHuGCZxeffBRUxXg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4935
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_234639_374228_1EB4ADEC 
X-CRM114-Status: UNSURE (   6.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.21.76 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.76 listed in wl.mailspike.net]
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
> Sent: Wednesday, May 20, 2020 10:05 AM
> 
> Add mu root clk for mu mailbox usage.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
