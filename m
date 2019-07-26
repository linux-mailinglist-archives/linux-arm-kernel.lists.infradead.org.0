Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63BD175E44
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 07:17:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kDZi8tjmsFooblXPwVJQfXTg99lV+OjVAARshFWFvsE=; b=aDqi6a1OJzuMe5
	nD5c5zwS5idVftfN0qZ4Y/7VnXgeHJfedLyNqod3uIomEkFOogycSizbRYYcO93Kp7R6L1SmpomvM
	CXN1PHklSGHootwl7ICuA+ei+CvyGYNU9S0toFGasYpQAoAE0dp/9oJdrQUABMUUweKUfVfR2wnap
	u51OCwU80uwgYFjPEhFu5Gv/qrFx3EnVOOWcDdXb4Vvdebnwg2wmZbpuc2kaXvD29nRmr2MHNixkz
	/UPCXgo9cjUgu44kPi6InbeMhELYr+tXrgYQMUuawTuEN2137GNd3culYY/BXQy3C4YGVejN5kbkK
	fcaCTvMp7uam+AwgZl8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqsbv-0004D6-UK; Fri, 26 Jul 2019 05:17:44 +0000
Received: from mail-eopbgr780120.outbound.protection.outlook.com
 ([40.107.78.120] helo=NAM03-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqsa5-0003UD-Jn
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 05:15:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GHewVNZn9HfegOUbVZNvDK992UirKj2hXh7DPtJl/38X+6DhbcewpuuVAxXI2QbT7VWjNZYFpzqL3p4fvuk9m4X7DRGUFxtWkMp2akTvVqJs5Hg5Lqd27RCo1jtTzZMw3tff+V84VWuW0cYARum/eoxsRSDW4o313h6FrjbR4UebAqvCkoTn4kMEfGPPkndwWInckBUpbK7msYYQ6M4SVdqZc/udZ7vxS1BKYABOnfMvHg3VwBg5bLvAaYGTP5W+L6k6fduAV6qXvUZRUojAIL3W+nlBfgpxYYKY6LCzXxJubyR5gqtPGmc4fLEDvXy8XthCN/R3KNUP2F2DMiyBYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PqYb1eilxBxz1+VTQHarAhVZ7wTtZpRzYclL71+D3PQ=;
 b=TfW0occgRjYPhJ4jDmFnnQVqiv02rTHCk2fA9Z+eXmVJwnUTM3E0vLPVpW7Z/USs0qadyxKZYCbyTxoKqOvfz5tSYRljMHcSdHDYESctjf6mvnBoKYhio0ImJ1nm5VmlrJFms2gJx3DK3UxcT6fR1ugkKXsVsHvJAGqeeZVXHIlkcI7CKyHhCQE1qVSo9FWe/L/CG1Af4V7DSQB+qYcb9AH3fXhYkIu7N9yXeoVmaMfRYV+SNQMHOnPONylbIzBma1pihp+A0hfp2VS0BolKzX5TRKNw1hqh6Lc0/9Ulb1600sQHh+QjAgttP+Sf8z6ZnFlWfWGTnl/fPpMowqSXTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wavecomp.com;dmarc=pass action=none
 header.from=mips.com;dkim=pass header.d=mips.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wavecomp.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PqYb1eilxBxz1+VTQHarAhVZ7wTtZpRzYclL71+D3PQ=;
 b=pDIA7C9DlBeGGIx6XNYY9inJRaqBfLArXKA5LI820AMbs227ncVZ1/YXah4Vf8jd77e/V20i97E1wp409rIKA9uRIw47ab5NTDAyhdYhE7sAbmy0Zx52166cPDq1yCWTaRrfHFsqWbym8RdVe5vMppead+F+k8MCkWS+TJ7i930=
Received: from MWHPR2201MB1277.namprd22.prod.outlook.com (10.172.60.12) by
 MWHPR2201MB1088.namprd22.prod.outlook.com (10.174.169.150) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.17; Fri, 26 Jul 2019 05:15:45 +0000
Received: from MWHPR2201MB1277.namprd22.prod.outlook.com
 ([fe80::49d3:37f8:217:c83]) by MWHPR2201MB1277.namprd22.prod.outlook.com
 ([fe80::49d3:37f8:217:c83%6]) with mapi id 15.20.2094.017; Fri, 26 Jul 2019
 05:15:45 +0000
From: Paul Burton <paul.burton@mips.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v7 21/25] mips: Add clock_gettime64 entry point
Thread-Topic: [PATCH v7 21/25] mips: Add clock_gettime64 entry point
Thread-Index: AQHVKBdFoSoKorGsNUW2yyK5G2RkUabckisA
Date: Fri, 26 Jul 2019 05:15:45 +0000
Message-ID: <MWHPR2201MB1277BCA61ED6CC494A4DB937C1C00@MWHPR2201MB1277.namprd22.prod.outlook.com>
References: <20190621095252.32307-22-vincenzo.frascino@arm.com>
In-Reply-To: <20190621095252.32307-22-vincenzo.frascino@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR07CA0090.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::31) To MWHPR2201MB1277.namprd22.prod.outlook.com
 (2603:10b6:301:18::12)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pburton@wavecomp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [2601:646:8a00:9810:5cfa:8da3:1021:be72]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 98dcd61c-d0ad-4ca5-2572-08d71188500a
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR2201MB1088; 
x-ms-traffictypediagnostic: MWHPR2201MB1088:
x-microsoft-antispam-prvs: <MWHPR2201MB1088F217D83CE14E827726F0C1C00@MWHPR2201MB1088.namprd22.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 01106E96F6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(39850400004)(346002)(366004)(136003)(376002)(199004)(189003)(476003)(8676002)(71200400001)(4326008)(102836004)(74316002)(7416002)(76176011)(71190400001)(316002)(305945005)(81156014)(7736002)(446003)(486006)(99286004)(4744005)(81166006)(52116002)(6506007)(6116002)(66556008)(8936002)(54906003)(11346002)(186003)(42882007)(46003)(386003)(14444005)(33656002)(44832011)(68736007)(7696005)(256004)(2906002)(14454004)(6916009)(6436002)(478600001)(25786009)(66946007)(66446008)(5660300002)(64756008)(52536014)(6246003)(55016002)(66476007)(229853002)(53936002)(9686003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR2201MB1088;
 H:MWHPR2201MB1277.namprd22.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: wavecomp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: RrYbXgxF2ISFrg8kzC455tvI22ac1vysFKyhN4R7JcpyEltEegZVEqDq8ijL9VUW3TRKZ0/FKYvz+WS7ODyt/nsbrXp0gF48Oz85Fs9BAL/qMsVImpZ/KEM2E351RrqQJw8Ne9PdVzHx0nZPoACC77/uHFoWXNNUjZF8cXbYj+7V+m1AW0vKH64EMbHkiIIZVRT1a9nyYKYXX4mo3+85+xtsPZ74HrzUOSqzE5Jy/2dIdGesoepLRti/BiJW36J10p/T/bssepWcZvzLpMtE3tmA/wNcEuqRAcbDwX7sGR4uqWCdL7OP4P8XMyfRH3uS6VU4c84Ri1QlrezeMdj8dd/M3qx6SGeCBeM7i/OeaHiVtfoPEh3hI110yv+VZuFRToj08SLKvjKO5ZaRl3skwaJE6JTHgPLP6GG8vaH579Y=
MIME-Version: 1.0
X-OriginatorOrg: mips.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 98dcd61c-d0ad-4ca5-2572-08d71188500a
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jul 2019 05:15:45.5133 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 463607d3-1db3-40a0-8a29-970c56230104
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pburton@wavecomp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR2201MB1088
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_221549_769330_CEDF8B5F 
X-CRM114-Status: UNSURE (   9.95  )
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
> With the release of Linux 5.1 has been added a new syscall,
> clock_gettime64, that provided a 64 bit time value for a specified
> clock_ID to make the kernel Y2038 safe on 32 bit architectures.
> 
> Update the mips32 specific vDSO library accordingly with what it has
> been done for the kernel syscall exposing the clock_gettime64 entry
> point.
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
