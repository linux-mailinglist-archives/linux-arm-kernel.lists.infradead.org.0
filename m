Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CDDF814C2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 11:09:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lzKYmp32D4OhTNBL4v4RPYEjslImofZa7pkHiTLvtdE=; b=RCN5xcSZvxERLO
	l3i8WlYfDipyeF+Wqn9melKZg5+F9a5zy06D7KpuJ4Mix74ns1IVUw9HDT1uaBFBbcalHwpblr3S4
	c/nZZ/rAK2V5v393o/hetKPEM+s4lj5EtiVh+xVv53AnqgolpP1LdMpqpWvll6pwmNKMLvBFYuW0Z
	K7+/8b548mKdBxxkzhpgh3cXY5lzzjkN5f2tT9KVNFGCplcLfTYjOCnWvH8eVZ6D/iGDInZ11wv6E
	e2iBi6IanN7mGAarKi3tHAUT6PTO6xg9cVKHiTd243wZMsKBj/JPVJelqZSPZhgKYrJXxQ3WtDJGO
	g48DQuvrM/B2+KgzYo0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huYzS-0002og-7h; Mon, 05 Aug 2019 09:09:14 +0000
Received: from mail-eopbgr20087.outbound.protection.outlook.com ([40.107.2.87]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huYya-0002Pi-TG; Mon, 05 Aug 2019 09:08:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DWQl43zYt+mve+mcxVoJPD9dPl3lOnNaSiwEaj/Ow+3J7koi+YAsDDmfjW5xyzp4fVJvrzeSx3s1bsD1r6APxlFnyvQrRYh9WFUhJwOUbN86vf+AQexgybEsSSCnOBwRQ8d71mV4Wje+tRU0+4O/TxMcf8QFlotbEEJ9i5FEtRV4hBPuOhVKMlVKMBP/ZuiMbNHOQeIlp2d5t4MbQB7eF4udPBl0MSYNe3KqvSYnpm7d+Utoyv1+vZVySixBf05r0fptbqC82iwBpu21LIrgEU4Lqmx7rWeC+9N64UvJXK+U80M6pvMuFSHkDjo10VxBf1n5TJQl4ia+vpxIbcwsng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lOzIiE4x1sQ+fFeYmzaB54pnDWh7/NHS25RmKk8deVw=;
 b=n0Dvw4YyrTKeA/ctFeBmdOnlMAk43M6OPi630907dEkncV1ZaXT3GdVuMyJXF5TM2GrbAIUtRb96v41vW3DBdJrlLtOlx7Vl80mBcyj5ojNIAn7BrCFkMi0p6IdQv/35TqJ4IZoyw/ChA7fuiyoBCxjY2eUnfiW62Gs0S3DPbC68NDp5OODcPpCsOkESjY4wcGffM/eaAozUrny0Ssxn4frVWw8o/rDCy2y+rcMdqmRqqlgvAk5OCSWc6kfsF8alkTp+SxzBF5Rhf6BOsXOb6ypE0R0tp16zcRtRlQFcxI+051iVrnQBvxLnoC67JAckfCNzggEpzLHpGMiLo6vgvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lOzIiE4x1sQ+fFeYmzaB54pnDWh7/NHS25RmKk8deVw=;
 b=hpX4lyHUyItkJ8kbf/i9jLDhEXo7u1nIqBlppzS81LU5luJCmCtArRjidkqY5R0l9zxB0DaJThLG21R4AcyVEuy5oEkWrKqt8HmUeB2smGDp16wBp+Q38QiQgmKjZ3jZe1QEmC1/LKW272XxEalyCf1pvpFq+/AubjjbBs6f/zY=
Received: from VI1PR04MB4015.eurprd04.prod.outlook.com (10.171.182.24) by
 VI1PR04MB4288.eurprd04.prod.outlook.com (52.134.31.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.14; Mon, 5 Aug 2019 09:08:18 +0000
Received: from VI1PR04MB4015.eurprd04.prod.outlook.com
 ([fe80::9c4f:262d:db31:e339]) by VI1PR04MB4015.eurprd04.prod.outlook.com
 ([fe80::9c4f:262d:db31:e339%4]) with mapi id 15.20.2136.018; Mon, 5 Aug 2019
 09:08:17 +0000
From: Ashish Kumar <ashish.kumar@nxp.com>
To: "broonie@kernel.org" <broonie@kernel.org>
Subject: RE: [EXT] Re: [Patch v3 1/2] dt-bindings: spi: spi-fsl-qspi: Add
 ls2080a compatibility string to bindings
Thread-Topic: [EXT] Re: [Patch v3 1/2] dt-bindings: spi: spi-fsl-qspi: Add
 ls2080a compatibility string to bindings
Thread-Index: AQHVJo/VeuuMDsBciEWXxGwYBY/pIqbC1w+AgCPVywCABeCGcA==
Date: Mon, 5 Aug 2019 09:08:17 +0000
Message-ID: <VI1PR04MB4015C2C9407598EFEEB4CB2D95DA0@VI1PR04MB4015.eurprd04.prod.outlook.com>
References: <1560942714-13330-1-git-send-email-Ashish.Kumar@nxp.com>
 <1560942714-13330-2-git-send-email-Ashish.Kumar@nxp.com>
 <20190709200837.GA7806@bogus>
 <CA+EcR23hhD2=abMtNGDoW1LtXSE4qfjTy1uzU7sgrbi7W=KSbw@mail.gmail.com>
In-Reply-To: <CA+EcR23hhD2=abMtNGDoW1LtXSE4qfjTy1uzU7sgrbi7W=KSbw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ashish.kumar@nxp.com; 
x-originating-ip: [92.120.0.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f2f201b3-d14c-4fe6-e49a-08d7198474a3
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB4288; 
x-ms-traffictypediagnostic: VI1PR04MB4288:
x-ms-exchange-purlcount: 3
x-microsoft-antispam-prvs: <VI1PR04MB42888D61404B39C208AF427895DA0@VI1PR04MB4288.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:421;
x-forefront-prvs: 01208B1E18
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(396003)(346002)(376002)(366004)(13464003)(189003)(199004)(74316002)(7696005)(66066001)(4326008)(486006)(186003)(71200400001)(71190400001)(476003)(33656002)(7736002)(2351001)(2501003)(54906003)(53546011)(53936002)(25786009)(6506007)(26005)(446003)(305945005)(11346002)(6246003)(5660300002)(44832011)(102836004)(68736007)(76176011)(81166006)(9686003)(81156014)(14454004)(52536014)(1730700003)(6306002)(66946007)(66556008)(66476007)(76116006)(8676002)(55016002)(86362001)(6916009)(45080400002)(316002)(2906002)(229853002)(5640700003)(966005)(8936002)(256004)(6436002)(478600001)(64756008)(66446008)(99286004)(6116002)(3846002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4288;
 H:VI1PR04MB4015.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Hq6g3mkDo8SB31TSUfn9YNfFwjJAQSB+tel9pofX+rodRUTGZTKzRXFdPF+2M0Zhmo3SziiSNg1S4fy/V3fCsEQSM1xxY4BhcUiFwHQ8ZRk6GZL7aL2IDINE0Jn4dJDQwlCEL8Rgzoh+ciwbT2bLembZrMHAi2eDnkkXr8qSihVVHyUAIHmW1QkajumLAG8cF7HCU3uvEDapVBcy2txjIcwMFMrhfuR1U1YrgxyCPRppJYmCiaa450tgmbgsmqxqWnNi5STllhotUl5dwHJ/OnwQM/cnQSK5kAU0ES1buqteH+oq9kuOu6Mut3SJzwFOs7gSVw4Hxexz1Al4F+QrQO3io8rPPxdqaealGtLKRZhiui1MZNlcBC1d4MD+s+26URmiytYeW/4VycDb53NYYaOYNcm4Z10byt0VJvMJlAE=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f2f201b3-d14c-4fe6-e49a-08d7198474a3
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2019 09:08:17.8300 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ashish.kumar@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4288
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_020821_603690_0B23543D 
X-CRM114-Status: GOOD (  14.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.87 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Han Xu <xhnjupt@gmail.com>, "bbrezillon@kernel.org" <bbrezillon@kernel.org>,
 Kuldeep Singh <kuldeep.singh@nxp.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 Rob Herring <robh@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Han Xu <xhnjupt@gmail.com>
> Sent: Thursday, August 1, 2019 8:53 PM
> To: Rob Herring <robh@kernel.org>
> Cc: Ashish Kumar <ashish.kumar@nxp.com>; devicetree@vger.kernel.org;
> bbrezillon@kernel.org; Kuldeep Singh <kuldeep.singh@nxp.com>;
> broonie@kernel.org; linux-mtd@lists.infradead.org; linux-arm-
> kernel@lists.infradead.org
> Subject: [EXT] Re: [Patch v3 1/2] dt-bindings: spi: spi-fsl-qspi: Add ls2080a
> compatibility string to bindings
> 
> Caution: EXT Email
> 
> On Tue, Jul 9, 2019 at 3:09 PM Rob Herring <robh@kernel.org> wrote:
> >
> > On Wed, 19 Jun 2019 16:41:53 +0530, Ashish Kumar wrote:
> > > There are 2 version of QSPI-IP, according to which controller
> > > registers sets can be big endian or little endian.There are some
> > > other minor changes like RX fifo depth etc.
> > >
> > > The big endian version uses driver compatible "fsl,ls1021a-qspi" and
> > > little endian version uses driver compatible "fsl,ls2080a-qspi"
> > >
> > > Signed-off-by: Kuldeep Singh <kuldeep.singh@nxp.com>
> > > Signed-off-by: Ashish Kumar <ashish.kumar@nxp.com>
> > > ---
> > > v3:
> > > Rebase to top
> > > v2:
> > > Convert to patch series and rebasing done on top of tree
> > >
> > >  Documentation/devicetree/bindings/spi/spi-fsl-qspi.txt | 3 +--
> > >  1 file changed, 1 insertion(+), 2 deletions(-)
> > >
> >
> > Reviewed-by: Rob Herring <robh@kernel.org>
> 
> Acked-by: Han Xu <han.xu@nxp.com>

Hello Mark,

Could you please send this patch[1] from your spi tree, It applies seamlessly on
https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git/

[1]: http://patchwork.ozlabs.org/patch/1118636/

Regards 
Ashish
> 
> >
> > ______________________________________________________
> > Linux MTD discussion mailing list
> > https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Flists
> > .infradead.org%2Fmailman%2Flistinfo%2Flinux-
> mtd%2F&amp;data=02%7C01%7C
> >
> Ashish.Kumar%40nxp.com%7Ca172f045af714e408d0a08d716942751%7C686
> ea1d3bc
> >
> 2b4c6fa92cd99c5c301635%7C0%7C1%7C637002697881500159&amp;sdata=f
> 8i1y4aa
> > k3gPnuXM3fD1xFPp4RB7GEWZ45%2BeWPOoNSA%3D&amp;reserved=0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
