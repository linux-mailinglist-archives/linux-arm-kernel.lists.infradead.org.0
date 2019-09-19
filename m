Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 538A2B7654
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 11:32:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X8E7z00/xua6CFNjDK0S6uD6PGz/o6xOA/wxT/0djLU=; b=r5ld6Y9sDD7FPB
	VitSxxuoaR2ZmkLDqy4mXvN6xjpHD0v6h7Ndph/2SUuDKcCQiKLTaYUmIdlE0Id6guRRhIO96/YMn
	lH2JTVSkqQXZbFvC+C0YXapFyz8ixJwdXDRxml7Bmy6mo5YEaljLVqmZKq52uoIJ6nh1SZqMSLVPY
	nx1XotuZeptwvpRAlvw1QooX0tozTIfoV4XNR3nLxJ4dxxRM5AATBZzdTE0KEC7tTPFylE1FgJ31Q
	R3s9vgemxugdOvtzGUAkMt9ZYQoRMPb35bWjyLkeJCs0XkuDMCczZOYNMsVyvX4DyIPQy9bbqaAvn
	Z1r3JEwByHzNjgYDe+GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAsn9-0003TA-Ny; Thu, 19 Sep 2019 09:31:59 +0000
Received: from mail-eopbgr00084.outbound.protection.outlook.com ([40.107.0.84]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAsmw-0003SA-J2
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 09:31:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PDsqf2+0L+7D4OAfNr0KWaCcXQHdqdaP5sC47qI5QlT/ALFCSflSPyfaW+3vDcDTyySstv3nZAhyrBMRIIyiVB5hndbiR1zrvNcMWrnv/02WkRBLJlvcrZyneaSpRMyBrePPWg2c3XEVoJhDWdYIY/cNcfOTInHs3gEwwFf0vxvQtkgo68/lIQrl4hgFaKMCPPfcX5dCT0wTAloH/DshDOfxbq7Hz91MTyHbjp6o87iQspDyg/ThSdDIFICwUZMwatD5mS63lAeQVxDUK8QKbw2oZOJ6SBmfLcHmE9pW10fcOwJGyRgiFpAu+1woAcQsf+OmkX4PtGW7gzBzyaiSoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XM7TbDXLs7yBD2cyLcBcAYyc6nPRBP+zcO0yCBXE5S8=;
 b=Fzq9OoZ3Z+zJAKMBzAZzXb8RzTi2NX8uIO46miE8skknaXIn0KkieuijRiXEitGRCWUsSEKEmyYkPcQ08o7vx9vjMO+EIsLBI3KW6N8azuDmH9coUGN1fCbB38s6KB6bH2TQeYJX2cmmIxPG247wEMU3fvBs7biFpR9CCnI3Xrl0C5auyAF/54rtBua7PAcicmwexRO0E+1FjH/BGKLOx5EMU2dcAHXx8MENWDh+zAf8GkXDgtEugSe+z/684nIJAPToVfkJKQxE8X4HtOzw1npXK0yRTH9A8/ucscv/t54hzKTR+XnaTknY2mdxFlei1tR4XdtxPkvD8VXC41LKdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XM7TbDXLs7yBD2cyLcBcAYyc6nPRBP+zcO0yCBXE5S8=;
 b=buikSMkQEq2FwR6esT+e1KR22E+vsnHBMvvC2IUjmKjRRaKkc7PfGbhATUYXNHPrvrbVbaQTAObEWy/7YbOa9xjMLnmsgGnvvVz0u9I4RQp+p8WHRlWuG6HC6BGUhRifSK50HG16U2reO5fbTb/bBSv3/TdnDj5P38nRSuDQoNM=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3884.eurprd04.prod.outlook.com (52.134.71.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.24; Thu, 19 Sep 2019 09:31:41 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38%7]) with mapi id 15.20.2284.009; Thu, 19 Sep 2019
 09:31:41 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Schrempf Frieder <frieder.schrempf@kontron.de>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Leonard Crestez
 <leonard.crestez@nxp.com>, "daniel.lezcano@linaro.org"
 <daniel.lezcano@linaro.org>, Jacky Bai <ping.bai@nxp.com>, Daniel Baluta
 <daniel.baluta@nxp.com>, Jun Li <jun.li@nxp.com>, "l.stach@pengutronix.de"
 <l.stach@pengutronix.de>, Abel Vesa <abel.vesa@nxp.com>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>, "angus@akkea.ca"
 <angus@akkea.ca>, "ccaione@baylibre.com" <ccaione@baylibre.com>,
 "agx@sigxcpu.org" <agx@sigxcpu.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH 2/3] arm64: dts: imx8mm: Use correct clock for usdhc's ipg
 clk
