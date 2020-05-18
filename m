Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B38E31D732E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 10:45:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lTz0JpT1FE/HOp7EmYk1HEleclv1t+ASkEQ2h3rr6d8=; b=ZqSBHIPY9fezXL
	g+ufNy9Qen3mMU0eQzRwYMw/F8fmWCjud6CiVTrhgyyawVX/D1gV2Fv+XdF+WR0rEXNQR6bRJuv4E
	qu214FpgLTwe+qndKOe5dwWXh42gP05+kAPWhUiaoa+/P0z+m8AOhVPS8EPcMQ3sX4Sdmr38aMtKa
	HrYxMcgxP0qgTpCJ4y/jQLaaMY7QkVXgULg8lotjS3cjnOXGup1LVcQDcFMXcr/iUpI2vq3sw2Dhp
	ago9NKJdDJmEF9rECqulXR+f4ssaezwYCtSygzSwG610koVtQh8+sBCkkKXc4nYh0wUuEJKTwZWTy
	HmL2Jq8+rMzdvUzT84IA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jabOe-0003ex-Vo; Mon, 18 May 2020 08:45:17 +0000
Received: from mail-eopbgr80088.outbound.protection.outlook.com ([40.107.8.88]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jabOM-0003eK-49
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 08:44:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L59aOvSnuc2MU3qFmetZR/9uq71ocJetFeAcNpSLTDvW8hbnsQ/AISnokEFCjaIfN/V9SR5P1J/zPVZqJnoxZOYzDU7The3RBixzKPwzxQcz7Eh9ckQRHGRDOx4DPoeshFSOOV48Pa4m4ODScpz/OfXRaK68zVa7ie/3GDlxK9p6zLVes1mxLnFvke19j3fHa7HGkbalLJriG0ehp4/wCbBROhhLNZPYlHMqSCrHoYXdaj7YzHINwlONsDdNPQt+P3fo0GIpNjscKJCN5O4DBoW8KVO+uKNbkZF30S9atN8Z5M8Q3GQDbp3ZyLVnST/1SwuXAsw+zSE1cnMIqNDctA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A4ZfTzF/VHX/IxAp6Vy5mJRh5UMjYzxVxmkiyD/9tOU=;
 b=Ou3H/rPIlcrrE4zTw476RYEX24Yum+YAWa1++jRqRF6S56MDrUk7AKq7EhPPFEoxuElhFfkDiEAc8VWO04Cx/PVondNrqr3NYE0dkDeVb+NOvqHAXNv6k68Zae7+ZzEbUKly1bcexuLOtgNHnsvMUGLDP/S10Kqqt8G5Z0MWm2oMTM9BNgjkm9VXAyXNVvhi7IbUS/787b9u7Q55T2qFkYscxswgBu4SDZMdSo7bBwYXkQicIUhFc6BED+UwTTlOjR5fd/MKANUtis7WKlbvHhcshOxCZy0u1uV0Grle34tgGGvikhc95yvwrk5PoTQDcpzMiFHAYXZ9ZX99nqHhYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A4ZfTzF/VHX/IxAp6Vy5mJRh5UMjYzxVxmkiyD/9tOU=;
 b=gNzsaVy44biKuHZsoqjv5JpDNTYHje4oveKdrw0ovpsgok0sTLWUU+99y21jrWlHRGA1VijF9quD1OKOljOSISwg5kSrWTTdhuIENeR3KXqOC7TjH4nnmjLXKEJmmVnNGZgM2PI/pM37XmCHef38LwLX5dwAXqo9XE6G2YpdHe4=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB4120.eurprd04.prod.outlook.com (2603:10a6:209:4b::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.31; Mon, 18 May
 2020 08:44:54 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3000.033; Mon, 18 May 2020
 08:44:54 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH 1/2] ARM: dts: imx6qdl: Use nvmem interface to get fuse
 data
Thread-Topic: [PATCH 1/2] ARM: dts: imx6qdl: Use nvmem interface to get fuse
 data
Thread-Index: AQHWKY2Nff+uSdQzb0mgNHq+guQUhKitiANA
Date: Mon, 18 May 2020 08:44:54 +0000
Message-ID: <AM6PR04MB49665A2E7AB525E8C7627F1180B80@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1589418528-26410-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1589418528-26410-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 18c88c78-f904-41f2-8600-08d7fb07bcea
x-ms-traffictypediagnostic: AM6PR04MB4120:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB41203724686B91EAAF41241080B80@AM6PR04MB4120.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1751;
x-forefront-prvs: 04073E895A
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: p+kgXgWdX7I7gtmm3DGz0jGn5EDxyNtKCr4OsYJHr0f55wykoR2reJcdkejCkdrqthLBvCEcn6xpC+FjwOYCTaWD1MDjgnzFh3UqJy9tmfzgl0HYHeX5i1m7Ph5wPweiwmS0ia2tcmlk7ERm9miSsi2tAvr0nLuHOevDAwA+FvmuIDglF+cqkb9DowSxTYShZ8+C39YlCcQ2Np2pKLDvLwi8B0OTfJ4k3bIhugRE87n8KqGkVWSYfLxjfzmMRcAQjlZQNFuOQnyTJ7aAfsxo8KSMciJXc6lnbCL01NfYT1EpM+TAHDFL/SX6sHO1i7hTcGxTUrFgqeGLWZt1mc8doE4AopiteEBx+eensFcibvORZveZHnMPXMjkGd+fde5Iuj62gsaKTtc4IS09ZDD34XAq8K7PYmmW9OdqlflhO+2gjtEMUry4HfvOo42Mj5Et4A4BMRmLdl4/+QN2adc4AkSQXT2Y6aauj3rTTnq6xET8B6sfskJ368K2rTUmjx1Z
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(39860400002)(136003)(376002)(346002)(366004)(66556008)(64756008)(66446008)(66476007)(76116006)(66946007)(86362001)(5660300002)(7696005)(478600001)(4326008)(2906002)(8676002)(6506007)(8936002)(55016002)(44832011)(71200400001)(9686003)(52536014)(26005)(186003)(110136005)(316002)(33656002)(4744005)(32563001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: irXoVF3U9ugrN9aSpekwU+39eBrO5Rsht4q9YOE8fhX2wtj32S+KWR7UyFP0/e9t6TAlKASb8Q+mYYm6nLfPlnhzwjO50tCBv1Bp+Zq/3l2fmmhJgqEE1h/f67oJkbk2LVl8yp09stIChx/PraBDWMkfQTGG+VwXucRnGJV2uAHbjtucD1XRHEQ9jcOfheB81T53O0Uq6xpVeRUtHh/68vlQxGPmDD9fcMzyP0wtu0UziFRsmfW2iUVMDirvuoPfSle05tvSyCb5KSGyqdJPFJLYRz+aiRXdQXUW9chgAQ9vnnYz3pxTyWjU+xf/9UAO+EUs5tz4vrRofJGhOVjuuZxelbp76kM0DClzCxbPNo6DMQ85zUgKFZPp7fzbLD4bs+3HFro8tCUrw1d9JmshoTTG8tg7rLZer6PqTTM1ili0GHGaa8vyJi6sVsFBgGIBJVhbcHoUoiNHK8QvTJB6Am3Lwa6m+KtZupeXBVYMJgCuZmcOeEPt05iWL9zhocRn
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 18c88c78-f904-41f2-8600-08d7fb07bcea
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 May 2020 08:44:54.7894 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8j7ipcIEMuya2Qk8vAS0Z6gHv/Ldky+h9no9owKdyzwy6KhXbuZbI9T1TwONkg0vMrJs0hQXteAqvAaezX/6bA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4120
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_014458_164581_314923B1 
X-CRM114-Status: UNSURE (   8.52  )
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
> Although ocotp clock is always ON for i.MX6QDL, OCOTP can be accessed
> directly, but since i.MX6QDL nvmem interface is supported, and
> fsl,tempmon-data is deprecated, use it instead of getting fuse data by reading
> ocotp directly, this makes all i.MX6 SoCs aligned.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
