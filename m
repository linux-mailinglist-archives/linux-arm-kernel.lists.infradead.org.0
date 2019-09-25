Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59FE8BD6AD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 05:26:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LA6H0XfdhYq/PulVPS4wP2L1OsrWBVOZTjAQMQpZSz0=; b=oD7DE8o6NAKpUA
	BnBrSqsJiGQ+WAMGLcoYwUIwMtrknrAqZ7D8DimJUVBaYKBa9Pzbrts4MgY8cOWoj8KP8sSqYoug+
	tfWtvatryHaLUN0atR/Vf8f18IF9vcHcP0waXKdlNcbp0fNjaI0enK5i7wHxNvhAHiHPUcfsdRJ34
	jEsREgivoiiSuINL9qk1M9sW+vyPwbfwKNVacu7S857u0QKsw4nq4z0PCln5XlQHSEs8bn2mINvLl
	qcr0AYxqtDqqhJFhirBIeZIKimG2qCeLotJmYim13fB6N3a+syicVvBi6fleyzoiAAEDncqHXgex6
	5RskD/mS5sRMV8V2+mIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCxwe-0001rD-Er; Wed, 25 Sep 2019 03:26:24 +0000
Received: from mail-eopbgr00053.outbound.protection.outlook.com ([40.107.0.53]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCxwS-0001qp-Ln
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 03:26:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eaNK1EhViLro8kj4b03vmWpLROHQ0j2LIwMzjatQ85vyLnhjGs1XgC+8UIdoNNFU5uP9iG9Em1E6wjoM5Pd21RB+yQiGfNh6WsSJvup4nfuHNmbfCV1TpczX3yZbBNZLsNZaj+Fc2o3z5vaijCYFDkxLvLTGGQT0ZK1cAB2ERCtk8ZX5PdeybBKrzFes1W0/Bs6OYfbE8ylB+J3e5EFM4BYSg6UrbzieDc+LZxPK1E9W/587QbDZYUqEVQDiQbLTPAQHbY6uBFAnN5WBji8CTm5lVs5JivrbsNZD4GX8qm4xBHAleUD+tGPeLLIIRJtD5YeDeu269jMzsw41vQkJ2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rGn6T1U/kkZANf6VP/0yh/UY2VwqvJhpm6bH++IpC4w=;
 b=GNisEQqo8VUOLNLKHmxrfktvm73zcakGO6yUi5mMeu6bgCukt6YAAcBzs/TGDdpvZawtgfczNJnssKJfdM5TvTQXmmwV0wkYDmewqWlDCMxnthINrl6DTj+Y8ubnJ7+zYa2LnDtYv0OljX/Oea9/7SIzQ0GuFwgwTsYHr9QqSGY3doEqjxx92IPeEznTG6gqh6LPD9Am4l6SyzuN55l50fPT8UI0KY/+Lo/sMthWtJuUyo3TAS0isYWzqJmh2Jv70eXLqRsn1I9tfthXif+UupHkLnhNpU22KqzGNhJTfRkOwtiUdIEnpPTBSEAlx2li9zJq46m3EkAGERRjozdVhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rGn6T1U/kkZANf6VP/0yh/UY2VwqvJhpm6bH++IpC4w=;
 b=GN+/cQMIn19qObKbXOdH0FXuDb2VcCay5POeHnXDk4CiBMRHX8pamaBTf19j+N3KcDTGj4BMYJuBbyhuejbfXbOFslGbHdo+eveiIcr+2b2NQzT2dQXqQLLzkdjdiFay/roslskr+RvsRBPBLUX/ptEvp2dTfZfvCKQXo+3fL6U=
Received: from AM0PR04MB6676.eurprd04.prod.outlook.com (20.179.255.161) by
 AM0PR04MB6609.eurprd04.prod.outlook.com (20.179.252.206) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.26; Wed, 25 Sep 2019 03:26:09 +0000
Received: from AM0PR04MB6676.eurprd04.prod.outlook.com
 ([fe80::5c26:3c5f:17e0:8038]) by AM0PR04MB6676.eurprd04.prod.outlook.com
 ([fe80::5c26:3c5f:17e0:8038%7]) with mapi id 15.20.2284.023; Wed, 25 Sep 2019
 03:26:09 +0000
From: Leo Li <leoyang.li@nxp.com>
To: Biwen Li <biwen.li@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, Ran Wang <ran.wang_1@nxp.com>
Subject: RE: [v3,3/3] Documentation: dt: binding: fsl: Add
 'fsl,ippdexpcr-alt-addr' property
Thread-Topic: [v3,3/3] Documentation: dt: binding: fsl: Add
 'fsl,ippdexpcr-alt-addr' property
Thread-Index: AQHVcoOnKERg3NBKWEeinvrVMNtD66c6+UIwgADABICAAADF0A==
Date: Wed, 25 Sep 2019 03:26:08 +0000
Message-ID: <AM0PR04MB66762594DDFC6E5B00BD103C8F870@AM0PR04MB6676.eurprd04.prod.outlook.com>
References: <20190924024548.4356-1-biwen.li@nxp.com>
 <20190924024548.4356-3-biwen.li@nxp.com>
 <AM0PR04MB667690EE76D327D0FC09F7818F840@AM0PR04MB6676.eurprd04.prod.outlook.com>
 <DB7PR04MB449034C4BBAA89685A2130F78F870@DB7PR04MB4490.eurprd04.prod.outlook.com>
In-Reply-To: <DB7PR04MB449034C4BBAA89685A2130F78F870@DB7PR04MB4490.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leoyang.li@nxp.com; 
x-originating-ip: [136.49.234.194]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 65ed74ec-29f4-405d-f257-08d741681b99
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:AM0PR04MB6609; 
x-ms-traffictypediagnostic: AM0PR04MB6609:|AM0PR04MB6609:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB6609FCC09E8E13835BBF7C608F870@AM0PR04MB6609.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 01713B2841
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(346002)(396003)(136003)(366004)(189003)(199004)(13464003)(81166006)(64756008)(66476007)(66556008)(316002)(55016002)(229853002)(9686003)(99286004)(478600001)(52536014)(71190400001)(54906003)(7696005)(71200400001)(4326008)(66946007)(76116006)(6246003)(110136005)(6436002)(66446008)(53546011)(6506007)(25786009)(11346002)(486006)(476003)(6636002)(5660300002)(446003)(33656002)(26005)(74316002)(102836004)(305945005)(76176011)(6116002)(3846002)(86362001)(2906002)(14454004)(66066001)(81156014)(2501003)(14444005)(256004)(7736002)(8676002)(186003)(8936002)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6609;
 H:AM0PR04MB6676.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: gqSmu6K8VDTOnl9DnJWgsqJF/uNAZ+qnnfXEBkcav/VeJE0DBoetusrQk7wlHzcR3GEeRlm+ZlLHEfiKfDCF/do85+N2VBnguvMZabypIq3yVfUWesYaGH1Gj7J1/CHjh7ergdAQQBm8dMXXs9J6T9pUV8fRByc5EXRcUoYYX6ChkaPRguxfIUKSYDQHur48sVQ6A6F9s55LZI9JNw5t+IGbg3Ti1O+1+ZGfwp/oZJ7toCr0cK5epTBSya2AXZuznjnWA53ll3eGyI/5OWj6LAOsJ9MGSxcc857dyGpqOKKDEol64b4/QVN4fMY4tE0CkNtosKb5/8w0Bt3ulH5nLxpx3mAWtMkys7QSsWVK1RACkE0pGMrN0Kt2AE7qjykGbr5Sz7k4UeO8SZQ9OAQHaGf0Y3WslHYlA0XFnER9fCI=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 65ed74ec-29f4-405d-f257-08d741681b99
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Sep 2019 03:26:09.0123 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: R/VD3kJaVaAwsXfekz7gEDoLxO34QNg/4ZJydYsWNAErnwiFcvvk5cJ6O9uJmdeVM6Bk2v4KnkehZEpEre/h3A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6609
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_202612_718297_C3276472 
X-CRM114-Status: GOOD (  25.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.53 listed in list.dnswl.org]
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Biwen Li
> Sent: Tuesday, September 24, 2019 10:13 PM
> To: Leo Li <leoyang.li@nxp.com>; shawnguo@kernel.org;
> robh+dt@kernel.org; mark.rutland@arm.com; Ran Wang
> <ran.wang_1@nxp.com>
> Cc: linuxppc-dev@lists.ozlabs.org; linux-arm-kernel@lists.infradead.org;
> linux-kernel@vger.kernel.org; devicetree@vger.kernel.org
> Subject: RE: [v3,3/3] Documentation: dt: binding: fsl: Add 'fsl,ippdexpcr-alt-
> addr' property
> 
> > >
> > > The 'fsl,ippdexpcr-alt-addr' property is used to handle an errata
> > > A-008646 on LS1021A
> > >
> > > Signed-off-by: Biwen Li <biwen.li@nxp.com>
> > > ---
> > > Change in v3:
> > > 	- rename property name
> > > 	  fsl,rcpm-scfg -> fsl,ippdexpcr-alt-addr
> > >
> > > Change in v2:
> > > 	- update desc of the property 'fsl,rcpm-scfg'
> > >
> > >  Documentation/devicetree/bindings/soc/fsl/rcpm.txt | 14
> > > ++++++++++++++
> > >  1 file changed, 14 insertions(+)
> > >
> > > diff --git a/Documentation/devicetree/bindings/soc/fsl/rcpm.txt
> > > b/Documentation/devicetree/bindings/soc/fsl/rcpm.txt
> > > index 5a33619d881d..157dcf6da17c 100644
> > > --- a/Documentation/devicetree/bindings/soc/fsl/rcpm.txt
> > > +++ b/Documentation/devicetree/bindings/soc/fsl/rcpm.txt
> > > @@ -34,6 +34,11 @@ Chassis Version		Example Chips
> > >  Optional properties:
> > >   - little-endian : RCPM register block is Little Endian. Without it RCPM
> > >     will be Big Endian (default case).
> > > + - fsl,ippdexpcr-alt-addr : Must add the property for SoC LS1021A,
> >
> > You probably should mention this is related to a hardware issue on
> > LS1021a and only needed on LS1021a.
> Okay, got it, thanks, I will add this in v4.
> >
> > > +   Must include n + 1 entries (n = #fsl,rcpm-wakeup-cells, such as:
> > > +   #fsl,rcpm-wakeup-cells equal to 2, then must include 2 + 1 entries).
> >
> > #fsl,rcpm-wakeup-cells is the number of IPPDEXPCR registers on an SoC.
> > However you are defining an offset to scfg registers here.  Why these
> > two are related?  The length here should actually be related to the
> > #address-cells of the soc/.  But since this is only needed for LS1021, you can
> just make it 3.
> I need set the value of IPPDEXPCR resgiters from ftm_alarm0 device
> node(fsl,rcpm-wakeup = <&rcpm 0x0 0x20000000>;
> 0x0 is a value for IPPDEXPCR0, 0x20000000 is a value for IPPDEXPCR1).
> But because of the hardware issue on LS1021A, I need store the value of
> IPPDEXPCR registers to an alt address. So I defining an offset to scfg registers,
> then RCPM driver get an abosolute address from offset,  RCPM driver write
> the value of IPPDEXPCR registers to these abosolute addresses(backup the
> value of IPPDEXPCR registers).

I understand what you are trying to do.  The problem is that the new fsl,ippdexpcr-alt-addr property contains a phandle and an offset.  The size of it shouldn't be related to #fsl,rcpm-wakeup-cells.

> >
> > > +   The first entry must be a link to the SCFG device node.
> > > +   The non-first entry must be offset of registers of SCFG.
> > >
> > >  Example:
> > >  The RCPM node for T4240:
> > > @@ -43,6 +48,15 @@ The RCPM node for T4240:
> > >  		#fsl,rcpm-wakeup-cells = <2>;
> > >  	};
> > >
> > > +The RCPM node for LS1021A:
> > > +	rcpm: rcpm@1ee2140 {
> > > +		compatible = "fsl,ls1021a-rcpm", "fsl,qoriq-rcpm-2.1+";
> > > +		reg = <0x0 0x1ee2140 0x0 0x8>;
> > > +		#fsl,rcpm-wakeup-cells = <2>;
> > > +		fsl,ippdexpcr-alt-addr = <&scfg 0x0 0x51c>; /*
> > > SCFG_SPARECR8 */
> > > +	};
> > > +
> > > +
> > >  * Freescale RCPM Wakeup Source Device Tree Bindings
> > >  -------------------------------------------
> > >  Required fsl,rcpm-wakeup property should be added to a device node
> > > if the device
> > > --
> > > 2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
