Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8965156E15
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 04:49:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VmAzZUTLPCcmI+Bh2IQrz3WDFae2cTM1YpuAJ4AenrY=; b=GtTrS3FUMee1OF
	ABvg8CjmCy6qogBQymJphZ7YLrsgDK3cUBEIT4S5JodSjbx1ohuDBydYrN9zRWNnJnNEcTqa71Vkf
	ktE+bSkUY/Fh9pjgYRj0BkasE6YbKutmLB11wTt9ce9xBpVfHUhmVFGizeMbwiGbW+lVCBx/YpQtx
	xGwQ8L59ik6pi5tzD3yaqzTwYdzYa1zS+DfvkQnzYFrGM3qBgNYW3XZuyr1MUXjPauqP9WSnlsDNO
	NdAzFwAt3w2jgRYgjiwOZWOO7KlvDZzYu7YcSsHN8raIYz66sCYOFYJ2hx6UU4azJNlTpLRNKPAXs
	31KZtr/iG3YqnSZY+5WQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j104S-0007Pm-Mg; Mon, 10 Feb 2020 03:49:16 +0000
Received: from mail-he1eur04on060b.outbound.protection.outlook.com
 ([2a01:111:f400:fe0d::60b]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j104K-0007Ov-85
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 03:49:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IK7AiNXeRiq+qitREzVkJbizoNM+gUildJtbp9M7veagMf8yM/6XO8Yc5d35TuSj6YBGDYGdmJLk0R0XlejkzMycRFteTE59+OXMLEpaRb4e90lVcnCVYdZ4X02IQUUwaf5vnpCisE8GcnXUqWrbjKgyox/UwiPopOcXAK8HAMnUGR78usoMEdA/+5Stbo5Y1ToRdHzjZZinCMl4kXbccnCgth9hPzYKm9ctXfj5souzYVk8FlNZN6fUSrNcOxk9kk0uPppRyo0q7sMwRzJnTKgjKEcOrBSE00CDzxDbgHS+4AsfwBDImtkgQq3MfPGwLhX9KbSGzw2k7WH2N63/Sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PWcKccnqPgXyME8YSC9uXIXZ1LKBKSQi4Zf6Wel9inI=;
 b=MiBkZQjfOzlY877t39ZtP6A9dBO2aJgMMfsMUPW1emQO0EzEJtZH6CR5LeOmlyXB1ug5j/yI37QqjNYhcPL0LPLAVAmKxSai5MLOELb/n7CRg6nJMSbEjBLKOXGsWmPWMOVny5m1Y/wqayXLFDhOdiFThhNuXOZEBmMbK8sOfPD9CMvpcTnEw7HpTmsaAi/mNXNdCpXnrx/IqPqXhWWLRHI3MNXZIhQTnFrpE5EqSGxeTUS6DpMcs1CdENK/mda0ro1vumb/80sGCAtf4tj2O34f6/Bjh+dLBQOhgiVrYmO2C9qORg9EjY8ASZonJccTlHOBOIo1TeeFv6zCJGA+dA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PWcKccnqPgXyME8YSC9uXIXZ1LKBKSQi4Zf6Wel9inI=;
 b=NDomIJEpOjpytPm804ncqopJHSYsiWTzFx4e+V9SPDu7qnBJKaoRF3GUHuMmLdcNB9EB+oEftwtOz9U/6MNa7SBBW+G2+CSVIvV4aGRVnLDXOc/My08Wm+nw5FNLqo4FzBFHGU1a9WWp+A2FKlO6cn+GWK4x1qa9LtuSx4nt2V0=
Received: from AM6PR0402MB3911.eurprd04.prod.outlook.com (52.133.30.10) by
 AM6PR0402MB3767.eurprd04.prod.outlook.com (52.133.31.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.21; Mon, 10 Feb 2020 03:48:59 +0000
Received: from AM6PR0402MB3911.eurprd04.prod.outlook.com
 ([fe80::460:8acd:2cea:5c07]) by AM6PR0402MB3911.eurprd04.prod.outlook.com
 ([fe80::460:8acd:2cea:5c07%7]) with mapi id 15.20.2707.030; Mon, 10 Feb 2020
 03:48:59 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: RE: [PATCH V9 3/3] arm64: defconfig: Select CONFIG_PINCTRL_IMX8MP by
 default
Thread-Topic: [PATCH V9 3/3] arm64: defconfig: Select CONFIG_PINCTRL_IMX8MP by
 default
Thread-Index: AQHVy0U5MD+DPc9r8kairZO20VVOQaf4YqyAgBuQcUA=
Date: Mon, 10 Feb 2020 03:48:59 +0000
Message-ID: <AM6PR0402MB39114445CF68F875F61369C3F5190@AM6PR0402MB3911.eurprd04.prod.outlook.com>
References: <1579052348-32167-1-git-send-email-Anson.Huang@nxp.com>
 <1579052348-32167-3-git-send-email-Anson.Huang@nxp.com>
 <CACRpkdb5JEBqncC9gfPxM_TL4Prmiu5ZSn0kXt9mHBBp49p4Aw@mail.gmail.com>
In-Reply-To: <CACRpkdb5JEBqncC9gfPxM_TL4Prmiu5ZSn0kXt9mHBBp49p4Aw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 5fc6f16b-4e13-4d0d-e4d7-08d7addc295d
x-ms-traffictypediagnostic: AM6PR0402MB3767:|AM6PR0402MB3767:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR0402MB3767960D8163DFF2673B12EEF5190@AM6PR0402MB3767.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 03094A4065
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(136003)(346002)(366004)(396003)(199004)(189003)(44832011)(316002)(66946007)(76116006)(6916009)(64756008)(66556008)(66476007)(66446008)(4744005)(9686003)(52536014)(5660300002)(55016002)(478600001)(54906003)(4326008)(33656002)(53546011)(6506007)(8936002)(7696005)(26005)(186003)(7416002)(81166006)(81156014)(8676002)(2906002)(86362001)(71200400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR0402MB3767;
 H:AM6PR0402MB3911.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fhwU9GJFsafz6WY2pSnOBW/q56J6mgOeWwF4MJ8EoR7zi9rigZf72ngjq805RkN4oHbXdA3X1AffALDfATa2DfGHh2CMZjqv2KWxMbAPGxuQN4DeU36/11CpyB5v1miJ+V1crU7qSDg7L2iUv9FjR3RWcVx/ETuuPdzpgN+er+8he4819MxfxRuH6jVx/hmAWHimPXfS5ugNHe5iWqoKrjLBziAaHhR8B3pSpBvBaDh+RcWe9c10V4LzmASpwznzgu0ZUzp7j1vENn1EtZlrodeUlBYV+AEvvg99S1DP1Lxm78lWuGcphjzpPkbi0ALW3y3A9Ydow6G3fbZ//WwIOwvsehHIIzDrA/QyEcEil9mtKLWn1suGRQdeOzeSYn3rGNvLBu9zhdnUeZ3cTGpv0NMs6K2W542B8Dx4CWTVqylm6W8rMS12XuB8DJ5p/Kdk
x-ms-exchange-antispam-messagedata: /BVqyRUTFRRGSSjgKSpgqqK9mPDNADC6j2ufeiYFoavLMrOdsancQ6NMIDmiKSd41H52waZ0lWsayW0I1l6Cs8ey6mKGcW9Enj6izC+JkjYMra4N0KqoAn2a9+mgyOaBZOSPwQFegQ3P8P1DCG74ow==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fc6f16b-4e13-4d0d-e4d7-08d7addc295d
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Feb 2020 03:48:59.3884 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6HiIK84MB3RJWigpRfal49x1n7eJJrrVf4urJCScmWIUbkqRgbYPmZ6kTpigoG97GdV5q2CdNE3NblWCqQaLsw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0402MB3767
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200209_194908_289942_BD767AF4 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0d:0:0:0:60b listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Stefan Agner <stefan@agner.ch>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, Will Deacon <will@kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE
 TREE BINDINGS" <devicetree@vger.kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, "maxime@cerno.tech" <maxime@cerno.tech>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Dinh Nguyen <dinguyen@kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
 Olof Johansson <olof@lixom.net>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Shawn

> Subject: Re: [PATCH V9 3/3] arm64: defconfig: Select
> CONFIG_PINCTRL_IMX8MP by default
> 
> On Wed, Jan 15, 2020 at 2:43 AM Anson Huang <Anson.Huang@nxp.com>
> wrote:
> 
> > Enable CONFIG_PINCTRL_IMX8MP by default to support i.MX8MP pinctrl
> > driver.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > Reviewed-by: Abel Vesa <abel.vesa@nxp.com>
> 
> Acked-by: Linus Walleij <linus.walleij@linaro.org>
> 
> Please merge this one patch through the ARM SoC tree.
> If don't know who collects the Freescale/iMX patches for ARM SoC right
> now....

Hi, Shawn
	Will you pick this patch?

Thanks,
Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
