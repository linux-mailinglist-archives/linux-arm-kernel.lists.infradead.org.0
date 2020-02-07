Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CBFF15571F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 12:46:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PIO9rKs5Kn+ug/muTTfypXBghEcKMALBE0RsWJ+3ba0=; b=F6pA+FIVpTPNX7
	7FzzcHWd5gKR3Pp/i6sKovlce8Jc70qdZTsYStRTBkmYwyUVnR1B3uia7No99LtbAPM6hoIHsx67s
	E9cAcggZPyasYJxv6rvUBytt9N+crVicIAkfKyoqV+oWs9K4f6MXEk2cSB3UFs98G5FAAE3Y1rCB9
	QVJNRZO/MZiGIdnDKSwVVWJB1z5mvKqk7uDzoVQ8gIV5wiefFqr4rK7oge7r/IpGvqlnjnk5+AXWt
	9gCP0GhGBDEwsL0KZU5XR2sXLqk15ARlZByysMEl8gQHvJjFvwxXQJe053G56ZZ/u1r9KviTjtxVN
	LoynbrqTQEiMaffEjwXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j025j-0004fm-1h; Fri, 07 Feb 2020 11:46:35 +0000
Received: from mail-eopbgr80059.outbound.protection.outlook.com ([40.107.8.59]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j025c-0004f4-DI
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 11:46:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IWatnhLgIgOZjY63ggLiV29ZrtIc3nytAciaaXAADKk7CKOHnVnVdAFNnqUR3RlxUHdcPSTITTt/bs7wivgMNIsBTfz7kPjCs2gdmqXN15aN8ViQZ5ENKKgCEhJB/+XHak8FgFUpQzoykX4VlNum3zhGYrXaKGQBXc1gb+RoebiXG2JeG5pMmYH8LDOrktB2Rq9UFgLnkIdDSp9zdUOrpSJn9qiDtkq3k3PRGZRO9RzdH3499EM6l+zt2eqPylMHDy3rLTm8bZCHwBIF0eS1f0ZD542oaJoDguUdp7NhD/JjpPQrM+PknrM+8WfGFlQB/NK2ebn74Bnf/GKWyutUaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GkXm2KA6AFJCH/943Fy/DzqdqeSY6vRxPZl7HzgASV8=;
 b=IA6pPJRnCZrT4hNHpdyaekfvymTAToZAozb2DhIqbM4GOiK3/Md3/GHhtOGNBz6dKj3kiPMHa0grgBFMBuj+f7sV81jT6WLind9UBXPBJu7loaYLhR09fLlkmw/3LJ1kPLk98ExIc6ww+f0MhSgIyBgt6xFLKTpkZgtPrCHifZZ5DFPqCYYvh2J6aLxS1dKJm0iGCKD9Lci7tzH9sGQiB8oZyaMuHEgqLDvAHYt3LQ17WBuumdTJQNuOpXcTiTUlCh2hJ5VFcH9pUvyru7GBCtiBQbsGqNPN2FoMj4Bj63vnOxlbchX1TH93MEu38c9Ia+rdRLykyusYqL2Hf4++UQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GkXm2KA6AFJCH/943Fy/DzqdqeSY6vRxPZl7HzgASV8=;
 b=LDkQCjPpf9RJKs5jUmqdeTntqpui1ZmfHN1QzW2+V/7FxfLOWiPwanXPq9886VldhoEc9EUpN6Pv9j26385tFNgolBSeeeR6AsQCXUTYxrK3G+ONq8Rfy+TsrmlOPdwYt/EE7tjgOCqMypiQqlQQ9Xq1Fr359AcP8EBX+yfnfWU=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4482.eurprd04.prod.outlook.com (52.135.148.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.21; Fri, 7 Feb 2020 11:46:25 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2707.024; Fri, 7 Feb 2020
 11:46:25 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Sudeep Holla <sudeep.holla@arm.com>, Marc Zyngier <maz@kernel.org>
Subject: RE: [PATCH 1/2] dt-bindings: arm: arm,scmi: add smc/hvc transports
Thread-Topic: [PATCH 1/2] dt-bindings: arm: arm,scmi: add smc/hvc transports
Thread-Index: AQHV3O5LIqtUB1cLq0qKBDDFKN5B7qgPg0IAgAAK5QCAAAIrgIAAAERwgAADxQCAAAZegIAAAoZg
Date: Fri, 7 Feb 2020 11:46:25 +0000
Message-ID: <AM0PR04MB4481867284EAC2879DDD9F93881C0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1580994086-17850-1-git-send-email-peng.fan@nxp.com>
 <1580994086-17850-2-git-send-email-peng.fan@nxp.com>
 <7875e2533c4ba23b8ca0a2a296699497@kernel.org> <20200207104736.GB36345@bogus>
 <5a073c37e877d23977e440de52dba6e0@kernel.org>
 <AM0PR04MB44815F11C94E5F35AE7B0B21881C0@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <ce775af0803d174fa2ad5dfc797592d9@kernel.org> <20200207113235.GC40103@bogus>
In-Reply-To: <20200207113235.GC40103@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: dff3cc4e-cb06-48fe-5215-08d7abc35ca9
x-ms-traffictypediagnostic: AM0PR04MB4482:|AM0PR04MB4482:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4482B14EF0E6EBD3FB82D833881C0@AM0PR04MB4482.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0306EE2ED4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(346002)(376002)(136003)(366004)(199004)(189003)(478600001)(2906002)(76116006)(86362001)(53546011)(5660300002)(33656002)(7696005)(8936002)(6506007)(316002)(9686003)(110136005)(66446008)(52536014)(26005)(71200400001)(4326008)(66476007)(186003)(64756008)(66556008)(55016002)(8676002)(81166006)(7416002)(66946007)(81156014)(44832011)(54906003)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4482;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AlpGLnP8yd01WP/9xnnEmVqQMxJ+AGvZkpZIzWix55bspzelABbiJ6BNNNgAVbHL8DksbK6NFntIzKw8Tx7Jn55u9FOUXChIdd3qJsjQ3qCys2D3UVPIIAfS2H/sZAeD53GsAlDlbsKuqvgLgF/y7URQaj+hptH/w3iVRz8a35esB90ea8XQLqJSc1Q6i3fNNjVSEwkrAHpvXgVzzOTszr+tHhaynvuuS5wJpIeScBLxzbJ/udvtaWhYIqYwC5I6u6fwd73miXv4ViVUutJ2qyy5TH/W+oqHoCX2PwgWd0DFOZtwofn9+ub0ifxjlbfve4YHmTPiQHy6d0N+67GboTQZ5ZXBXPmDGZh6bLMEpNzYWGPr1uK4tuaPARl8hp8bRfCERlZzmkjUY0ZUSXH+uUljrrQgHcUDurdrvSeVlju09xImvNrPTiEEMS1TKlZwt8nXelMjuHCvNHWn3QVvfYsyiQyuZQQuoEbqQrKg4h4Kx2AzH3Ew69cgBGROvxmM
x-ms-exchange-antispam-messagedata: uk4wFVu3wpjSBpvDo6xsmWa+0Ng0Fbel1zM6r3N7/D884PcENTsenLLSXR3O78hTBLf64zICNNJ/tVLk5FfxmlpiDtyKP7tBTh+PMtq6zx6YyWkeW5NYsXTy77TO9Gz48XPjAlh3REG4ka7xpPgolA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dff3cc4e-cb06-48fe-5215-08d7abc35ca9
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Feb 2020 11:46:25.6058 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: slo4qJh+p35o1pUx6sE9OIs6BWegSaWv7yaU8cSoa1cJEeDev3QEUca6q8nODmPZhkFpnSFzq0i0vB0w7GimOQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4482
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_034628_498242_921A1DF1 
X-CRM114-Status: GOOD (  29.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.59 listed in list.dnswl.org]
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
> On Fri, Feb 07, 2020 at 11:09:48AM +0000, Marc Zyngier wrote:
> > On 2020-02-07 11:00, Peng Fan wrote:
> > > > Subject: Re: [PATCH 1/2] dt-bindings: arm: arm,scmi: add smc/hvc
> > > > transports
> > > >
> > > > On 2020-02-07 10:47, Sudeep Holla wrote:
> > > > > On Fri, Feb 07, 2020 at 10:08:36AM +0000, Marc Zyngier wrote:
> > > > >> On 2020-02-06 13:01, peng.fan@nxp.com wrote:
> > > > >> > From: Peng Fan <peng.fan@nxp.com>
> > > > >> >
> > > > >> > SCMI could use SMC/HVC as tranports, so add into devicetree
> > > > >> > binding doc.
> > > > >> >
> > > > >> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > > > >> > ---
> > > > >> >  Documentation/devicetree/bindings/arm/arm,scmi.txt | 4 +++-
> > > > >> >  1 file changed, 3 insertions(+), 1 deletion(-)
> > > > >> >
> > > > >> > diff --git
> > > > >> > a/Documentation/devicetree/bindings/arm/arm,scmi.txt
> > > > >> > b/Documentation/devicetree/bindings/arm/arm,scmi.txt
> > > > >> > index f493d69e6194..03cff8b55a93 100644
> > > > >> > --- a/Documentation/devicetree/bindings/arm/arm,scmi.txt
> > > > >> > +++ b/Documentation/devicetree/bindings/arm/arm,scmi.txt
> > > > >> > @@ -14,7 +14,7 @@ Required properties:
> > > > >> >
> > > > >> >  The scmi node with the following properties shall be under
> > > > >> > the /firmware/ node.
> > > > >> >
> > > > >> > -- compatible : shall be "arm,scmi"
> > > > >> > +- compatible : shall be "arm,scmi" or "arm,scmi-smc"
> > > > >> >  - mboxes: List of phandle and mailbox channel specifiers. It
> > > > >> > should contain
> > > > >> >  	  exactly one or two mailboxes, one for transmitting
> messages("tx")
> > > > >> >  	  and another optional for receiving the
> > > > >> > notifications("rx") if @@ -25,6 +25,8 @@ The scmi node with
> > > > >> > the following properties shall be under the /firmware/ node.
> > > > >> >  	  protocol identifier for a given sub-node.
> > > > >> >  - #size-cells : should be '0' as 'reg' property doesn't have any size
> > > > >> >  	  associated with it.
> > > > >> > +- arm,smc-id : SMC id required when using smc transports
> > > > >> > +- arm,hvc-id : HVC id required when using hvc transports
> > > > >> >
> > > > >> >  Optional properties:
> > > > >>
> > > > >> Not directly related to DT: Why do we need to distinguish
> > > > >> between SMC and HVC?
> > > > >
> > > > > IIUC you want just one property to get the function ID ? Does
> > > > > that align with what you are saying ? I wanted to ask the same
> > > > > question and I see no need for 2 different properties.
> > > >
> > > > Exactly. Using SMC or HVC should come from the context, and there
> > > > is zero value in having different different IDs, depending on the
> > > > conduit.
> > > >
> > > > We *really* want SMC and HVC to behave the same way. Any attempt
> > > > to make them different should just be NAKed.
> > >
> > > ok. Then just like psci node,
> > > Add a "method" property for each protocol, and add "arm,func-id" to
> > > indicate the ID.
> > >
> > > How about this?
> >
> > Or rather just a function ID, full stop. the conduit *MUST* be
> > inherited from the PSCI context.
> 
> Absolutely, this is what I was expecting.
> 
> Peng,
> 
> You have already introduced a compatible for smc/hvc transport instead of
> default mailbox, why do you need anything more ? 

No.

Just use SMC or HVC
> conduit from PSCI/SMCCC. I don't think you need anything more than the
> function ID.

Yes, only function ID for now. If function ID could not be standardized in short
term, I could first mark smc-id optional in dt bindings, then smc transports
driver will first parse smc-id, abort if not exist. When ARM has standarlized
ID, we could switch to use that ID if smc-id not exist.

Thanks,
Peng.

> 
> --
> Regards,
> Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
