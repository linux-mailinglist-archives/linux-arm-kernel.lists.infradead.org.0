Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5451B1F63E4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 10:44:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DCEPJtiEKckD45lROw0XKNb2J0sQ3/XoPdRI11ERFdg=; b=JQUo+O4ShR1235
	ozryebCVsovysdvfOiZDkOxVSK47s3OAuVbrbknBOkLSEhUd1YJymYoAGcsghEZUF1SMdawHSkwKN
	Aezt/FZnZ+hA5ZVZKeN6gIeOFmX11ef8DzkF0j8ivnI9aIkmoQxbsfbIT7slq32R8LkEvlURscqin
	gFt1nVBAwfQ2I+EjqQ1ZpU7vssp/OiUXPJ5Egzbj1JiLjIn/RGNsm36xMgQFDJG2rHTCNmWVVud7j
	lisuIPbVtz/dg977JJ5RPYUwsE3yIRS4++bXAONZ/FyoZD8sLRM9WR/Wga65sxUB76dIsX5hg72ew
	oNA9jRxTGAQ4s8fZ1rkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjIp1-0004nK-Kr; Thu, 11 Jun 2020 08:44:27 +0000
Received: from mail-eopbgr70071.outbound.protection.outlook.com ([40.107.7.71]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjIos-0004mY-Fs
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 08:44:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gZTpKhK2cqjUOCW7cM97XuaggFPotOXmB+4pu2P5DBy+RWpKBemdSKYtZr2da35IZw2RaRBqrFqwrGxqig4M+dwFHkP6LubyhVKe2ZbgLxpykJWscwTwzlQlg4BJ96e7XJ7cbTTC1F+oIWcgLHkSXJue/fu0NdPG3mhLXzUJHnutUZe4plxw6xogJNoBOgmtCcTw8aRoiJ80e25r20DZAw35H1MVHv18fi2/bQKl99EhRxekQzkgQB45RMeqIxezG52CAprls56e/3zpRo6dYywqZBjgZTyoG/1rCEAicEddIYhwuglSr+igl+R/7AYhEcfow2PyrOkNfwu/nbF68Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hpuXGIoQIUfWNUTvuSh8cn9nwQTlb/eY0iu8ggjLlEk=;
 b=Xa3dpiStHT5q/7AJj6/nr70Ee8JH9gQKxTthmAq6bWTOZJ5t/hIXBWH8edN6tmvzoUtA822Xkm2LE4VtkAg/wPldZ08FBjQdQrmn+W/MzO8KxMx9+ipV0gHJ+X6GzbZS5W2AQydE/lmuyO/xDnh8K171UIIjrAHsOa7yluLmIBwHBCj38pIq4b19XrNd91hZs6B0GYPdd2q2NRX8rHGNp4LSRAtLrGTCxObrA2CDsbwe1H//UWq1/EmbNy72jKuSTcxS6ff5m1soQYgOKzrX0DKq/oIvUdskK5BujQmglSuMiOmDsvF91d1pPA6N5vwHR1qt+nzi+9o9ro25aGlyFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hpuXGIoQIUfWNUTvuSh8cn9nwQTlb/eY0iu8ggjLlEk=;
 b=cm8PkrG1cKdLgCDP48gU02Is26F+MYbU1Eh6lvVr4uNua0uiamuUGzbCFxqcBL13+lrOzNQWHmTgDPMnhrdKtMiPeU/lFe+edbedlLuxUHTnzD9v2xiKVQ436pC6gARbXNJ5r/HaDhFyVIEz1U2lrfF8yImTryEIvEiawx8+u+E=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (2603:10a6:8:10::18)
 by DB3PR0402MB3643.eurprd04.prod.outlook.com (2603:10a6:8:5::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.18; Thu, 11 Jun
 2020 08:44:14 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3%6]) with mapi id 15.20.3088.018; Thu, 11 Jun 2020
 08:44:14 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Daniel Baluta <daniel.baluta@nxp.com>, Aisheng Dong
 <aisheng.dong@nxp.com>, "festevam@gmail.com" <festevam@gmail.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "stefan@agner.ch"
 <stefan@agner.ch>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH V4 0/9] Support i.MX8 SoCs pinctrl drivers built as module
Thread-Topic: [PATCH V4 0/9] Support i.MX8 SoCs pinctrl drivers built as module
Thread-Index: AQHWPv5bWyCCa1jyBkSPB8P41zHbxKjTGD+AgAABMwA=
Date: Thu, 11 Jun 2020 08:44:14 +0000
Message-ID: <DB3PR0402MB3916AF541FC5692D00625EECF5800@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1591775865-26872-1-git-send-email-Anson.Huang@nxp.com>
 <2dfc7a60-1e96-190b-7385-89a843312d80@nxp.com>
