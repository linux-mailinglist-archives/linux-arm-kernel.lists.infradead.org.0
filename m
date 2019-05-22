Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2061B25E7E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 09:06:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EuAyvPxijXRPw2n9M/qBJQGEZXQQp7jMWLsMgeGoioo=; b=C6oeDmC6kHqoNa
	5eMB853tl401DZ7vJr4oBtqsToJEsT+bUwJUxZrXThBJYl57nmn1dEqf4UDPwtK7ybqTNxgKEr7jV
	AKpzOxS3Hhj83PUHwG+DMARhoQUB6taK2bofTOJLa1rph39eZecLNq9XfgXc0MNSgSpyOEdF4TEMT
	hQ3ucvobl5JRbhuC5cfVEtPSCXIuxo7JTnF6Wc86h7dVDoohwIfXeYX2PLQMpoSWb8vtsjLIW2Kz1
	O6smvcejVCwWX6m/95uZyxEi17taen5L3o71UCT0/qhJahJzrDPBjgfMGdR8RPDS3WNeRgTTDSg16
	Wqa2Zdve297DRj7ksjyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTLKS-0000nG-7T; Wed, 22 May 2019 07:06:24 +0000
Received: from mail-eopbgr70087.outbound.protection.outlook.com ([40.107.7.87]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTLKK-0000ms-Lw; Wed, 22 May 2019 07:06:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=js/rleFrTUm9e6nJA8yHzFp4ws0qmvJw8hibKrftfcQ=;
 b=fvp3undoFyYGbTDa4vqyEVyLv8YerIuEKsZ3P1u8JfuXI4b7LswwJcyn4ItSw505TL2rZQZec3+sFODbuF/Jgj4eOmGoV5JaX9cSP8PjledHlVDeUAhKxOS7d83CjIqLpUrp+7incQS1ZU5o6P/ZWuFE22JdwDmbf56WlQrDT+c=
Received: from AM0PR0402MB3556.eurprd04.prod.outlook.com (52.133.43.147) by
 AM0PR0402MB3683.eurprd04.prod.outlook.com (52.133.38.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.18; Wed, 22 May 2019 07:06:13 +0000
Received: from AM0PR0402MB3556.eurprd04.prod.outlook.com
 ([fe80::f891:76d:8a6a:3dfd]) by AM0PR0402MB3556.eurprd04.prod.outlook.com
 ([fe80::f891:76d:8a6a:3dfd%2]) with mapi id 15.20.1922.016; Wed, 22 May 2019
 07:06:13 +0000
From: Kuldeep Singh <kuldeep.singh@nxp.com>
To: Mark Brown <broonie@kernel.org>
Subject: RE: [EXT] Re: [PATCH] dt-bindings: spi: spi-fsl-qspi: Add ls2080a
 compatibility string
Thread-Topic: [EXT] Re: [PATCH] dt-bindings: spi: spi-fsl-qspi: Add ls2080a
 compatibility string
Thread-Index: AQHVC9OtkL2+pIZt7Uy9/HRX7rIojaZ2Gf+AgACmmfA=
Date: Wed, 22 May 2019 07:06:12 +0000
Message-ID: <AM0PR0402MB3556568F1033897FC4784D83E0000@AM0PR0402MB3556.eurprd04.prod.outlook.com>
References: <20190516104046.23830-1-kuldeep.singh@nxp.com>
 <20190516104046.23830-2-kuldeep.singh@nxp.com>
 <20190521210449.GB1580@sirena.org.uk>
In-Reply-To: <20190521210449.GB1580@sirena.org.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=kuldeep.singh@nxp.com; 
x-originating-ip: [92.120.1.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b87ead17-ac02-4e73-9946-08d6de83f9e3
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR0402MB3683; 
x-ms-traffictypediagnostic: AM0PR0402MB3683:
x-microsoft-antispam-prvs: <AM0PR0402MB36830664338AAD0186758A64E0000@AM0PR0402MB3683.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1002;
x-forefront-prvs: 0045236D47
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(189003)(199004)(13464003)(6116002)(14454004)(6246003)(3846002)(9686003)(33656002)(55016002)(4326008)(25786009)(4744005)(256004)(5660300002)(6916009)(76176011)(44832011)(66066001)(2906002)(7696005)(476003)(186003)(446003)(76116006)(486006)(73956011)(66556008)(66446008)(66946007)(6506007)(66476007)(64756008)(229853002)(99286004)(11346002)(102836004)(54906003)(53546011)(86362001)(7736002)(74316002)(68736007)(6436002)(26005)(8936002)(81166006)(81156014)(8676002)(52536014)(53936002)(305945005)(498600001)(71190400001)(71200400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR0402MB3683;
 H:AM0PR0402MB3556.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: HB0XwIPUA9vkRyYewaCwmJ1Yfpg5JMkAX8qW/Gb/dW2CY3u2L1dPYsvGzoQds/t326M1mplknNPKn/ISrhTrQnpzAwIoc3qQNpKUwT1p8S3dSEQsf3aHMnUr6vuDYmCKm9LnM7SI+P7gXbvmknT/mjfA+YaEXzTLN4Eg7WdzRdfLAPw+zRczmD11FGevuFnnptEyWzD0/hYzLIYjZ9//wqPhvYAde+tvOg5ujDXznpb0ZgVRVdlA0tA4lfXcV9wi0ZVqthvD7HXJk9NJyP/uK2YF2sGhnGbrhYka40IwN4GOgViaQJChQp/yUWgtSDL3lFpkFhBglDBR/oTVgJNbAz2CgTKPEC+i1xYWUwyLSeKc/iDP5Lwpqhu5KSGkI1WjK3Caw+b8T9ZhHzZMQ9hlhLHT7Odv6JFCH6jQDddoQQ4=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b87ead17-ac02-4e73-9946-08d6de83f9e3
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2019 07:06:13.2779 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR0402MB3683
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_000616_720913_98311756 
X-CRM114-Status: UNSURE (   8.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.87 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 Ashish Kumar <ashish.kumar@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "bbrezillon@kernel.org" <bbrezillon@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

> -----Original Message-----
> From: Mark Brown [mailto:broonie@kernel.org]
> Sent: Wednesday, May 22, 2019 2:35 AM
> To: Kuldeep Singh <kuldeep.singh@nxp.com>
> Cc: devicetree@vger.kernel.org; bbrezillon@kernel.org; linux-arm-
> kernel@lists.infradead.org; linux-mtd@lists.infradead.org; Ashish Kumar
> <ashish.kumar@nxp.com>
> Subject: [EXT] Re: [PATCH] dt-bindings: spi: spi-fsl-qspi: Add ls2080a
> compatibility string
> 
> On Thu, May 16, 2019 at 10:39:45AM +0000, Kuldeep Singh wrote:
> > There are 2 version of QSPI-IP, according to which it can be big
> > endian or little endian. There are some other minor changes as well.
> > The big endian version uses driver compatible fsl,ls1021a-qspi and
> > little endian version uses fsl,ls10280a-qspi
> 
> This doesn't apply against current code, please check and resend.

I have sent v2 of patches by converting them to patch series.

Regards 
Kuldeep Singh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
