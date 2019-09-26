Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2E48BEA55
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 03:55:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5mXOOPgIrwp3HYI2z599vbgp7txqDxiQa0n6gsUakvY=; b=uemgdyDg/4obxW
	tqIvHVqhi911ZWG/4MyWTYkAO2pitOQSEvgVFVOGrImdo6AFrPD5WExE7wNCbM90kpKBJQptc85UX
	fZWtG7RXHXS3UbjCsilaS7A2b7E2G7xQI4BndKwnJoUR/P4e2q1MpMN7oBMe5q0fwAK+8rDvokm08
	O6WJpC6ODYCh8lw78CmnrNzAGSUth6iL5QTnsnCsy6LTFEAMg5TB6pKaJbmJkv8gJu3yxP32UTt/I
	FstOonw+HqZovR4s8T3bFHVK+W8MVfa5ptn1qyLoGZTL264EX8qHLxJQ2loMctfWqimVDWS9abqCu
	Jj0OPmPfWfPiJeTd/9AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDIza-0000v9-4g; Thu, 26 Sep 2019 01:54:50 +0000
Received: from mail-eopbgr50065.outbound.protection.outlook.com ([40.107.5.65]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDIzO-0000uV-FY
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 01:54:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K3p5jiSyd5Pkv8QcS6eCkBh//1InwvYK9A+eo4ithkYeqHMLy1zLXRPiuvFvWyoln882qFCuui3zhkKSuDLsLUXymtVCxAmRUqCaLU2pd6MAue19HCPTEU2JVGGeUYQBqbxeuGMLhtKQbNl9y9k7TcF5OdhzweCn4xDVBBWo2pn4r+ISttRPuu1zX2CMGhj7okge0znPraLgC5josp0AOlajQju22YyYOQ+Wb4ECsQwT7NVgpBWbGmkaKsxSIvI+YlQZ5Sgd1NO9hMSn8hp6v72kJYAXFdUZO4WKP0bxkjMSq2oeKqvE6ni0ETqIUDKFHyAIHZB/gG2x0MprPHrsew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A1jITZmPWC1jiXrKEf7aNWvcxqrS9c2X+vMmhoPrxDQ=;
 b=Ll3cbQ4NIIeQKJWdnYS0N/zY8MjmLBoU+tdQJE+NYxJjlNRHYS4oKixF8Q9yv1OP8Gi0jLwcIebCoQ380pAnTaUoVRHOERXefLeqrt7oxumVJ0TfNfhpckS5yGYdwdtL1AxIBuiYgpwM5y7BXest7see+/Db7Li5SlJS3dgWYO0N7ccg+q4G2zBLLtNANl1LyUk8K15V/A2jfEMAtfO0Y+nsmNxtzVUbN3egr7K5dFaHDdR3v4x1yoWdItQJ+Bo1iXkqHwEvYOYqwr/PfkBfuB/UrOqHOf4A0QJ5IwXyAlqcrvZULgHakxsp0KbT7wHZ3Tu88iE4Jx8WwfKwxL4gSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A1jITZmPWC1jiXrKEf7aNWvcxqrS9c2X+vMmhoPrxDQ=;
 b=evtrozh8eLFPOcLyCEUIqhIGH+0+epFGR/TBKU5kBAjuMUvUPq6kZej/iF4OfR/7kd/8Exeyqs6nCkm/fJUsmzZ7w+XoM0j/tIU8xqCQdeQAKua31vygCm//RxKC/wozDzjW4rYA6UAfufa/bfcaoSHA4da1crNNqcIhgv1W1nI=
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com (52.135.138.150) by
 DB7PR04MB4810.eurprd04.prod.outlook.com (20.176.233.211) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Thu, 26 Sep 2019 01:54:34 +0000
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::4427:96f2:f651:6dfa]) by DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::4427:96f2:f651:6dfa%5]) with mapi id 15.20.2284.023; Thu, 26 Sep 2019
 01:54:34 +0000
From: Biwen Li <biwen.li@nxp.com>
To: Leo Li <leoyang.li@nxp.com>
Subject: RE: [EXT] Re: [v3,3/3] Documentation: dt: binding: fsl: Add
 'fsl,ippdexpcr-alt-addr' property
Thread-Topic: [EXT] Re: [v3,3/3] Documentation: dt: binding: fsl: Add
 'fsl,ippdexpcr-alt-addr' property
