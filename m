Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAC37BD6BE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 05:35:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B0hw/JaRl/TKg8lgPWiIaQqOzNTPBp1oWLJ4JXPyR10=; b=ueYmLgfa2TLyY6
	hXZdwlFMN3w16YwNSM+jWrwnv9L0HqaGLCnkqBWpWD33nBCl8mbF78Zw7uehdsAM/RzrTlgbQvqKk
	znjOfXvihnud+TgnmGwjYrcDXcS3UJ68r8/rp6ac2kWTJq1mCgkU/hpm6utwVCLO63WIK4AY6pSDZ
	GZsqmkPLt3qR5JaRNidiji8nfKmgRFBKXnKDkkE8Q/6V+NpAl2tOEqAPm8Iy4BMMz1pXQe4uWVlgL
	5M7tdgLy4b+H2ofJ333B7OUXi1vE5kNshPuUt/b9ajd4qK9Ib8h2ea/g2rEqK2yalCgqdKxFZpBAO
	67XwmKkdI4dd63N3mFMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCy55-0003nG-GW; Wed, 25 Sep 2019 03:35:08 +0000
Received: from mail-eopbgr30059.outbound.protection.outlook.com ([40.107.3.59]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCy4o-0003mx-OX
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 03:34:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F5wemOo0R5LmM7a1sMQSY2DaWN3VH77rjBof87syT80kmHCSZ2NEer2FlBqSZLaxYjgCjP/yob/g2d/ru4c7AfaCLrSviELRQCawc+I4NcTT7hAG+MJ5Ja7D7ndXkNDM68dsuJsnEinV3AwAyvuKzYSkNcUn4hgaVT6tg0v+GBbq629rSfBVMeqozCNQfGOPHAK3BGemyLzwCdwikrqTnnWuieyg9Ikn+Ng9ZcSAY6TB0C/jjsSdEN4QQdVsHeXKAj3OlmzdGQ9rEM13P8/gbzXtRUeHfecoTzh0VOxK8EQyhgImMLMkHlFWoyFjSa42fvZXVv5PBS0JxeF4SeW8yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WJHf4cOdXiiqBk6AS5aUPVrCa2I3IEU1o/S0NqZdua4=;
 b=eRvzBj2uWOUMYFAWzDRQ/9th2lnJPcNzgCw1IP9T9ci5kI82G37H7YcQvtfvKiYlB6pbU7xoPanmNm9ujm/ENeyV0+IM+xc9Cg34UieSgna5qAX6UkQLHi8K+e6inXa02sZk1CGCMLoeJ2xBPLEdF+IAAeGeWQCafJcv5miyVKa3sYfHDpZUqg48KSJpATid/SklUYQ1jZl/FRZImRozEpx1KkflGREekArzGSGS5M/h4hHHI52slv48uog7WA8PNrTTGW1LfDmFHBcWtwRBs3Jl7wg5nX4x6ukwSsuDXfnaQRM4FSqr5GJP5NfV3Uofqw18fHyyaRkp6CLGUW+MbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WJHf4cOdXiiqBk6AS5aUPVrCa2I3IEU1o/S0NqZdua4=;
 b=lOjdsjA8x/aNzPwzlL6PVpi9XdXajN5ms4E2inK4PL2k9xOBR6LT1STITLo1Ex9nLHKl4rx7MSC/bxu4YedZWOH/oquYIQ/xgu846B7p0bXO3+VSZzArwjpS5+X96NoJScfVPLVLnR/DqktPWUKqgz4hUgvrXl9EcD9JWtM5flE=
Received: from AM0PR04MB6676.eurprd04.prod.outlook.com (20.179.255.161) by
 AM0PR04MB6019.eurprd04.prod.outlook.com (20.179.34.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Wed, 25 Sep 2019 03:34:47 +0000
Received: from AM0PR04MB6676.eurprd04.prod.outlook.com
 ([fe80::5c26:3c5f:17e0:8038]) by AM0PR04MB6676.eurprd04.prod.outlook.com
 ([fe80::5c26:3c5f:17e0:8038%7]) with mapi id 15.20.2284.023; Wed, 25 Sep 2019
 03:34:47 +0000
From: Leo Li <leoyang.li@nxp.com>
To: Biwen Li <biwen.li@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, Ran Wang <ran.wang_1@nxp.com>
Subject: RE: [v3,3/3] Documentation: dt: binding: fsl: Add
 'fsl,ippdexpcr-alt-addr' property
Thread-Topic: [v3,3/3] Documentation: dt: binding: fsl: Add
 'fsl,ippdexpcr-alt-addr' property
Thread-Index: AQHVcoOnKERg3NBKWEeinvrVMNtD66c6+UIwgADABICAAADF0IAABAEAgAAAioA=
Date: Wed, 25 Sep 2019 03:34:47 +0000
Message-ID: <AM0PR04MB6676BD24B814C3D1D67CF9F88F870@AM0PR04MB6676.eurprd04.prod.outlook.com>
References: <20190924024548.4356-1-biwen.li@nxp.com>
 <20190924024548.4356-3-biwen.li@nxp.com>
 <AM0PR04MB667690EE76D327D0FC09F7818F840@AM0PR04MB6676.eurprd04.prod.outlook.com>
 <DB7PR04MB449034C4BBAA89685A2130F78F870@DB7PR04MB4490.eurprd04.prod.outlook.com>
 <AM0PR04MB66762594DDFC6E5B00BD103C8F870@AM0PR04MB6676.eurprd04.prod.outlook.com>
 <DB7PR04MB4490FECDC76507AADC35948E8F870@DB7PR04MB4490.eurprd04.prod.outlook.com>
In-Reply-To: <DB7PR04MB4490FECDC76507AADC35948E8F870@DB7PR04MB4490.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leoyang.li@nxp.com; 
x-originating-ip: [136.49.234.194]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 244ac947-6b62-49b8-028a-08d7416950c3
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:AM0PR04MB6019; 
x-ms-traffictypediagnostic: AM0PR04MB6019:|AM0PR04MB6019:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB6019BB0CDC635457B9B172A98F870@AM0PR04MB6019.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 01713B2841
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(346002)(39860400002)(366004)(376002)(189003)(199004)(13464003)(2906002)(33656002)(99286004)(66446008)(53546011)(66946007)(76116006)(14454004)(66476007)(2501003)(186003)(26005)(64756008)(6246003)(4326008)(86362001)(478600001)(102836004)(7696005)(6506007)(76176011)(5660300002)(81156014)(3846002)(6436002)(74316002)(6636002)(6116002)(8936002)(66556008)(486006)(229853002)(8676002)(305945005)(25786009)(55016002)(81166006)(52536014)(7736002)(256004)(9686003)(14444005)(66066001)(446003)(316002)(110136005)(54906003)(11346002)(476003)(71200400001)(71190400001)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6019;
 H:AM0PR04MB6676.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: NIRYLUMbmXbE6RcfcSUVEjgtQDTCjQVlkJWzmpPFuOHTTqtE4NcL3bgUJqRCIxaLXMBUdXuZkoyL05D6Nc0FWoDgMfJ7VL2Egvd8VggOl2Qn5NQygf1rwk3LvvMs82KzBUZs+Tn8vnlRZpADkTbTeF9w1xR4jmcyYW+Nc8sKk1ZUvQsSJNkJzRtoaC35oPV/nqq6uaS44jV5YO3VnBFjJGMUyWv4UpKETb/BvphduxehV1t1Z7efZWcTJYVPdtw3jRa27e4Gqv6FPTucP8Zmuz8p7IUI+iLlfxLwWG8jMvgt18sHIc12UvKn80xdXfE5veVO/nsWgDPucSt/QSQ/RR8m5wsmGRN7C05ybJL9cY82bZIu9z0D1Or9Kft7ydCmFfWLVgN6gwjh3ilW9pnMaJ1KNsgroHTs0b0vl/Ienic=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 244ac947-6b62-49b8-028a-08d7416950c3
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Sep 2019 03:34:47.7354 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: B/3QpLyK63NZ7vS97FLW0OYAO1UBAD5oa5+fzVWUs0RdnDNi0QFUc6Oz6nHrodtJjAiIcoDZVqPXtSlbM9oWZA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6019
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_203451_299700_82A0E9FD 
X-CRM114-Status: GOOD (  28.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.59 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.3.59 listed in wl.mailspike.net]
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
> Sent: Tuesday, September 24, 2019 10:30 PM
> To: Leo Li <leoyang.li@nxp.com>; shawnguo@kernel.org;
> robh+dt@kernel.org; mark.rutland@arm.com; Ran Wang
> <ran.wang_1@nxp.com>
> Cc: linuxppc-dev@lists.ozlabs.org; linux-arm-kernel@lists.infradead.org;
> linux-kernel@vger.kernel.org; devicetree@vger.kernel.org
> Subject: RE: [v3,3/3] Documentation: dt: binding: fsl: Add 'fsl,ippdexpcr-alt-
> addr' property
> 
> > > > >
> > > > > The 'fsl,ippdexpcr-alt-addr' property is used to handle an
> > > > > errata
> > > > > A-008646 on LS1021A
> > > > >
> > > > > Signed-off-by: Biwen Li <biwen.li@nxp.com>
> > > > > ---
> > > > > Change in v3:
> > > > > 	- rename property name
> > > > > 	  fsl,rcpm-scfg -> fsl,ippdexpcr-alt-addr
> > > > >
> > > > > Change in v2:
> > > > > 	- update desc of the property 'fsl,rcpm-scfg'
> > > > >
> > > > >  Documentation/devicetree/bindings/soc/fsl/rcpm.txt | 14
> > > > > ++++++++++++++
> > > > >  1 file changed, 14 insertions(+)
> > > > >
> > > > > diff --git a/Documentation/devicetree/bindings/soc/fsl/rcpm.txt
> > > > > b/Documentation/devicetree/bindings/soc/fsl/rcpm.txt
> > > > > index 5a33619d881d..157dcf6da17c 100644
> > > > > --- a/Documentation/devicetree/bindings/soc/fsl/rcpm.txt
> > > > > +++ b/Documentation/devicetree/bindings/soc/fsl/rcpm.txt
> > > > > @@ -34,6 +34,11 @@ Chassis Version		Example Chips
> > > > >  Optional properties:
> > > > >   - little-endian : RCPM register block is Little Endian. Without it RCPM
> > > > >     will be Big Endian (default case).
> > > > > + - fsl,ippdexpcr-alt-addr : Must add the property for SoC
> > > > > + LS1021A,
> > > >
> > > > You probably should mention this is related to a hardware issue on
> > > > LS1021a and only needed on LS1021a.
> > > Okay, got it, thanks, I will add this in v4.
> > > >
> > > > > +   Must include n + 1 entries (n = #fsl,rcpm-wakeup-cells, such as:
> > > > > +   #fsl,rcpm-wakeup-cells equal to 2, then must include 2 + 1 entries).
> > > >
> > > > #fsl,rcpm-wakeup-cells is the number of IPPDEXPCR registers on an SoC.
> > > > However you are defining an offset to scfg registers here.  Why
> > > > these two are related?  The length here should actually be related
> > > > to the #address-cells of the soc/.  But since this is only needed
> > > > for LS1021, you can
> > > just make it 3.
> > > I need set the value of IPPDEXPCR resgiters from ftm_alarm0 device
> > > node(fsl,rcpm-wakeup = <&rcpm 0x0 0x20000000>;
> > > 0x0 is a value for IPPDEXPCR0, 0x20000000 is a value for IPPDEXPCR1).
> > > But because of the hardware issue on LS1021A, I need store the value
> > > of IPPDEXPCR registers to an alt address. So I defining an offset to
> > > scfg registers, then RCPM driver get an abosolute address from
> > > offset, RCPM driver write the value of IPPDEXPCR registers to these
> > > abosolute addresses(backup the value of IPPDEXPCR registers).
> >
> > I understand what you are trying to do.  The problem is that the new
> > fsl,ippdexpcr-alt-addr property contains a phandle and an offset.  The
> > size of it shouldn't be related to #fsl,rcpm-wakeup-cells.
> You maybe like this: fsl,ippdexpcr-alt-addr = <&scfg 0x51c>;/*
> SCFG_SPARECR8 */

No.  The #address-cell for the soc/ is 2, so the offset to scfg should be 0x0 0x51c.  The total size should be 3, but it shouldn't be coming from #fsl,rcpm-wakeup-cells like you mentioned in the binding.

> >
> > > >
> > > > > +   The first entry must be a link to the SCFG device node.
> > > > > +   The non-first entry must be offset of registers of SCFG.
> > > > >
> > > > >  Example:
> > > > >  The RCPM node for T4240:
> > > > > @@ -43,6 +48,15 @@ The RCPM node for T4240:
> > > > >  		#fsl,rcpm-wakeup-cells = <2>;
> > > > >  	};
> > > > >
> > > > > +The RCPM node for LS1021A:
> > > > > +	rcpm: rcpm@1ee2140 {
> > > > > +		compatible = "fsl,ls1021a-rcpm", "fsl,qoriq-rcpm-
> 2.1+";
> > > > > +		reg = <0x0 0x1ee2140 0x0 0x8>;
> > > > > +		#fsl,rcpm-wakeup-cells = <2>;
> > > > > +		fsl,ippdexpcr-alt-addr = <&scfg 0x0 0x51c>; /*
> > > > > SCFG_SPARECR8 */
> > > > > +	};
> > > > > +
> > > > > +
> > > > >  * Freescale RCPM Wakeup Source Device Tree Bindings
> > > > >  -------------------------------------------
> > > > >  Required fsl,rcpm-wakeup property should be added to a device
> > > > > node if the device
> > > > > --
> > > > > 2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