In-Reply-To: <2dfc7a60-1e96-190b-7385-89a843312d80@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [183.192.13.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 2e510dce-1831-477c-7c7d-08d80de39ec3
x-ms-traffictypediagnostic: DB3PR0402MB3643:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB36436353AF13CD8F03077F4FF5800@DB3PR0402MB3643.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0431F981D8
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RYEQW9MJ+pSkKYO24LV7HorQ4dpIQB0X/SXhew2bduwnfrNz6fl08vE1jXw78LjkUZLdoGiSo746AvhokGVwelRAQuvYf9iVsgHytaq6J/KO5v9QR2Ekfv3eaBAtBSlFxTOI0cPeGZJXbube4r/Tkvxhg5WzI4KzBkS1z+Jx+IhyNjx6aCeM17zysraRoU+w8L7SjaSK1F7ySoKTJGrqdIA4VUfZPEpgQ4rHRuaW1jYwlZhSbsQ0FRhzGcok0FCOO8fOrx6C3J8MmEVY6WPHOAjzyBTACAabAmH3bOP2DrQUxe3i1C13hzZzEj1GYZXgkJMhVpSyh1SAc7cBCOCEx5Bp6/1L+9/ttipUdaGl6lYIeUGSHBwymMixnJy0B38h
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB3PR0402MB3916.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(6029001)(4636009)(136003)(396003)(346002)(39860400002)(376002)(366004)(52536014)(8936002)(2906002)(8676002)(316002)(66556008)(55016002)(4326008)(9686003)(5660300002)(83380400001)(33656002)(66946007)(26005)(76116006)(110136005)(6506007)(86362001)(478600001)(66476007)(44832011)(7696005)(66446008)(71200400001)(186003)(4744005)(64756008)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 0FAuCj5W5O4n4xP1P+XSAFWDxntDmMy+DICrJposQZCNA2TLrDuIeYyWeRhVU4HPyECPAv8e/ZX/3gQkDZM0ZDnefho9gcXsjOvvnkyZV9lPG3SDJs8HVEkwqfMISFOo96fiYJsXRu4DurRYH49/QnbFUbukOXoa8EL8zRH7Am7hYQFX4hNOurmvgNdEylPlgImPAddxYNdUlbFHKvCk9Aj84M1kqVRGezLm0bYeqTtbEuBcJgSJ8Tylbjx2oXgJKwVzDnYtEurpzWuok4Bnm3Xi3cec5tkkqBDi4vS/t88NGW3an8xDoQAEPHNq8Z8/AFU+76Wvz5cIArhhqFAxZMZh/zwGhJTUcJwGe+pROxrRVi6tAHFDa2DamR2pFC48Yc+Uj+EbN/9LeSlxA1IMyQhoPGAo4GmKodJC4L4sXmagtRMksYQ3TPN0HWKs28HMs+xmtZQqS1i3I/qDBRBaCEQMAGxvbL4PjbWonMEscFiZMyxBjlF6fjZgot4pnBqg
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e510dce-1831-477c-7c7d-08d80de39ec3
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2020 08:44:14.4154 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /Ff4ynEWvXf0xHYtWNfYSQgAimgEynXk+cZibegW5+T1yyjf+wyuEDk1cSVKS+x4KSZQPqHFMv2XYfTU0YOznQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3643
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_014418_529286_8038E44F 
X-CRM114-Status: GOOD (  13.56  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.7.71 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.71 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Hi, Daniel

> Subject: Re: [PATCH V4 0/9] Support i.MX8 SoCs pinctrl drivers built as module
> 
> Hi Anson,
> 
> Patch series mostly looks good to me. I have a comment about adding
> 
> the MODULE_LICENSE. This is a pretty important change.
> 
> 
> Can you please add this change in a separate patch with a proper explanation
> 
> of why it is needed.
> 
> 
> Most likely it is because it was forgotten in the previous patches.

Yes, it is obviously missed in the previous patches, as previously these pinctrl drivers
do NOT support module build at all.

And MODULE_LICENSE is a MUST when drivers supporting module build, build will report failure
if module license missed, so I think it is also part of the module build support patch,
do you mean it is better to add a separate patch to add the MODULE_LICENSE to all pinctrl drivers missing it?
Maybe we can get more opinion from maintainer, I am NOT very sure whether it is better to separate
the module license as a single patch....

thanks,
Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