Thread-Index: AQHVcoOnab7d5ysBNkWsXmY0PrfSuKc6/L+AgAC3JZCAAAkFAIAAANMggAABmICAAAIKMIAAAb8AgAACHkCAAAZAMIAApIsAgADFeCA=
Date: Thu, 26 Sep 2019 01:54:34 +0000
Message-ID: <DB7PR04MB4490A20636B2243785D8602D8F860@DB7PR04MB4490.eurprd04.prod.outlook.com>
References: <20190924024548.4356-1-biwen.li@nxp.com>
 <20190924024548.4356-3-biwen.li@nxp.com>
 <AM0PR04MB667690EE76D327D0FC09F7818F840@AM0PR04MB6676.eurprd04.prod.outlook.com>
 <DB7PR04MB449034C4BBAA89685A2130F78F870@DB7PR04MB4490.eurprd04.prod.outlook.com>
 <AM0PR04MB66762594DDFC6E5B00BD103C8F870@AM0PR04MB6676.eurprd04.prod.outlook.com>
 <DB7PR04MB4490FECDC76507AADC35948E8F870@DB7PR04MB4490.eurprd04.prod.outlook.com>
 <AM0PR04MB6676BD24B814C3D1D67CF9F88F870@AM0PR04MB6676.eurprd04.prod.outlook.com>
 <DB7PR04MB4490EAE9591B5AE7112C9D188F870@DB7PR04MB4490.eurprd04.prod.outlook.com>
 <AM0PR04MB6676B8A6F7C7C3BC822B45B28F870@AM0PR04MB6676.eurprd04.prod.outlook.com>
 <DB7PR04MB44902BADDDFD090BAF4178C68F870@DB7PR04MB4490.eurprd04.prod.outlook.com>
 <DB7PR04MB4490684FE0E95695E89173948F870@DB7PR04MB4490.eurprd04.prod.outlook.com>
 <CADRPPNQ+=au2qRL2K-tzhH8HK1+sO+ut9YBhYw4UhWSv5FF88A@mail.gmail.com>
