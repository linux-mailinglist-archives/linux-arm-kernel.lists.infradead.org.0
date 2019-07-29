Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 955C978806
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 11:09:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u3TCgKWD72226hoIxLW0I3ij2KMexJ86Nyh+vxDyRhc=; b=dR+z7drbqyfbbr
	xBDeEWDY08ew5Aj4vGjw3wkQf/6v5BmpEGwU6Avyrx97T/Oa0aCHQgFgV5LvqVOspKrMHk5Q/XHLx
	Ws7JjzQ3zzoPKj9h1xjgoiJEQbiG1t7H2j7XduEmMqaMOv11S3bxIfXdjVBAu38ZszaovyjZ/7WtQ
	E02WQeLJxIqpe8mtW38Miq3GbYAMHL3eJhQiyPUWMruDaUtvAwWkUgbnTsrtymC/h8CqNozhA+5jq
	FRURNzUPACpRAW0zJM/byUaMkkMRXJ+aGdMWQxURQjObrBgOlZrBG097DeyP5LMbMDYBBhW2+nxxM
	Spw3OTvsLM2k8CVGMLgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs1ee-0005hB-29; Mon, 29 Jul 2019 09:09:16 +0000
Received: from mail-eopbgr50056.outbound.protection.outlook.com ([40.107.5.56]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs1eS-0005gK-6J; Mon, 29 Jul 2019 09:09:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q9Ll+u4/7xUhkjhQsLXtL0Q3EHfMuZ+AK7wI9pKkfrCOv/MhEL0x9PhpOfLwu+N4Z9vIbZVUvqkCLihViNhYfcnFCqnyHgdJ8ambWZ/7GMEAUR787A+I9BGxAEmVfQh0z7uIntD1LMwMGdxXIs0QEL1KCh3PZNcptKcmWCvS4EA8KtZGcUGc4Xd1uAb+DbMT+j6CmH3x5kVfkQcFz0zBU+alUiq3P1x3FT3Bl+ebxQTmlVChvkh4gCHsRgP7xjFYygHyvnksBRlpxWJCM6/13LbulXKCVuC5Q0B9qYY6Lc4phELGb9sO042TMlUVb+tIqk5tE5uOxVhUyO/mMqUoRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YKTTO1iLh/UHzdh0ywT7ipSzW+clXe/1BANF1i6r2dU=;
 b=VtO5WjMm7e5cxY0pB/afqlvnd6ansthvrFZNTrSJvKfGrgx4k4yVdZXUTYYxjPLVQ+/2iWzr5ibCzY43urW2nz+oe9Sm2Q36D1T9y4jbE4BiAkj72pfstWG4qtSdEAENo+sfFFbPjs5pOIJnfW/E9ZRiZhp8oCwhSHDuwOy3y3Iw/PCLXJhuRIR9fJzFmROAh1Ooz8EFv6KztDn67IuFZrZ8h8cFGt17uihUonWBjvQ1E/WS9tktLbPzMA665f2Xv5/O0Cd3TA3Jn4rJA5VVhckh1MQxKBHGcNST7tuoXK1Y0cOM0bGkiamlFKypQ8LlY4N8JdWXJnANDEJ2+TQ4gA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YKTTO1iLh/UHzdh0ywT7ipSzW+clXe/1BANF1i6r2dU=;
 b=heLfglmKZVqgmYHMFJbj7sDRaG6iDWimDZe2wxRPKG9jQZys0brdm86w+zhcYoQRv8u3l3CVypPBF9Q7jy1GrNumC3BzT5SqrgClUBDOHVvUTIWEVOUkpoVzaUn/u3HN5+ZLHpZpV5RfAIJwF0fwShOgYMbKxIrOlSytDvwxm+A=
Received: from VI1PR04MB4015.eurprd04.prod.outlook.com (10.171.182.24) by
 VI1PR04MB4909.eurprd04.prod.outlook.com (20.177.49.158) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.10; Mon, 29 Jul 2019 09:08:59 +0000
Received: from VI1PR04MB4015.eurprd04.prod.outlook.com
 ([fe80::9c4f:262d:db31:e339]) by VI1PR04MB4015.eurprd04.prod.outlook.com
 ([fe80::9c4f:262d:db31:e339%4]) with mapi id 15.20.2115.005; Mon, 29 Jul 2019
 09:08:59 +0000
From: Ashish Kumar <ashish.kumar@nxp.com>
To: Rob Herring <robh@kernel.org>, Leo Li <leoyang.li@nxp.com>
Subject: RE: [EXT] Re: [Patch v3 2/2] dt-bindings: spi: spi-fsl-qspi: Add
 bindings of ls1088a and ls1012a
Thread-Topic: [EXT] Re: [Patch v3 2/2] dt-bindings: spi: spi-fsl-qspi: Add
 bindings of ls1088a and ls1012a
Thread-Index: AQHVJo/WR5aDyJa0DkeJCggmqW/DRqbC1yeAgB61yWA=
Date: Mon, 29 Jul 2019 09:08:58 +0000
Message-ID: <VI1PR04MB4015206CD4AAA1E54C5978DA95DD0@VI1PR04MB4015.eurprd04.prod.outlook.com>
References: <1560942714-13330-1-git-send-email-Ashish.Kumar@nxp.com>
 <1560942714-13330-3-git-send-email-Ashish.Kumar@nxp.com>
 <20190709200857.GA8477@bogus>
In-Reply-To: <20190709200857.GA8477@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ashish.kumar@nxp.com; 
x-originating-ip: [92.120.0.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8534ccf4-3316-43f9-9f61-08d714046445
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB4909; 
x-ms-traffictypediagnostic: VI1PR04MB4909:
x-microsoft-antispam-prvs: <VI1PR04MB4909D40BDA9AB4E13386A73895DD0@VI1PR04MB4909.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:758;
x-forefront-prvs: 01136D2D90
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(136003)(39860400002)(396003)(346002)(376002)(13464003)(199004)(189003)(53546011)(6506007)(6436002)(76176011)(26005)(110136005)(54906003)(6636002)(186003)(2906002)(316002)(256004)(44832011)(486006)(86362001)(66066001)(55016002)(71200400001)(71190400001)(446003)(11346002)(476003)(229853002)(68736007)(53936002)(52536014)(33656002)(7736002)(8936002)(6246003)(4744005)(478600001)(25786009)(102836004)(99286004)(7696005)(76116006)(5660300002)(66446008)(64756008)(66556008)(66476007)(66946007)(3846002)(4326008)(6116002)(81166006)(8676002)(14454004)(81156014)(74316002)(9686003)(305945005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4909;
 H:VI1PR04MB4015.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Na7WetldCDf0kisvygFV4kL513RDyGqwyOprmPUuVlv3NrzClaL+rLLTWB7+A9JWeHFsEHdQVTEjbnKdaePuieHGIMRwT+/el52KTQHEeraPecdcEfu6y1wYhnBxzS3ITQal8hUzlvqJ2Nikqyba3IOsiZuP9h2E3bfZGOMhspTzP6HFxLHN95V/RRICwIzYHwzGxQipjmVa8KHk/SY1zRgdwkwICUKMqvSXJMwTEk18fzOoLTKJMEAd7qV1dd8vYL5BGnS1yDhnOK84C3oNcRr7s60+je2LkkvR+WzSB53sHt2oMjxl4EYoLx+MO3zJ0ubX1WBS4GHbih7kc63wN8CkDCc9Y5FkYYp87V7eKjTBMMEes1R+pSvGYz5mKeURXXoyr/1cUe8mMhN/COouycf2xoFu6dVvCh88bD+dE4s=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8534ccf4-3316-43f9-9f61-08d714046445
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2019 09:08:58.9794 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ashish.kumar@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4909
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_020904_239118_7130AEB1 
X-CRM114-Status: GOOD (  10.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.56 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Kuldeep Singh <kuldeep.singh@nxp.com>,
 "broonie@kernel.org" <broonie@kernel.org>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Rob Herring <robh@kernel.org>
> Sent: Wednesday, July 10, 2019 1:39 AM
> To: Ashish Kumar <ashish.kumar@nxp.com>
> Cc: devicetree@vger.kernel.org; bbrezillon@kernel.org; broonie@kernel.org;
> linux-arm-kernel@lists.infradead.org; linux-mtd@lists.infradead.org; Ashish
> Kumar <ashish.kumar@nxp.com>; Kuldeep Singh <kuldeep.singh@nxp.com>;
> Ashish Kumar <ashish.kumar@nxp.com>
> Subject: [EXT] Re: [Patch v3 2/2] dt-bindings: spi: spi-fsl-qspi: Add bindings of
> ls1088a and ls1012a
> 
> Caution: EXT Email
> 
> On Wed, 19 Jun 2019 16:41:54 +0530, Ashish Kumar wrote:
> > Signed-off-by: Kuldeep Singh <kuldeep.singh@nxp.com>
> > Signed-off-by: Ashish Kumar <ashish.kumar@nxp.com>
> > ---
> > v3:
> > Rebase to top
> > v2:
> > Convert to patch series and rebasing done on top of tree
> >
> >  Documentation/devicetree/bindings/spi/spi-fsl-qspi.txt | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> 
> Reviewed-by: Rob Herring <robh@kernel.org>

Hi Leo,

I think Rob, is waiting for you ack.

Regards
Ashish 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
