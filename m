Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 529E41E1241
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 18:00:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dVAs0FykXY8mvx2MSjTiRKve1JFmP6w1BV+NTWamVjM=; b=HAdIDosnjqLekP
	sltlZLDghEwGbWTVZkeQaOVOEzjb7fNYiexrLXxee/BwxnrKOpcO+5tE3skSAG2UEcK8mjC8HGl/5
	++4p7BMTPlI0lXK6XHZfhN3pBvNEsZRA+tsZliSbeZmrnDhqZ04N8One8yui0EKuXfnd295EIgHJ2
	Q2WUHMbpXanpWxrnOgyUESotbsq83fABEkdqoqq4Mc/x/zSV3ALiRCfMk67hZV3hbbx7/VTPl7dsJ
	ceo/BKm/7NgEqrqtcX1s9SlYhy42mojQyKdEvqjyX/EZuyJcp5F1Vscqm2m0e+7L27tdf1dhLep1r
	lWDOX47QVkhykL04ZDDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdFWt-0001AT-LE; Mon, 25 May 2020 16:00:43 +0000
Received: from mail-db8eur05on2084.outbound.protection.outlook.com
 ([40.107.20.84] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdFWl-00019n-9T
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 16:00:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nf0c50jJ64JtKUZ85BvubDTcqQYeRySMICxigk9MqgfyQ1qIvY6fAyKSK2GyLJowfZZ0amFUKFihn3u3WDstX6P4L+sM9hp8dkhyPfQrFwKHUlFfY7RmQEo7aVbDUY+7gpH1KdoeXPYsiapN3xOxiCofjNbL0X/XSz1UtRQ2fbg5+jVeMElo9uAPePh6Zy/VbeWRFTt2SFlh2oEpp39K6vcZGUk3K8HeKQvuMQU72O4EytfnPXZei0hzthcrMXmlawAryXaDASASh1+YN/Ag6+BhYRz9XBccuwBMVSug+Dg0UfuBmTCJSDah7CeRVP2L2CSNKhuWHCFNo7FpHqxgJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EwpWzuWDO2JqAqxNvR3b7fQrPelHxaVQmTTfQMkojVQ=;
 b=JP6xmOokv0oWO3LDzOpml3caWujN9r1AsaqoP1Y2sYU1TCUTbACVmfux1DU8UpFXn81hUe35avvzwKqt+XFt4thUMnucPXzzTb1QEhUNY4obAMVOfidnr/72jR9U7Qg3oX6+/glYAUFOdEba3aeBznHoCkH/DcqV1sm4cIEjIF1l/iWAWUgOKPT2VXEBbVuVaK7DPOULcJGhW/HCuiXk6UCNrAI6Q/6uz/mW0htfrpKLv6opvsWz6MbzQzTk4c96cdkYZClJUIYsULJiZPymuwpJddq9dYZzEjfksNjnD3FTzF6GbYs5k+MCGH9ChT0sCKa49L+4sYogG34uMR7TGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EwpWzuWDO2JqAqxNvR3b7fQrPelHxaVQmTTfQMkojVQ=;
 b=BrOsot1bMbgbxH+oTG/gmfGrV8sU6+lmG0SQ5sm5asCwGC9qdD2877/Y+COHx8CzD6vPXsG1EALB3uknisfb88k1FCnBFIK7qVIMaYnio57wKTenaCTLfRPCKAYS2tqPVJxi2xmLiP3mbS+CrO5FCrvppVx8pc0JdX1DHxBPcF0=
Received: from AM6PR0402MB3607.eurprd04.prod.outlook.com
 (2603:10a6:209:12::18) by AM6PR0402MB3334.eurprd04.prod.outlook.com
 (2603:10a6:209:c::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.27; Mon, 25 May
 2020 16:00:30 +0000
Received: from AM6PR0402MB3607.eurprd04.prod.outlook.com
 ([fe80::35f8:f020:9b47:9aa1]) by AM6PR0402MB3607.eurprd04.prod.outlook.com
 ([fe80::35f8:f020:9b47:9aa1%7]) with mapi id 15.20.3021.029; Mon, 25 May 2020
 16:00:30 +0000
From: Andy Duan <fugang.duan@nxp.com>
To: Andrew Lunn <andrew@lunn.ch>
Subject: RE: [EXT] Re: [PATCH] stmmac: platform: add "snps,dwmac-5.10a" IP
 compatible string
Thread-Topic: [EXT] Re: [PATCH] stmmac: platform: add "snps,dwmac-5.10a" IP
 compatible string
Thread-Index: AQHWMm5I28u/w5jSek2LIR4rTdAvVqi417cAgAAZW7A=
Date: Mon, 25 May 2020 16:00:29 +0000
Message-ID: <AM6PR0402MB3607312E97B14B09C398B586FFB30@AM6PR0402MB3607.eurprd04.prod.outlook.com>
References: <1590394945-5571-1-git-send-email-fugang.duan@nxp.com>
 <20200525141048.GF752669@lunn.ch>
In-Reply-To: <20200525141048.GF752669@lunn.ch>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lunn.ch; dkim=none (message not signed)
 header.d=none;lunn.ch; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 3e80690e-5ee4-47e3-512c-08d800c4bf94
x-ms-traffictypediagnostic: AM6PR0402MB3334:
x-microsoft-antispam-prvs: <AM6PR0402MB3334C20C5CCF4CFC8523E6D8FFB30@AM6PR0402MB3334.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0414DF926F
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wz9m80zqy9kkryVwCpZ+PXuZmXnIpCQ1uEyHy7ZlgnDoCL72QVuVQVG+SpVv8yAQNF3rx5iXJ13rzd2IbylOGkt04L0v6LQgKEwFy/G0ZKCAqrWnqFOlYuaYJih1vG6yidMd1i6+ZH7qv4oS2vdRsM4+wmSD/soLsZVV7xCmM3N4lcuI7B+nla9sEaI1F3MGepMzsbtYkHBgvNIjVOp8/h00pM+Sdmy8Qx5N/m0sM+oQjgQuaT+o8ZAh3dcTb42TZk3vc0Sod6x0fwbkU+6BLnk2e0einRoCjCDog6XK7zIFOwwgqCBIRHE50V8JAk2HdF1ZhCWpSUZkJDWomNHjl3dKtqgXDZtaisL9bZP2w3SVEREc8oqDY0zY6OQXcfer
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0402MB3607.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(39860400002)(366004)(346002)(136003)(376002)(86362001)(2906002)(33656002)(5660300002)(66946007)(7416002)(55016002)(66476007)(6916009)(9686003)(4326008)(76116006)(66556008)(66446008)(478600001)(64756008)(52536014)(4744005)(8676002)(6506007)(71200400001)(316002)(7696005)(8936002)(54906003)(186003)(26005)(142933001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: se1QmsgsGxxX1y5j2ZHdmb3E5UoSNcdwHq/b/jQupy/LJxbPowJJcispexzcZAOzh46N+Rm8LdRhw7CNx9C3F4ff68XmglGsffi/DXDNLUA5wllH7qUN7RAz5iaJjvdnChmDQa1Dk/n7go49GfJDPOTBLxfNl6ejeohKxaBdUmg+9EJ+wU+xiNxIV1416awZrOD2FDR+CtLMOtGrjBgbg3UYxur4tBmPi7SfVWZ4JdQJ0OGegduqWfzEFL3DemMcP4IKesNtoOruNhyAlXdhz/zT9D77oF03FJDi+mxxXH4lBIgCbDAUNTgWy9CFFQGAwI3CiipJvp9P5LxNxp/9XXCyyA9BPI5epcZBy8W2ZJRsuDg6hmuJgE/BS55Q1sO2eXlBwCaOliC2TFw/hOmiRHe5/imcaaazeqkRZMInDsiNwKS11JBIJGvt1t7IK65vCCGTgXlw+AB3RH7Fgk9WExKy02eeWrci/pkMfGJVH1a4GjphMG4k3Kr8nH3CopTq
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e80690e-5ee4-47e3-512c-08d800c4bf94
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 May 2020 16:00:29.9674 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MaUKH/033bPtS/kvylfVl7quoHN53lxZV2LywUzar3ML0QaoYFWJlFe8tSG8IntYU9j6tGi6JKgJO17oN4+rnw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0402MB3334
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_090035_332321_8A7D0628 
X-CRM114-Status: UNSURE (   8.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.20.84 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.84 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "alexandre.torgue@st.com" <alexandre.torgue@st.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "joabreu@synopsys.com" <joabreu@synopsys.com>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "peppe.cavallaro@st.com" <peppe.cavallaro@st.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andrew Lunn <andrew@lunn.ch> Sent: Monday, May 25, 2020 10:11 PM
> On Mon, May 25, 2020 at 04:22:25PM +0800, Fugang Duan wrote:
> > Add "snps,dwmac-5.10a" compatible string for 5.10a version that can
> > avoid to define some plat data in glue layer.
> 
> Documentation/devicetree/bindings/net/snps,dwmac.yaml ?
> 
>       Andrew

Here, we don't want to use generic driver "dwmac-generic.c" for 5.10a version
since it requires platform specific code to be functional, like the we implement
glue layer driver "dwmac-imx.c" to support 5.10a on i.MX platform.

So I think it doesn't require to add the compatible string into dwmac.yaml. 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
