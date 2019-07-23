Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35CC37130E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 09:37:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iD7bYFyTrVWGSuHb15W17TeNB69FAvgj9ZtVLBy7NiA=; b=f2IO0mwRlyu/+r
	5P0f/5O6yRkeNYALFAzL68azvRikSmts59rEvOFIi0Yrz/j9InvJUPPrTKZUSFvBi/L/W2J513hfI
	hzIE2BbkRbwvxm1P9x+nxUNqartSBcPSz6kjw75m/TTZMURveGn+MzDwNBGPYJ1henk85qZqh1NRL
	58Q2ZgkO4DNIJjxZNR0g3NF+jhz0V7qNGswZGIMNDzWiP6ry6HFnMyqjlAxJwSWWDLwonUcK2rTfW
	YQ3HpAaRx5TwifaKnk+Yn0FJEugCyJe3Nnn2pIxUWGFyOXUY3DvNH0oDpWwhqgqav/lhvGLCjBDM2
	1AI8ofxntT3vhYf4hlhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hppMd-0007Pz-2M; Tue, 23 Jul 2019 07:37:35 +0000
Received: from mail-ve1eur01on0615.outbound.protection.outlook.com
 ([2a01:111:f400:fe1f::615]
 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hppMA-0007Cc-1d
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 07:37:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JgYh1gHakG0gOBpCUvl91+dRXcJg0MkDVKuoWb4tO68SBlSgCbaZdPfzR+8HV/pXbCGs7fEHdFXojXFhAkb4Ia2Bwxa5PMQgoodjFxTZwNjopyFJrlUrbt4GVRWi14XH4LXSp4pRwGNBjXyiRht/p4Bp544njrTKPPwGEv7rAk/Dbik/nJwWIJkExK+mzlV73oVbmRrXdbmsmUgm3XIsjHdfw2ZVJ7FqMLo4CN18AjlbFQ6qupcZXxmeoPhjMoDyeUJRi8siMX4hbhOPswPO2NjVFWMVLXEzn5FsFFZOYU9uZitiXelDYLNFFWAb3YY4v7FP6WRtIEk1CHxs6Q43Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xqLC0wP4MKNsND49lubt45g6g6GfoXWKhJv/gyMyqtY=;
 b=R+BQV1+baIIm7CR4HJ2YwC8Hq0fu25RpNkqHujVaX0A98IMco+e9tguPAzxnezVCdxvu71DrSMe1xN25oxmJHK7cMjEYsTfRqgtz1sMGP6aAazcieacu6cRKuFR3EjfQTTtCKZ6fwtQ3NrjLFK4IzN0DKHd8FitI6NRz0qsbG6KR5BUrutEpiHYpnIxS9+zC/HIbfScEcJXuzZoE4YWMV9nSPD5CnkkmojQ+mP3o2/olZNEpGJDKRn3GF7blLAkslQSjs7BNV+nzPgmCg3vKVajjIRzWNob64r7GIKn5cX3MHKtO3tW4r6oTQ/UcJjdwUB7vrm3C4AF9kMzlc8oO9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xqLC0wP4MKNsND49lubt45g6g6GfoXWKhJv/gyMyqtY=;
 b=VgRc7atSiqHE9GQl6P4nlyEBIGT3ayOgwlAxNXd74hx5Vd79WjY8JZqH8wNQVbcQg/J8/2tRxitL4LLNJlfzb4xu4twGGVIqNHxZ2xrNCT44jk9tYK6eV2rw8tkpPKd6jD4jioctRvnDi6dII/gvdPQvg0ba0SnJbK85X0eOqzU=
Received: from VI1PR04MB4094.eurprd04.prod.outlook.com (52.133.13.160) by
 VI1PR04MB6334.eurprd04.prod.outlook.com (20.179.28.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.16; Tue, 23 Jul 2019 07:37:00 +0000
Received: from VI1PR04MB4094.eurprd04.prod.outlook.com
 ([fe80::ddfd:27bb:7ff5:f131]) by VI1PR04MB4094.eurprd04.prod.outlook.com
 ([fe80::ddfd:27bb:7ff5:f131%5]) with mapi id 15.20.2094.013; Tue, 23 Jul 2019
 07:37:00 +0000
From: Daniel Baluta <daniel.baluta@nxp.com>
To: "l.stach@pengutronix.de" <l.stach@pengutronix.de>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>
Subject: Re: [PATCH] arm64: dts: imx8mq: fix SAI compatible
Thread-Topic: [PATCH] arm64: dts: imx8mq: fix SAI compatible
Thread-Index: AQHVPIWmDJkg1frz90Kj0Ul5E9n//abX2N2AgAAA6wA=
Date: Tue, 23 Jul 2019 07:37:00 +0000
Message-ID: <946f4bb2c0843588d3fc011080c2d331111fabc7.camel@nxp.com>
References: <20190717095436.28154-1-l.stach@pengutronix.de>
 <20190723073342.GG15632@dragon>
In-Reply-To: <20190723073342.GG15632@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=daniel.baluta@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2cc152f7-e79a-4b81-c746-08d70f408c92
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB6334; 
x-ms-traffictypediagnostic: VI1PR04MB6334:
x-microsoft-antispam-prvs: <VI1PR04MB6334871B09BFB88BD719FE16F9C70@VI1PR04MB6334.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-forefront-prvs: 0107098B6C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(376002)(136003)(396003)(366004)(199004)(189003)(316002)(6436002)(66066001)(6246003)(44832011)(54906003)(53936002)(99286004)(110136005)(6512007)(8936002)(486006)(4744005)(8676002)(118296001)(50226002)(25786009)(68736007)(478600001)(2616005)(305945005)(71190400001)(71200400001)(81156014)(81166006)(2501003)(256004)(4326008)(14454004)(76116006)(6116002)(86362001)(3846002)(7736002)(64756008)(66446008)(66476007)(66556008)(66946007)(229853002)(5660300002)(76176011)(102836004)(6506007)(186003)(26005)(446003)(91956017)(11346002)(2906002)(36756003)(476003)(6486002)(99106002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB6334;
 H:VI1PR04MB4094.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: h94f6S+VlMwkJuQykWNCDU0MXQGyUBcBxo+CjOUnLwuox0fJ9BGUlGta8NIZTOch9wQTjwnO+gieJ7VzLt2aRLSIxrEeLARqNUBHbfH5BGh9xxJPiDB/M8Nn/1Ijd/tciQwDFqMklDxObdkhiZaNuusRCjVFEH7+Z7Ef68O6tS5Ny86hTCHbNGyGLpDMobhi6PVInGNOw//FzsQLHT+lDUw9c8vCG5TB+XpoqjiVXOS/c1ErdpJPzfNbTBr5sofU2R5ao/AQgTXjysdTFoKIBkPGq0VDrj1xo5VRhFUbUnSLkOqrqmE9Et7q+7kOEiRAaZGQPvL3hRZrh13nvl1sqaZcwT+TQA6uob/QP5UjvOT/nP+cSIkgd+CHAtjgTikKp9jWhmCct/xoeH8X6w+uYwDEzvRRX3k2JLjU2XvurTo=
Content-ID: <D2CB440358F6AC448D3C8042E058D4AF@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2cc152f7-e79a-4b81-c746-08d70f408c92
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2019 07:37:00.6427 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: daniel.baluta@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6334
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_003706_172262_6A039CF2 
X-CRM114-Status: GOOD (  12.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1f:0:0:0:615 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "patchwork-lst@pengutronix.de" <patchwork-lst@pengutronix.de>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-07-23 at 15:33 +0800, Shawn Guo wrote:
> Add Daniel for comment.
> 
> On Wed, Jul 17, 2019 at 11:54:36AM +0200, Lucas Stach wrote:
> > The i.MX8M SAI block is not compatible with the i.MX6SX one, as the
> > register layout has changed due to two version registers being
> > added
> > at the beginning of the address map. Remove the bogus compatible.
> > 
> > Fixes: 8c61538dc945 "arm64: dts: imx8mq: Add SAI2 node"
> 
> The format should be the following.  I can fix it when applying
> though.
> 
> Fixes: 8c61538dc945 ("arm64: dts: imx8mq: Add SAI2 node")
> 
> Shawn
> 
> > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
