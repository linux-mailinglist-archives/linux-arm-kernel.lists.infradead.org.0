Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3600814BF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 11:08:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0cmUr9gLep8r4gXi1USg/O+5OsGin9Q+EuwMwYyRiAs=; b=hpFeCXkbX1t/Iy
	k1H76lDQA01CM+EsMt62w/HbBZpiYbHhRXOT5Jc+M6XE6rNaCneNtnZ805vuGWk6jQtGTtuQQMebf
	J7DpPCSxZuJ4+D3querVfqxzsQo8VufVT29JwJ1GViH3UuO0zjEjDeC9eFtBC21bBByBvPJIIER2J
	cQMKIIqki+dPl587nGUQPRWZpveJ6AWyazZ0IjYVPbtYqrs1Vz/keofQdDooIpVcKliGW4RU/9wzG
	rEIfYAb02VLAKhw2zF5xgU90Rbw1tb2W7HWGN0yw04BQxqaA+htdPAA3FDc0/1NXBTeXfnHpidngi
	mvvyea35j/TbNqwL5l5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huYys-0002MS-9m; Mon, 05 Aug 2019 09:08:38 +0000
Received: from mail-eopbgr40048.outbound.protection.outlook.com ([40.107.4.48]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huYy9-0002Ak-Mt; Mon, 05 Aug 2019 09:07:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IpEoRyvJR7nJ+3y2bsKvKDvSRsSFlAJ8soVpJ8Zp6BQ89WUDBwL9ePEKAbyM9JFfc7k6k7fauQ8F+vRl43cYTjiQQ/tJxhis5ZeTlju9RxymEfy7tmGBPSzKj7qxoeMbkQs/s5oqT1/rNh4u8NeHyE+JdcJHIOBpOUL6tXwf/Cn6PqhoxMp/0devDwOdFBr/WPTgpVGc6I3JhMExaUARZMfOXX6rlBYMamYWm5kbLAAG3xPRgrBb7lIJD/p6FWVW8Q30nymixJ51b23eVdDLsEFsYTRg6zXmIlKpT9IM5iNGZIXgNFe8A3lX7IBwlAd0U7qmI0l3G0uXH6gPRbQH7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ST7/tNOExl5QepKRDYERuH0TrFxmy23vThhLhdWNeuY=;
 b=Qm+RQMqVkbrUeL+b6n0yv5YiLeEjPpR58XikyYNY1kGlcnIXtlMhj4z9rF+Cenrmm+djGkMi4aqm49ZNx7dNaVCzzXYbj7Odg42TbenwnP9dLvK7TgEhOJMsnibdnBQeaEJ8Ff+kv43M49JEi3H9ZH8gRtw/tQTUih1ieP155cCGAibsJ/38a3ZFU0eIg2zrz7JAYzBGylG7jRlXetr4TqbZtmGYVLjivNfH6JnlC4Z6LZGBQ0z25TxbRaL0D3XahJ4jDUMG0aETDVHhB00b8INwbSS4KU/FyaT34sXYO1D+FD0VIbULEUZO0vi1FJGXudAvaZNxsUcdjOk7aFBDrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ST7/tNOExl5QepKRDYERuH0TrFxmy23vThhLhdWNeuY=;
 b=nG5cEQStPiY6U4TjBeBv47arweOMuod7uyfs17et3B0hUdFGrvtDygRn72JPTez9KuK/ZAZGTdBCIZEDOGAewNc+lcBooj54VXjrGF31zTNz3AEERyFLX86NUgi5lvuaLS0/rbds1jgprj71IZps8CbTYaKVaspJgG8ySiHDh8U=
Received: from VI1PR04MB4015.eurprd04.prod.outlook.com (10.171.182.24) by
 VI1PR04MB6191.eurprd04.prod.outlook.com (20.179.28.81) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.17; Mon, 5 Aug 2019 09:07:47 +0000
Received: from VI1PR04MB4015.eurprd04.prod.outlook.com
 ([fe80::9c4f:262d:db31:e339]) by VI1PR04MB4015.eurprd04.prod.outlook.com
 ([fe80::9c4f:262d:db31:e339%4]) with mapi id 15.20.2136.018; Mon, 5 Aug 2019
 09:07:47 +0000
From: Ashish Kumar <ashish.kumar@nxp.com>
To: "broonie@kernel.org" <broonie@kernel.org>
Subject: RE: [EXT] Re: [Patch v3 2/2] dt-bindings: spi: spi-fsl-qspi: Add
 bindings of ls1088a and ls1012a
Thread-Topic: [EXT] Re: [Patch v3 2/2] dt-bindings: spi: spi-fsl-qspi: Add
 bindings of ls1088a and ls1012a
Thread-Index: AQHVJo/WR5aDyJa0DkeJCggmqW/DRqbC1yeAgCPWBACABdtZoA==
Date: Mon, 5 Aug 2019 09:07:47 +0000
Message-ID: <VI1PR04MB401579932CF0E7D4AE80E0C995DA0@VI1PR04MB4015.eurprd04.prod.outlook.com>
References: <1560942714-13330-1-git-send-email-Ashish.Kumar@nxp.com>
 <1560942714-13330-3-git-send-email-Ashish.Kumar@nxp.com>
 <20190709200857.GA8477@bogus>
 <CA+EcR20ui8Liot+PtzdU6CJb5WzLDHS0Xc7VR7qGAOpD5=ArNQ@mail.gmail.com>
In-Reply-To: <CA+EcR20ui8Liot+PtzdU6CJb5WzLDHS0Xc7VR7qGAOpD5=ArNQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ashish.kumar@nxp.com; 
x-originating-ip: [92.120.0.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0c65bca6-7cec-4454-6c94-08d71984625d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB6191; 
x-ms-traffictypediagnostic: VI1PR04MB6191:
x-ms-exchange-purlcount: 3
x-microsoft-antispam-prvs: <VI1PR04MB6191621040BFC676F6E6A16795DA0@VI1PR04MB6191.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2000;
x-forefront-prvs: 01208B1E18
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(136003)(376002)(346002)(396003)(39860400002)(189003)(199004)(13464003)(86362001)(5660300002)(76176011)(66066001)(2501003)(44832011)(71190400001)(71200400001)(74316002)(2906002)(26005)(229853002)(186003)(7696005)(81166006)(81156014)(256004)(102836004)(33656002)(1730700003)(8676002)(99286004)(6506007)(316002)(305945005)(7736002)(6246003)(14454004)(52536014)(11346002)(45080400002)(486006)(9686003)(478600001)(25786009)(5640700003)(966005)(8936002)(54906003)(6116002)(53546011)(3846002)(2351001)(76116006)(476003)(66476007)(66556008)(64756008)(53936002)(6916009)(6436002)(4326008)(446003)(66946007)(55016002)(6306002)(68736007)(66446008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB6191;
 H:VI1PR04MB4015.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 5H6TyHwrLENmhBpLW2GWlj+gxxB8xPQK3+oQJz1sy3POvc2Azw5XcQGJ2ujjS51SsTHjOymfob/2+WIZr9jFOfvbbogAGrtEMfORX7rt0HXAlRqC+RgKc88EK7URu5T1m9OJupmt+LUsVRSDrRoZgrX2KVtr3cBWnn8T5K9oL0wegyM1SOpCQkp8zT4appG0JUgn1nxRFq8rJWV8g8HVsWojohAoCU7mh/YMAdfBaT+hwEuUmnA7DgyZGr47LELx5BPdvxILZcfYAUtW5BXU1p6Iobw/tK6ZiS4B/zz6U/kfGtib7vXl+G8XEtyBRY0an8ujQRushVeRrW1O+K1jEvDEDyi9QpdAmSlsl3PjfXdiqfkL/ORW1xbJYvehF/hB1oabou0HTA9bpmL+3hzaCe0Kq9O8pWgjUhfsKXacGrk=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c65bca6-7cec-4454-6c94-08d71984625d
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2019 09:07:47.1672 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ashish.kumar@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6191
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_020753_749017_DAC40FA8 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.48 listed in list.dnswl.org]
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
> Sent: Thursday, August 1, 2019 8:54 PM
> To: Rob Herring <robh@kernel.org>
> Cc: Ashish Kumar <ashish.kumar@nxp.com>; devicetree@vger.kernel.org;
> bbrezillon@kernel.org; Kuldeep Singh <kuldeep.singh@nxp.com>;
> broonie@kernel.org; linux-mtd@lists.infradead.org; linux-arm-
> kernel@lists.infradead.org
> Subject: [EXT] Re: [Patch v3 2/2] dt-bindings: spi: spi-fsl-qspi: Add bindings of
> ls1088a and ls1012a
> 
> Caution: EXT Email
> 
> On Tue, Jul 9, 2019 at 3:09 PM Rob Herring <robh@kernel.org> wrote:
> >
> > On Wed, 19 Jun 2019 16:41:54 +0530, Ashish Kumar wrote:
> > > Signed-off-by: Kuldeep Singh <kuldeep.singh@nxp.com>
> > > Signed-off-by: Ashish Kumar <ashish.kumar@nxp.com>
> > > ---
> > > v3:
> > > Rebase to top
> > > v2:
> > > Convert to patch series and rebasing done on top of tree
> > >
> > >  Documentation/devicetree/bindings/spi/spi-fsl-qspi.txt | 2 ++
> > >  1 file changed, 2 insertions(+)
> > >
> >
> > Reviewed-by: Rob Herring <robh@kernel.org>
> 
> Acked-by: Han Xu <han.xu@nxp.com>

Hello Mark,

Could you please send this patch[1] from your spi tree, It applies seamlessly on
https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git/

[1]: http://patchwork.ozlabs.org/patch/1118637/

Regards 
Ashish 


> 
> >
> > ______________________________________________________
> > Linux MTD discussion mailing list
> >
> https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Flists.inf
> radead.org%2Fmailman%2Flistinfo%2Flinux-
> mtd%2F&amp;data=02%7C01%7CAshish.Kumar%40nxp.com%7C243dc21894
> ad4c2a651808d716945016%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7
> C1%7C637002698562132108&amp;sdata=6YZyZ6D6DywgLYlp%2BWZfkvyaDr
> TKvR56JkOxy0XSD9k%3D&amp;reserved=0
> 
> 
> 
> --
> Sincerely,
> 
> Han XU
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
