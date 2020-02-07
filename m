Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52B4F15561E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 11:55:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ywme/LxWgbiwbmx4Q3t47qAuhxvcoGEjNFLVcuVG63g=; b=sxG060xUUS5mAK
	xBOChJpCKJD1uT/rqtf+mkUai3i401jRW9jLcFsggLv7ek+5WFeHkFKvgC7+dlQg/+bXXo/+woPLa
	yVLVgVAzwtezRb6NGhx4bpkE3qRunKlCBEyAf8W/MIT8CLhtNqVuyBsFIqr2gSAK8crrRj1Mi3Yg6
	r9DJamc4pRErjD3nv1k1f8EFdeh+D4B8Sk3u5JuDaTF+RHWAkixIVDRJlEvMEnMJdMgDMBjnvRDVJ
	jmO1PQxTLwhLp3YvVuQ+U/u68R5CRac9XpQpArUCKNRvrXGuOSRDV7SznV9CpsGig/ey6NqrXeu8F
	JCtGu9YhOLyt72ISm/TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j01Ig-0000z9-T1; Fri, 07 Feb 2020 10:55:54 +0000
Received: from mail-eopbgr70041.outbound.protection.outlook.com ([40.107.7.41]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j01IZ-0000yd-8d
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 10:55:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mxpAZ+pBL4Je9IYClqVGPfPInoRr9+VGMD1qF8At5uZjDMMVwCTNuAXp+i/5oR6SvtX8LpYe4qSpI7yueaPg7l9Ae5HiPCrCfsxPbsuJ8/k105/i/POE0/IsTfNUUa+sgJB14hw8t7EywKtXZTmsN7vmqjRyQAXT4tFXWmExZNmUqtshcmPNRKozWsiCUsZgBYFFzwKrXjGMHBTYVj0OFL6vqQBYTIW/NVqMnHIpSngrFTTHr8kvqGqmMrWJ/PRHC6P4acy8Syifgw6W/5vieMVIMOirEgNCgAYRWgvkJvWY3mcyoDEUQzPNWXpKcARyFvaaKTKAdC1rOksRCJM9/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fMzuKmlGUanbdc0Spo99QONSyOaE6LriUKLeONphZ5Q=;
 b=XcDvFmNVHKZAWfEL0V1J+8zWOqpS8vjvEQ5XSaGC5w7oCwhXZ00MnS/zPCWFGy96/VnwCcnn2ZVASzeV2I/JWJsE6lJWU7DKp5CkrtFsjOO0pd2xBFC9T8MFuSzC6I0gFwAqL8mj8ZVQVeznqWKJOlGJVoPHg1TVnMr9OpTgF0L1IkKmtOoNOWyLZq99k40qmYcN7/HZhjToh9o/+fPBEOXRAXmh7kFq/Y9Qe2SYSmPCuDHeioUAYnC11IuPbyGH/EDaC5VBX/zAgQpqRGEqaAL1P6KUxoJ6ItC4COInj2izK5oJ3pc+od1rN4ob7U+krAUfUB849QWXVjAXAhz+Hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fMzuKmlGUanbdc0Spo99QONSyOaE6LriUKLeONphZ5Q=;
 b=ff7io55tMHl/bi1Nrn43xchDQY+iTni0EL+g4CGd91E9f6A+p2ivKhmf0qWI+ujElmsHyNylhS7Usf5rOlyKcJHTYocbmiSl/EYXHFpAM0JPnsaT1H/1mOpy1WHMv44Sye82r2aYuyt8rM3eWe5gyU+lBi8dt7VQrw5ndh8b8Lw=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5329.eurprd04.prod.outlook.com (52.134.124.159) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.21; Fri, 7 Feb 2020 10:55:44 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2707.024; Fri, 7 Feb 2020
 10:55:44 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Sudeep Holla <sudeep.holla@arm.com>, Marc Zyngier <maz@kernel.org>
Subject: RE: [PATCH 1/2] dt-bindings: arm: arm,scmi: add smc/hvc transports
Thread-Topic: [PATCH 1/2] dt-bindings: arm: arm,scmi: add smc/hvc transports
Thread-Index: AQHV3O5LIqtUB1cLq0qKBDDFKN5B7qgPg0IAgAAK5QCAAADsQA==
Date: Fri, 7 Feb 2020 10:55:44 +0000
Message-ID: <AM0PR04MB4481B1D5E2725E85BC6D6D71881C0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1580994086-17850-1-git-send-email-peng.fan@nxp.com>
 <1580994086-17850-2-git-send-email-peng.fan@nxp.com>
 <7875e2533c4ba23b8ca0a2a296699497@kernel.org> <20200207104736.GB36345@bogus>
In-Reply-To: <20200207104736.GB36345@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 8c292e8e-bd98-44f6-0cec-08d7abbc47e6
x-ms-traffictypediagnostic: AM0PR04MB5329:|AM0PR04MB5329:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB532912FBCF9C8C8C8920EB0D881C0@AM0PR04MB5329.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0306EE2ED4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(366004)(346002)(39860400002)(376002)(199004)(189003)(26005)(7416002)(55016002)(81166006)(7696005)(2906002)(9686003)(66556008)(64756008)(66946007)(66476007)(81156014)(186003)(316002)(66446008)(8676002)(8936002)(76116006)(4326008)(110136005)(478600001)(52536014)(86362001)(44832011)(71200400001)(54906003)(33656002)(53546011)(6506007)(5660300002)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5329;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: i773gPsWpoD4n7qiI+O9MJ8pFgw/V7v05vTDvFp+KX437rmE5ObhT0qVF04D5p5WkaA2wKyTmncbx3BR0QXd35pEzZZcrXfnGQJZoQmSaMFI60Omu9fZn2xVvQoJzUgHY4lC4SgPtaYCNak/UMO3Wv8qNYpVPfqFYmh7dw6hAWA+i8uag7JY2I467xD87MR57aeNvz56WnHuLHgC22bvGMuJxkunZ1/kPwcc1/uuFuDVWCk44RYZjsXkysP+Zns+DBhrQovuUF6ubRfrO8/VFnAq5o+pAw871hPa14G5t7VbZMu7ipAZbONLIcOXGfClYd3LNr4FgTQiyaLM+nyihCdc4XXRMIdhnyiRr4i2vUcejI/kCJNfaPB+s2Wd8uuObG0AZACM5G+qCfNouurVRF70pUdb7DPlBu0LwYcAZoCjGluqaiRSJZiPoWasieDyBSd8GLO3lL1zQsBaPkhxEZpP2OW77Ezvp00r0m4g0gn1a1sqAybGqFDWY5ICZx2Q
x-ms-exchange-antispam-messagedata: LcFZKwvDTQ9T3W23f1Di46MVAtdvm9ogaADHS/lKGGGwHZnAT97L6aguHGxf/1woh4Bx1hK3h83HTaTjoaG5tzZcQE9kEWlW+UJpnrzyOppOZ/x7zampbR7ILol9/T4CaRtHJkf1DDGsxF29gBTicw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c292e8e-bd98-44f6-0cec-08d7abbc47e6
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Feb 2020 10:55:44.2965 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Awl0cRJUnubIdtjmpPJ7iH+fpWmzXgGC7kkaaQRdJ+3MkGE8ET+PyWFHHFgYz7fXMbtQeFOvSj629/5Kjkok/g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5329
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_025547_302260_D7A1B521 
X-CRM114-Status: GOOD (  24.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.41 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: Re: [PATCH 1/2] dt-bindings: arm: arm,scmi: add smc/hvc transports
> 
> On Fri, Feb 07, 2020 at 10:08:36AM +0000, Marc Zyngier wrote:
> > On 2020-02-06 13:01, peng.fan@nxp.com wrote:
> > > From: Peng Fan <peng.fan@nxp.com>
> > >
> > > SCMI could use SMC/HVC as tranports, so add into devicetree binding
> > > doc.
> > >
> > > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > > ---
> > >  Documentation/devicetree/bindings/arm/arm,scmi.txt | 4 +++-
> > >  1 file changed, 3 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/Documentation/devicetree/bindings/arm/arm,scmi.txt
> > > b/Documentation/devicetree/bindings/arm/arm,scmi.txt
> > > index f493d69e6194..03cff8b55a93 100644
> > > --- a/Documentation/devicetree/bindings/arm/arm,scmi.txt
> > > +++ b/Documentation/devicetree/bindings/arm/arm,scmi.txt
> > > @@ -14,7 +14,7 @@ Required properties:
> > >
> > >  The scmi node with the following properties shall be under the
> > > /firmware/ node.
> > >
> > > -- compatible : shall be "arm,scmi"
> > > +- compatible : shall be "arm,scmi" or "arm,scmi-smc"
> > >  - mboxes: List of phandle and mailbox channel specifiers. It should
> > > contain
> > >  	  exactly one or two mailboxes, one for transmitting messages("tx")
> > >  	  and another optional for receiving the notifications("rx") if @@
> > > -25,6 +25,8 @@ The scmi node with the following properties shall be
> > > under the /firmware/ node.
> > >  	  protocol identifier for a given sub-node.
> > >  - #size-cells : should be '0' as 'reg' property doesn't have any size
> > >  	  associated with it.
> > > +- arm,smc-id : SMC id required when using smc transports
> > > +- arm,hvc-id : HVC id required when using hvc transports
> > >
> > >  Optional properties:
> >
> > Not directly related to DT: Why do we need to distinguish between SMC
> > and HVC?
> 
> IIUC you want just one property to get the function ID ? Does that align with
> what you are saying ? I wanted to ask the same question and I see no need for
> 2 different properties.

The multiple protocols might use SMC or HVC. Saying

 Protocol@x {
    method="smc";
    arm,func-id=<0x....>
 };
 Protocol@y {
    method="hvc";
    arm,func-id=<0x....>
 };

With my propose:

Protocol@x {
    arm,smc-id=<0x....>
 };
 Protocol@y {
    arm,hvc-id=<0x....>
 };

No need an extra method property to indicate it is smc or hvc.
The driver use take arm,smc-id as SMC, arm,hvc-id as HVC.

Thanks,
Peng.

> 
> > Other SMC/HVC capable protocols are able to pick the right one based
> > on the PSCI conduit.
> >
> 
> This make it clear, but I am asking to  be sure.
> 
> > This is how the Spectre mitigations work already. Why is that any different?
> >
> 
> I don't see any need for it to be different.
> 
> --
> Regards,
> Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
