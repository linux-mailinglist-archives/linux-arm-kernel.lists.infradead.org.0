Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A7441F3248
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 04:29:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LGC3pGimUtESFiJAsrdL+tuYO5P/Wyt3SrgC4oxfUR4=; b=ffzseFoSFdwA33
	PtZU+gbRmP7vRBtKlwyuEaYUhubFj5wUw1sL/mMZ2eWPUhy88b/Mof4YDF5HSYnaoRri9TYuizVoD
	CptXDclEEidiR2YLEp3EaiFx8kisV7c6A9CFMNqXblqX11qHYB8xvZIS/6gUM2/K9D3T5eHvJuFi3
	IPsHivxcEORRdK81P4fQ7VkBqjWflwSvlkkFaY64g7fBXb4vFhF+IM14sWwzepVfRGerNMkTXQnH1
	s0ifg2qwlNkt1NO5ymH37PK00QINNwMD+IF+O6O1+Vm7UPAQi8UnHlVdXNhnF5kHhejLpQ632QjZx
	D8WLx7x6dAhi4YRpCbGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiU1N-00028q-QW; Tue, 09 Jun 2020 02:29:49 +0000
Received: from mail-eopbgr60061.outbound.protection.outlook.com ([40.107.6.61]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiU1G-00028X-F9
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 02:29:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b/zvXRC2f7AZLlENiWkZvDzXmRHdvWaycfSDvwNX8XGVAw2lreK8V1iwFht0TRR/HYGbB88+KIZRK3ER3WhA+IrR5o9iA5VCcUwdX8DqdSr8S0TRnPLaFK4p+VkLQBtK8bVNUXUmbWvdavOarg+1cw10ZG4gFh7rQQDeYCWNKaLWPBUK4sgC1OA18i7FDQgSo4R2Xt2JNTozkDIhZN6giQLvOdxhfbkcZA2bzxfT75UJ3b+HWfOOimyYvJ72LMkcEPyISWykUOjvmznYDUxuMtlM4T2eyc7QWXXCgla4wdWwtSjpKBBrM/JdOwg/quh6K5DOYQxbeHfr5Hwt2pCBOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Tf9U9/AiOtrep7i6he5oPWjDpTV0kQSmw0sSQDSAIO8=;
 b=lU1mTeoBsgSJYElB1xMpu0/dGz9ZOi8CnOFR9HtnhGPukr4VCMzvDajD3AFYokfMXQ0i727a57v+ssp5NVB5geTdIGmphNJDVd33KsTsMAcdLhVpHjqP8vnU9Syt4ov4OqskqIKT2DjxvLgEWfZI+UNL/w0+QQtRPfBIIFeVl2xt9YOm2He1iYQHbrvQLkjDYwnUnhSkvfRZd4K+oShkUbHLf+sFkDXSXaEvb58AmhBy+7z3ZIrYzCAVL/lKMBQIGiMZPGVK2UIKMmiVBq7KCqkslw4Rlihst31b4w4zzfwlTuR4A0MYp/aIJkMWcfnII3cWY+QPLJ3C5z3RO/GKHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Tf9U9/AiOtrep7i6he5oPWjDpTV0kQSmw0sSQDSAIO8=;
 b=rM0brEINNeGpoRK1xYV++gjlG/dmNFiE168bpqlIOSZf8dtjMxv7kmOssa5s7xXfh04+cuM5tmPPSyRNCM+RRPJvRXKrm/HMg2L13UXPwXcZufOx/0f6eIoQJYFcrQz2EeALmaWkysJOAUNRryf29UgAAPokargIEy5lxJ6CFsI=
Received: from AM7PR04MB6885.eurprd04.prod.outlook.com (2603:10a6:20b:10d::24)
 by AM7PR04MB7078.eurprd04.prod.outlook.com (2603:10a6:20b:121::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.18; Tue, 9 Jun
 2020 02:29:36 +0000
Received: from AM7PR04MB6885.eurprd04.prod.outlook.com
 ([fe80::fdc0:9eff:2931:d11b]) by AM7PR04MB6885.eurprd04.prod.outlook.com
 ([fe80::fdc0:9eff:2931:d11b%7]) with mapi id 15.20.3066.023; Tue, 9 Jun 2020
 02:29:36 +0000
From: "Y.b. Lu" <yangbo.lu@nxp.com>
To: Leo Li <leoyang.li@nxp.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: RE: [v3] ARM: dts: ls1021a: output PPS signal on FIPER2
Thread-Topic: [v3] ARM: dts: ls1021a: output PPS signal on FIPER2
Thread-Index: AQHWL9lT6NzBjMxkeEyGUwX2yrM6W6jPZh0AgABEbnA=
Date: Tue, 9 Jun 2020 02:29:35 +0000
Message-ID: <AM7PR04MB6885E81887C3C17B854BD6E6F8820@AM7PR04MB6885.eurprd04.prod.outlook.com>
References: <20200522013052.2838-1-yangbo.lu@nxp.com>
 <VE1PR04MB668745C015609F7D875FBFDE8F850@VE1PR04MB6687.eurprd04.prod.outlook.com>
In-Reply-To: <VE1PR04MB668745C015609F7D875FBFDE8F850@VE1PR04MB6687.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a192bb27-025a-4a31-2085-08d80c1cf3bc
x-ms-traffictypediagnostic: AM7PR04MB7078:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM7PR04MB70780F5D99470C29D7A23227F8820@AM7PR04MB7078.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1091;
x-forefront-prvs: 042957ACD7
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ltemUHwZzsMoMJCIqPyyJhGRiJSmDPyz7c64a2gUTMz/u7w3HQeAWS7GKBicCXOF9eGDzEZjOrb66qdXsQXy5crOSysoR+3vxssFaDcZ/ErNRqq6bkJfQc+Zewm93M+LVXQAFuRd6Cxmn88DNAY8jh27CCvUbdCEZbUtEOICGhf4XuRZwA80GPaOY9bE9ssrMk4JBCGaWp/jaV2NDMs+yT9w55L8lJ+E1ixJGNVln7aPwwWxTdNBQ5Nf6cjvAYRP1s56PB6QTlzNBN1Yz11XKq8mX6T9fTzfafKxPAH/BxR9ETFYNa8d9f/V5hdk2s5mTWhs2VbcuLMoO5keAXgRJw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7PR04MB6885.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(346002)(39860400002)(396003)(136003)(366004)(54906003)(52536014)(2906002)(64756008)(6506007)(66476007)(33656002)(316002)(66946007)(53546011)(76116006)(55016002)(110136005)(9686003)(66556008)(83380400001)(478600001)(8676002)(186003)(4326008)(8936002)(71200400001)(66446008)(7696005)(5660300002)(86362001)(26005);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: EAAAQ625qt+TL/sXQbyKkVQEZh2Exn9lUbownsKx1IpSU2qyIRHrT9ZIBIZuXqNxE+9uq0HC8b7Md4e6AxiVrxcM5UQBHYNK5AW+qbvRpmy7lY8ROnjDi2ZEhC9Zf05Xu35nfw+GRbXgF8BldZMy1UNAkE7Q8BlAjkGnqZI+W9Xj8/7+PB71pcyudT7yPZp546rhpDiOmf0F3XhHgQScOUB6uco1mjkuC8ersgm8fqLbjr18CR3JneUBDBoebEm5Rltc6Sgd6elBWJTYJ3LxpRES3R4/6gRkWwBuLoSdgllDKWulAm2mq4UrphuGf9zMZSAOjdI8VpXd8QLfcqBY2lRA5xncEfkxifzXcNbgkFSp4ts5fYLpOBiKlKIQ9XNgjLJ5C+7EJC2gkXjYCIR9cmcQ3Oiknzd1vNBWMg7Yha+q1Ohw0JWsCS+zfIsjSa+CWNog6AFSUyLP7Yoya34PUOTTJ1zIxv47Bt1QZdDzb2o=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a192bb27-025a-4a31-2085-08d80c1cf3bc
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jun 2020 02:29:36.0307 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dgjn07Y4neYdT1EURjqaJf/WfsHx6ZagtROPFg/WqesNFtAxNiFjfOS1qmzwyALmvChf+D6QDa+Y0dQCOAYzjA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB7078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_192942_564131_E0534DCB 
X-CRM114-Status: GOOD (  21.81  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.6.61 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.61 listed in wl.mailspike.net]
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
Cc: Richard Cochran <richardcochran@gmail.com>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Leo,

> -----Original Message-----
> From: Leo Li <leoyang.li@nxp.com>
> Sent: Tuesday, June 9, 2020 6:20 AM
> To: Y.b. Lu <yangbo.lu@nxp.com>; linux-arm-kernel@lists.infradead.org
> Cc: Y.b. Lu <yangbo.lu@nxp.com>; Shawn Guo <shawnguo@kernel.org>;
> Richard Cochran <richardcochran@gmail.com>
> Subject: RE: [v3] ARM: dts: ls1021a: output PPS signal on FIPER2
> 
> 
> 
> > -----Original Message-----
> > From: Yangbo Lu <yangbo.lu@nxp.com>
> > Sent: Thursday, May 21, 2020 8:31 PM
> > To: linux-arm-kernel@lists.infradead.org
> > Cc: Y.b. Lu <yangbo.lu@nxp.com>; Shawn Guo <shawnguo@kernel.org>; Leo
> > Li <leoyang.li@nxp.com>; Richard Cochran <richardcochran@gmail.com>
> > Subject: [v3] ARM: dts: ls1021a: output PPS signal on FIPER2
> >
> > The timer fixed interval period pulse generator register is used to generate
> > periodic pulses. The down count register loads the value programmed in the
> > fixed period interval (FIPER). At every tick of the timer accumulator overflow,
> > the counter decrements by the value of TMR_CTRL[TCLK_PERIOD]. It
> > generates a pulse when the down counter value reaches zero. It reloads the
> > down counter in the cycle following a pulse.
> >
> > To use the TMR_FIPER register to generate desired periodic pulses. The
> > value should programmed is, desired_period - tclk_period
> >
> > Current tmr-fiper2 value is to generate 100us periodic pulses.
> > (But the value should have been 99995, not 99990. The tclk_period is 5.)
> This
> > patch is to generate 1 second periodic pulses with value
> > 999999995 programmed which is more desired by user.
> >
> > Signed-off-by: Yangbo Lu <yangbo.lu@nxp.com>
> > ---
> > Changes for v2:
> > 	- Added more discription in commit message.
> > Changes for v3:
> > 	- Mentioned effect of the change in commit message.
> > ---
> >  arch/arm/boot/dts/ls1021a.dtsi | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/arch/arm/boot/dts/ls1021a.dtsi b/arch/arm/boot/dts/ls1021a.dtsi
> > index 760a68c..b2ff27a 100644
> > --- a/arch/arm/boot/dts/ls1021a.dtsi
> > +++ b/arch/arm/boot/dts/ls1021a.dtsi
> > @@ -772,7 +772,7 @@
> >  			fsl,tmr-prsc    = <2>;
> >  			fsl,tmr-add     = <0xaaaaaaab>;
> >  			fsl,tmr-fiper1  = <999999995>;
> > -			fsl,tmr-fiper2  = <99990>;
> > +			fsl,tmr-fiper2  = <999999995>;
> 
> I noticed that the fiper2 is now the same as fiper1.  Can we just use fiper1 to
> generate the 1s pulse?  Or both of them have to be used?

PPS signal is frequently used by users. And more than 1 channel may be needed.
I think we can configure two PPS signals on fiper1/fiper2 in default.
For specific periodic pulse, user can configure the period wanted by themselves.
Thanks.

> 
> >  			fsl,max-adj     = <499999999>;
> >  			fsl,extts-fifo;
> >  		};
> > --
> > 2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
