Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E0A5BAE8C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 09:34:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bw/mY4nSUvrbq6fG+uaRUwElnMRgm6eeHa7ebcHjc04=; b=Y6CCnmPbu4Lq5y
	70zVQzu2yt6mlemcBVDEjMr6flFKrCuWwmcc0DVAW4r5gcWI84u/xJTZCM5bxUTzaLzxh9IuuRTnL
	xU9TXYx4F9MEyuz0xR3pungU0pwVtdiSkzRn+hWYXOKQo1VqO246gEHeChT+jucmEOJyESRnvKZ5k
	Ww6VpDIU5Z3p3p5TRb2An/8PLIv+RmDZaNMR3IRneq/C3nAn/jiQq9HoWCfx4cL6OYBj5GSp5N0p0
	Mp5KSnRcGVLG0I04AnbamB4Iv1YTdcxQbw2h8pf/Z97Izd62cNEOzZFuLpbSBDEBLIEUFG2SdY6wr
	87BcSTPkFi+KepNQa0Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCIr9-0008M6-3w; Mon, 23 Sep 2019 07:34:00 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.47.102])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCIpr-0008Kf-Sn
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 07:32:42 +0000
Received: from mailhost.synopsys.com (badc-mailhost2.synopsys.com
 [10.192.0.18])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 25B7AC040E;
 Mon, 23 Sep 2019 07:32:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1569223959; bh=UmMy1/fic4o3hxEzGV/5qz3vnC6skKqVwLI3BJhMus0=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=dKVBrdfu5gyPayfaiY9FUr0+Vnnxo2JHT+rP+rEw8+ChTTLrVnEPd43hgAvSiA2Tw
 M8k+A9NVObstF9RuZsHgUZBj8DfLF9dRAqCjK6avq4CgW5CntyhLFA8ux6fA0eWUyn
 qDizvrVKyfqhCuLFfbwfQxS1WGbP02O9Ju987fH4Pg+eAR0F1ZPmXizsSJdXsHNLnq
 oKC2rdeL4fj1IIopg36lQFtNTZl6B9qdrgBPyoxX6iZSzdE7YoLOIKWuUpVKFOuPGj
 Ae51bWUU/LddKEAJt/h44+Xiau9a+b55lQ2027ukf+P0oDQJzzzo+pZahvl9lI47nC
 ZEyOMD5NSkCgg==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 0322CA0067;
 Mon, 23 Sep 2019 07:32:37 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 23 Sep 2019 00:32:37 -0700
Received: from NAM05-BY2-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Mon, 23 Sep 2019 00:32:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nDcbmDpiBmkJq61PtaY5shwfOXMfyOpj2/zBmZmktV1lhuxs4xBunsIxur4Ld0a/DkOivMSY0zWSQuZVaVDfdknBVD04kytCG6RHKMtd1AkIL/04faayRSGVUpRFu1nDGYr+4rOpsOh4tY37qZqvPyczzXB4PiFxszDbLdTWYYf+KWcAHzgS2+o5k2yN6w0MUGp7T1McM2ZpOq7VdIn9hPph/0M2XDVfWci440/ywxLt3iO+c+513QD2G6quPcCK2b8fhGFCqpwVDJHPUoJbuCMrnecdC4WodSS2D5hCLOhIfaWpV17S7ItuB0S3nXJaRy7+eenZqUBL3f+RfvNKfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UmMy1/fic4o3hxEzGV/5qz3vnC6skKqVwLI3BJhMus0=;
 b=S+Q23sgNqnIcGErmyI2TCBychlPu/N2nigr+paQuQgEb8a2o18SMLbw0W55isWPZiQJT8gaVVOhnZmdXEFUNWTMipEqebUyZhfUpNGWj1aXEJVKl51ydkZlvkQwMP+bF3zfKpbLmv1VEsZRJ5d3Ko6hCbxrfw6DciI4pygTGFcEQewqiYz7kt2w8tzJXL5oWmDl3WXF9Ik2dTwFZc8Wh4zmAe44aQ8CeUetNlUC1P78qwZE9RWoO08l7b85DgBlVkCELbtUgcmzOhpq8fjuvlOIIOxqHVBHxnMtNLKvvfbfhaOZaFpMCdQ9w07iB0XNKfukTxuOpLrA4J4EcK0Dd6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UmMy1/fic4o3hxEzGV/5qz3vnC6skKqVwLI3BJhMus0=;
 b=QfNXcZbonQBflntv7bv2svrDWcUxAcn0YyASkWEmdNdqsFkUOQkJPg1yezH3erNk5pZfXLGhwZnZkQrBu82WE5YyMgl5ZTucC0E1zEjm+bEVgyVWmojWgE2f240Kph/hK9TzvkGhF6BYE4adlmzubJZMl0NlAAD77MUyOWuvsN8=
