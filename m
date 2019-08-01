Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FBF57D60E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 09:09:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EzHYSBL4nwfI4XOA/5x4268zFGIjVnLTWuZG1b2FI0g=; b=deACRYMknja0UC
	pXMV0fkFkrwABBS/fgJ79VRT6ZMbeU7CHDrC2ygOmYmbYBDVwvXehODlbz006nWz9givM7YKyqWH8
	+on3OKRLe0M00HQd/RViLtnSVgm+DL9KAiNNbhTg1xdcMh7h+nCx5LllRVnAbyp2KYSdnYai1BOqN
	ACyOU+wljYtW0rOrk8JZoAsn+es14Q5/P5Li/nzT4bg+JC8htMXd63jjcIVVHkJMpuq8PGPw39fc9
	i69wBIxHe/Zleuuk9z+Nx3EfGecpLTWA4fZRyGe6ci78D7/MksuA3O5bSjh5MsieCzO6kvNi+0kdB
	ELkOdVmhoAFVl6f0B//Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht5DH-0006KC-Py; Thu, 01 Aug 2019 07:09:23 +0000
Received: from mail-eopbgr130083.outbound.protection.outlook.com
 ([40.107.13.83] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht5D0-0006Iv-G2; Thu, 01 Aug 2019 07:09:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R9McT2ws17CB//DDavlvW5c+7/5p/sPuj1UorVqecm42++jydDSbe8xuKyH2OvlI2gmmSDKK2Ut2MyeE5Obsa4gJM+t37Wbda3INiHiGF0kc01mEbqJ476iADadYMDLOMhp4FwiAz/BAutaHJUP16Ob8ZUpDoXcbEg/Uxug3Zsk+z0TY2R+Bb4+2FE5UgHd5JnN54OcbAnCyuAqEGRpiWQYWrT3EQsfPQC+ggP79RQs683QFxGT+vIIhW2ElIoB0m+kTJs98WFSs5qqSQQ2b1ULuM//bHiZOiuEBtqVbyj/LH5E6PKj51qDMcHewr/0a+hvYe/MNOwTaTqZmBCYjow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Rx8/dj4WNFRMGgFf9mc5C77AqmGyV/iRFTKcVp5VOCA=;
 b=YA3mYkneVRNFAfAq0Fc9jVvz+ur6CcZRWItuUqqXHZBOGA2cpKCCC4ZvZqsF3azExmaEHhbaNnJDWtDC7a99iQLKKvgx2Edr+rThZ9xAP5EE7KN+T4dNniDKnLn1i7KgnfTPmoyBFLy1vRdv5W/GgTc1wPu7Hl6WxGSlIxVuOFglUwNl1ZsLdLa/6AKQIKrZ5tLZWcpMSzJbLuf4E62Dqa3q1xBWy7Y7D9extjX6tc5sDzepiBCN2c8Cix4g2YhecSIj7PCsyczNZebXpbPe9PbQT9YW5CH/31rVY5r+6eAtehlAllU+JCw2NlMMmDoNZDEJd2wmvMb78BmlzwVQzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Rx8/dj4WNFRMGgFf9mc5C77AqmGyV/iRFTKcVp5VOCA=;
 b=oKcNCcEclCrUUybVMLTpD99YJP3NI5osKSgmyAuQPaXCgwZJ+i+ys3RxyqoqdT6ubj1LimcbvS+NCi6KPNGKlv5pdoFJ9dr3J1uaSg9SNGw1YOY8HfQJiUclW5a6azD4yT7vndE1uS0s3Hbtb6+25GggcKGDAmpsmOUE7R4PHDs=
Received: from VI1PR04MB4015.eurprd04.prod.outlook.com (10.171.182.24) by
 VI1PR04MB5663.eurprd04.prod.outlook.com (20.178.126.24) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.15; Thu, 1 Aug 2019 07:09:01 +0000
Received: from VI1PR04MB4015.eurprd04.prod.outlook.com
 ([fe80::9c4f:262d:db31:e339]) by VI1PR04MB4015.eurprd04.prod.outlook.com
 ([fe80::9c4f:262d:db31:e339%4]) with mapi id 15.20.2136.010; Thu, 1 Aug 2019
 07:09:01 +0000
From: Ashish Kumar <ashish.kumar@nxp.com>
To: Rob Herring <robh@kernel.org>, Han Xu <han.xu@nxp.com>,
 "broonie@kernel.org" <broonie@kernel.org>
Subject: RE: [EXT] Re: [Patch v3 2/2] dt-bindings: spi: spi-fsl-qspi: Add
 bindings of ls1088a and ls1012a
Thread-Topic: [EXT] Re: [Patch v3 2/2] dt-bindings: spi: spi-fsl-qspi: Add
 bindings of ls1088a and ls1012a
Thread-Index: AQHVJo/WR5aDyJa0DkeJCggmqW/DRqbC1yeAgB61yWCABBUxwIAAf8yA
Date: Thu, 1 Aug 2019 07:09:01 +0000
Message-ID: <VI1PR04MB40151616D6ECF55BA0A8C23F95DE0@VI1PR04MB4015.eurprd04.prod.outlook.com>
References: <1560942714-13330-1-git-send-email-Ashish.Kumar@nxp.com>
 <1560942714-13330-3-git-send-email-Ashish.Kumar@nxp.com>
 <20190709200857.GA8477@bogus>
 <VI1PR04MB4015206CD4AAA1E54C5978DA95DD0@VI1PR04MB4015.eurprd04.prod.outlook.com>
 <VE1PR04MB66879C5045A813E7311534D68FDF0@VE1PR04MB6687.eurprd04.prod.outlook.com>
In-Reply-To: <VE1PR04MB66879C5045A813E7311534D68FDF0@VE1PR04MB6687.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ashish.kumar@nxp.com; 
x-originating-ip: [92.120.0.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7fb285c3-8049-45b0-1677-08d7164f2166
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VI1PR04MB5663; 
x-ms-traffictypediagnostic: VI1PR04MB5663:
x-microsoft-antispam-prvs: <VI1PR04MB5663CE3FAA2C3622608B967F95DE0@VI1PR04MB5663.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2657;
x-forefront-prvs: 01165471DB
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(4636009)(376002)(346002)(396003)(39860400002)(136003)(366004)(13464003)(189003)(199004)(305945005)(66946007)(53936002)(55016002)(66446008)(64756008)(66556008)(66476007)(4326008)(6436002)(8936002)(26005)(7736002)(316002)(7696005)(52536014)(6116002)(76116006)(81156014)(186003)(3846002)(5660300002)(9686003)(53546011)(256004)(86362001)(74316002)(8676002)(66066001)(81166006)(14454004)(6506007)(102836004)(476003)(44832011)(6246003)(76176011)(229853002)(68736007)(99286004)(110136005)(2501003)(25786009)(54906003)(2906002)(446003)(11346002)(33656002)(478600001)(71200400001)(71190400001)(486006)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5663;
 H:VI1PR04MB4015.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: k81qdUYQa9dZC6LSSAnl0/XTTegVCtwCG6PIJtXN3P8fEehvUHdgtoBdNXeUaB5maes9bcWoZ4vN7kDOJ7TKGkzEk0wV1gatiqEVM+Oh16+Eo69rblN+LlxKmJcOWWs+3ob7K/G4/1Ss+Ixw8crLmfedCMxZ3GfMeiPId2zyZK20Qbee6mF5V5fk565UDfp6KK9u+mwbE8TT4rkUsqH59CKiQWcWxzlaJptaQW/QbSlISEq6cDZQCKR7CYrt/4XO5GxFlfp3KU/kmA1WcKfxzU+faLQOtkFNVPNpAUAMAzhkUK1jEEz/W5JhcAUNQj+ZrnJ2B2DSyLdo2PYCyuqaHouqz7LK2pecJwIZTBAiCuzt0EOPgD/JzYNHPEs2DIhe9zYr5dcdZ9DVqRv3SnNi0ppLfY7uPQkA1PxrWXnRH+s=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7fb285c3-8049-45b0-1677-08d7164f2166
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Aug 2019 07:09:01.3521 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ashish.kumar@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5663
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_000906_761257_78C10204 
X-CRM114-Status: GOOD (  13.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.83 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "bbrezillon@kernel.org" <bbrezillon@kernel.org>,
 Kuldeep Singh <kuldeep.singh@nxp.com>, Leo Li <leoyang.li@nxp.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Leo Li
> Sent: Thursday, August 1, 2019 4:59 AM
> To: Ashish Kumar <ashish.kumar@nxp.com>; Rob Herring
> <robh@kernel.org>; Han Xu <han.xu@nxp.com>
> Cc: devicetree@vger.kernel.org; bbrezillon@kernel.org; broonie@kernel.org;
> linux-arm-kernel@lists.infradead.org; linux-mtd@lists.infradead.org; Kuldeep
> Singh <kuldeep.singh@nxp.com>
> Subject: RE: [EXT] Re: [Patch v3 2/2] dt-bindings: spi: spi-fsl-qspi: Add
> bindings of ls1088a and ls1012a
> 
> 
> 
> > -----Original Message-----
> > From: Ashish Kumar
> > Sent: Monday, July 29, 2019 4:09 AM
> > To: Rob Herring <robh@kernel.org>; Leo Li <leoyang.li@nxp.com>
> > Cc: devicetree@vger.kernel.org; bbrezillon@kernel.org;
> > broonie@kernel.org; linux-arm-kernel@lists.infradead.org;
> > linux-mtd@lists.infradead.org; Kuldeep Singh <kuldeep.singh@nxp.com>
> > Subject: RE: [EXT] Re: [Patch v3 2/2] dt-bindings: spi: spi-fsl-qspi:
> > Add bindings of ls1088a and ls1012a
> >
> >
> >
> > > -----Original Message-----
> > > From: Rob Herring <robh@kernel.org>
> > > Sent: Wednesday, July 10, 2019 1:39 AM
> > > To: Ashish Kumar <ashish.kumar@nxp.com>
> > > Cc: devicetree@vger.kernel.org; bbrezillon@kernel.org;
> > > broonie@kernel.org; linux-arm-kernel@lists.infradead.org;
> > > linux-mtd@lists.infradead.org; Ashish Kumar <ashish.kumar@nxp.com>;
> > > Kuldeep Singh <kuldeep.singh@nxp.com>; Ashish Kumar
> > > <ashish.kumar@nxp.com>
> > > Subject: [EXT] Re: [Patch v3 2/2] dt-bindings: spi: spi-fsl-qspi:
> > > Add bindings of ls1088a and ls1012a
> > >
> > > Caution: EXT Email
> > >
> > > On Wed, 19 Jun 2019 16:41:54 +0530, Ashish Kumar wrote:
> > > > Signed-off-by: Kuldeep Singh <kuldeep.singh@nxp.com>
> > > > Signed-off-by: Ashish Kumar <ashish.kumar@nxp.com>
> > > > ---
> > > > v3:
> > > > Rebase to top
> > > > v2:
> > > > Convert to patch series and rebasing done on top of tree
> > > >
> > > >  Documentation/devicetree/bindings/spi/spi-fsl-qspi.txt | 2 ++
> > > >  1 file changed, 2 insertions(+)
> > > >
> > >
> > > Reviewed-by: Rob Herring <robh@kernel.org>
> >
> > Hi Leo,
> >
> > I think Rob, is waiting for you ack.
> 
> Binding patches usually go through subsystem tree.  So I think this actually
> need ack from qspi maintainer Han Xu and be picked up by SPI maintainer.
Ok.
Hello Han Xu, 

Could you please ack this few of my dts patches are dependent on this, waiting to be pushed from Shawn's tree.

Regards 
Ashish 


> 
> Regards,
> Leo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
