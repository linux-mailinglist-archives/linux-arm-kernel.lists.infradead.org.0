Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F28451F4BBE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 05:18:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XKWCEEaVa9Rh4L1p2aLwI4pGzbgt5BCJDwl6aHFMMqA=; b=p6O9TfMQA8xLd5
	n9Hgm0YyQpJDuBQSbwWh0O65SwQcAXpME44RwxpHytGM11JfqOSEoECDn605Ssn8xLyycCMZa5lnU
	8ENI9yERb/FL0EKoF5YtFzxeV5HbC1UDSl1CAteh+RFOGaVI4OfyJMqLyJa7+kexLNtX1EiznHdbu
	mZo6e9JwZWQ+eQSMBpGLlZEmDHslbCKePN4ruIGvq1eE4hQQwyLdmW+9wrrEDU9871UXVbed8cMc3
	P8sfxQ/f3Ur6KqXFph5sfTYrSHUkX6ZY5doe8eNm0FAoCrL4EzLhbrhzVdXSkWkJ42XeW6d1JNpCe
	WR92RyN1vewNV7cnF8Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jirGA-00017x-LV; Wed, 10 Jun 2020 03:18:38 +0000
Received: from mail-eopbgr140058.outbound.protection.outlook.com
 ([40.107.14.58] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jirG1-00016s-86
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 03:18:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cFv1nPK8CLTSuFH+97f7W6KkiNiKx9antx9L8hSw5azW95JU6nmSxCXOlnhinICDCo8/wFagCucOK9lpm9mmXNjghw4CM1XxFqM+UQsl78dD7ZH5abaO3YPlecoZ4KCf6R1QXEhhdfv6oZLjB9BjTJ+I6jfgYmyZYC0dttRh4X+5LSGW0t7YSkVWF7XJwVuKQURvmacFKBvch32o7ptdwXuqhpXxtrteWcSrQZaUbIqiCsOOr1FCri0Uztd2jFvAg+2wLUjkBXXyGBQ3kn0Jk9x1orZaPlMOXADUlKOYOeLoiY76whnLcXZfY/GI2Cv/s2iKAb9rwrjxNf0etbQMzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kzRLHsUFsiIjZbmKGnwnqQuPYAsAxABXyirQmcHsvhM=;
 b=N9xrvMyufMhmXBP291SC6OfIy3X1aCviwgEf3t62kz2A0hewK7VJYtC9YQjfxYAzSSFc2Fh4eMebzR6Q3iFTxmZeQmozz9/olIqMFFwMZVjQVRD+wAuN79tEHzfbeSb5vQh37X0DAyU7uGgasdJS1fazNOonPNuhD8uX77rVLbcGiW78cypqxb8YRhCtW3QqAaEEwk353CfmB+e2FMf/yfY3Ig2asL+Ip2DGO13KIQeHOtX6rc/DNCkUNHhJckQHLd/W8Zc4IKu0AJ4zabjnmaCzMI0KocTb/ZpPHbZ/Uy/DWm4UAYCUTn8k6IPcF+OfPBKzN2uwkCkKjyZI9NhvUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kzRLHsUFsiIjZbmKGnwnqQuPYAsAxABXyirQmcHsvhM=;
 b=k5530AElP/uSns/aqBH6LlXJnSxoBNlkKsJW2dA52RTI+lkiEbAjZkTbZW02FreR5saINVs0WlQfzqHWVg+1Pzr11/dSV0pB/U08B+EgefIitHHnWFrhyxpn4mZhQL/Yxs7C7ebsPr1+OvegZuFj4ya96TfZn9rlKwZf/z62n8k=
Received: from AM7PR04MB6885.eurprd04.prod.outlook.com (2603:10a6:20b:10d::24)
 by AM7PR04MB7077.eurprd04.prod.outlook.com (2603:10a6:20b:11c::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.18; Wed, 10 Jun
 2020 03:18:22 +0000
Received: from AM7PR04MB6885.eurprd04.prod.outlook.com
 ([fe80::fdc0:9eff:2931:d11b]) by AM7PR04MB6885.eurprd04.prod.outlook.com
 ([fe80::fdc0:9eff:2931:d11b%6]) with mapi id 15.20.3088.018; Wed, 10 Jun 2020
 03:18:22 +0000
From: "Y.b. Lu" <yangbo.lu@nxp.com>
To: Leo Li <leoyang.li@nxp.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: RE: [v3] ARM: dts: ls1021a: output PPS signal on FIPER2
Thread-Topic: [v3] ARM: dts: ls1021a: output PPS signal on FIPER2
Thread-Index: AQHWL9lT6NzBjMxkeEyGUwX2yrM6W6jPZh0AgABEbnCAAUhTAIAAV0iQ
Date: Wed, 10 Jun 2020 03:18:22 +0000
Message-ID: <AM7PR04MB6885EA8043D5B7527840E9A9F8830@AM7PR04MB6885.eurprd04.prod.outlook.com>
References: <20200522013052.2838-1-yangbo.lu@nxp.com>
 <VE1PR04MB668745C015609F7D875FBFDE8F850@VE1PR04MB6687.eurprd04.prod.outlook.com>
 <AM7PR04MB6885E81887C3C17B854BD6E6F8820@AM7PR04MB6885.eurprd04.prod.outlook.com>
 <VE1PR04MB6687C5843AD4FE041BA37CCE8F820@VE1PR04MB6687.eurprd04.prod.outlook.com>
In-Reply-To: <VE1PR04MB6687C5843AD4FE041BA37CCE8F820@VE1PR04MB6687.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 1944e6cd-9af4-4c8c-a67a-08d80cecee9d
x-ms-traffictypediagnostic: AM7PR04MB7077:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM7PR04MB7077F0B47850453D5D6A3E4FF8830@AM7PR04MB7077.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1265;
x-forefront-prvs: 0430FA5CB7
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6wT5yjUiNwCF0eRzsqXfI4Yrv0hdmJ1sKjO3iViMTqzqUrfTkviOTv0dZLlYWBsXhdx3ID6V8g54hHo2ysnZwwXxnzE0WzuiW8IHW8EWkAa9PBCW0scRULIDnRUlZktDn7pXcEOZWvgluQUxEbF5iBcUKy+/PR/QwABesZN7O0F7CnN1gVkBlmXvcpviI6u//+XB0lYxlMlR6sDk13dQHagcL8nxde3T4LjkgeGy4+PeWmIx7g5+lKayuEewrBZBXffoOwLJJEIGCXpAM/ILnA2ChvT0N/S4KU77In6jsG494TBAK1Ib3VQE6ovwLYq0
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7PR04MB6885.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(376002)(39860400002)(136003)(346002)(396003)(86362001)(83380400001)(26005)(52536014)(7696005)(4326008)(9686003)(8936002)(55016002)(316002)(66476007)(76116006)(64756008)(66946007)(8676002)(66556008)(66446008)(33656002)(186003)(478600001)(5660300002)(110136005)(2906002)(53546011)(71200400001)(6506007)(54906003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: Xn3k9Ggx8Xubr9bYNI9M8DFALUMV1SAXN1F3WhXEjX8mTqVw2DdS9CeF7pDir3+mhp4qzOdTGILDcvtah9Jdxk5YMThSe9TkY5+EXf+HwgtCCdqB5qFKYDp7RZareycbGdZjSQbBpw5fjF7dLmRPO5AABnVBPUgrW7xTKl8dmTJOSetYO1/ESqnzokGuz2tVFt+AEDFAnqhRp9QwqlwzyKfl19f7ooO6nZkckhKZ8OQeQ3RResrxs9ieYbJexBhQUsc9iJjJQ0AZvf/lCy9pgZuURBPFOJ6DWSNIG+r34P4Dy0ifznyE3sNmWm3CgSCnoGDCNcz/yLnVnYKtekqVp5c0lJoT9wnm9xgZRwlVPoX7E6h7y1XQWjZll5NEjbYwZsj9M19WZfI/C9oJFzwpXm6/qpfD4GKr+7vzoGdgmoAU+IKbQJi28fqDzZUBs3a4wTnX646nom8RobXwAGMlVIt04+u58AlVfy/doYDlrbI=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1944e6cd-9af4-4c8c-a67a-08d80cecee9d
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2020 03:18:22.7342 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Q/kRfyLKiPr0Nx73zIEW8AUK3CExn6Fazk20QfRNjTpaf12+MZ+Q+mz9Yow9Maz/k8Ztp1qu2fQP595q4nAFTw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB7077
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_201829_289965_65CAD983 
X-CRM114-Status: GOOD (  25.60  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.14.58 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.14.58 listed in wl.mailspike.net]
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
> Sent: Wednesday, June 10, 2020 6:00 AM
> To: Y.b. Lu <yangbo.lu@nxp.com>; linux-arm-kernel@lists.infradead.org
> Cc: Shawn Guo <shawnguo@kernel.org>; Richard Cochran
> <richardcochran@gmail.com>
> Subject: RE: [v3] ARM: dts: ls1021a: output PPS signal on FIPER2
> 
> 
> 
> > -----Original Message-----
> > From: Y.b. Lu <yangbo.lu@nxp.com>
> > Sent: Monday, June 8, 2020 9:30 PM
> > To: Leo Li <leoyang.li@nxp.com>; linux-arm-kernel@lists.infradead.org
> > Cc: Shawn Guo <shawnguo@kernel.org>; Richard Cochran
> > <richardcochran@gmail.com>
> > Subject: RE: [v3] ARM: dts: ls1021a: output PPS signal on FIPER2
> >
> > Hi Leo,
> >
> > > -----Original Message-----
> > > From: Leo Li <leoyang.li@nxp.com>
> > > Sent: Tuesday, June 9, 2020 6:20 AM
> > > To: Y.b. Lu <yangbo.lu@nxp.com>; linux-arm-kernel@lists.infradead.org
> > > Cc: Y.b. Lu <yangbo.lu@nxp.com>; Shawn Guo <shawnguo@kernel.org>;
> > > Richard Cochran <richardcochran@gmail.com>
> > > Subject: RE: [v3] ARM: dts: ls1021a: output PPS signal on FIPER2
> > >
> > >
> > >
> > > > -----Original Message-----
> > > > From: Yangbo Lu <yangbo.lu@nxp.com>
> > > > Sent: Thursday, May 21, 2020 8:31 PM
> > > > To: linux-arm-kernel@lists.infradead.org
> > > > Cc: Y.b. Lu <yangbo.lu@nxp.com>; Shawn Guo <shawnguo@kernel.org>;
> > > > Leo Li <leoyang.li@nxp.com>; Richard Cochran
> > > > <richardcochran@gmail.com>
> > > > Subject: [v3] ARM: dts: ls1021a: output PPS signal on FIPER2
> > > >
> > > > The timer fixed interval period pulse generator register is used to
> > > > generate periodic pulses. The down count register loads the value
> > > > programmed in the fixed period interval (FIPER). At every tick of
> > > > the timer accumulator overflow, the counter decrements by the value
> > > > of TMR_CTRL[TCLK_PERIOD]. It generates a pulse when the down
> > counter
> > > > value reaches zero. It reloads the down counter in the cycle following a
> > pulse.
> > > >
> > > > To use the TMR_FIPER register to generate desired periodic pulses.
> > > > The value should programmed is, desired_period - tclk_period
> > > >
> > > > Current tmr-fiper2 value is to generate 100us periodic pulses.
> > > > (But the value should have been 99995, not 99990. The tclk_period is
> > > > 5.)
> > > This
> > > > patch is to generate 1 second periodic pulses with value
> > > > 999999995 programmed which is more desired by user.
> > > >
> > > > Signed-off-by: Yangbo Lu <yangbo.lu@nxp.com>
> > > > ---
> > > > Changes for v2:
> > > > 	- Added more discription in commit message.
> > > > Changes for v3:
> > > > 	- Mentioned effect of the change in commit message.
> > > > ---
> > > >  arch/arm/boot/dts/ls1021a.dtsi | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > >
> > > > diff --git a/arch/arm/boot/dts/ls1021a.dtsi
> > > > b/arch/arm/boot/dts/ls1021a.dtsi index 760a68c..b2ff27a 100644
> > > > --- a/arch/arm/boot/dts/ls1021a.dtsi
> > > > +++ b/arch/arm/boot/dts/ls1021a.dtsi
> > > > @@ -772,7 +772,7 @@
> > > >  			fsl,tmr-prsc    = <2>;
> > > >  			fsl,tmr-add     = <0xaaaaaaab>;
> > > >  			fsl,tmr-fiper1  = <999999995>;
> > > > -			fsl,tmr-fiper2  = <99990>;
> > > > +			fsl,tmr-fiper2  = <999999995>;
> > >
> > > I noticed that the fiper2 is now the same as fiper1.  Can we just use
> > > fiper1 to generate the 1s pulse?  Or both of them have to be used?
> >
> > PPS signal is frequently used by users. And more than 1 channel may be
> > needed.
> > I think we can configure two PPS signals on fiper1/fiper2 in default.
> > For specific periodic pulse, user can configure the period wanted by
> > themselves.
> 
> If this is an application specific setting, wouldn't it be better to be part of the
> board dts instead of the SoC dtsi?

These provide the default setting to the 1588 timer regardless the boards.
I don't think we need to copy them to each board dts file.
Thanks.

> 
> Regards,
> Leo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
