Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D3C19A4D9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 07:42:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wm5vdfHEKyiVjHYFB9M3uIO5ojk20j1Y7KVK9l+N0qk=; b=NOsQPBjox13txy
	gNlJWaE/SLI2f6bEO3dyVDvE4V86RiEblXcMYd7xJa7ZUSGq+w5p/aEiUIurxhT/rYRxhCZw88MyI
	Dd/Q08iRs5J/XNhzdnJCvpkgjHtUn6fv1FVZjQtmJaju2W7RE6605ePMSdIMXZHcjcs2rGPJiQePV
	+ot1ZaKnBBY3nAlJR/CWkJ47zYc/uNaiCqRPhGiqCMgYuNsp2eDgmZkUnRcorejg75p3PwiS9Q0y8
	k1KheUvzsUtoqFPmmf2jCJfiFHlyBxzLJBNUtyIs9TZdyiLe17y72pslUZMOCBTYEGz0lYSiBJ13t
	9UTizJu0Xtul86/mrmVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJW8v-0002hE-CN; Wed, 01 Apr 2020 05:42:25 +0000
Received: from mail-eopbgr140054.outbound.protection.outlook.com
 ([40.107.14.54] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJW8m-0002gO-GL
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 05:42:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MdvqT+ixkmgo+hbkpr27su93iJ6/Lsurl5X3kHzKwsrhTBjgk9Ve/DnoflP7uGec7yDrtqt5ACAXXxRGcRoY2U/L5QBdV4Owe/+2nRhXOfeR2QAxKrdcupbWuIlXxNlVLKCpcRG7Yzjw9jgCv/OfDvauJHDWnrz9TWHdwnPg6O8tQo2LpDm+2w0+PRjQ9QnC42M1SvC5PAC3OoVufvpo1nnD73Plhtdis+1G767jcVRPYqTNHjRvmmhYotShUHkGF2h4lD8leNKU1xygoaq3q4/ALzsytHis45Obm3iAmHAotl2YLDRoNgVwF4P53TWVYkddkKKREi6k6QwbxZCptw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hp1BpGfMM3aK5fdHC6m5G8efLg+rP5j9ptCbNB/Eyek=;
 b=m0IRHov00S41WNHvq2DSyZDJ2by24j/GePcRsO3E82aS2y89wh8B0wK28Rzy0SoT2jwDWAtQGPxnnbOZnfKnnlp8RwxNcgUV/BHO/b2/HFY4ZjZ1hE3GhAx0hWJ/Qo8EFmH/rOYVwoO5oqr2alBAAVbzrbaJDJz5teCZtVoQanio6zyS25Ow/x9uO7wHMtTYuS63NKpfYrNvDtufv18tlGaY0uvfscyzGO8FaUWALU0qrN9ArpHm7J+ihXbI3lS+7NLbgUItW9tsYZyftdeSD+hnOlT1C60X0TsX4Zc3G6OCaeRCfySjwBtMGk/hUyYiPC+xy8T9G6ri7Uvkt8BDZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hp1BpGfMM3aK5fdHC6m5G8efLg+rP5j9ptCbNB/Eyek=;
 b=UEv/A/0Jjs1YmAelcVoo4dSpU7S1DUEIUz9M5HlGHRL99XuDHvYthGBqiO4d5boRJJ1VK5prRDbMgJkrauQO+Y8FB/+3HJz6ltrTzX2oqo6gfq/bzo6mpr5aE10FOThewAB0HBm+Biy/3GLYx4Siqt38JXZT0Ly7qyCMniSoCb4=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4931.eurprd04.prod.outlook.com (20.176.214.206) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.18; Wed, 1 Apr 2020 05:42:13 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc%7]) with mapi id 15.20.2856.019; Wed, 1 Apr 2020
 05:42:13 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Jassi Brar <jassisinghbrar@gmail.com>
