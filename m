Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B6BA1276F9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 09:07:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=56ny7O8wn/KfyAGAyeM7TlhSi9bA9M5oxTZqd/6IKmA=; b=Z9SAhRy+ysmNxo
	sAnNYZ1pPJUr1Tijp2IZKh9HksbDsQzBCrhCCmmeF3IPUn9so74zbJaXoMNrtzKoEWpZ9xr4CvuMx
	JTozUydMJ3QuzUbd7VCkrCWBl85by3Sl8vUfOtTbv2uyqLlmMCO6nZvOoga2caf6POQON4L8wGa1C
	GWIA+fpd5t1g/Ja7+KGbhZh/rOyYMtuA1Q+InQl1dvnmD4My1tgaA0qb4r5/Kvbfah1wYvenXlFfq
	pg9HOpIJvpxMHE8xZ8ITFv4BrgcgP0gYqmiiqLAxbFRQcyuHvG8vjQoXOheAr58samxYX8zVl+Jfz
	/u1iNbtC+ZxHGrkmSQ3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiDK9-0004IS-EC; Fri, 20 Dec 2019 08:07:49 +0000
Received: from mail-eopbgr80079.outbound.protection.outlook.com ([40.107.8.79]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiDJy-0004Hx-SV
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 08:07:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A3z7sxgjcgOeSsRD7IPKuNtcHur/ZedOBQWSkP6qp5w/hvbSnUhbukEUp1+1iC1FPnhEQGofHExZDFMl0M4u4GQJyGnpzBd3yODdn9v9c1jXdhhBqbPKg6n6laTLzY361N/AkuW53ncyI0ukBMpBie3xzONG/XqShUfFscgeMb1pYyHlbFaPVl5N3CbMhG3HSckxyk8p+KzLY5lXb9/lAqrjET1149SUArDOLaS4tH8aZ44xUbrRX1jXQ+8bnKAvBIuIEidre+ZFLG3FfKvpp2siD0cFD1vybnBjJ+lCBRamUu4hl5kAmHZN4T7JZnazbcuPmvTJoLyrBbtIsxV0Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1wRRDOOXWawmFvFi5W+shZcITERvWyl2faS1S9gvxH8=;
 b=jfxHc9ai43bcbutdD6k4hoqhZ3gTPdPG5AAQXxtGjJYMKnK1rxpHsB/TzPR7/XCLvAbsHtypalWIVlXrMM9HzGXQbcRym6hJLmoNcStihKhb3uxYX7qLhAmqn61dLqp1oU9QOGLRY9Y8qQwTHEJIjeIzOsF0kMC3mO9okhR2YFhIqiO0VDjgSjmmMDnzbJ8v6d+S9lqG974biUdmbqXAKJ2SqZgJCwSXloua/BNzHhxrvKH2fMIXrJZX6gQ2aDIZuewVVYmS920WoPgULltl2GLheJPTIRYEkBnokZbkkyPueubNs7G6oh7oQZEddqOeCB4b6HPwdxBPFBnUJX8hzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1wRRDOOXWawmFvFi5W+shZcITERvWyl2faS1S9gvxH8=;
 b=QI6Xspj4FVLLPGm4Q41Y50nUtvpFpz1u4Yp0GC0VM9v0RZEw82uZBD6Ax6L5xdErqVTcT4IhLtYLRVJiFJegZNNA5sPQ3B0gn3NPNo28Q35KpAK3ZJKF9wNclc0vmomG30M42OlL1tb62yjgr5U+kMLv3BhGcLmybnzR2zUInY0=
Received: from VI1PR0402MB3485.eurprd04.prod.outlook.com (52.134.3.153) by
 VI1PR0402MB2832.eurprd04.prod.outlook.com (10.175.22.9) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.15; Fri, 20 Dec 2019 08:07:34 +0000
Received: from VI1PR0402MB3485.eurprd04.prod.outlook.com
 ([fe80::64c8:fba:99e8:5ec4]) by VI1PR0402MB3485.eurprd04.prod.outlook.com
 ([fe80::64c8:fba:99e8:5ec4%6]) with mapi id 15.20.2559.016; Fri, 20 Dec 2019
 08:07:34 +0000
From: Horia Geanta <horia.geanta@nxp.com>
To: Fabio Estevam <festevam@gmail.com>, Adam Ford <aford173@gmail.com>
Subject: Re: [PATCH V2 3/3] arm64: defconfig: Enable CRYPTO_DEV_FSL_CAAM
Thread-Topic: [PATCH V2 3/3] arm64: defconfig: Enable CRYPTO_DEV_FSL_CAAM
Thread-Index: AQHVscuAzDa0y7DjIUSGaSZVWPlDjw==
Date: Fri, 20 Dec 2019 08:07:34 +0000
Message-ID: <VI1PR0402MB348519E941CC80DA8D2E15EF982D0@VI1PR0402MB3485.eurprd04.prod.outlook.com>
References: <20191213153910.11235-1-aford173@gmail.com>
 <20191213153910.11235-3-aford173@gmail.com>
 <VI1PR0402MB3485AB1908AD6B6617CFC08C98500@VI1PR0402MB3485.eurprd04.prod.outlook.com>
 <CAHCN7xLrX0R7Uag2vc1qMp4z=1r3haCWrcp4qJT0H0eC3RiA4Q@mail.gmail.com>
 <CAOMZO5B_CCEf_cdAWs_FDC1c6t0RG1KjRjGidoDPmPmgxY=ebg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=horia.geanta@nxp.com; 
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a2594434-e66a-43f3-9106-08d78523aba2
x-ms-traffictypediagnostic: VI1PR0402MB2832:|VI1PR0402MB2832:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0402MB2832AB038DF844CFB988C596982D0@VI1PR0402MB2832.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 025796F161
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(39860400002)(376002)(346002)(136003)(189003)(199004)(4326008)(44832011)(66446008)(66476007)(64756008)(66556008)(7416002)(91956017)(478600001)(66946007)(81166006)(81156014)(8676002)(8936002)(86362001)(9686003)(53546011)(33656002)(55016002)(52536014)(54906003)(316002)(110136005)(2906002)(76116006)(7696005)(71200400001)(5660300002)(6506007)(186003)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB2832;
 H:VI1PR0402MB3485.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WfQ8ToIh0zYfUfEFnVhGnI5P/QihfhSMtw/GlHuKXZhRQLaxmIMSTH5i+E8WPletVoyEtW19UoyN7XB8sv/pzgi+kiZ33sat1lGMFZCK79woIVu5Fs3UVj296y6tU2ot0vCb7QlEQ1CSsGfeQQVMCj7tnxPLZNWytFRhrmb66ZHfUMjYUvIIKVp+58XlaVHjulhawX8sO3FNxSGdraLB5inJ+i43TQH/K/bbVuGGM8XcpVzifV29jpMfMumBCqTGkTf5TfJM5moLgyNmoyCmw6tKRqWxIe4djcXdVIVn8/PNKM0EYCFfCWNl6vbbjP05iTqr8qQu+ufvwL9MWDPr/LKWmx3swholi2vyxPXsFVfblRBnCT8tc8qhC9BklNENTi0eCuy8Zs4WvGl1mtDss2edHn5gwODznChlET1zxKLA9mcm1JDiVOHop43/XgOl
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a2594434-e66a-43f3-9106-08d78523aba2
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Dec 2019 08:07:34.4904 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: peDjrjfV/quQQ8bOvYdtcIcFqri+oy+W6VDaUegtGT4V6ZPj8vLmoPJCjYMlYKu20VRHurTssIx8H3kT9ugJhQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB2832
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_000738_924844_812AE70C 
X-CRM114-Status: GOOD (  13.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.79 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Aymen Sghaier <aymen.sghaier@nxp.com>, Theodore Ts'o <tytso@mit.edu>,
 Herbert Xu <herbert@gondor.apana.org.au>, Will Deacon <will@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/17/2019 8:25 PM, Fabio Estevam wrote:
> Hi Adam,
> 
> On Tue, Dec 17, 2019 at 10:07 AM Adam Ford <aford173@gmail.com> wrote:
> 
>> Out of curiosity, what is the rule for when things are 'm' vs 'y'?
>>
>> In the Code Aurora repo, it is set to 'y' and the mainline kernel for
>> the i.MX6/7, the imx_v6_v7_defconfig is also set to 'y' which is why I
>> used 'y' here.
>>
>> I can do a V3 to address the other items you noted, but I want to
>> understand the rules about the defconfig so I don't make the same
>> mistake again.
> 
> In arch/arm64/configs/defconfig we try to select modules whenever possible.
> 
> The exceptions are drivers that are vital for boot such as PMIC,
> pinctrl, clks, etc.
> 
> The CAAM driver does not fall into this category, so selecting it as
> module is preferred here.
> 
One comment here though.

CAAM's RNG is not "vital" for booting, but IIUC it would decrease the boot time
since it feeds the entropy pool through the hwrng interface.

Once RNG driver is fixed, would it be acceptable to add:
CONFIG_HW_RANDOM=y
CONFIG_CRYPTO_DEV_FSL_CAAM=y
in arm64 defconfig?

Thanks,
Horia


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
