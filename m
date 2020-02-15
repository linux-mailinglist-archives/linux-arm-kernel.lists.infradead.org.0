Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B501C15FF32
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Feb 2020 17:14:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fSZvfhKzs2kh2kJ/WzAOPwr026pc9pQeRKUbQFasUbw=; b=Dz2WErwYO3VGIy
	6zu2hJoGnt/ELb+WP2BIx6ZzWqowQOV0G/iutf7DaVlIZjEzrXfL2l81Mu0kF4kaiaFxjZCBZHxCq
	euPxkJyRyp0YAZyqwnP2QN/mB3tE2WPL3d3xuLWNHThVmCUFX9BqepOlXfwEO4YCY0U5JVOJgF+BO
	SWRwZDTX7i8RFrLyXKsojG1WMQvnbQvBKVNsBbq4Bl9yXPCirKXSWGFZOdPYcfzmC0RVQzKxqJhEK
	XrP/mKszNvjvCOYfhTscNbbOASc0/tia9UQ2G8kpyhINU6peAabDwkV+JU77Yp8G4oV2BkspHtB8l
	CsTyNSV4C13dAs6N2LWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j305f-00053Q-FO; Sat, 15 Feb 2020 16:14:47 +0000
Received: from mail-eopbgr40088.outbound.protection.outlook.com ([40.107.4.88]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j305Y-00052a-7J
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Feb 2020 16:14:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F/L5YMfCimskt8ViBJvLBrHhfZN56FcF3BG/WMl5KTFvTsLrzyWkUz43MSFp0lwm8xIbNuIufwnz3uTdkcAhE4GlzXCeA3rJugwmisoLYSs9dbvwr4YCmfo0wtEyqqSFhqvHVaTe3U3XIQSh9AO/dXimc/UJNM4VEU3MQ/FK+1QqoHarJBXBU2VtRBFSp4SbFaXcuAopHBPBPxfKh/Z/rHm344/Xs8DLMLhSZXugOW5dP4Dya1dQPs1gLR975IOyqEz9EvB1lHAyiyV2mLwuDnLeyXjI5Bd4o/vmgqohKbFXfjw5u15ezOJX1ibRkmyXLRAt7gBeDN5rdyt3UVVgsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WmXxEH/nYGbMvOHz9SDe3eMDOZicL+itSktJRIe4czM=;
 b=hE6S5VuceXa75hjgvEXKVlybSwGNrggx6TpCzX3vQJpPfcNIATpSP6CNm0da0hyCUwDQFeS2JOsfSxwY/0XGLBTZRxX9/nyRYnvW0cuZfE/MglF5wZd+PIzefQ4tJbvtbTHtWOylEHU8jwHFfubiCKPSYf0wPJmdnUznsGJtmMHJfXdNhLzXiiiZiLGvvj2mD3Mj9Fwuh2Q8+3/uziz7qbNWrpMFyjtKbAIkNyGA0nhv0GFM5xjMutCBxVQjMjkLdWERX1itQU4x1cUgWzOQzoKP0JYV+a2+1Ed3vEXFj6OvP+5UAaI722TIskIsPQD5UppbqcJ4oyvPdXs6u+JMPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WmXxEH/nYGbMvOHz9SDe3eMDOZicL+itSktJRIe4czM=;
 b=meIbvhfMNPu2/iXCniEHLrAeCjrPM1EOOvcIqkQ5BEjKRN4Xo9BPIvULDe2tzA1f+FHFyXfLWp1nWhHYD5gs9loCl3H52IIl0m57bLVyOzxx8/521EAJ7upIR3h+fEbgTIV53Gw7BykVlLUWMBXo12uerq01+ZC/l72pkn77dNM=
Received: from AM6PR04MB4967.eurprd04.prod.outlook.com (20.177.34.75) by
 AM6PR04MB6312.eurprd04.prod.outlook.com (20.179.18.79) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.25; Sat, 15 Feb 2020 16:14:31 +0000
Received: from AM6PR04MB4967.eurprd04.prod.outlook.com
 ([fe80::4426:8bb9:a0c4:a177]) by AM6PR04MB4967.eurprd04.prod.outlook.com
 ([fe80::4426:8bb9:a0c4:a177%7]) with mapi id 15.20.2707.034; Sat, 15 Feb 2020
 16:14:31 +0000
From: Han Xu <han.xu@nxp.com>
To: Mark Brown <broonie@kernel.org>, Adam Ford <aford173@gmail.com>
Subject: RE: [EXT] Re: [PATCH V2 2/5] spi: fspi: dynamically alloc AHB memory
Thread-Topic: [EXT] Re: [PATCH V2 2/5] spi: fspi: dynamically alloc AHB memory
Thread-Index: AQHV2edkeGKVMAKPPEyU5J2cfrXZpKgJTI0AgA45v4CAABEGgIAB8KiAgAL5rSA=
Date: Sat, 15 Feb 2020 16:14:31 +0000
Message-ID: <AM6PR04MB4967BE79DAAC140162B3D22497140@AM6PR04MB4967.eurprd04.prod.outlook.com>
References: <20200202125950.1825013-1-aford173@gmail.com>
 <20200202125950.1825013-2-aford173@gmail.com>
 <CAOMZO5D3emrAk84wDS04qJC-3AyvFnqodhoMsXO-ukHnYsU+PQ@mail.gmail.com>
 <CAHCN7xJyZRwJhnWW2mAbOeGyrMsB7Au_e6AvwiNmNS8gFUfSyw@mail.gmail.com>
 <20200212120753.GF4028@sirena.org.uk>
 <CAHCN7x+5bACfYVX49Lib+fmNq-dEOkcyi0gXt7rtYxrGaYbH1Q@mail.gmail.com>
 <20200213184624.GK4333@sirena.org.uk>
In-Reply-To: <20200213184624.GK4333@sirena.org.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is ) smtp.mailfrom=han.xu@nxp.com; 
x-originating-ip: [70.112.23.252]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 54957130-6a61-4c77-c6f0-08d7b23223fa
x-ms-traffictypediagnostic: AM6PR04MB6312:|AM6PR04MB6312:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB6312666D32EBD6A91432FEF497140@AM6PR04MB6312.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:765;
x-forefront-prvs: 03142412E2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(376002)(136003)(396003)(366004)(189003)(199004)(26005)(7416002)(55016002)(186003)(9686003)(44832011)(7696005)(110136005)(54906003)(316002)(478600001)(5660300002)(71200400001)(81166006)(8676002)(8936002)(4326008)(81156014)(76116006)(66446008)(52536014)(66556008)(64756008)(66946007)(66476007)(6506007)(53546011)(33656002)(86362001)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB6312;
 H:AM6PR04MB4967.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GxOOn2529jeUJusdVCUuT90j7Ram9dcmrAyaAFzBDcJ7Uv3WEG/IfJGTjtfNoh8SQ3lu1KsXb++Me1kCzxriXK3R/ilSsCtoqbE2+Lgbus2WrzyFrSzYsC9ZeCPLpNigBYguYCTefQSOhy65phyJsUg9TK0p6gwtmYV0VPiaNLHwMuQJZ9T1T2OqHXLN70WcqTIoJSIawpHCBaAH5FSKlrKD/eoPJtHHpC8rzeSE+jXjJB07TuZPW0o16knJqTr1NoINbX9M8Zv3Qw6TKaET8azb5SmgiUDcEg1GjzwD1i1zy8zSzQ34dSpUufpiq2vqg/fp5ghMXiwpt0JdBX3eO5V3Zfz/v0Rf5sPm2K9IWK40ixHzBFNBtMEeMcHvXEyc7KFhiLAAYlqtY1GIP8F8WPNtIoGnLtTIn5rYvXy2PUAKCmWavqdrib4XsYnyUuxp
