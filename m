Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F14A78207
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 00:20:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y/GyDydQpox5tO2Z382++ns/IH8Dq8nyhDSBl2PQ/xo=; b=ps+cTf3GahdaLt
	PJoayeK2ZwDZ0ipzIXSAvgNfhBlGtWR6WzLyKgllg43P/d6o63WZQ1TC99yRbV3OsZgnnVu0ux/Ma
	KKg4jdysDO371FUeIRHbKTYWmHBFeXq0G1cMN7q7+mB2xJYH6CNUl+LQSLZKtvD2+V5vNfZte7dlg
	iJ6lUOfSndRRVpPy0aQ283s+aPSCw/aFWSORly+xK8qK32mAnveKDwYwKST0HgwI/YS+wHiLD8mGy
	AyysrmxmDT2yH2HmMAqsae4gEa9VaTiEGYUrB11i6hqvztiYh73fqrPQ2vJFuomDRHTz7sbYFSBs9
	r6RezZ/MY31Rl5zSaOoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrrWv-0007Pv-AF; Sun, 28 Jul 2019 22:20:37 +0000
Received: from mail-eopbgr710130.outbound.protection.outlook.com
 ([40.107.71.130] helo=NAM05-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrrWh-0007PB-Vf
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Jul 2019 22:20:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FFlbTVuwOW+4kDWU1BEnqqxRQOMEtusbDrst7ESMHXkE1b0tkdqrWeOqOdMisOsjvuNjdgH0rP45sVM0sLblZcMFE4dUpmeY2AouYADjRgXRXQsKCe5xT0tYzhPQ/xVl/YgPO8rT7aiYgb14CwaYz+amEX1lSiTWHeXWoBA2/B0QlAiEEPn1CoXFZhpyjCeJhwkQ4BFtrrdvEsBMVp/WFbhEtAnAEKV7Wk6VN9q6zl/fMNXoE528N/L3b/VcUicp7qvJLYQf10Na3o4DZWFHZOhRA5wKScMCMM5tX1tm2zqnJqBo4q1gyny3mKPR2+yhpTQ/IB6LPvK8TRv09adDiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d3opuFXbaKwLLJOMaMaC7S7a1B0Uyu3kQutKi36Thdc=;
 b=Txy6I+m2uNxIeTZqCebyzQDAfWzizx/TwnOZ/l2AecMYRt6axWmXQfCBp5Vg27bpJ+Q0ZuCiqyFy9niyqCdhPCy462HeDXEyHSvPnR3DaQaTCg4PXucfdiO/l8Z9wzrkOEFQzDmRtcrHqqKkP7ejkyiY5VcIsR6Wx47c6ORsz1dYoDkxnxi9MX6G90NZrUrv9QrzGjScFOTTzvRXe7VUnbeMBVtRWQvzdH3GSzvgAwAJZlKblQi4Lq+tStL/mu0ruy1ptXzDV3N5g0ZkgqJYbKcrwYsvhjcSjV+zQ7lNexoXPN2fa47lE1Dh6zok1EjK+lNLCerD2h2pcyaWgqOcCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wavecomp.com;dmarc=pass action=none
 header.from=mips.com;dkim=pass header.d=mips.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wavecomp.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d3opuFXbaKwLLJOMaMaC7S7a1B0Uyu3kQutKi36Thdc=;
 b=mTYVHu06tdCBzuP8ZafQTXXXw0gJnCUBQohen0e/imOnFtKdn0ek63OQP9OO90/GUgNrgeC9brM1oq6DE3yThvdqrFFOqiejSsjqtIkAWaOZ2+klm2bJdllEcQ9g1YvV/HSfIcK5dzsXj3AfN8C7V/nyNOUScf3xinqe+eEXU7c=
Received: from MWHPR2201MB1277.namprd22.prod.outlook.com (10.172.60.12) by
 MWHPR2201MB1070.namprd22.prod.outlook.com (10.174.169.144) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.14; Sun, 28 Jul 2019 22:20:18 +0000
Received: from MWHPR2201MB1277.namprd22.prod.outlook.com
 ([fe80::105a:1595:b6ef:cbdf]) by MWHPR2201MB1277.namprd22.prod.outlook.com
 ([fe80::105a:1595:b6ef:cbdf%4]) with mapi id 15.20.2115.005; Sun, 28 Jul 2019
 22:20:18 +0000
From: Paul Burton <paul.burton@mips.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH 0/2] mips: vdso: Fix Makefile
Thread-Topic: [PATCH 0/2] mips: vdso: Fix Makefile
Thread-Index: AQHVRZKjNDOd89w6f0OrGlErnSrK7Q==
Date: Sun, 28 Jul 2019 22:20:18 +0000
Message-ID: <MWHPR2201MB1277BCF195D341D7AB3FA5EBC1C20@MWHPR2201MB1277.namprd22.prod.outlook.com>
References: <20190726162944.12149-1-vincenzo.frascino@arm.com>
In-Reply-To: <20190726162944.12149-1-vincenzo.frascino@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR06CA0030.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::43) To MWHPR2201MB1277.namprd22.prod.outlook.com
 (2603:10b6:301:18::12)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pburton@wavecomp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [73.93.4.225]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7d77f69b-e456-428a-f59a-08d713a9c578
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR2201MB1070; 
x-ms-traffictypediagnostic: MWHPR2201MB1070:
x-microsoft-antispam-prvs: <MWHPR2201MB10706CC264D422693AF3C918C1C20@MWHPR2201MB1070.namprd22.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 01128BA907
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(1496009)(39830400003)(376002)(396003)(346002)(136003)(366004)(189003)(199004)(33656002)(229853002)(386003)(76176011)(102836004)(6246003)(6506007)(71200400001)(71190400001)(7696005)(7416002)(14454004)(99286004)(54906003)(52116002)(6436002)(53936002)(6916009)(478600001)(256004)(74316002)(4326008)(2906002)(7736002)(66556008)(64756008)(42882007)(11346002)(476003)(55016002)(52536014)(26005)(446003)(305945005)(66476007)(44832011)(9686003)(8936002)(316002)(66066001)(4744005)(486006)(68736007)(6116002)(81166006)(3846002)(5660300002)(66446008)(66946007)(186003)(8676002)(25786009)(81156014);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR2201MB1070;
 H:MWHPR2201MB1277.namprd22.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: wavecomp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: PFfJqBqSbNu0EDcWM+C3Q69PZxOLKFq0MBMpYg0wHV+ytGOFB5JwSkPmvqptqTQUxliwi2WcrbCI4HlRHS40F/7deyN/k4zzI1PagUPczwoCNo2b+QQte/7rZCDMdVZU62RZiaXw8ul1LwuMgu3YCndH7TFDikrqB25kaGP/quwllYxIYWqVGD2zslAwKrY+CmLbHZNIs8TiV2jAU1Fq5prRCwU99rE6ZNm2McR6pWkFDQ4y7L46yZBWU14HvA143FNtg1/6j+1M/K2Zz3wjd0yWpqZ7bhBYgxdw3lUJxI1XT/ymrbSRBlESQ2PxUmCpPJ3ymXTdnVRiQpG4takckcPSpCn6bLTAcQNl5LPEMoE/oaTOOH/h2aEUH/by1GtQoTkZp7SiY9BYlX7YnrBbEL1ci43u82KAvy1fDtDHNI0=
