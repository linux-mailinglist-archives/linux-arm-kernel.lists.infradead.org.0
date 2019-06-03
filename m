Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AB4833951
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 21:53:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PZCLK+Rj6qi5OBw4kN5+taN4hG6zK3oKBNPTR5bs/FA=; b=pcsVYcnddjJEI5
	0c4wvQIH4d8sozs8vI3YMPuxwTDbsab4ztTK2n71wyiktzZ1RadGWH6z4HuYzoTAj0LzsXMW3rDC3
	b/l73Jde/MMqLZZ3UImBUjz1btIXnl6fPE32j+4pysNFW5jDro+kUqQZw3UkcIoqUTvzSCbwgjPSt
	j0HWJxMzsGZdDQnN/2r2RQbQGaXrFhbYJPbCrYkDdDYj4YoaaNULeHa/CovIPR2bjc9XrKZXuu4Ow
	ad0unt6eksg2jkJUdkzvrpz/SUtf207GJOnVMkRODx8bpUH/w1HYYagN3SmbtAkVlelojy4URLmFP
	6aew2L83NKNoDs4RfELg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXt1i-0003CF-8s; Mon, 03 Jun 2019 19:53:50 +0000
Received: from mail-eopbgr70138.outbound.protection.outlook.com
 ([40.107.7.138] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXt1b-0003Bk-Qk
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 19:53:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=prevas.se; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6BNzFMUgJjai20ENr4cV9FqDq6vBCbEYUtdITG1exhM=;
 b=j0XbqT8ZhLjOvPACzwlztp6EtSqgzozQH6OxOrHwp8V4G/TPiKTFFySs0nyf2Otd6ryfVpiwfmcZ5EoFzspS6MEj/vi1M17cu1ubNYky3vj6lhtEGfs5y3Ug91yFXY2qblgDNkf1ILL02dRsmaSpmgbTkNYqvTuIdEKmxemyNEo=
Received: from VI1PR10MB2639.EURPRD10.PROD.OUTLOOK.COM (20.178.126.80) by
 VI1PR10MB2510.EURPRD10.PROD.OUTLOOK.COM (20.177.59.83) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.22; Mon, 3 Jun 2019 19:53:36 +0000
Received: from VI1PR10MB2639.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::8844:426d:816b:f5d5]) by VI1PR10MB2639.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::8844:426d:816b:f5d5%6]) with mapi id 15.20.1943.018; Mon, 3 Jun 2019
 19:53:36 +0000
From: Rasmus Villemoes <Rasmus.Villemoes@prevas.se>
To: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Qiang Zhao
 <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>
Subject: Re: [PATCH v3 0/6] soc/fsl/qe: cleanups and new DT binding
Thread-Topic: [PATCH v3 0/6] soc/fsl/qe: cleanups and new DT binding
Thread-Index: AQHVCX0WBepWBUryR0K8DhsVu6ZcHqaKeRAA
Date: Mon, 3 Jun 2019 19:53:36 +0000
Message-ID: <e11c1e55-1e11-7ce3-3c0f-0b723ab260aa@prevas.se>
References: <20190501092841.9026-1-rasmus.villemoes@prevas.dk>
 <20190513111442.25724-1-rasmus.villemoes@prevas.dk>
In-Reply-To: <20190513111442.25724-1-rasmus.villemoes@prevas.dk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1PR05CA0309.eurprd05.prod.outlook.com
 (2603:10a6:7:93::40) To VI1PR10MB2639.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:803:e1::16)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Rasmus.Villemoes@prevas.se; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [5.186.118.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f27868fe-709b-411f-9666-08d6e85d2a68
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR10MB2510; 
x-ms-traffictypediagnostic: VI1PR10MB2510:
x-microsoft-antispam-prvs: <VI1PR10MB25108FE6C241FFDDF7475C668A140@VI1PR10MB2510.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0057EE387C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(396003)(346002)(376002)(136003)(39850400004)(199004)(189003)(44832011)(71446004)(53936002)(66066001)(25786009)(316002)(6246003)(14454004)(5660300002)(52116002)(486006)(4744005)(7416002)(110136005)(2616005)(446003)(6512007)(4326008)(2906002)(476003)(3846002)(6486002)(11346002)(54906003)(229853002)(6116002)(6436002)(73956011)(64756008)(8676002)(66476007)(102836004)(256004)(81166006)(305945005)(7736002)(76176011)(81156014)(86362001)(66556008)(31686004)(2501003)(72206003)(26005)(99286004)(71200400001)(8936002)(66446008)(478600001)(74482002)(71190400001)(31696002)(68736007)(186003)(386003)(6506007)(36756003)(66946007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR10MB2510;
 H:VI1PR10MB2639.EURPRD10.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: prevas.se does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: bHHqEOSKRRdFRJUk0NLOMa/EJxHT58PIMySffURmEJMakwrQPeGBgTuYHJSMFP73/2xz4zMYbQg0ji4nU5ab8Wk/Ry6F+Mxo8jhHscg4xsYrVzwB+O9VYwRcL3SC+jhi6cQ4S9fVRx0IddBgJmmOeUVtfO/HfPYvdcTwPHGqQzLT66wzCZxQBfiqUiD6/p9i9MVYLV5uoM0NG73Efiyoq0ZOHorQ707etMWcBrPe9T7nTVstNfLlT89023M4Djg/ElNEp9BPVra5uS0O8wGlKTlq9QSBEP0TFs8p0fpss5afR7rmY1jf/b3t6wcq1kA063ziCv2l/pjB4lsYgw19UJb+0DXE8kB/enr9YVoRnJl7BnCpz+rkI5500ClTk0DNBzyCxbFjfb64PsRsiaYydQwCTx4hP1JlJ0hfUm1Bee0=
Content-ID: <623556BC6EE58D43987924910752EF6D@EURPRD10.PROD.OUTLOOK.COM>
MIME-Version: 1.0
X-OriginatorOrg: prevas.se
X-MS-Exchange-CrossTenant-Network-Message-Id: f27868fe-709b-411f-9666-08d6e85d2a68
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2019 19:53:36.3462 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d350cf71-778d-4780-88f5-071a4cb1ed61
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Rasmus.Villemoes@prevas.dk
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR10MB2510
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_125343_869042_301C63E8 
X-CRM114-Status: GOOD (  13.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.138 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Joakim Tjernlund <Joakim.Tjernlund@infinera.com>,
 Rob Herring <robh+dt@kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13/05/2019 13.14, Rasmus Villemoes wrote:
> This small series consists of some small cleanups and simplifications
> of the QUICC engine driver, and introduces a new DT binding that makes
> it much easier to support other variants of the QUICC engine IP block
> that appears in the wild: There's no reason to expect in general that
> the number of valid SNUMs uniquely determines the set of such, so it's
> better to simply let the device tree specify the values (and,
> implicitly via the array length, also the count).
> 
> Which tree should this go through?

Ping? These patches should be ready to go in, but I don't know who is
supposed to pick them up.

Thanks,
Rasmus
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
