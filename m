Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25A2710CDD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 20:47:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WlyIzWh0zOuVZnZsepNLQKweC7lJwOHT8DXiqk7CNOc=; b=kaphJ0Z9vd1uNl
	mlaRMb+tNyb8P9xiQuPGi+U5QkG3phla37ONK6tfv0GjCCMsCVESWxjiyyUIlgSQq4zInRsxjMGF1
	ezHxfCs1Xcq/e0lw/AuxeXG6/Ali+sbP4O6e/w1+wOoZLH86gS0qwRhpXppO0ozVKjCNm2R7JN6X8
	+i4Jsf+ut1HJt2mkrTGxBQECJEahJCZU+V7XCiyvmZ1FFgNET1pMUaKnkSTWfJMAv+XwS0O/sac0G
	qiiu3W4Z5FLTDXdddGkUAUYYGKiFcVPqm9xst7IkxyuqITkS0A1MRA95Q932hV1MuWM4BUtcQ95DA
	GYECNlepjhB0yq0L8Lug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLuGK-0008AB-57; Wed, 01 May 2019 18:47:24 +0000
Received: from mail-eopbgr00133.outbound.protection.outlook.com
 ([40.107.0.133] helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLuGD-00080y-M6
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 18:47:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=prevas.se; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oKp2dNvnG+drs/A6ljFelvF7IrEFVsHdJHmyoRpez/Y=;
 b=O5lpYGU1TRe3XwHUzG3nkOzLAOXGPVGtaD2jjjzC32ilHwYYno4rR5Y8g7cnezJvuj1Xzl5xRtlpgK8fSrGEewUn9xegvlEeblc8ecmEsisJnrqzRH/34JRG3csVjuajSul4p/H8m7cbkLWBjP7Wz3sXy7CyjELI4O8lbjjNwBA=
Received: from VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM (20.178.126.212) by
 VI1PR10MB1805.EURPRD10.PROD.OUTLOOK.COM (10.165.194.158) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Wed, 1 May 2019 18:47:11 +0000
Received: from VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::48b8:9cff:182:f3d8]) by VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::48b8:9cff:182:f3d8%2]) with mapi id 15.20.1856.008; Wed, 1 May 2019
 18:47:11 +0000
From: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
To: Joakim Tjernlund <Joakim.Tjernlund@infinera.com>, "leoyang.li@nxp.com"
 <leoyang.li@nxp.com>, "qiang.zhao@nxp.com" <qiang.zhao@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [PATCH v2 4/6] dt-bindings: soc/fsl: qe: document new
 fsl,qe-snums binding
Thread-Topic: [PATCH v2 4/6] dt-bindings: soc/fsl: qe: document new
 fsl,qe-snums binding
Thread-Index: AQHVAABTBBh/pLqBQEiPEhE0F8Qaj6ZWYLAAgAA73IA=
Date: Wed, 1 May 2019 18:47:10 +0000
Message-ID: <12a4abf5-2a56-c5d3-dc43-59b1473c0829@prevas.dk>
References: <20190430133615.25721-1-rasmus.villemoes@prevas.dk>
 <20190501092841.9026-1-rasmus.villemoes@prevas.dk>
 <20190501092841.9026-5-rasmus.villemoes@prevas.dk>
 <4c3aef881393398ca18efac99b1f76e7dbd19acf.camel@infinera.com>
