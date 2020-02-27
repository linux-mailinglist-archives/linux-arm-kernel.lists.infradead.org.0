Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5ED01718B9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 14:30:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XIdcCXdC72K1Yv5XUSTq5n/MFrjIZvHO9o7VkgKCBS4=; b=VvbzCL2g8EAVst
	rrcNPgVXROXK+hTOxcT/mEWe8wImsKpBouOvlWbw7/YNpjHMZiQmiuK8nlAx1Ow3+tk6YHXiWLMm3
	V/Pa3ENMQr4YD1acwrYqUw4yyPujhKpDrXaMU0FLSJU+9fnsZIZR7Khu9TCJyBeheakhGVEKGmkWp
	BMkihwAvMkU5C4ZyQbeuIlvyUi8t39vtyPifE3eYFUjxHviSceKUibq0EtChJvCnXd+Hgvd7e33HZ
	Jho/DemzUsfT4TNDuU/6Hyv142xlyxyON+hRvs4ene4RGJlfasiLONEMJnaQbAyaesueSHaChAHWj
	MaCiMoZC2BIUe1F+Knpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7JFW-0005Sm-HT; Thu, 27 Feb 2020 13:30:46 +0000
Received: from mail-eopbgr70055.outbound.protection.outlook.com ([40.107.7.55]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7JFN-0005Ry-4Z
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 13:30:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I/Foy9qjrDuDVwMdw7NQjHYXuEkEpiT5bAlBm6+n1zhPblSrru2BM6Z8SuzdWp8lbfSxanXdUQJTHAvuQuE0tgQNIP2ZgM4Y7TMXIrYdNVMt9r1t34BMyR7VNUgINNG/9Q3ByRL0GCe7GNAlsZp8FXNIMt7p0gHqKqw7e4+mmvFslWKxnrJU+TL7KQUhoUQ0YqMfWeT3RBAUPabAqGiu2MYCkLWlLETav8xmf+BO5Hp8YZelBqFz8lDg9UrAYxto8GEaPb3ZbObHPQFxQBmZHxkymdgFZ0mKraMZIhV3Qy1v2MU0ihrMjoQ/fU/8Bl70SuetktUD+V2khGQpC1l7Pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+vqzOvFYnljGAPChiiJPpHZ8kG/HWj0dkRiu0kRUxeQ=;
 b=M5Fh6xwMdDbaia4SkhyfO3uKiIALm81K2Ml43qaxdFVGl9uaYXUfu11zbM+C8rlqebB81NKi872WvWLEhlFtgefeTWrjDrefQAFLw6G+cU0MX27yjneti3PeICO+UtdHC1o94q1isLmzC95uhKUSlFma0tWFgeNHc619ajvz1yNraBlOw/Amm4hPDnT6W1v3Sgummtzx9jbJtH/LnT6z6oTRRysE+l9rnwantg5c1DwNsOkN4fKQzQ8WHTBTuJNMUECToAfuDuy8cNEFB9WMs4KKV3M/+YS31G0uL/DRrsPMyXwfgD6wpZ0ULaZHLyLwWtdDvsEsQqYnWqg47qemHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+vqzOvFYnljGAPChiiJPpHZ8kG/HWj0dkRiu0kRUxeQ=;
 b=ZY60Q74wPYbxx//iE3jCPdhkHwcBWtkZTczi9MW38DH8c7pdInuG/21j7Mkqwr7DxJK8zvSAM83UrjqydPwkeKkb+RkAriPP678TR82Jt25m8JYBFOcr8dB/7UCi+4nWomYOCClqB2FlR4DoQawxP0922jwoiWrhvnVNYVIMfsg=
Received: from VI1PR04MB5327.eurprd04.prod.outlook.com (20.177.51.23) by
 VI1PR04MB4624.eurprd04.prod.outlook.com (20.177.56.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.14; Thu, 27 Feb 2020 13:30:33 +0000
Received: from VI1PR04MB5327.eurprd04.prod.outlook.com
 ([fe80::9547:9dfa:76b8:71b1]) by VI1PR04MB5327.eurprd04.prod.outlook.com
 ([fe80::9547:9dfa:76b8:71b1%7]) with mapi id 15.20.2750.021; Thu, 27 Feb 2020
 13:30:33 +0000
From: Peter Chen <peter.chen@nxp.com>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: RE: [PATCH 0/3] USB IMX Chipidea fix gpio vbus control
Thread-Topic: [PATCH 0/3] USB IMX Chipidea fix gpio vbus control
Thread-Index: AQHV7VqVZ4BeDr6e5UuTM5ZPfBO9kqgu5JsAgAAEwYCAAAyagIAABoeAgAAFTBA=
Date: Thu, 27 Feb 2020 13:30:33 +0000
Message-ID: <VI1PR04MB53270541BB66CAB1EB8F00008BEB0@VI1PR04MB5327.eurprd04.prod.outlook.com>
References: <20200227104212.12562-1-m.felsch@pengutronix.de>
 <20200227111838.GA24071@b29397-desktop>
 <20200227113539.gcx3nfwm2fbm3ukv@pengutronix.de>
 <20200227122045.GB24071@b29397-desktop>
 <20200227124406.6kbgu3dbru4qmews@pengutronix.de>
In-Reply-To: <20200227124406.6kbgu3dbru4qmews@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peter.chen@nxp.com; 
x-originating-ip: [222.65.251.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 5ff36921-dd96-46bd-7467-08d7bb8938da
x-ms-traffictypediagnostic: VI1PR04MB4624:|VI1PR04MB4624:|VI1PR04MB4624:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB46247649C0D6496A48EC972A8BEB0@VI1PR04MB4624.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 03264AEA72
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39850400004)(396003)(376002)(346002)(366004)(136003)(189003)(199004)(5660300002)(66446008)(64756008)(66556008)(33656002)(66946007)(6506007)(7696005)(66476007)(52536014)(2906002)(54906003)(8936002)(71200400001)(76116006)(44832011)(86362001)(55016002)(186003)(8676002)(26005)(81156014)(81166006)(316002)(9686003)(478600001)(4326008)(6916009);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4624;
 H:VI1PR04MB5327.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9GqQTZcI666MxJG1JfbfeW69VJ7B/sB86DcXUjLFO71Pd4EwV1dPf9awKy+O8/uD667IzVQUncjm4dBzj/joDZNoniL1OTe3wpy/C7bsDt1G3rzy/kZhH84uh+u3EWy/wA0xjYXLsJA7LLRRmtcvQjYsu2QEes3WUnDnjgOuUjWYTXNCnk5qdp8aBH2QrZDf0enqReayPj9cJDu/GRye2N0tB+6qqATBBtHhRIbzvCNOoLbjzqXvYefAoYTa/z0PMmTBFZ3tTKlgr0dMM0/dsMILTKO4UUzApy5+jlddko1ndYnc9H545LRsrXxBWGBobi+MtjuXoqwfrRBR7eHtAEQ/o4jxcea1Y+VOmaCfwP5elwySf9JDXDPAw2honZ2Z9Tg2b6G7bCozDnQVp1zvuhFxdBoresnDYcKc3eDbluzY+iUGOqsFN+N4lc1NES2C
x-ms-exchange-antispam-messagedata: y5vbgv9HXs61h+XErs+jpuHNfxuZELD7Z+8/cITew9cNZ17UoIWei2qu87d0QacjKpu7v8nR203c2QFa68UCWpkzJLqU3+LzVqXGWAtEGmFpPByUUDNhLGNKaEkGKArglVFZlC9Fpao2YA2pGYr4bA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ff36921-dd96-46bd-7467-08d7bb8938da
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Feb 2020 13:30:33.4659 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: T3S+ZH88ej8OScE1OfNlm4uHbPAQ1I0RCa/QtwNXfJldFevLCxZoNn45ANYHnjuLMrseJJyPVGw/j5hWS18Gmw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4624
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_053037_261510_AEE9AE59 
X-CRM114-Status: GOOD (  16.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.55 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "jun.li@freescale.com" <jun.li@freescale.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "stern@rowland.harvard.edu" <stern@rowland.harvard.edu>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

  
> > >
> > > Note, I'm using a imx6q which has the CI_HDRC_TURN_VBUS_EARLY_ON set.
> > >
> >
> > Do you have a VBUS regulator at your dts, and add it at controller's
> > node? See: arch/arm/boot/dts/imx6qdl-sabresd.dtsi as an example please?
> 
> Yes, that's my use case too.
> 
> > If you have set CI_HDRC_TURN_VBUS_EARLY_ON, the VBUS is controlled by
> > chipidea driver, not by USB core through PORTSC.PP (ehci_ci_portpower).
> 
> I know, pls have a look my the patches.
> 
> I had the problem that the vbus regulator wasn't turned off during a
> suspend/resume logic. The first issue within the usb-core should be fixed by [1] (v2
> RFC is on the way). You never run in that case if you don't fix this. After I fixed it
> the port-power is called during suspend but obviously the regulator didn't get turned
> off because we don't add it to the priv->reg_vbus.
> 
> This patchset should fix this and get rid of the CI_HDRC_TURN_VBUS_EARLY_ON
> flag.
> 
 
Hi Marco,

I may understand your case now. At old USB port design, the VBUS is never allowed to
turned off to response the USB wakeup event. But the expected behavior has changed
after pm_qos_no_power_off is introduced for USB port, it is allowed the port is powered off.

PORTSC.PP could be controlled by USB core, but USB VBUS's power is not controlled
by this bit if the VBUS power enable pin is configured as GPIO function, that is your case.

CI_HDRC_TURN_VBUS_EARLY_ON is introduced by fixing a bug that some i.mx USB
controllers PHY's power is sourced from VBUS, the PHY's power need to be on before
touch some ehci registers, otherwise, the USB signal will be wrong at some low speed
devices use case. So, this flag can't be deleted, it may cause regression.

The solution I see is your may need to implement chipidea VBUS control flow by considering
pm_qos_no_power_off at suspend situation. You may add .suspend API for ci_role_driver,
and called by ci_controller_suspend/ci_controller_resume, of cos, better solution is welcome.

Peter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
