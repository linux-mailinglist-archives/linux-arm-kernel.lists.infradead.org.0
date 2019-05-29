Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F2A92D906
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 11:28:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QmKOsfVpWK0GmyLGmKlhOahe9u9f8MIO/gTqwsREPWk=; b=hZcEV9xIgjwb57
	2KGIqNIGquPxZ44dqstQvyfhz3CfwA2c+9hfEOQ3mzSuOP1PdADoRQg6MQ86aBtKiz5EE56sDxyBZ
	Y/AFjGLPFC6AmQKaoRznWzt91PCAB7lZhql9kBYe5oe3ulDn6uqLn3WSrfQUo7Ta4MotLFzp7OiUV
	Pbe6gyjh9pxRlqZN7ua3r5Oa5RmSkDAexRhVaZLNhypjgT+3bQGFGiH2YcM1dvvPZoylr3IBgkIP3
	G/BxoQM8OJmHIDXz3iJ2xCnYjB0ybYePEvRdLPrwv3lRIchgftI5uiFkzXKYPXykxQUCGI4xsFJT4
	u8QzD2Nr7y5WsbVIoJXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVuss-0005jp-S6; Wed, 29 May 2019 09:28:34 +0000
Received: from mail-eopbgr00088.outbound.protection.outlook.com ([40.107.0.88]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVusl-0005jW-8X
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 09:28:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EyXesuzcM1IcB5nETmfrkAUnLuUWIVqSPYbsS4RdxzM=;
 b=EVUaR8q8M33vsPQAUmVLB5UBWB2CYz4bkAv7m6xWnSXvjPNe1qqjENJ36rQrGhy8Gi1MU57i5UYy3L/96IJkWM9eIJhMGipivdAxdzV7QF5bckAymUs91CKjjQMgJb01xrSNuMNc0HkjA0urpdoO3ELqtVc72wXiZ6zFzcyN+xk=
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com (20.179.12.12) by
 DB8PR08MB3994.eurprd08.prod.outlook.com (20.179.9.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.18; Wed, 29 May 2019 09:28:22 +0000
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::b4db:b3ed:75ff:167]) by DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::b4db:b3ed:75ff:167%3]) with mapi id 15.20.1922.021; Wed, 29 May 2019
 09:28:22 +0000
From: Steve Capper <Steve.Capper@arm.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH v2 04/12] arm64: mm: Replace fixed map BUILD_BUG_ON's with
 BUG_ON's
Thread-Topic: [PATCH v2 04/12] arm64: mm: Replace fixed map BUILD_BUG_ON's
 with BUG_ON's
Thread-Index: AQHVFXAGAoQa/fuZsEm+p8rWVwgcdaaAxNYAgAABCACAARDtAA==
Date: Wed, 29 May 2019 09:28:22 +0000
Message-ID: <20190529092812.GB7196@capper-debian.cambridge.arm.com>
References: <20190528161026.13193-1-steve.capper@arm.com>
 <20190528161026.13193-5-steve.capper@arm.com>
 <CAKv+Gu-4OOy14uKQHxvwiZ-opaMf4h5UJ2V7HhaEKLP=L3aeqQ@mail.gmail.com>
 <CAKv+Gu8kg8H-HT35f46q6MPhimr_JasZdr-3kPVFpz3s6VeWdw@mail.gmail.com>