In-Reply-To: <4c3aef881393398ca18efac99b1f76e7dbd19acf.camel@infinera.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1PR08CA0071.eurprd08.prod.outlook.com
 (2603:10a6:7:2a::42) To VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:803:e3::20)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Rasmus.Villemoes@prevas.se; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [5.186.118.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dcc6a1b8-c38b-4e5f-4370-08d6ce656b50
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:VI1PR10MB1805; 
x-ms-traffictypediagnostic: VI1PR10MB1805:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <VI1PR10MB1805211FBA12C94BA0DC11198A3B0@VI1PR10MB1805.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 00246AB517
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(376002)(396003)(366004)(136003)(39850400004)(199004)(189003)(72206003)(7736002)(36756003)(305945005)(478600001)(5660300002)(966005)(66066001)(256004)(110136005)(5024004)(54906003)(71200400001)(71190400001)(68736007)(2906002)(31696002)(71446004)(74482002)(6486002)(6436002)(2201001)(6506007)(386003)(316002)(25786009)(186003)(52116002)(486006)(11346002)(76176011)(8936002)(2616005)(476003)(99286004)(26005)(81156014)(81166006)(8676002)(229853002)(31686004)(6116002)(53936002)(6306002)(6512007)(66946007)(14454004)(73956011)(66476007)(64756008)(66556008)(44832011)(66446008)(2501003)(4326008)(3846002)(6246003)(446003)(42882007)(8976002)(102836004)(7416002)(142933001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR10MB1805;
 H:VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: prevas.se does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 04Bgu7zXkfJErxHd0qWYxM06+wopIhFAB5HyWoRI33FZD+Mv86mBMFLRvZaMGY7aTxW3AeG0USvQllpUKfnwKlmMTQERzpqf4JuP+GWSXF+LvaSeoF9xNwQL1ssZKN18cosniEMq+HEQqgZoRyda1Ryvm8dG7c8reIHmj/zxwjxEazxlikkEZI1WNhK4ILVzYJwb/F7/344UmuV3umlpxAeFmVmepUYoP1qtIDE/O3rIclhHNhjrKHDx5ZmNBAZa6BHNVR5L08r3qnaFYJVwFH6yX5PxUQQ8xXdhSRtIBAVjJ1hjt1fbeSSbXpxwwLaqM6VjWgbP96FQ+AidUgq/IINsRkAbSL8WWOLZV1Ipmyd4RVqQrvbEMRbMGDzd2gnROOjNyZMApsQL4bRDdbT7xiBTa2fDku2QhwiZuThwT7w=
Content-ID: <8D3C3DDBAB3D4847BB37F9D538B0407B@EURPRD10.PROD.OUTLOOK.COM>
MIME-Version: 1.0
X-OriginatorOrg: prevas.dk
X-MS-Exchange-CrossTenant-Network-Message-Id: dcc6a1b8-c38b-4e5f-4370-08d6ce656b50
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2019 18:47:11.0077 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d350cf71-778d-4780-88f5-071a4cb1ed61
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR10MB1805
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_114717_840988_1F3674FC 
X-CRM114-Status: GOOD (  12.39  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.133 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Rasmus Villemoes <Rasmus.Villemoes@prevas.se>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "oss@buserror.net" <oss@buserror.net>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 01/05/2019 17.12, Joakim Tjernlund wrote:
> On Wed, 2019-05-01 at 09:29 +0000, Rasmus Villemoes wrote:
>> CAUTION: This email originated from outside of the organization. Do not click links or open attachments unless you recognize the sender and know the content is safe.
>>
>>
>> Reading table 4-30, and its footnotes, of the QUICC Engine Block
>> Reference Manual shows that the set of snum _values_ is not
>> necessarily just a function of the _number_ of snums, as given in the
>> fsl,qe-num-snums property.
>>
>> As an alternative, to make it easier to add support for other variants
>> of the QUICC engine IP, this introduces a new binding fsl,qe-snums,
>> which automatically encodes both the number of snums and the actual
>> values to use.
>>
>> For example, for the MPC8309, one would specify the property as
>>
>>                fsl,qe-snums = /bits/ 8 <
>>                        0x88 0x89 0x98 0x99 0xa8 0xa9 0xb8 0xb9
>>                        0xc8 0xc9 0xd8 0xd9 0xe8 0xe9>;
> 
> I think you need add this example to the qe.txt doc itselft.

Sure, can do.

> BTW, what is /bits/ ?

That indicates that the numbers should be stored as an array of u8, and
not as by default an array of (big-endian) 32-bit numbers. See

https://git.kernel.org/pub/scm/utils/dtc/dtc.git/tree/Documentation/dts-format.txt#n46

This is already used in some bindings and existing .dts (e.g.
hwmon/aspeed-pwm-tacho.txt, but git grep shows many more).

Rasmus
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