Subject: RE: [PATCH V7 0/4] mailbox/firmware: imx: support SCU channel type
Thread-Topic: [PATCH V7 0/4] mailbox/firmware: imx: support SCU channel type
Thread-Index: AQHV/cQDu85ufqDAx06lOMhNtamjbahaF9QwgAmnWACAABWP0A==
Date: Wed, 1 Apr 2020 05:42:13 +0000
Message-ID: <AM0PR04MB4481F99E13F6ED8F2ED9A35A88C90@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1584604193-2945-1-git-send-email-peng.fan@nxp.com>
 <AM0PR04MB44812577EF272CA1D457A1F788C80@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <CABb+yY3jqhQpDf3eBMrGRfYeS2-Gj7o3YfZJVkb7Tp+4i-QZ4g@mail.gmail.com>
In-Reply-To: <CABb+yY3jqhQpDf3eBMrGRfYeS2-Gj7o3YfZJVkb7Tp+4i-QZ4g@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 9242672c-628a-4a9d-4256-08d7d5ff6e0c
x-ms-traffictypediagnostic: AM0PR04MB4931:|AM0PR04MB4931:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB493152AB4CAF7F0F21D6F97D88C90@AM0PR04MB4931.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3044;
x-forefront-prvs: 03607C04F0
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB4481.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(39860400002)(346002)(376002)(136003)(366004)(396003)(7696005)(44832011)(15650500001)(8676002)(64756008)(54906003)(4326008)(5660300002)(66946007)(4744005)(52536014)(66556008)(81156014)(53546011)(81166006)(76116006)(6506007)(66446008)(316002)(55016002)(478600001)(66476007)(26005)(33656002)(9686003)(6916009)(2906002)(71200400001)(8936002)(186003)(86362001);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pV6Mr6gKoB0IaLRpf9yorfWur9ds44dmGk+7ArPksDCH1x4CHTksYl5Yw1+WVHlAMxKKppFs0F+aD7zJMUrXlwUbr+ZEaN+CcQbV8vaWWj5k9C+Hb0/EGDRJLJ3gJZ0pxvLF7qtlfJZKbrO1a20NKNs1FWekiuqxiVBnUN+e7di0yUKqHxkxj8jbQypu4fxLu8miwp4IiM/nY1DCbrXLLeYL5TzJWv8JKJ5F3jFIY2umrBP9x4Dryb/a34d1DbAp9O50rk1TbTlYhB4gwAkqYrfAp3lZUEdx1h9KLLH8fBwlZUxdYnubGHF4p4XJl7bB6AxLhVAH1NN06Xi6HjVLTNQz5we47DA8xow1nq2VGGmnVghcOaxLHQr1JBsOhg+AGFX4Vgii+dTNXoZ+egVQw7r3+7Wkji9DGlWGeWushzbobXwYWbmW9huf+Qj2eWPM
x-ms-exchange-antispam-messagedata: b8k2FSu8dtCoce8eiWFSHhl/2TcGW7o5q7ZQIL73OZRa3ajCvla1/hSUHzwrCpTUGtcRzJGhALi3NXGP7g9hAuU7vh++dSAkpOZ4G/BK47CfB2PLmnXaBP/XSIm6qLNcHC6a02tLCQaFGQyRZqTgjg==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9242672c-628a-4a9d-4256-08d7d5ff6e0c
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2020 05:42:13.4659 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: m0w6ct6CRGTVWvNIh9Qgu2b5vu0sNdVaW6TkJSUKvsHxQgFrnhhygAQlOC7SAHJvz9ycKFc4OB9jnFceInlJ0w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4931
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_224216_735979_1666B139 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.54 listed in list.dnswl.org]
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "o.rempel@pengutronix.de" <o.rempel@pengutronix.de>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: Re: [PATCH V7 0/4] mailbox/firmware: imx: support SCU channel
> type
> 
> On Tue, Mar 31, 2020 at 8:34 AM Peng Fan <peng.fan@nxp.com> wrote:
> >
> > Hi Jassi,
> >
> > > Subject: [PATCH V7 0/4] mailbox/firmware: imx: support SCU channel
> type
> >
> > Are you ok with the mailbox part?
> >
> Is there anything you think I might have overlooked?
> I already queued the three patches...
>   dt-bindings: mailbox: imx-mu: add SCU MU support
>   mailbox: imx: restructure code to make easy for new MU
>   mailbox: imx: add SCU MU support

Sorry, I forgot to check your tree before ask.

Thanks,
Peng.

> 
> Cheers!
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
