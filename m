Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9C5975E42
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 07:17:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uUMA/uJQA+9lLNVwgB2khd2cnZB5m6+vN6WiGSwUZo8=; b=AsxSBe/t49Fu3b
	qcQ/60PVkpUgWc+DCAq2kw5GpKhDmq5Hg9I7qPRu1ln4esJ5fhhr0PnYEf/GVbFtgUEji4V7q/i9e
	gCfSGPGpBjGGOfS8mDs/MtSScF6foDjTpF+KIXTlmWSmQyyc4JvvKv97sn3O75c0k/srsYqMofAo9
	YaS+0Hrq722QaI6qwrSEc/lIaoiohKWGiqootSy5wYylZcx4ulOd01z7LYO9/ZuDqrxfno7kH/MXe
	v9CjmPbyZ5YreWUpVjmm9nVycTRoVPOfydx9z3LI2yNqp+H+gaYBprnlYUz1IMHwBrQTW1cjNVEvg
	iJ36oya4hjRUaCys1IvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqsbG-0003nW-NV; Fri, 26 Jul 2019 05:17:02 +0000
Received: from mail-eopbgr690114.outbound.protection.outlook.com
 ([40.107.69.114] helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqsa2-0003Ta-6e
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 05:15:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RLu9y41WyrtHZX291E/lHBP56PPHQJAAq43ZJPANhZar9f1ysdVJcdL/gAgCcp4BSsOXjCJpgxOjblmz0YZqzu9ckfMidGXOeXfJYYTq1Y6x9xsKMMJFv2S0DcQ9x+4D+bo5Y6DUzJhMToEZ2zDIk3DYWYCq3/nZrONmUzjrE7wAdBSkyoG26BbNgWmRP9ST6l3uEAPKX3E3Vxa0ZDh5dq+2qunbBP8dwdVxovrIGBq+9/aII9q8Ut9bJG/NGNAL8jGYKBWzF6fGt2+1gp6htoVPp8mpp7BojlKzfw4d2gJqP5Bjz+xnA8Jzl4GlwdUfHM6kzvRzCrVIgYCoDxkUWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AbfHS0Lpl+FEBr59jEJrBwRm/eISZeE50hRkaeS1KLw=;
 b=K+M9O+/E2Gu5Z4aVUsJuo07JQnHZx/tZkVQExQ9f85yjx+Pedgafl5JwZ5I30xZeT0bQextFWxAn3vRQ6UUNhnc2rxiC+cYcoGKcZRWj9LGyA59BWr9c339P5xLyecPi/8LdvaRWgjoUlhXBc7nj3d8TYDTj/xU5+ezPx93G8uIKU2e24eCFoixJ102ySYwDtBP0QyY5lcHtGyNgo4zvV3+krxNw1stvUp41/KFu1/y9ONSV0/z/SGANjDaVO3xIBnGYLtT62fjxD1DyRVob7kMWS9RuzNa2cOMut9k8loLnwmF9og98V8+n9r9aF8LUQSNGEmsLNfc0uWtWpOfe1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wavecomp.com;dmarc=pass action=none
 header.from=mips.com;dkim=pass header.d=mips.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wavecomp.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AbfHS0Lpl+FEBr59jEJrBwRm/eISZeE50hRkaeS1KLw=;
 b=YoLng8gtCzX+3xUkNBUa2Q8fv9ntilSv3qQa3/GF1StjZBRPP1vOmRQYq7IOSSdeYXCBAklDLTsAVGtX5l9YnPjY/VtJtG/WGQwIf6yC4lLxKPX8rfkyNnjaN1n/UhnezLaIXrHOXebhmQdHyiJF6N0SiG9maAf+D3XpaM5b7dU=
Received: from MWHPR2201MB1277.namprd22.prod.outlook.com (10.172.60.12) by
 MWHPR2201MB1501.namprd22.prod.outlook.com (10.174.170.150) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.10; Fri, 26 Jul 2019 05:15:36 +0000
Received: from MWHPR2201MB1277.namprd22.prod.outlook.com
 ([fe80::49d3:37f8:217:c83]) by MWHPR2201MB1277.namprd22.prod.outlook.com
 ([fe80::49d3:37f8:217:c83%6]) with mapi id 15.20.2094.017; Fri, 26 Jul 2019
 05:15:36 +0000
From: Paul Burton <paul.burton@mips.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v7 19/25] mips: Add support for generic vDSO
Thread-Topic: [PATCH v7 19/25] mips: Add support for generic vDSO
Thread-Index: AQHVKBdBT62A9PHS5kqstEWJZIpgrqbckh8A
Date: Fri, 26 Jul 2019 05:15:35 +0000
Message-ID: <MWHPR2201MB1277C33D971A9C8945812CFCC1C00@MWHPR2201MB1277.namprd22.prod.outlook.com>
References: <20190621095252.32307-20-vincenzo.frascino@arm.com>
In-Reply-To: <20190621095252.32307-20-vincenzo.frascino@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR07CA0020.namprd07.prod.outlook.com
 (2603:10b6:a02:bc::33) To MWHPR2201MB1277.namprd22.prod.outlook.com
 (2603:10b6:301:18::12)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pburton@wavecomp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [2601:646:8a00:9810:5cfa:8da3:1021:be72]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: eefa4eab-75d8-4b8c-bd7a-08d711884a41
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR2201MB1501; 
x-ms-traffictypediagnostic: MWHPR2201MB1501:
x-microsoft-antispam-prvs: <MWHPR2201MB1501BC9787485B9263612973C1C00@MWHPR2201MB1501.namprd22.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 01106E96F6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(376002)(396003)(136003)(39850400004)(366004)(189003)(199004)(66946007)(446003)(14454004)(66476007)(66556008)(64756008)(66446008)(74316002)(9686003)(68736007)(55016002)(7416002)(478600001)(99286004)(6916009)(4744005)(25786009)(316002)(5660300002)(6246003)(71190400001)(71200400001)(4326008)(6116002)(53936002)(476003)(8676002)(44832011)(11346002)(81156014)(81166006)(54906003)(486006)(7736002)(8936002)(2906002)(6506007)(256004)(6436002)(229853002)(305945005)(102836004)(186003)(386003)(52536014)(42882007)(46003)(33656002)(52116002)(7696005)(76176011)(41533002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR2201MB1501;
 H:MWHPR2201MB1277.namprd22.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: wavecomp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: p7WzZhWK0m+oI/PbWDH1Kk4p+6DgFHYBhhiaZ8Tm4+z5Klb1oa0KJZiCAIq1ELD4vaRObLFe5YmbYTojMYhGNI4MCE7QGjXoYmJFJIj2xA3p9FmI/WciWsIlo/E93iWSdpjzo5SvgUylnAe+H4Uq2egV6cfohZvROrcR6piJrWYfxFfJm0QMhDkON/WWuf0+mH5AO3ic3rjJAkwkLtFRac/jGsneh9MdkDeGHHAceo17Rx5qDYLU2SJn5ok/5gzCHVtpFRawvlFgVe+j1HVr2a7CpEMEIHgPIp3YBUA8sPB5whkbMElxdDSPnqF7WF09roI/ho0f6UAAX2hyvx/4Wu02fyiYHZ7SLlZ2LgFnUap8bwXMVFBBtbsr+M4yjRzMb2IlWmTwtKXGvZbov3KemHtaGK+w9DzGqja/NdYtjD0=
MIME-Version: 1.0
X-OriginatorOrg: mips.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eefa4eab-75d8-4b8c-bd7a-08d711884a41
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jul 2019 05:15:35.8674 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 463607d3-1db3-40a0-8a29-970c56230104
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pburton@wavecomp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR2201MB1501
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_221546_291004_4079FBCA 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.69.114 listed in list.dnswl.org]
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
> The mips vDSO library requires some adaptations to take advantage of the
> newly introduced generic vDSO library.
> 
> Introduce the following changes:
> - Modification of vdso.c to be compliant with the common vdso datapage
> - Use of lib/vdso for gettimeofday
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
