Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E77C15563B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 12:00:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MAuFyDYdgI561n1ZtmlB0pgDZIGHzyRrNrg0kw/4BY0=; b=D9saFUgOO8fp+C
	zMkbnO3Ayt7zMNZG2519ugL9PIxQXapOPNqFU1rcMaJhZ9YyOhL+noGFzV3m+g2pxRsjNXVtiGdVD
	YGcw5miAs3rbvl288kfF4L19REwipV06dxRf0s4is9k7PJNQO1/Yk+fESDw1zzcMJVUCdNo9Go/Py
	O1WKAljoycOvfBx03kKR2al5UTrmPR/AvlPguKOz+bOfYF2gNGJr3jbp0pjuAlWEkn/mBJOX4/k/U
	Wv/EnszvVBcmdC2AkjyVc0AdUjH+q78Ae5htjfODdSYny7XeS5eyt3FdoP4aXGxb/xNcLpjS/2CwH
	IV2MWMunI07uYce5FBTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j01NP-0003V9-1H; Fri, 07 Feb 2020 11:00:47 +0000
Received: from mail-eopbgr10044.outbound.protection.outlook.com ([40.107.1.44]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j01NI-0003Uo-Kq
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 11:00:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h5es4ieO58rDmmpbAgBuwLQC6gjPTzpzYAqaogKHnJ9gnNSaui38Pjrfq4OXJhQEgwcQ7MHpJWrgcw2RgjM8Svpc9PfwCq06t+CGNDtss7hQTD6hDnVF/0bYBXYN5JqgRpM++jQBbcJquhobTSuVFGFOyqWxPUu3EGxVHpq0l/kuhLQPt5d2Hu5H2zbA0hhopLA353XsQGWjEfmH98cXa+Jn2eBh89ZV526B7W2bglPpvrOeELYSQ2SsLxxxr6mgfLEyNoYVk1L+jaUhQeXQyOBYQKoLPyMofDea6ien7rrOBctPLpONI4qybf44/docNWWugOJxABROrJEGQB6/yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7G/cmdHluzNoYYE6ZQ1anzZfnq9erUBGBQoZ8GzzkiI=;
 b=C/s46WL6ZhIsRpgG3j4wKZ9sPC2YVqXQOnRXLFllKNJDrPUchFWvxme72L1sKKRITenN38pFPXBU+JWLHXKJOZK+M/roBJhlU+nqYKy3M4aEOQNM2mmOptmAv2Am3k2jFt14SsTFfDh2pO+NVPyxT3skpCvg/PozkzGVun/deA5I05z0FtqwUyuLSinEf3SabqeQRX3be11AjPj2HoBW7ZL6UzarJgee0X2ibHgc2G72XMLLdKQ9OvLnawSw1W18KA+YkIL2ld01g9ZsEVpgcarH2AUCZgD4lS18wxINsnW8A1uKpSGiMcPUeYna8N6LTwL2X+IArWsP6nUaeAe9/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7G/cmdHluzNoYYE6ZQ1anzZfnq9erUBGBQoZ8GzzkiI=;
 b=VMGzk4Ax4doU7ttwNJy9wmQJc2FH01kEwEyrSq/qdrI8eoHDmHBLDlc1jPMn9jaRC0PyEAIFfhwP/2hlG2cVmh7qVWB82s1p8pvBgLnCszXWTOTkLoBuf0ReGPMW28a2vsTXEROe8Oy/NV9DNtSGrUE44vPHeDnZgpbxtJCK2Mo=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4946.eurprd04.prod.outlook.com (20.176.214.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.24; Fri, 7 Feb 2020 11:00:37 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2707.024; Fri, 7 Feb 2020
 11:00:37 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Marc Zyngier <maz@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>
Subject: RE: [PATCH 1/2] dt-bindings: arm: arm,scmi: add smc/hvc transports
Thread-Topic: [PATCH 1/2] dt-bindings: arm: arm,scmi: add smc/hvc transports
Thread-Index: AQHV3O5LIqtUB1cLq0qKBDDFKN5B7qgPg0IAgAAK5QCAAAIrgIAAAERw
Date: Fri, 7 Feb 2020 11:00:37 +0000
Message-ID: <AM0PR04MB44815F11C94E5F35AE7B0B21881C0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1580994086-17850-1-git-send-email-peng.fan@nxp.com>
 <1580994086-17850-2-git-send-email-peng.fan@nxp.com>
 <7875e2533c4ba23b8ca0a2a296699497@kernel.org> <20200207104736.GB36345@bogus>
 <5a073c37e877d23977e440de52dba6e0@kernel.org>
In-Reply-To: <5a073c37e877d23977e440de52dba6e0@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b524a86d-155c-4daa-08e2-08d7abbcf674
x-ms-traffictypediagnostic: AM0PR04MB4946:|AM0PR04MB4946:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4946D97EF7E76AAE402B1654881C0@AM0PR04MB4946.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2000;
x-forefront-prvs: 0306EE2ED4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(346002)(136003)(366004)(39860400002)(189003)(199004)(6506007)(54906003)(110136005)(53546011)(33656002)(7696005)(52536014)(2906002)(4326008)(66476007)(66556008)(64756008)(66946007)(478600001)(66446008)(5660300002)(76116006)(316002)(55016002)(9686003)(44832011)(71200400001)(81156014)(7416002)(86362001)(8936002)(81166006)(8676002)(26005)(186003)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4946;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xiGUPC+ssnLtaEkNijws71FdkSs4d4zUySoZWGmUwYZd+Ek7+xw0seafecOd/hXKiERUluxAyRUb81/fA5kkkIzr+7uMgbMrvixsp2fTYMD9aRdV1ANkMm0W4AKN4TVxtZ7kaPEmel/xaAe8+Wq3UaiinwkfzXIyd2V2mMFcFBjHPWTvWLTFWLEiJ8CbtgJHX0rQfZiDWbATNbKMHxffmHoaV3oexDvxou6q4lz/ILeHZYqSyICakcHOo9NYhub0c+mlWTavWQfaSds/pN8w/KbzE2dni0+c1v6C2cM9NE0ABbQ1fXP2mAbBqT7KPNQhbxB6nNIw3ZWi4dqKQ0Z3zqikdRPJPQbBcxp97BZDW0Ux5rjAGnYtysTTdtAT08ZYy2rJrbtjK3BEQv9gMrYfd4uClq56YaXrrdoy3hve70sT4/yQ3B1ATHuxDe9oXvxOWHlXTHN5meKnrbCVt5yrtKBSkb1q/MTP2m7zrBrQKhXiXWAM0VcFg2a2FeoBdlWF
x-ms-exchange-antispam-messagedata: Dd9LD3XSy6Sx9DS/BI/mzqldNcvGWzaNK24jiI951thW0HugZc4lj2DGU/TX+5bru8K4SZ9mnU3sL2HGVin45++vPlx8XahNKhoslZZa2QYUFqz5g5Ym4184KZlKYZSbBu/xsz7rJJ1KGZlc5PXj5g==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b524a86d-155c-4daa-08e2-08d7abbcf674
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Feb 2020 11:00:37.1226 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: w5qW5qHlW18phbcVVts5a/txt23jBGFPTUTadBpm9+k0rIQoU0WfUy1HKdhj91lbs/lh7Ea0L2vIXXcSgzazGw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4946
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_030040_683183_191976EC 
X-CRM114-Status: GOOD (  23.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.44 listed in list.dnswl.org]
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
> On 2020-02-07 10:47, Sudeep Holla wrote:
> > On Fri, Feb 07, 2020 at 10:08:36AM +0000, Marc Zyngier wrote:
> >> On 2020-02-06 13:01, peng.fan@nxp.com wrote:
> >> > From: Peng Fan <peng.fan@nxp.com>
> >> >
> >> > SCMI could use SMC/HVC as tranports, so add into devicetree binding
> >> > doc.
> >> >
> >> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> >> > ---
> >> >  Documentation/devicetree/bindings/arm/arm,scmi.txt | 4 +++-
> >> >  1 file changed, 3 insertions(+), 1 deletion(-)
> >> >
> >> > diff --git a/Documentation/devicetree/bindings/arm/arm,scmi.txt
> >> > b/Documentation/devicetree/bindings/arm/arm,scmi.txt
> >> > index f493d69e6194..03cff8b55a93 100644
> >> > --- a/Documentation/devicetree/bindings/arm/arm,scmi.txt
> >> > +++ b/Documentation/devicetree/bindings/arm/arm,scmi.txt
> >> > @@ -14,7 +14,7 @@ Required properties:
> >> >
> >> >  The scmi node with the following properties shall be under the
> >> > /firmware/ node.
> >> >
> >> > -- compatible : shall be "arm,scmi"
> >> > +- compatible : shall be "arm,scmi" or "arm,scmi-smc"
> >> >  - mboxes: List of phandle and mailbox channel specifiers. It
> >> > should contain
> >> >  	  exactly one or two mailboxes, one for transmitting messages("tx")
> >> >  	  and another optional for receiving the notifications("rx") if
> >> > @@ -25,6 +25,8 @@ The scmi node with the following properties shall
> >> > be under the /firmware/ node.
> >> >  	  protocol identifier for a given sub-node.
> >> >  - #size-cells : should be '0' as 'reg' property doesn't have any size
> >> >  	  associated with it.
> >> > +- arm,smc-id : SMC id required when using smc transports
> >> > +- arm,hvc-id : HVC id required when using hvc transports
> >> >
> >> >  Optional properties:
> >>
> >> Not directly related to DT: Why do we need to distinguish between SMC
> >> and HVC?
> >
> > IIUC you want just one property to get the function ID ? Does that
> > align with what you are saying ? I wanted to ask the same question and
> > I see no need for 2 different properties.
> 
> Exactly. Using SMC or HVC should come from the context, and there is zero
> value in having different different IDs, depending on the conduit.
> 
> We *really* want SMC and HVC to behave the same way. Any attempt to
> make them different should just be NAKed.

ok. Then just like psci node,
Add a "method" property for each protocol, and add "arm,func-id" to
indicate the ID.

How about this?

Thanks,
Peng.



> 
> Thanks,
> 
>          M.
> --
> Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