In-Reply-To: <CAKv+Gu8kg8H-HT35f46q6MPhimr_JasZdr-3kPVFpz3s6VeWdw@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.10.1 (2018-07-13)
x-originating-ip: [217.140.106.32]
x-clientproxiedby: DM5PR18CA0066.namprd18.prod.outlook.com
 (2603:10b6:3:22::28) To DB8PR08MB4105.eurprd08.prod.outlook.com
 (2603:10a6:10:b0::12)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1ae9385c-606a-4152-4bd9-08d6e417fe24
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DB8PR08MB3994; 
x-ms-traffictypediagnostic: DB8PR08MB3994:
nodisclaimer: True
x-microsoft-antispam-prvs: <DB8PR08MB39941683AB78C32F572E7787811F0@DB8PR08MB3994.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0052308DC6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(396003)(376002)(346002)(39860400002)(136003)(54094003)(189003)(199004)(14444005)(33656002)(26005)(25786009)(99286004)(186003)(316002)(68736007)(476003)(11346002)(446003)(76176011)(52116002)(386003)(6506007)(102836004)(66556008)(66446008)(73956011)(486006)(66476007)(64756008)(5660300002)(1076003)(66946007)(229853002)(6486002)(14454004)(7736002)(256004)(6436002)(53936002)(81156014)(3846002)(6116002)(8676002)(81166006)(8936002)(2906002)(6246003)(478600001)(54906003)(4326008)(58126008)(72206003)(6512007)(71200400001)(71190400001)(66066001)(44832011)(86362001)(305945005)(6916009);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR08MB3994;
 H:DB8PR08MB4105.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: yKYjkgk/v5efUKyZx477o/SKTUyWBqT0qY79uqPL7aT2x+kJF46MCGmgSFosCkmk7euKvYm2B21VpL4W8bMk9XbRh63O3GLri30xUNlRYAMorgqng29z+hKSciuIUz00pkw1YQ/ryXq5JCEMYk54CQrG4f53jtp3Lx6gZE9PLHQxqM82k9aHHAVwGSoDdLAh5I8J+S23rwKvoNc4DabbnFlHeSATOivt5zJRuFuFqUw7Tkmcus4ZxntOrySDb+nejcyokEG+60WYoSf5Pngaw12G71mClUzyXofTpHWHap4YB+5DHW0SJoxC8G6b5ruYOlRMkTAZ5fiYkioDSCybuzgnZ4s5MFM79EfBd6qJwfQw76Uy6UHw5Uyk9GA7aly0ij4eT/dRPfKKE6DowthMhBS0JS2brEdMo96X4qmH0lw=
Content-ID: <0205961B61D7F94DB30C97C55861436C@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ae9385c-606a-4152-4bd9-08d6e417fe24
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2019 09:28:22.2524 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Steve.Capper@arm.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB3994
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_022827_301695_CC00D0F8 
X-CRM114-Status: GOOD (  17.14  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.88 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "crecklin@redhat.com" <crecklin@redhat.com>,
 Marc Zyngier <Marc.Zyngier@arm.com>, Catalin Marinas <Catalin.Marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, Will Deacon <Will.Deacon@arm.com>,
 nd <nd@arm.com>, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 07:11:22PM +0200, Ard Biesheuvel wrote:
> On Tue, 28 May 2019 at 19:07, Ard Biesheuvel <ard.biesheuvel@linaro.org> wrote:
> >
> > On Tue, 28 May 2019 at 18:10, Steve Capper <steve.capper@arm.com> wrote:
> > >
> > > In order to prepare for a variable VA_BITS we need to account for a
> > > variable size VMEMMAP which in turn means the position of the fixed map
> > > is variable at compile time.
> > >
> > > Thus, we need to replace the BUILD_BUG_ON's that check the fixed map
> > > position with BUG_ON's.
> > >
> > > Signed-off-by: Steve Capper <steve.capper@arm.com>
> >
> > Do we still need this patch now that VMEMMAP_SIZE is a compile time
> > constant again? Or am I missing something?
> >
> 
> Never mind. You are moving the start of the linear region and the
> start of the vmemmap region.
> 
> I wonder if this is really necessry, though. On a 48-bit VA only
> system, the linear region could still start at 0xfff0_.... as long as
> we don't put any physical memory there (and we already move around our
> physical memory inside the linear region when KASLR is enabled)
> 
>

Thanks Ard,
This patch is actually superfluous, it was needed in earlier versions of
the series; but VMEMMAP is fixed at compile time.

I have removed this patch from the series. I will also see if I can
simplify the de-constifying patches and bitmask replacement logic.

Cheers,
-- 
Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
