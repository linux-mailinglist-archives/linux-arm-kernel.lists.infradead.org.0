Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88B6275E43
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 07:17:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=04mCx/YTetVtM6kQH3FmZ3dEbkxL7Aog5QeWuNI8uDM=; b=fj4SX5thnBe+yA
	BDQGqok0yLWXJoZVP2fO0NZ5nq/d/4yyi1PpByLB+z8+I9OojDxBsE9h8dSki60k/wTpyDCE3OVbj
	cRzZQqYxkWWXx3EuOtWDXk1gTe2EffZa+nN4mnyVwpMp+3jP1KIedL4ivBudf3hopKotQijC/Few9
	yTJJfrRRjkrSXhyuH0XGNA6dIWWq3LyX7K1LSOS0xhwkfGDxF77YJoDlLMlTLIXlDWjXavDIK6Xsp
	DUSUXc3yaTpjb/VHMyBeJku5+QjTroRRUJDynrOR/PVU3ABB02iArbymot+dWIF16Db9XZJpnsEdK
	unv/XWxQePexyWxeeOnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqsbb-0003ys-3t; Fri, 26 Jul 2019 05:17:23 +0000
Received: from mail-eopbgr780120.outbound.protection.outlook.com
 ([40.107.78.120] helo=NAM03-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqsa2-0003UD-Ty
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 05:15:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LUb0KFMLdpKrxcCV9U7lZcPmUv7j4r9VZp10zIj/4emKuWcHgnT6SlX/8SPMNJttRNn6M5y+PIlCbqcIbM8tFYBpIpJKSS6XZD7MF0PpAss/t15UD/92qoN91n7W37/79/OaO8tNyk8v/ONXa/2kbU3j6TAKLzqRjwltdWpDqSQUu4wD6RRkxvpAeQONnYJMY3MC6698f51yZ4ypjFcDfCd/OjF79jv8WpwyNc4TawjFlQeWdpA6/octX2pCnXDBTLC+EP1SOmSIE1VZGAuyLpovOHC9LI7HlCM5/fKrwR4zWZrWtXBgoVCPvfXdwORNjUbF2Nvc5Adgq5jfv62DmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RJZ1ew/J+3opBryeqmtGqqnkd2wrHNS6eV7Yc4zoHCo=;
 b=SRexq3bdKxE2TZOZ5QTu44KBLYpZl1WiDsQPtWNWRY1re8yPGjeorm6sHU9l3t4+1yqBkKn+CpOh74HoV6NrLI4lnZokoFdo5vi5hgnUKGfHXVpjpgYmROiwbvyleyWZTyS+WCr5DixDvtXmY/EW2KcGxjD/TajSiE2Ekmk7eHfdcMCRNWxzJTzI8OITus1PIsXHaryqzAtv1mQKFsFD7bjP8vfn/bW4WOux+qwtzbuDl+J8p82k3ppmWtJOji7CBNjjxn7zWosSBcfjtjUXEfJxVPZXWi74T6CeGMciB44TmEfVZrTx0g0RtXa0VwagNhpqWFASpQJmrcI00wnw6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wavecomp.com;dmarc=pass action=none
 header.from=mips.com;dkim=pass header.d=mips.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wavecomp.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RJZ1ew/J+3opBryeqmtGqqnkd2wrHNS6eV7Yc4zoHCo=;
 b=S/B2HDRZiuyJKGZIdD00DDBmc9UIL1sLRwuP21pN9RH7cwkJPbbcUJuE+rXm3anpZS3Z0oaejPoXrljOOKFro20MVZzOBMTT3AoSlXk+jS49vmG54Wb6fzOMeNfBq3c/VnBohryc4yCZjK4x+24ZqxrhHDQj83vwezZttam/Dwc=
Received: from MWHPR2201MB1277.namprd22.prod.outlook.com (10.172.60.12) by
 MWHPR2201MB1088.namprd22.prod.outlook.com (10.174.169.150) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.17; Fri, 26 Jul 2019 05:15:42 +0000
Received: from MWHPR2201MB1277.namprd22.prod.outlook.com
 ([fe80::49d3:37f8:217:c83]) by MWHPR2201MB1277.namprd22.prod.outlook.com
 ([fe80::49d3:37f8:217:c83%6]) with mapi id 15.20.2094.017; Fri, 26 Jul 2019
 05:15:42 +0000
From: Paul Burton <paul.burton@mips.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v7 20/25] mips: Add clock_getres entry point
Thread-Topic: [PATCH v7 20/25] mips: Add clock_getres entry point
Thread-Index: AQHVKBdDlr+OWaoM6kekdIMA9IlDGabckiWA
Date: Fri, 26 Jul 2019 05:15:41 +0000
Message-ID: <MWHPR2201MB1277885B5C1F41C1563B4B5AC1C00@MWHPR2201MB1277.namprd22.prod.outlook.com>
References: <20190621095252.32307-21-vincenzo.frascino@arm.com>
In-Reply-To: <20190621095252.32307-21-vincenzo.frascino@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR08CA0058.namprd08.prod.outlook.com
 (2603:10b6:a03:117::35) To MWHPR2201MB1277.namprd22.prod.outlook.com
 (2603:10b6:301:18::12)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pburton@wavecomp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [2601:646:8a00:9810:5cfa:8da3:1021:be72]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f534b21c-ffe6-477a-f475-08d711884d6c
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR2201MB1088; 
x-ms-traffictypediagnostic: MWHPR2201MB1088:
x-microsoft-antispam-prvs: <MWHPR2201MB1088DB064B512A512C83D6B9C1C00@MWHPR2201MB1088.namprd22.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3173;
x-forefront-prvs: 01106E96F6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(39850400004)(346002)(366004)(136003)(376002)(199004)(189003)(476003)(8676002)(71200400001)(4326008)(102836004)(74316002)(7416002)(76176011)(71190400001)(316002)(305945005)(81156014)(7736002)(446003)(486006)(99286004)(4744005)(81166006)(52116002)(6506007)(6116002)(66556008)(8936002)(54906003)(11346002)(186003)(42882007)(46003)(386003)(33656002)(44832011)(68736007)(7696005)(256004)(2906002)(14454004)(6916009)(6436002)(478600001)(25786009)(66946007)(66446008)(5660300002)(64756008)(52536014)(6246003)(55016002)(66476007)(229853002)(53936002)(9686003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR2201MB1088;
 H:MWHPR2201MB1277.namprd22.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: wavecomp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ujNqwVFCV4MUd0tyuYbZll05fVMlQg4n8pTgEU8F/LHjbizXIwaYsP+gBG5W2Cu9dXj7OVreHh13DZpNV+BL+27qYvyXw+aTML79BlCQBS9Cew/crKlbwMZtGHCcr5E4IMpWk6oXnnzbqYNFBCX1AIAzSSWVTI8+orMe4wDgRt/U8Os+Kg6RTWmBFcOAOK7B+gr9meWb1lurWZsYc/viTAW3zf3RXFIa8QYnp2AHEf44jbvmKY9lQiFExh5WB2xl74mQs2d5lqoqkY2FM0AMopMcOUG+jBr2AUepTdUxzq+XLd60dzyDs4VGsNjcYzcdMq8pemAn88PgCjyaPY7uuwQTVtY064mmmTXvQGVxmE1qYS4CUt1tsti0wivs3KGCKelasnWIDj0r4V5KIlbdXgt65HTaocUqNAx8KcuMnGo=
MIME-Version: 1.0
X-OriginatorOrg: mips.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f534b21c-ffe6-477a-f475-08d711884d6c
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jul 2019 05:15:41.0857 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 463607d3-1db3-40a0-8a29-970c56230104
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pburton@wavecomp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR2201MB1088
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_221547_059073_82D236C9 
X-CRM114-Status: UNSURE (   8.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.78.120 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 Paul Burton <pburton@wavecomp.com>, Shuah Khan <shuah@kernel.org>,
 Shijith Thotton <sthotton@marvell.com>, Arnd Bergmann <arnd@arndb.de>,
 Huw Davies <huw@codeweavers.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>,
 "linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Andre Przywara <andre.przywara@arm.com>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Russell King <linux@armlinux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 Mark Salyzyn <salyzyn@android.com>, Peter Collingbourne <pcc@google.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

Vincenzo Frascino wrote:
> The generic vDSO library provides an implementation of clock_getres()
> that can be leveraged by each architecture.
> 
> Add clock_getres() entry point on mips.
> 
> Cc: Ralf Baechle <ralf@linux-mips.org>
> Cc: Paul Burton <paul.burton@mips.com>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>

Applied to mips-next.

Thanks,
    Paul

[ This message was auto-generated; if you believe anything is incorrect
  then please email paul.burton@mips.com to report it. ]

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
