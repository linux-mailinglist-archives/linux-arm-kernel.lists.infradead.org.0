Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FBF9117FCD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 06:35:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TsEnu1nDIQSDsrE9UziT6RME+UfAU5YbugfksKilbfA=; b=l/mYTBtyiyePQI
	EcThnQrkZzrUqoWj+I43Wd7/o5zY6Tg9pttOLu+6H1T3laiDX+1k3QbATWH5hh/brg884yblqfIOp
	O9o2Xdxn1Qbsbekh/Qn/iaZ2EBwjB4tTZyE9rJue/X6aQLOLic1fwFGHJAIDYmjo+NnuqIcGYPOC2
	Y2D9OYIU6ToWkIQth6aohcxmPgeX9c+qhyrAEq3XtQDr+98WRKLPZxjvVnEfqraRbWVoaoSIJnfXH
	YGj7viJQr9YItmZE3HbEXy19cPaWWIohUcAZWgx5+cspS9u8TtkjhIjog+DK7Jjbs2vLowD1tVKnp
	aagA8gKUMpTYambkMZFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieYBW-0007I6-F5; Tue, 10 Dec 2019 05:35:46 +0000
Received: from mail-eopbgr130085.outbound.protection.outlook.com
 ([40.107.13.85] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieYBL-0007Gt-4X
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 05:35:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g74MvtDMUrGS0OKT2BHFt5/5ARzsGdLvqGxSNxttmgxcMEwbK+j9V1Zuwej/d/C6YgKJyuXSbbiUJs2coRqtoTUFujdLxM/hcB6ewKgJTJrwAI+SFYBy3i3mtlePVyXlPd6IpK26eYudpfvzLK82TcB200ftS0gWZJTEgu609aY6rG/c48Dbv9wSx3a6eF2ujOVh0wtSkhSsnnbmN2c4ugupsip7/oc3XVTX6VIMOwDv6dje6fdGFUTt5yUla6LaKStfszth6rgDL63+LrUOHLK9ubSTatNKPmvpVUscxDM5J42tjD7nsKnq5xHv8bMS1H0JhGcaVjB0OvpE8URjew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eoLphrgcIgUvwXIyNEiif2G62B+fBFXDJLcg6FTi+sY=;
 b=nUi37zhFwa0h9vYQAojwSn1sYhBRNWs/UMlNupiBAstErkExCQPzr51v7qMNyEW7c4wQm/y4ugVXgUtJuaRCOjfR/njDdE9brf+30ioVugMP1NU8J5w1iQZbs6+VI6SPP8LFsna3qasr+n+QO/3Zn9ERgDgcDxKcNlBgJlKi7tfb1zpF2wQsir/rJvuaQeoOezcoDWJ4+WX1CphY+iX5RaBU/rNRW6ZYggi+LQXOxHBQUgkck7rc8PqYVUyYTsoyUwBp16MTuPYHMprOOgRzDTDNpI2KttzDN+0r8dsUNNczT/bl5gJ8WmbszZyBo29s5tmNEOJQZDSJsnukH2h6HA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eoLphrgcIgUvwXIyNEiif2G62B+fBFXDJLcg6FTi+sY=;
 b=bKCVfVBRkyU+yNypt2A8mKYII+Xx8X1fo7AoQ6jb/ga0ZorrfIpCePCis42EhGy5RPooI3/P5GdagpxnXBqkoIJ6e+/npzDSREfhPANFAik72prZ092RmT2xUMYVXINqkStSMPB3uYMUgRKS73quQNdK3otxojRvd5ekrFKqcWA=
Received: from VI1PR04MB4062.eurprd04.prod.outlook.com (52.133.12.32) by
 VI1PR04MB5359.eurprd04.prod.outlook.com (20.178.122.92) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.17; Tue, 10 Dec 2019 05:35:28 +0000
Received: from VI1PR04MB4062.eurprd04.prod.outlook.com
 ([fe80::20fe:3e38:4eec:ea03]) by VI1PR04MB4062.eurprd04.prod.outlook.com
 ([fe80::20fe:3e38:4eec:ea03%7]) with mapi id 15.20.2516.018; Tue, 10 Dec 2019
 05:35:28 +0000
From: Alison Wang <alison.wang@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Michael Walle <michael@walle.cc>
Subject: RE: [EXT] Re: [PATCH] arm64: dts: ls1028a: put SAIs into async mode
Thread-Topic: [EXT] Re: [PATCH] arm64: dts: ls1028a: put SAIs into async mode
Thread-Index: AQHVrnBLtaYchIru+E6aNXw66ImuFqeyq8zw
Date: Tue, 10 Dec 2019 05:35:27 +0000
Message-ID: <VI1PR04MB4062D212996FE37A72DE3557F45B0@VI1PR04MB4062.eurprd04.prod.outlook.com>
References: <20191129210937.26808-1-michael@walle.cc>
 <20191209090840.GL3365@dragon>
In-Reply-To: <20191209090840.GL3365@dragon>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=alison.wang@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 1e3008b5-fd42-4342-93ee-08d77d32c39f
x-ms-traffictypediagnostic: VI1PR04MB5359:|VI1PR04MB5359:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB53591C543D580D327FFAD9BCF45B0@VI1PR04MB5359.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-forefront-prvs: 02475B2A01
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(366004)(39860400002)(136003)(396003)(376002)(13464003)(199004)(189003)(8676002)(86362001)(81156014)(81166006)(54906003)(44832011)(9686003)(305945005)(53546011)(66946007)(66446008)(4326008)(66556008)(6506007)(71190400001)(71200400001)(66476007)(33656002)(64756008)(76116006)(186003)(26005)(52536014)(478600001)(5660300002)(110136005)(316002)(2906002)(7696005)(229853002)(55016002)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5359;
 H:VI1PR04MB4062.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: T6bJhkiIitZn93LDTn8JTu6iUIHPOy+erWCHoHNSYOuIv8QRdQWv1mL+Lml2MxrMOjAZdsMqv6PiwZhhTaFElRZebTjZrtGeuzEvrkAZTlRhjn2zZYbrBOI3dGCkznQpArntvSCa5c0T24XHB7JlgxybZeZSqhah9Vtl7JIIyTsaA3QwJ0J7A0IrD78h3qwvixAQGmMtX0rYd8oB0rJE3kiUA90MHkKfR6tsrpNEuv2o6AfdxfuzvFJ6qaLV834FgRwnikp0E7dSWVZhbBa1pV1jjeK3JEtRLKXBbKfLPy7YCd1nujfo0vy6Ap2G9wA2+S3DzFo3slRA7Z3vRHGKXtxrsy+k8ksPGIIfa/vBara+R3TzAO9SCNPtIdNgnrp93bw2dUhfOAN2+8pcMC9lKwPisWkOkYsKFcenWq8pUToj4DbRXbEmFzVNhyHFXbEPwwJjwN57lBzoU5qbI/Ol+0ZEtkm7fFNiuJnxPJHWa9JYdKALIy8yacuBJQTWUf5I
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e3008b5-fd42-4342-93ee-08d77d32c39f
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2019 05:35:27.8357 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DzKc3oyDR4oVUyzpANVD7YIJN1KAmiAqelwh2qzO0srqf5JQhSwT/j2deauIO0it0ORoN2IctfAZeUXIuogROQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5359
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_213535_426743_369A79A0 
X-CRM114-Status: GOOD (  19.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Michael,

In most of our cases, TX and RX are using the same BCLK and SYNC clocks. So the default synchronous mode (sync Rx with Tx) is used, which means both transmitter and receiver will send and receive data by following clocks of transmitter. It is verified on our boards.


Best Regards,
Alison Wang

> -----Original Message-----
> From: Shawn Guo <shawnguo@kernel.org>
> Sent: Monday, December 9, 2019 5:09 PM
> To: Michael Walle <michael@walle.cc>; Alison Wang <alison.wang@nxp.com>
> Cc: linux-arm-kernel@lists.infradead.org; devicetree@vger.kernel.org;
> linux-kernel@vger.kernel.org; Leo Li <leoyang.li@nxp.com>; Rob Herring
> <robh+dt@kernel.org>; Mark Rutland <mark.rutland@arm.com>
> Subject: [EXT] Re: [PATCH] arm64: dts: ls1028a: put SAIs into async mode
> 
> Caution: EXT Email
> 
> + Alison Wang
> 
> On Fri, Nov 29, 2019 at 10:09:37PM +0100, Michael Walle wrote:
> > The LS1028A SoC has only unidirectional SAIs. Therefore, it doesn't
> > make sense to have the RX and TX part synchronous. Even worse, the RX
> > part wont work out of the box because by default it is configured as
> > synchronous to the TX part. And as said before, the pinmux of the SoC
> > can only be configured to route either the RX or the TX signals to the
> > SAI but never both at the same time. Thus configure the asynchronous
> > mode by default.
> >
> > Signed-off-by: Michael Walle <michael@walle.cc>
> 
> Alison, Leo,
> 
> Looks good to you?
> 
> Shawn
> 
> > ---
> >  arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> > b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> > index 379913756e90..9be33426e5ce 100644
> > --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> > @@ -637,6 +637,7 @@
> >                       dma-names = "tx", "rx";
> >                       dmas = <&edma0 1 4>,
> >                              <&edma0 1 3>;
> > +                     fsl,sai-asynchronous;
> >                       status = "disabled";
> >               };
> >
> > @@ -651,6 +652,7 @@
> >                       dma-names = "tx", "rx";
> >                       dmas = <&edma0 1 6>,
> >                              <&edma0 1 5>;
> > +                     fsl,sai-asynchronous;
> >                       status = "disabled";
> >               };
> >
> > @@ -665,6 +667,7 @@
> >                       dma-names = "tx", "rx";
> >                       dmas = <&edma0 1 8>,
> >                              <&edma0 1 7>;
> > +                     fsl,sai-asynchronous;
> >                       status = "disabled";
> >               };
> >
> > @@ -679,6 +682,7 @@
> >                       dma-names = "tx", "rx";
> >                       dmas = <&edma0 1 10>,
> >                              <&edma0 1 9>;
> > +                     fsl,sai-asynchronous;
> >                       status = "disabled";
> >               };
> >
> > @@ -693,6 +697,7 @@
> >                       dma-names = "tx", "rx";
> >                       dmas = <&edma0 1 12>,
> >                              <&edma0 1 11>;
> > +                     fsl,sai-asynchronous;
> >                       status = "disabled";
> >               };
> >
> > @@ -707,6 +712,7 @@
> >                       dma-names = "tx", "rx";
> >                       dmas = <&edma0 1 14>,
> >                              <&edma0 1 13>;
> > +                     fsl,sai-asynchronous;
> >                       status = "disabled";
> >               };
> >
> > --
> > 2.20.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