In-Reply-To: <CADRPPNQ+=au2qRL2K-tzhH8HK1+sO+ut9YBhYw4UhWSv5FF88A@mail.gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=biwen.li@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 68f00465-acee-4715-7e2d-08d742247aee
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DB7PR04MB4810; 
x-ms-traffictypediagnostic: DB7PR04MB4810:|DB7PR04MB4810:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB481035E34DA20F652F7663C88F860@DB7PR04MB4810.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0172F0EF77
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(39860400002)(376002)(136003)(366004)(189003)(199004)(66476007)(25786009)(64756008)(76176011)(66556008)(66446008)(186003)(3846002)(478600001)(71190400001)(71200400001)(6116002)(316002)(305945005)(4326008)(229853002)(7736002)(14454004)(6436002)(44832011)(74316002)(9686003)(2906002)(55016002)(102836004)(476003)(256004)(6862004)(486006)(81166006)(66066001)(86362001)(8676002)(99286004)(53546011)(6506007)(52536014)(446003)(26005)(11346002)(81156014)(33656002)(6246003)(76116006)(66946007)(14444005)(6636002)(8936002)(7696005)(5660300002)(54906003)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4810;
 H:DB7PR04MB4490.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: /mJgdcqABuU0Snfpc7p8C4x8L4qt2cvFh6AKMVH/HS/bXfjCrQy+6I7LjXDHrjFHYPbqlA2OxwpgwYbbHV7CBwbOHv6Ov6kgWEdOQQ1vILQJuH5NRSM6NH3kca0TPYSGzRuXw8ckfSU6Gi9EkaibYcjpnnOPd4zFnPOaK8UI9j7sqBPppMFmw1+siJqhIRCKa0Jr3eN5cfDgpwOgGUD18zvsjw9mmAC8yVr+iooxRYtQN6E5BwD9EBA91MmYXJBZSSsN0BnHkpjteskp26lchGFc2cxNx8aoBj+uKvqp2wpGiQl+BKw4i6V4ooCZ2F2Vksv6Njz1hvRrwjZ5bG5FSHqvTMzg7NbBJWTRPENnAle8snru7l/nV6LVcjaW+fd+M4p+uEiKTsaMn8BSv6LOm3nKoW9pdwIf9BKDIRvhlbk=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 68f00465-acee-4715-7e2d-08d742247aee
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Sep 2019 01:54:34.3331 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VRZVAGA0u1/fe6umgkizW0S6PtnTwjfdB4JywWVs5TnfG2MMlDJwoq8QtP/R4wasKTcX3YSYPFpU+NNn/3n/Vw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4810
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_185438_861167_E7BC6433 
X-CRM114-Status: GOOD (  32.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.65 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Ran Wang <ran.wang_1@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Caution: EXT Email
> 
> On Tue, Sep 24, 2019 at 11:27 PM Biwen Li <biwen.li@nxp.com> wrote:
> >
> > > > >
> > > > > > > > > > >
> > > > > > > > > > > The 'fsl,ippdexpcr-alt-addr' property is used to
> > > > > > > > > > > handle an errata
> > > > > > > > > > > A-008646 on LS1021A
> > > > > > > > > > >
> > > > > > > > > > > Signed-off-by: Biwen Li <biwen.li@nxp.com>
> > > > > > > > > > > ---
> > > > > > > > > > > Change in v3:
> > > > > > > > > > >       - rename property name
> > > > > > > > > > >         fsl,rcpm-scfg -> fsl,ippdexpcr-alt-addr
> > > > > > > > > > >
> > > > > > > > > > > Change in v2:
> > > > > > > > > > >       - update desc of the property 'fsl,rcpm-scfg'
> > > > > > > > > > >
> > > > > > > > > > >  Documentation/devicetree/bindings/soc/fsl/rcpm.txt
> > > > > > > > > > > | 14
> > > > > > > > > > > ++++++++++++++
> > > > > > > > > > >  1 file changed, 14 insertions(+)
> > > > > > > > > > >
> > > > > > > > > > > diff --git
> > > > > > > > > > > a/Documentation/devicetree/bindings/soc/fsl/rcpm.txt
> > > > > > > > > > > b/Documentation/devicetree/bindings/soc/fsl/rcpm.txt
> > > > > > > > > > > index 5a33619d881d..157dcf6da17c 100644
> > > > > > > > > > > ---
> > > > > > > > > > > a/Documentation/devicetree/bindings/soc/fsl/rcpm.txt
> > > > > > > > > > > +++ b/Documentation/devicetree/bindings/soc/fsl/rcpm
> > > > > > > > > > > +++ .txt
> > > > > > > > > > > @@ -34,6 +34,11 @@ Chassis Version            Example
> > > > > Chips
> > > > > > > > > > >  Optional properties:
> > > > > > > > > > >   - little-endian : RCPM register block is Little Endian.
> > > > > > > > > > > Without it
> > > > > > RCPM
> > > > > > > > > > >     will be Big Endian (default case).
> > > > > > > > > > > + - fsl,ippdexpcr-alt-addr : Must add the property
> > > > > > > > > > > + for SoC LS1021A,
> > > > > > > > > >
> > > > > > > > > > You probably should mention this is related to a
> > > > > > > > > > hardware issue on LS1021a and only needed on LS1021a.
> > > > > > > > > Okay, got it, thanks, I will add this in v4.
> > > > > > > > > >
> > > > > > > > > > > +   Must include n + 1 entries (n =
> > > > > > > > > > > + #fsl,rcpm-wakeup-cells, such
> > > > as:
> > > > > > > > > > > +   #fsl,rcpm-wakeup-cells equal to 2, then must
> > > > > > > > > > > + include
> > > > > > > > > > > + 2
> > > > > > > > > > > + +
> > > > > > > > > > > + 1
> > > > > > entries).
> > > > > > > > > >
> > > > > > > > > > #fsl,rcpm-wakeup-cells is the number of IPPDEXPCR
> > > > > > > > > > registers on an
> > > > > > SoC.
> > > > > > > > > > However you are defining an offset to scfg registers here.
> > > > > > > > > > Why these two are related?  The length here should
> > > > > > > > > > actually be related to the #address-cells of the soc/.
> > > > > > > > > > But since this is only needed for LS1021, you can
> > > > > > > > > just make it 3.
> > > > > > > > > I need set the value of IPPDEXPCR resgiters from
> > > > > > > > > ftm_alarm0 device node(fsl,rcpm-wakeup = <&rcpm 0x0
> > > > > > > > > 0x20000000>;
> > > > > > > > > 0x0 is a value for IPPDEXPCR0, 0x20000000 is a value for
> > > > > > IPPDEXPCR1).
> > > > > > > > > But because of the hardware issue on LS1021A, I need
> > > > > > > > > store the value of IPPDEXPCR registers to an alt
> > > > > > > > > address. So I defining an offset to scfg registers, then
> > > > > > > > > RCPM driver get an abosolute address from offset, RCPM
> > > > > > > > > driver write the value of IPPDEXPCR registers to these
> > > > > > > > > abosolute addresses(backup the value of IPPDEXPCR
> > > > > > registers).
> > > > > > > >
> > > > > > > > I understand what you are trying to do.  The problem is
> > > > > > > > that the new fsl,ippdexpcr-alt-addr property contains a
> > > > > > > > phandle and an
> > > offset.
> > > > > > > > The size of it shouldn't be related to #fsl,rcpm-wakeup-cells.
> > > > > > > You maybe like this: fsl,ippdexpcr-alt-addr = <&scfg
> > > > > > > 0x51c>;/*
> > > > > > > SCFG_SPARECR8 */
> > > > > >
> > > > > > No.  The #address-cell for the soc/ is 2, so the offset to
> > > > > > scfg should be 0x0 0x51c.  The total size should be 3, but it
> > > > > > shouldn't be coming from #fsl,rcpm-wakeup-cells like you
> > > > > > mentioned in the
> > > binding.
> > > > > Oh, I got it. You want that fsl,ippdexpcr-alt-add is relative
> > > > > with #address-cells instead of #fsl,rcpm-wakeup-cells.
> > > >
> > > > Yes.
> > > I got an example from drivers/pci/controller/dwc/pci-layerscape.c
> > > and arch/arm/boot/dts/ls1021a.dtsi as follows:
> > > fsl,pcie-scfg = <&scfg 0>, 0 is an index
> > >
> > > In my fsl,ippdexpcr-alt-addr = <&scfg 0x0 0x51c>, It means that 0x0
> > > is an alt offset address for IPPDEXPCR0, 0x51c is an alt offset
> > > address For
> > > IPPDEXPCR1 instead of 0x0 and 0x51c compose to an alt address of
> > > SCFG_SPARECR8.
> > Maybe I need write it as:
> > fsl,ippdexpcr-alt-addr = <&scfg 0x0 0x0 0x0 0x51c>; first two 0x0
> > compose an alt offset address for IPPDEXPCR0, last 0x0 and 0x51c
> > compose an alt address for IPPDEXPCR1,
> 
> I remember the hardware issue is only is only related to IPPDEXPCR1 register, no
> idea why you need to define IPPDEXPCR0 in the binding.
Okay, got it, thanks.
Best Regards,
Biwen Li
> 
> >
> > Best Regards,
> > Biwen Li
> > > >
> > > > Regards,
> > > > Leo
> > > > > >
> > > > > > > >
> > > > > > > > > >
> > > > > > > > > > > +   The first entry must be a link to the SCFG device node.
> > > > > > > > > > > +   The non-first entry must be offset of registers of SCFG.
> > > > > > > > > > >
> > > > > > > > > > >  Example:
> > > > > > > > > > >  The RCPM node for T4240:
> > > > > > > > > > > @@ -43,6 +48,15 @@ The RCPM node for T4240:
> > > > > > > > > > >               #fsl,rcpm-wakeup-cells = <2>;
> > > > > > > > > > >       };
> > > > > > > > > > >
> > > > > > > > > > > +The RCPM node for LS1021A:
> > > > > > > > > > > +     rcpm: rcpm@1ee2140 {
> > > > > > > > > > > +             compatible = "fsl,ls1021a-rcpm",
> > > > > > > > > > > +"fsl,qoriq-rcpm-
> > > > > > > 2.1+";
> > > > > > > > > > > +             reg = <0x0 0x1ee2140 0x0 0x8>;
> > > > > > > > > > > +             #fsl,rcpm-wakeup-cells = <2>;
> > > > > > > > > > > +             fsl,ippdexpcr-alt-addr = <&scfg 0x0
> > > > > > > > > > > + 0x51c>; /*
> > > > > > > > > > > SCFG_SPARECR8 */
> > > > > > > > > > > +     };
> > > > > > > > > > > +
> > > > > > > > > > > +
> > > > > > > > > > >  * Freescale RCPM Wakeup Source Device Tree Bindings
> > > > > > > > > > >  -------------------------------------------
> > > > > > > > > > >  Required fsl,rcpm-wakeup property should be added
> > > > > > > > > > > to a device node if the device
> > > > > > > > > > > --
> > > > > > > > > > > 2.17.1
> >
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