x-ms-exchange-antispam-messagedata: JNfopH8grHP0O1/XLJcguqW/RpxFWfqWplMn6/28y2mKNIFwQE2be3Fl1ev41f+FHeNnML7L+OTZUelt6/wJCYTC5LKfYuJ9WQutB0h1tbwLG10vyiZUqj5NSg2KCEUAczd64jeeLnpcAhXLqHRirA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 54957130-6a61-4c77-c6f0-08d7b23223fa
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Feb 2020 16:14:31.6461 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rb1AFSI88NJ4JtDxueAqNs0aZjYIQ6NXrrvmyZbPjEIeN5o6U6SMP20i/Pft7FQ7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6312
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200215_081440_443222_4CC9041E 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.88 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, "open
 list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Ashish Kumar <ashish.kumar@nxp.com>,
 linux-spi <linux-spi@vger.kernel.org>, Yogesh Gaur <yogeshgaur.83@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Mark Brown <broonie@kernel.org>
> Sent: Thursday, February 13, 2020 12:46 PM
> To: Adam Ford <aford173@gmail.com>
> Cc: Fabio Estevam <festevam@gmail.com>; linux-spi <linux-spi@vger.kernel.org>;
> Han Xu <han.xu@nxp.com>; Yogesh Gaur <yogeshgaur.83@gmail.com>; Ashish
> Kumar <ashish.kumar@nxp.com>; Rob Herring <robh+dt@kernel.org>; Mark
> Rutland <mark.rutland@arm.com>; Shawn Guo <shawnguo@kernel.org>; Sascha
> Hauer <s.hauer@pengutronix.de>; Pengutronix Kernel Team
> <kernel@pengutronix.de>; dl-linux-imx <linux-imx@nxp.com>; open list:OPEN
> FIRMWARE AND FLATTENED DEVICE TREE BINDINGS
> <devicetree@vger.kernel.org>; linux-kernel <linux-kernel@vger.kernel.org>;
> moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE <linux-arm-
> kernel@lists.infradead.org>
> Subject: [EXT] Re: [PATCH V2 2/5] spi: fspi: dynamically alloc AHB memory
> 
> On Wed, Feb 12, 2020 at 07:08:49AM -0600, Adam Ford wrote:
> 
> > The original author was copied on the initial commit.  I literally
> > generated the patch from NXP's branch,  added my notes, and pushed
> > them to the mailing lists after testing them on the  the Linux master
> > branch.   I am a bit disappointed that NXP's author hasn't responded
> > to any of the comments or feedback.  NXP knows their hardware and
> 
> Bear in mind that it's been the spring festival and there's been quite a bit of delay
> in getting back to work in China resulting from coronavirus stuff so hopefully it's
> just a delay in replying.

The FSPI is a shared IP with other NXP BU. We are debugging an issue may related to this patch. I will resend the patch set after the root cause found.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