Received: from BN8PR12MB3266.namprd12.prod.outlook.com (20.179.67.145) by
 BN8PR12MB2978.namprd12.prod.outlook.com (20.178.210.158) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.25; Mon, 23 Sep 2019 07:32:35 +0000
Received: from BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::59fc:d942:487d:15b8]) by BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::59fc:d942:487d:15b8%7]) with mapi id 15.20.2284.023; Mon, 23 Sep 2019
 07:32:35 +0000
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: Jakub Kicinski <jakub.kicinski@netronome.com>,
 Jose Abreu <Jose.Abreu@synopsys.com>
Subject: RE: [PATCH net] net: stmmac: selftests: Flow Control test can also
 run with ASYM Pause
Thread-Topic: [PATCH net] net: stmmac: selftests: Flow Control test can also
 run with ASYM Pause
Thread-Index: AQHVbtJ1HwIoxgwcmE2GaMh8ERjNe6c4Q5cAgACggSA=
Date: Mon, 23 Sep 2019 07:32:35 +0000
Message-ID: <BN8PR12MB32663D64B4A3D517C76B262FD3850@BN8PR12MB3266.namprd12.prod.outlook.com>
References: <f35fa5a51f52fc1ef17a0a9ecd470e2a6792b3f8.1568887745.git.joabreu@synopsys.com>
 <20190922145642.55453135@cakuba.netronome.com>
In-Reply-To: <20190922145642.55453135@cakuba.netronome.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=joabreu@synopsys.com; 
x-originating-ip: [83.174.63.141]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 46be0eec-93db-4ac2-fbf6-08d73ff8344c
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BN8PR12MB2978; 
x-ms-traffictypediagnostic: BN8PR12MB2978:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN8PR12MB29787BFA0B7F5FD2D8297414D3850@BN8PR12MB2978.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0169092318
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(396003)(39850400004)(136003)(346002)(376002)(199004)(189003)(51914003)(8936002)(14454004)(71200400001)(74316002)(4326008)(4744005)(33656002)(54906003)(6636002)(9686003)(55016002)(229853002)(64756008)(66946007)(52536014)(486006)(25786009)(316002)(6436002)(110136005)(256004)(76116006)(446003)(186003)(86362001)(2906002)(81156014)(81166006)(76176011)(7696005)(8676002)(6116002)(66446008)(66556008)(66476007)(66066001)(476003)(71190400001)(11346002)(3846002)(5660300002)(6246003)(305945005)(7736002)(99286004)(102836004)(478600001)(6506007)(26005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BN8PR12MB2978;
 H:BN8PR12MB3266.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Psi9iBSYREtQIhLuFZcUgs3JdGv2Ryae1W9Mafw944tO4EyDFJpMCMY9A2xOjzNOzLZSL95bYdEPM5DPx0yc47Kj3pMrafIhFMu1VYSrfT65GEpqv1/x6/MeyWW02g0i1eG/89s9pr1tHUwzlKgKLOcl8LCk930Zt90jlqA65OBu3IzIonNumyL5qJ00hccYeM7mYAqGacTcikNiyBoKGiKE4sb0E/AabzW5ucHu4Gd0TjwQn2ojUc3l8JNUlr8J8DcX0nJgiSkeM9ruulWrskXGIM9ZbLVjy1htt2sHVRpdG8smtMONcA4hV92JMfXF6V6WWH1Qn+Tl+imKfXECxS6NSqxUJt9h61eBYZoNU70MvoAEu4fxvC0b1T/vW4wWSb819ZVsZtc1AhbqtzG1EelsX6r3d0dGIvUf144UJmo=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 46be0eec-93db-4ac2-fbf6-08d73ff8344c
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2019 07:32:35.6835 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ryx+XKrNnnfptUxg1JH6t+rPAEvhSVEZtBUcoawJ4t7u2Ffph8iH7Ni3ocTUs+2Ni64EnZDHAH1PrZtsYN5O7g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR12MB2978
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_003240_281218_61AD1318 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jakub Kicinski <jakub.kicinski@netronome.com>
Date: Sep/22/2019, 22:56:42 (UTC+00:00)

> On Thu, 19 Sep 2019 12:09:49 +0200, Jose Abreu wrote:
> > The Flow Control selftest is also available with ASYM Pause. Lets add
> > this check to the test and fix eventual false positive failures.
> > 
> > Fixes: 091810dbded9 ("net: stmmac: Introduce selftests support")
> > Signed-off-by: Jose Abreu <joabreu@synopsys.com>
> 
> Hi Jose! 
> 
> Thanks for the patch it looks good, seems like you posted it from 
> a slightly different email address than was used for signoff:
> 
> From: Jose Abreu <Jose.Abreu@synopsys.com>
> vs
> Signed-off-by: Jose Abreu <joabreu@synopsys.com>
> 
> Could you please fix and repost? Automation may get upset otherwise.

Yeah that's my external vs. internal email messing around. Any of them 
works though. I resent it using the external one. Can you please take a 
look ?

---
Thanks,
Jose Miguel Abreu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