Thread-Topic: [PATCH 2/3] arm64: dts: imx8mm: Use correct clock for usdhc's
 ipg clk
Thread-Index: AQHVbqgmZ51dfuL/8Eaza5al5dL3W6cyl1gAgAAkZxA=
Date: Thu, 19 Sep 2019 09:31:41 +0000
Message-ID: <DB3PR0402MB3916B0DE9EBC0B0F6664CE34F5890@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1568869559-28611-1-git-send-email-Anson.Huang@nxp.com>
 <1568869559-28611-2-git-send-email-Anson.Huang@nxp.com>
 <c680d114-1c14-6bf8-226c-2fdd98350158@kontron.de>
In-Reply-To: <c680d114-1c14-6bf8-226c-2fdd98350158@kontron.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8192cef0-8262-4255-f886-08d73ce42e02
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3884; 
x-ms-traffictypediagnostic: DB3PR0402MB3884:|DB3PR0402MB3884:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB38841D7A2078EB3B83208DB8F5890@DB3PR0402MB3884.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 016572D96D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(136003)(376002)(346002)(396003)(39860400002)(189003)(199004)(6436002)(305945005)(256004)(4326008)(81156014)(8936002)(55016002)(52536014)(66476007)(186003)(476003)(9686003)(4744005)(66946007)(446003)(66066001)(8676002)(64756008)(33656002)(81166006)(229853002)(11346002)(76116006)(74316002)(478600001)(2501003)(7736002)(14454004)(71200400001)(316002)(25786009)(6116002)(7696005)(3846002)(6246003)(5660300002)(76176011)(86362001)(2201001)(99286004)(486006)(71190400001)(2906002)(66556008)(110136005)(44832011)(26005)(102836004)(6506007)(7416002)(66446008)(921003)(32563001)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3884;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: p73s8nk4QqqxrBpMMqtuIz0JkBkYiLoPKVEssOphvnx3C4gLz/v9NFtzsgcZoFhikVp2oN65XUd5DK5XsGJgAx3r9y3jVNVJEUG4wt6HSGn/zcerdm9Yoa7hoxF7cXv3rLpdCwzgp8PXAJwDyfheDsmFWL8YTxceDabWy6yxx8o83T+TzSzEug26X0sWUG8u7ehfBivXjO/JobbHM1YsFZpw50geK8akUbZ8ArATSFcNrbxwwqFGeEGZp+3E0IcntS2eDfvz9DFQ16dC6INlVzxP1sBrEbvtSjf+6GCTlLADdKzIXRL5piMNhTBQfMbVwGXU91d7Kf0wKAEwe9GbzVFAac4wWOR4YhGiWoeLMFLeksr4YVOJd4d98y2wS9rkzsOuLsgpXIwBikC30HJZF1DiaHevXLf9ih8Xn5kLNnU=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8192cef0-8262-4255-f886-08d73ce42e02
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2019 09:31:41.6582 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /n9SkPxowOTGdrIdjULl9M37a01n9xHToro9WOMjlBm7wNZyEJ8uvSfCh2F7b8/SHs3DWVIgMmJvjxIWZ7dT6Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3884
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_023146_795113_DF8CF43C 
X-CRM114-Status: GOOD (  13.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.84 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Schrempf

> Hi Anson,
> 
> I have a question, that is not directly related to this patch.
> I see that for the usdhc1 and usdhc3 nodes, there is an 'assigned-clock'
> and 'assigned-clock-rates' property but not for usdhc2. The same applies to
> the mx8mq and mx8mn dtsi file.
> 
> Is there any reason for this? If not can you fix it?

This patch series is NOT related to 'assigned-clock' or 'assigned-clock-rates'
property, it is just for correcting clock source according to reference manual,
the 'ipg' clock is from system's IPG_ROOT clock according to reference manual CCM
chapter, using DUMMY clock is NOT a good option, the 'ipg' clock is supposed
to be the clock for accessing register, and it should NOT be DUMMY if we know
what exactly the clock source is used.

Thanks,
Anson



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
