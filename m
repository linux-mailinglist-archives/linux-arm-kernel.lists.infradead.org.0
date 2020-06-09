Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68C6C1F4930
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 00:00:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zq6Hnmfz/vbj3YXn8XQguce3d9ScWyUCtTp+HE2Qjuo=; b=e6jWiEzsN+laG6
	okvNGBB/h4/JVgoNn6YRZdzLtokmfMYAR/PsgbjqO4dq5GM5Af38sYlB3GQXYnUnpD/KklWzod+Vg
	0r+FtqMh7Is1qI1dYCEthU3Xjl5vWnYXn/Dwer1HKhpDXpNc964Gr6F/VB7/aE2wkpG1h/48zbgpH
	QaJW8y8g6WWNGKYPg6Gh36AR6ApacsJhNl5wSZejbRkgAlu4cRx2z2CYlLg5oRQr/KqpkgEq5PnxJ
	2Rv8TePBBcxRXO+0gWPx3g3vUkiTr3eRF7bkSDke9M/tcZYNiO3wQfqnudzXx7EaVtPWrALY0mE8F
	4RNjU6utt7PxAnuZg6lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jimHj-0002Fq-0Z; Tue, 09 Jun 2020 21:59:55 +0000
Received: from mail-eopbgr60070.outbound.protection.outlook.com ([40.107.6.70]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jimHb-0002FN-Ru
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 21:59:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WQ6nmkd+AKQtzkzaETXpfYbMkNS8lSxScvP0lCvLLmFRsgKSlZBraAS1s9FkTqpocurU4ijy97XfCjrN4NmHU7MCqSSsX6SyK2YULkR43xE2Bw/KBuMBeXSujonzX0QxMLCsEYN0V7Y3xyIyWSCXoqco4hqqJ+gUnzJpYncA4fOO0aB7DvARcIlp6GhvnO3txqJbn5+VMtY0+tFujsnfwjRiJ+iDdzB2bhdS12lkJ9PoMnnQgqZlGmSq4acplT0MSvHtCCcF+hE+0OqQJO8IDzQbBnrodlXS8icOVaRuQ9w2MfnB/yhm4dFcPiX6a3vK3LpknIoKhIPL6uKaSc0ZkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m+DcaWwVqcFZW0A8Qv8wxDKOUeQhUR+SJNpcNmxNtX8=;
 b=NLYt+n/8FAPr9u2MKXCCiBm0pBVUPryHnLGAh+QoQwBe5ndFQLPbpHJic0wTmCGnIRX45oSHu/Fasi8ge8ulg0Ri/+wW2sd1Qo07CfwVICyNi5DU31HiF9ioeEU5Ll2AyFkpf5wM64pGifrG6gOFHGQeJtYW8YXPCuPyHDpxW1phSl9giFs+1Iaratizfmy+gOolTv4pFRVSkkVRCT4yWNFPLem47OxEShYVflHFbTNUoOx4tdT075kgQNlm0YEmVkqgoWbkuc8J3W9dNCXoDwdU7HkRWSaPAit75IgGwdKdHqUKmYdqHnC0EGPbuGpEhw44ds7cBnrSEj6kgvKHug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m+DcaWwVqcFZW0A8Qv8wxDKOUeQhUR+SJNpcNmxNtX8=;
 b=K/D7GYfFtAxI77ZnCXq/wLmuK2x6R2qSflDEgw7Y997SIKs/Xi4PWyg+ZD/A3gims26fPKDTyUw3f0fjmkKM3wEZLH09cgJ8iGg109WtGVY618KIPMmQCRjlL4mN2NW/yEidO3sUrv/F++/uOuqhIU5bh6z8e27fRTnGtzUZ4+o=
Received: from VE1PR04MB6687.eurprd04.prod.outlook.com (2603:10a6:803:121::30)
 by VE1PR04MB6493.eurprd04.prod.outlook.com (2603:10a6:803:11f::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.20; Tue, 9 Jun
 2020 21:59:44 +0000
Received: from VE1PR04MB6687.eurprd04.prod.outlook.com
 ([fe80::48b1:c82c:905:da9f]) by VE1PR04MB6687.eurprd04.prod.outlook.com
 ([fe80::48b1:c82c:905:da9f%3]) with mapi id 15.20.3088.018; Tue, 9 Jun 2020
 21:59:44 +0000
From: Leo Li <leoyang.li@nxp.com>
To: "Y.b. Lu" <yangbo.lu@nxp.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: RE: [v3] ARM: dts: ls1021a: output PPS signal on FIPER2
Thread-Topic: [v3] ARM: dts: ls1021a: output PPS signal on FIPER2
Thread-Index: AQHWL9lTv6y2cJdOCkaNFPUZn6UCfajPZbSQgABGOoCAAUaRsA==
Date: Tue, 9 Jun 2020 21:59:44 +0000
Message-ID: <VE1PR04MB6687C5843AD4FE041BA37CCE8F820@VE1PR04MB6687.eurprd04.prod.outlook.com>
References: <20200522013052.2838-1-yangbo.lu@nxp.com>
 <VE1PR04MB668745C015609F7D875FBFDE8F850@VE1PR04MB6687.eurprd04.prod.outlook.com>
 <AM7PR04MB6885E81887C3C17B854BD6E6F8820@AM7PR04MB6885.eurprd04.prod.outlook.com>
In-Reply-To: <AM7PR04MB6885E81887C3C17B854BD6E6F8820@AM7PR04MB6885.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [136.49.234.194]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 165c3c36-1bb2-494b-9fc1-08d80cc06b3a
x-ms-traffictypediagnostic: VE1PR04MB6493:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB64931276A9E7FE11347941C48F820@VE1PR04MB6493.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:862;
x-forefront-prvs: 042957ACD7
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dzKL8B/sCgGwmULEw+5KNVFTIKX8nDMLZZtsBR8j+xLiHFzPpX88AcV6mX/s/vtmCo5eZvMKksUhSJLtWyM3Gmo8H/jZ++jX8QMQzWbaSBzkhU9uUMkpmzn/KxmK5wJvH9suWCO1Vm8whADf+KXKOlKrfsf1feA4Y1W5t/tTbpAUQ38oYojrfLfnruosZNNV/9O1eiT0a6zlbHvQLXx1XvLvEKInoqFvivJcVf889xxJ7BcWqjCdWcnjM5GtgJhxsB/5TpLO1gL4Wp660f1mYSLI8gBiTB0oSvXY7KKVJCRCR3vggvPM1gZ8NH+1k5RM
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6687.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(396003)(136003)(366004)(346002)(39860400002)(64756008)(316002)(66946007)(71200400001)(5660300002)(76116006)(53546011)(66556008)(54906003)(33656002)(6506007)(9686003)(66446008)(7696005)(2906002)(66476007)(55016002)(52536014)(8936002)(478600001)(110136005)(186003)(26005)(4326008)(8676002)(86362001)(83380400001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 9vsogqlBA5mRxZ6m7CrEcgWAWw4p1L6z3Xr2SpUqv+1VD09uOWZbqd643fENG9ytJLvBEV0u6sDz9EGXCOMKvLJNa/r97X5+Y/L8RRXWwt7qZqdpnJQXDCvp+1C6jBjo73ukHrkqZ1rFUCqi+uD6h58qY9BRnbLShzrkBh41sAiL8ySy0vSWkhUZMda8Pb7sZjlDQwTapfuZLhFcqtdFlMb0GkzsW06dIGJGDY6UOdMfCQ/G3ZHq6ciVIc3TSoXnVYkwF6IvrP09l+iGlj7PwrqCQlyryPve0/4YFaeJyL9l6HdBZ10qDBXb7rgPoncaNcBYOcZRSP1zENwtrcb4sdzSZiOIh+WnsLvyiiczJ0wzRdwxLz77389ZZnzyYMRpgrCUKaZFEwhg/bmp86n4fAQux5vg+aL4PVAdyMy0JcjHtDsxOmGJg4T28Blk1/hsb2c8zYpUnf1ziVB8OLBbfIRcFvluVsvpDB6E0wMBrAEYq8Y6e9C/R4OjCzc6P1xD
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 165c3c36-1bb2-494b-9fc1-08d80cc06b3a
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jun 2020 21:59:44.4413 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MfMfVcyjUHZI15gmPtm7ahud6Sa2+d/7z7dc5sb2Lwt+eyUFJJ9Loxhj6hy1sSL1oXn3TA5TgTMzm2WXjk+JAA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6493
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_145947_989630_E1767C65 
X-CRM114-Status: GOOD (  23.53  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.6.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.70 listed in wl.mailspike.net]
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



> -----Original Message-----
> From: Y.b. Lu <yangbo.lu@nxp.com>
> Sent: Monday, June 8, 2020 9:30 PM
> To: Leo Li <leoyang.li@nxp.com>; linux-arm-kernel@lists.infradead.org
> Cc: Shawn Guo <shawnguo@kernel.org>; Richard Cochran
> <richardcochran@gmail.com>
> Subject: RE: [v3] ARM: dts: ls1021a: output PPS signal on FIPER2
> 
> Hi Leo,
> 
> > -----Original Message-----
> > From: Leo Li <leoyang.li@nxp.com>
> > Sent: Tuesday, June 9, 2020 6:20 AM
> > To: Y.b. Lu <yangbo.lu@nxp.com>; linux-arm-kernel@lists.infradead.org
> > Cc: Y.b. Lu <yangbo.lu@nxp.com>; Shawn Guo <shawnguo@kernel.org>;
> > Richard Cochran <richardcochran@gmail.com>
> > Subject: RE: [v3] ARM: dts: ls1021a: output PPS signal on FIPER2
> >
> >
> >
> > > -----Original Message-----
> > > From: Yangbo Lu <yangbo.lu@nxp.com>
> > > Sent: Thursday, May 21, 2020 8:31 PM
> > > To: linux-arm-kernel@lists.infradead.org
> > > Cc: Y.b. Lu <yangbo.lu@nxp.com>; Shawn Guo <shawnguo@kernel.org>;
> > > Leo Li <leoyang.li@nxp.com>; Richard Cochran
> > > <richardcochran@gmail.com>
> > > Subject: [v3] ARM: dts: ls1021a: output PPS signal on FIPER2
> > >
> > > The timer fixed interval period pulse generator register is used to
> > > generate periodic pulses. The down count register loads the value
> > > programmed in the fixed period interval (FIPER). At every tick of
> > > the timer accumulator overflow, the counter decrements by the value
> > > of TMR_CTRL[TCLK_PERIOD]. It generates a pulse when the down
> counter
> > > value reaches zero. It reloads the down counter in the cycle following a
> pulse.
> > >
> > > To use the TMR_FIPER register to generate desired periodic pulses.
> > > The value should programmed is, desired_period - tclk_period
> > >
> > > Current tmr-fiper2 value is to generate 100us periodic pulses.
> > > (But the value should have been 99995, not 99990. The tclk_period is
> > > 5.)
> > This
> > > patch is to generate 1 second periodic pulses with value
> > > 999999995 programmed which is more desired by user.
> > >
> > > Signed-off-by: Yangbo Lu <yangbo.lu@nxp.com>
> > > ---
> > > Changes for v2:
> > > 	- Added more discription in commit message.
> > > Changes for v3:
> > > 	- Mentioned effect of the change in commit message.
> > > ---
> > >  arch/arm/boot/dts/ls1021a.dtsi | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/arch/arm/boot/dts/ls1021a.dtsi
> > > b/arch/arm/boot/dts/ls1021a.dtsi index 760a68c..b2ff27a 100644
> > > --- a/arch/arm/boot/dts/ls1021a.dtsi
> > > +++ b/arch/arm/boot/dts/ls1021a.dtsi
> > > @@ -772,7 +772,7 @@
> > >  			fsl,tmr-prsc    = <2>;
> > >  			fsl,tmr-add     = <0xaaaaaaab>;
> > >  			fsl,tmr-fiper1  = <999999995>;
> > > -			fsl,tmr-fiper2  = <99990>;
> > > +			fsl,tmr-fiper2  = <999999995>;
> >
> > I noticed that the fiper2 is now the same as fiper1.  Can we just use
> > fiper1 to generate the 1s pulse?  Or both of them have to be used?
> 
> PPS signal is frequently used by users. And more than 1 channel may be
> needed.
> I think we can configure two PPS signals on fiper1/fiper2 in default.
> For specific periodic pulse, user can configure the period wanted by
> themselves.

If this is an application specific setting, wouldn't it be better to be part of the board dts instead of the SoC dtsi?

Regards,
Leo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