MIME-Version: 1.0
X-OriginatorOrg: mips.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d77f69b-e456-428a-f59a-08d713a9c578
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jul 2019 22:20:18.4568 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 463607d3-1db3-40a0-8a29-970c56230104
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pburton@wavecomp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR2201MB1070
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_152024_059887_5031C716 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.71.130 listed in list.dnswl.org]
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
Cc: Paul Burton <pburton@wavecomp.com>,
 "linux@rasmusvillemoes.dk" <linux@rasmusvillemoes.dk>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "shuah@kernel.org" <shuah@kernel.org>,
 "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>,
 "arnd@arndb.de" <arnd@arndb.de>, "0x7f454c46@gmail.com" <0x7f454c46@gmail.com>,
 "luto@kernel.org" <luto@kernel.org>, "tglx@linutronix.de" <tglx@linutronix.de>,
 "pcc@google.com" <pcc@google.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "huw@codeweavers.com" <huw@codeweavers.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "ralf@linux-mips.org" <ralf@linux-mips.org>,
 "salyzyn@android.com" <salyzyn@android.com>,
 "sthotton@marvell.com" <sthotton@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

Vincenzo Frascino wrote:
> Consequently to the unified vDSO transition of the MIPS architecture few
> compilation issues appeared due to:
> - A wrong source path for the configuration environment settings for
> the O32 and N32 vDSO library generation.
> - A flip/flop vDSO building bug that would cause to rebuild the vDSO
> library every second time.
> 
> This patch series addresses both the issues providing the respective
> fixes.
> 
> This patchset is rebased on top of mips-next.
> 
> Cc: Paul Burton <paul.burton@mips.com>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> 
> Vincenzo Frascino (2):
> mips: vdso: Fix source path
> mips: vdso: Fix flip/flop vdso building bug
> 
> arch/mips/vdso/Makefile | 18 +++++++++---------
> 1 file changed, 9 insertions(+), 9 deletions(-)

Series applied to mips-next.

Thanks,
    Paul

[ This message was auto-generated; if you believe anything is incorrect
  then please email paul.burton@mips.com to report it. ]

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
