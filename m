Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0454633960
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 21:56:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ujb+HzWtC0nvmzqFJk2moPC8qSiKlJEkaTcPsf6vsxw=; b=ahPu9ozlAqVTd9
	UOHtvqXcbTsRXM+/MTU4KlFStbsKfI/mZk3kzHU6JoqqPLgW2xFkjdcsnnGdfsCrfSqd5hVimFq7d
	+ChyNrotkQrKjKfiHDN0K/+/bBGVF8xymQq1RmobH3cLnMnqZ9LzuKbNR4Z52QqxeGfNyBLAkcWot
	/5qaUGdiOPryF9Lwmn06KTy5c1sMGcUPpi8EdemgAkCi64VbIqkojJGOVC94c7whk40wJohrWcS2p
	YI2KT5QwYQdzqaThIu8kdrun39rNVOnwaQVU742zGrm0LPZ9HUmy/EYnatjOWUHm73GaeUIW0+Vek
	w4gBrAA8O5FJsSOUjFUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXt3q-00054e-M4; Mon, 03 Jun 2019 19:56:02 +0000
Received: from mail-db5eur01on061a.outbound.protection.outlook.com
 ([2a01:111:f400:fe02::61a]
 helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXt3k-000546-DF
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 19:55:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Yw9U0BA/Rbnuost0XrXLpPpt3YzVCVxPdRWpRM9ggvc=;
 b=fN90t4Kti5ZuuGzE/ORrPJ9AOByQdJKZeQX/rMkn0WHWSVa9HOyuGXMqwv715CWlS2FFL0xtH+vKNhVGK9GNfrEPEe96+qk+vQ2c6V5KIYIehqVX7uypr0FCUSytv8w+Yud9HeAHiLDydiChq8sGlVMNj1t/+cukzJo60UxqD9A=
Received: from VE1PR04MB6687.eurprd04.prod.outlook.com (20.179.235.152) by
 VE1PR04MB6670.eurprd04.prod.outlook.com (20.179.235.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.17; Mon, 3 Jun 2019 19:55:51 +0000
Received: from VE1PR04MB6687.eurprd04.prod.outlook.com
 ([fe80::9e6:e136:4c09:fe67]) by VE1PR04MB6687.eurprd04.prod.outlook.com
 ([fe80::9e6:e136:4c09:fe67%5]) with mapi id 15.20.1943.018; Mon, 3 Jun 2019
 19:55:51 +0000
From: Leo Li <leoyang.li@nxp.com>
To: Rasmus Villemoes <Rasmus.Villemoes@prevas.se>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Qiang Zhao
 <qiang.zhao@nxp.com>
Subject: RE: [PATCH v3 0/6] soc/fsl/qe: cleanups and new DT binding
Thread-Topic: [PATCH v3 0/6] soc/fsl/qe: cleanups and new DT binding
Thread-Index: AQHVCX0ZigTT3b8e40uvrg8HEyl+g6aKeRUAgAAAdGA=
Date: Mon, 3 Jun 2019 19:55:51 +0000
Message-ID: <VE1PR04MB6687FF805430978ED307EA2D8F140@VE1PR04MB6687.eurprd04.prod.outlook.com>
References: <20190501092841.9026-1-rasmus.villemoes@prevas.dk>
 <20190513111442.25724-1-rasmus.villemoes@prevas.dk>
 <e11c1e55-1e11-7ce3-3c0f-0b723ab260aa@prevas.se>
In-Reply-To: <e11c1e55-1e11-7ce3-3c0f-0b723ab260aa@prevas.se>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leoyang.li@nxp.com; 
x-originating-ip: [64.157.242.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 579c5b46-ed17-4d70-dd88-08d6e85d7b38
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VE1PR04MB6670; 
x-ms-traffictypediagnostic: VE1PR04MB6670:
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-microsoft-antispam-prvs: <VE1PR04MB667010E870DE62DA6AC70C118F140@VE1PR04MB6670.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0057EE387C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(366004)(39860400002)(346002)(396003)(136003)(13464003)(199004)(189003)(7736002)(305945005)(76176011)(2501003)(99286004)(7696005)(6506007)(486006)(74316002)(33656002)(478600001)(52536014)(6116002)(476003)(68736007)(2906002)(102836004)(3846002)(256004)(26005)(5660300002)(186003)(7416002)(11346002)(86362001)(53546011)(14454004)(25786009)(6436002)(6246003)(4326008)(8676002)(66946007)(446003)(73956011)(71200400001)(71190400001)(66476007)(66446008)(9686003)(64756008)(66066001)(66556008)(229853002)(54906003)(110136005)(53936002)(55016002)(316002)(8936002)(81166006)(81156014)(6636002)(76116006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6670;
 H:VE1PR04MB6687.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: pICCQVEdCAjHBf+x3/AVVw6qC65ksmgT482DiEDw0msXak+Ss4Sp0KSWtBoeO9yfJefrjtvHpvoBORrakmvIleL+65fO5kMlGMfYaGShSOYsgnOc6GDgIwHzwOPqJHtG7+YZTWzzaNFQSUJTBy+FX+o1XZypMAWMjZZXHaCQWjExo3bzeFYrJgvhKNiyGTdzcKh0QtaRphfwRjR3q4MF5ZU/5/1OPDtNlhEPAzdzrAa5ywmgm6QYQd01hTTs/5fihLLBe1cDk4bOKvpqzRHc/+cuNAMhoWomQfwPgxU5ngqPFyPz3hPhOucqzW2b6QvGYp5MnmyfeuNH+s8KcrzUOuqmgXp4ZOckFWMP8WeCthlE/Fg29wf0vWr8env7mqxYUS78+C8IcZW16YpQ7EkepA6ETtuGdOaLdpbC2FN1758=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 579c5b46-ed17-4d70-dd88-08d6e85d7b38
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2019 19:55:51.5311 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: leoyang.li@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6670
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_125556_515087_FCE3612B 
X-CRM114-Status: GOOD (  16.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe02:0:0:0:61a listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 Mark Rutland <mark.rutland@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Scott Wood <oss@buserror.net>,
 "jocke@infinera.com" <joakim.tjernlund@infinera.com>,
 Rob Herring <robh+dt@kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Rasmus Villemoes <Rasmus.Villemoes@prevas.se>
> Sent: Monday, June 3, 2019 2:54 PM
> To: devicetree@vger.kernel.org; Qiang Zhao <qiang.zhao@nxp.com>; Leo Li
> <leoyang.li@nxp.com>
> Cc: linuxppc-dev@lists.ozlabs.org; linux-arm-kernel@lists.infradead.org;
> linux-kernel@vger.kernel.org; Rob Herring <robh+dt@kernel.org>; Scott
> Wood <oss@buserror.net>; Christophe Leroy <christophe.leroy@c-s.fr>;
> Mark Rutland <mark.rutland@arm.com>; jocke@infinera.com
> <joakim.tjernlund@infinera.com>
> Subject: Re: [PATCH v3 0/6] soc/fsl/qe: cleanups and new DT binding
> 
> On 13/05/2019 13.14, Rasmus Villemoes wrote:
> > This small series consists of some small cleanups and simplifications
> > of the QUICC engine driver, and introduces a new DT binding that makes
> > it much easier to support other variants of the QUICC engine IP block
> > that appears in the wild: There's no reason to expect in general that
> > the number of valid SNUMs uniquely determines the set of such, so it's
> > better to simply let the device tree specify the values (and,
> > implicitly via the array length, also the count).
> >
> > Which tree should this go through?
> 
> Ping? These patches should be ready to go in, but I don't know who is
> supposed to pick them up.

I can pick them up through the soc/fsl tree.

Regards,
Leo
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
