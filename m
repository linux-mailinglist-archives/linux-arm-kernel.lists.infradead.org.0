Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C34615537E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 09:10:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2rYUdnYu5ZT+YQitGLtcRTAJgFbDOuGzJsii/gRRk+0=; b=kWxAwPAClwVRtB
	lyv8+ocDuVGfcORGb+qknWXCxbzrJ4EkpIkfS9LlYZrMdGLga9EFUbw2W4zXX07P9wg+wvLqjtEMO
	JuGpt/wi0wXZwtF/bZhj4dcpxq4jHwFge2tFcZ8+c9fcNdabnOsV1H+riE7CNEshJgG/AUaXznKe9
	6YTmfgDLNUAlTsm8Tn5+nHKpXJXI14AvW7Rx7uKPqqLjESH57/fh3oZPj+SaLI5gMWGh31OY/Croh
	XDD7tCJ9BYss35qKPqn21N/d95EOm3h10JSbITL8HH0EnLNOmgA2A7O0oyuEXYRKAnhSnQHOWdr2U
	Fe2e9gEL/pIcnJSndEkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izyiL-0004hd-Ed; Fri, 07 Feb 2020 08:10:13 +0000
Received: from mail-db5eur03on0613.outbound.protection.outlook.com
 ([2a01:111:f400:fe0a::613]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izyiE-0003n2-CC
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 08:10:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oY+B483WdC342YJYtOe3VRA1mJkm5lyNXLoalUWAn4iLrxr1FYXUgnKoC3cIR3ICNxuflWz3S4fpEfvyLSgFrYv3+YUkQXh6ICEOvhd7BC/JHtV2nvnAF0Gpbtr7Ar6qC2xnXnHbURrGgQXo88AR/RrVTvzRkXMmPHgEcw2Hdo7StK3yWHHaNotDzQADljvB24VGx4XSDAZs6/CsN7V1RRiCJTU7KEy0Jl7Ox166/7raqQghQg4KLYlZUaCq8gyU9k+h3ZLhJhenbbWdHnjLZ2M6EJwRd5BCuZELEtB5d5TvxDtVtpcDZ+vMXCfLiIs5JlzkiN9jAtmYrn06ERDsZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Vm2qQDRi4CdJZgeXjh8rOQogakt8ZwShO1TlNwOvZgo=;
 b=Ii4nr+Lya2hVfddLbZBmydVJ3Q/YfxuNtRpVRyzjubMP1ioUgJPsulHZPcp0Z2UVx0zB7BgxjFhwZvIZTDktbwckFTYhK/AlXxDDFtM2V0uhh+395KspgM0qEyQQcX8hicPvaN9/H6OffI72WIwhcmM2IoqGTpkMFetsmN+TDCDm6Cz6EFG4JUrXwh7ubQxxk14Ar2y6I0MyAWRHPmUA2q+kaJ9JlTBTcgBuu0Z/oKj0f8ZOcDmV+hKiXMDzZJvoLzp5fkDJFvxaG4lYfFFaO+SKkohuKOtWZs8D69KpX5q3CNiNiIUIPe1GQQh5D7k7SY54+2jNeeuqVDcsUDYcsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Vm2qQDRi4CdJZgeXjh8rOQogakt8ZwShO1TlNwOvZgo=;
 b=Do9F9n5klovC/a9I2ocxXbrGeBL3zF+I0H+zLt8FyHslZxXif4Dm85Oj9vWysANKdCdiGlQZXErVMIEp4mP6q2a4OtAvAvAeoB2bMHRCD9fUr+xQLDUkZ3bLtahwaD7b0xXtwtpLpl5FN59wIkO3V1Cm8Eroy9k201yiHctsub8=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6722.eurprd04.prod.outlook.com (20.179.252.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.24; Fri, 7 Feb 2020 08:10:01 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2707.024; Fri, 7 Feb 2020
 08:10:01 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Rob Herring <robh@kernel.org>
Subject: RE: [PATCH 1/2] dt-bindings: arm: arm,scmi: add smc/hvc transports
Thread-Topic: [PATCH 1/2] dt-bindings: arm: arm,scmi: add smc/hvc transports
Thread-Index: AQHV3O5LIqtUB1cLq0qKBDDFKN5B7qgOt6GAgACqKrA=
Date: Fri, 7 Feb 2020 08:10:01 +0000
Message-ID: <AM0PR04MB4481D3F304E1F17FAFE8D592881C0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1580994086-17850-1-git-send-email-peng.fan@nxp.com>
 <1580994086-17850-2-git-send-email-peng.fan@nxp.com>
 <20200206215947.GA21514@bogus>
In-Reply-To: <20200206215947.GA21514@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 508996e6-52c8-406c-9c41-08d7aba5213c
x-ms-traffictypediagnostic: AM0PR04MB6722:|AM0PR04MB6722:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB6722EF62B57859E58BF16F3E881C0@AM0PR04MB6722.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0306EE2ED4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(366004)(396003)(136003)(376002)(189003)(199004)(6916009)(316002)(81156014)(8676002)(2906002)(44832011)(81166006)(4326008)(6506007)(55016002)(66946007)(66476007)(52536014)(186003)(66446008)(7696005)(86362001)(66556008)(71200400001)(9686003)(26005)(64756008)(54906003)(76116006)(478600001)(8936002)(33656002)(5660300002)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6722;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OXCXRN0DhVVcTvkYLONrBUIxaVH9t8T6D716QTCdNKn/dYSbKkIe3BUjSpQr5TNyzgWK4T9m4inXbYvn/t0uJf1y73QCEReJ8lkhZfSCY4GsBw+M/8vr9qfvPJhQBTaxxwRlJA7CGNRGYD6TxlG6a2eQWdYiCJVYWHmWzZmiWdgLHCS87r35k21athVb2ypkPpHGonOh6K1A71P9kSWrpawKzTLAN6NbrjwywHQID+OAMxJ4bZeWC/MHrF0qKpOiksKivZw5DbsuYSS9E7hBeLC83iXt7cVZkZESO8HlmZV6I6ukwtnV+rdSgWZO732jl0PrngvU3xurItjdxKSKQIf52pZcrTxHOdd7otC4jt9DtK9UhggjaYiN6tvS3PwTHD6lyomDN1lf5JSZx7WtJcR9buoaAxx2aSL+t3nf0cWEaQe26ahcS/mXgwqjRWJ1UW7uksTrtaoaFarFWPvhUerSXJuT51q+UkP2RoBnnQD154PUu2yGb3KYgyI8T/Rq
x-ms-exchange-antispam-messagedata: hAM3WQc3kfPx0oAx6MIt3AgiaxV4n8T+qvcBj/rHVhoCkETELH/QaqTSkOu8aWRNVhM0RLKcZm01BMMMY6O5H1Q1r1daxjpoeXD7KSGomee+CEPnEsShSO0G8v0ztemlGVAtcm9usoQsY2C3GL0jRw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 508996e6-52c8-406c-9c41-08d7aba5213c
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Feb 2020 08:10:01.1008 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OMBeasp8AeF9QuOplVNSaR7rUwczzfKpvXXSPN/lWp/HcdKH3snj0Zq9V4R+m621vWXkRt9D1mVtRqztiLSGRg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6722
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_001006_444374_5C4CCD23 
X-CRM114-Status: GOOD (  18.55  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0a:0:0:0:613 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: Re: [PATCH 1/2] dt-bindings: arm: arm,scmi: add smc/hvc transports
> 
> On Thu, Feb 06, 2020 at 09:01:25PM +0800, peng.fan@nxp.com wrote:
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > SCMI could use SMC/HVC as tranports, so add into devicetree binding
> > doc.
> >
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> >  Documentation/devicetree/bindings/arm/arm,scmi.txt | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> >
> > diff --git a/Documentation/devicetree/bindings/arm/arm,scmi.txt
> > b/Documentation/devicetree/bindings/arm/arm,scmi.txt
> > index f493d69e6194..03cff8b55a93 100644
> > --- a/Documentation/devicetree/bindings/arm/arm,scmi.txt
> > +++ b/Documentation/devicetree/bindings/arm/arm,scmi.txt
> > @@ -14,7 +14,7 @@ Required properties:
> >
> >  The scmi node with the following properties shall be under the /firmware/
> node.
> >
> > -- compatible : shall be "arm,scmi"
> > +- compatible : shall be "arm,scmi" or "arm,scmi-smc"
> >  - mboxes: List of phandle and mailbox channel specifiers. It should contain
> >  	  exactly one or two mailboxes, one for transmitting messages("tx")
> >  	  and another optional for receiving the notifications("rx") if @@
> > -25,6 +25,8 @@ The scmi node with the following properties shall be under
> the /firmware/ node.
> >  	  protocol identifier for a given sub-node.
> >  - #size-cells : should be '0' as 'reg' property doesn't have any size
> >  	  associated with it.
> > +- arm,smc-id : SMC id required when using smc transports
> > +- arm,hvc-id : HVC id required when using hvc transports
> 
> Don't the SMC ids get standardized?

For now, there is no standard SCMI SMC/HVC ID.

Sudeep, Is there any plan from ARM? Or how you think about this patch?

Thanks,
Peng.

> 
> >
> >  Optional properties:
> >
> > --
> > 2.16.4
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
