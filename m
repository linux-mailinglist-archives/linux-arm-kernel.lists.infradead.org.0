Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36FF8173DA4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 17:54:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xPDjUYcFe2oXVKaOnxyRVwLFETSS/Nw3pg5OZb+g+XY=; b=r+morLgm8n8Ljs
	qXtDYZWYbygrtHcvPPgJ7qhQlibWyHzAaNK4p0uXWfc2aodf0+difTF9vp+1dlIm43fvAXsNFg8Mz
	SnFtf3pGz8qVP6G7ow5ujlaODiFtcfobTkhxW9f5lB7WgwfxGd8O1Eg0c3Uqe8UCf0KKL6SgK9Pqc
	ifK2wfyBGzHewULN9CHqJe8e40geZ0Eq+mgSSHctaSyBPRKzxJ3ozZR66Vfi7ZksCeSS9KCt2RIhJ
	/E5cuXbu/i7Y+EpElqDnawRfNwenAD61Y0QVNJL31Y2AKfNECRjkLSkROplw/DzYPTaCoKMSXSjjn
	wJ1f9q5uG2rUM6CgX72w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7iu9-00034A-6x; Fri, 28 Feb 2020 16:54:25 +0000
Received: from mail-db8eur05on2109.outbound.protection.outlook.com
 ([40.107.20.109] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7itr-00033j-7e
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 16:54:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q3YjzOR5Q4INYx6cPpUt2hYc653bHzWJy6SERWNov/5M4HAa34zMZs2+u8MDk2Gdt+oIqV2Ne8WNVCIowg8OQLtb4nxkV8Q/7kLbvRiuVmK04yuKy4PTVv6porkV4Ot3m9/mrKmidKShPneqpXSEZFKuTA72WECpoTzrt3F6LsfJ1/Uq7wolc3qr7stlWjiz6kENepaw3cuP0RPKvP/NWaG/RFwaJ5oXGiOgXsrrXbii2CnbjYpAr8BQYO62FbXIaSbDsgtj3CKmD6S3/UGbwdE61bvIP+wh9Ooy7kgn4Bo+5Vo/Yn/QUC4Pvlhqd25RXULsflPiADMjOU9RpGvXPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zm2Bt4HY0tGEGNq2Zl4Eg8vnRPkwX8HI7/6pzyn070I=;
 b=IfvMBNFkiTVOpi0TAuXQo6peXO24F7TDtV8mPudk04M4ycoWr86dS8v7uDPCjpNftMMjbx+70z9dbMD9MZW+2OL6HZWMVjjVr/NhnLCrpVvbnWm8Y9SGfWn/vglTk2rX8p5TM3WhXttK6L6jmkB8PJFciZnp4YDESf+t8PTVObzEyrWFJxAlwAZ6k8zlGBAhBqj4hNLHCdicj2IQ4bmUJCc/aUO+QJ9NclwEW4X0IBP1QFkDXY2Itw5dy39gX2jZZ2ZZkgunq3XdxNjwG9lmIh27wf1+npDZ5aIa903MHKtRDMsR/9fPh0RzUvc6Bua3GqlN8HgGFnNhMTdg4wB8xg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zm2Bt4HY0tGEGNq2Zl4Eg8vnRPkwX8HI7/6pzyn070I=;
 b=foDq4EQ6kRCp0+aKVKw+T16O4u8U/3uJyK9QSd47ODMekZWgHAmduiS11VJYsPz21bbXKodcpzOQF1vF6QahjgAnTY2qHfsE9ORs+k77zTh/fJC8Xz8PM2Q9tjDSzQp4poIviY1NI5jXLf+qxxom8BlRKlIg0GnQmZuJvzHFKqU=
Received: from VI1PR05MB6845.eurprd05.prod.outlook.com (10.186.163.80) by
 VI1PR05MB6654.eurprd05.prod.outlook.com (10.141.128.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.15; Fri, 28 Feb 2020 16:54:04 +0000
Received: from VI1PR05MB6845.eurprd05.prod.outlook.com
 ([fe80::c13:1d07:fa02:6eeb]) by VI1PR05MB6845.eurprd05.prod.outlook.com
 ([fe80::c13:1d07:fa02:6eeb%7]) with mapi id 15.20.2772.018; Fri, 28 Feb 2020
 16:54:04 +0000
From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
To: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "igor.opaniuk@gmail.com"
 <igor.opaniuk@gmail.com>
Subject: Re: [PATCH v1 4/5] arm: dts: vf: toradex: re-license GPL-2.0+ to
 GPL-2.0
Thread-Topic: [PATCH v1 4/5] arm: dts: vf: toradex: re-license GPL-2.0+ to
 GPL-2.0
Thread-Index: AQHV6zhuycY8bEapckKLdhHNGMkfl6gw2OwA
Date: Fri, 28 Feb 2020 16:54:04 +0000
Message-ID: <5f38ae95378debf708924392c88a7723c1e702c4.camel@toradex.com>
References: <1582565548-20627-1-git-send-email-igor.opaniuk@gmail.com>
 <1582565548-20627-4-git-send-email-igor.opaniuk@gmail.com>
In-Reply-To: <1582565548-20627-4-git-send-email-igor.opaniuk@gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=marcel.ziswiler@toradex.com; 
x-originating-ip: [81.221.74.212]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c4098016-0e53-4704-afb2-08d7bc6ed1b9
x-ms-traffictypediagnostic: VI1PR05MB6654:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR05MB6654D8C4ECE039A2C0533A42FBE80@VI1PR05MB6654.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0327618309
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(39850400004)(396003)(346002)(376002)(136003)(199004)(189003)(91956017)(6512007)(26005)(8936002)(81156014)(186003)(4326008)(81166006)(6486002)(4744005)(86362001)(8676002)(66556008)(64756008)(44832011)(66946007)(54906003)(36756003)(6506007)(71200400001)(76116006)(316002)(66446008)(7416002)(2906002)(478600001)(5660300002)(110136005)(2616005)(66476007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR05MB6654;
 H:VI1PR05MB6845.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: e3cOF+XQ4wv7tnNlotAWX+Iug8xQQc/B4vvqALdgtmouaDC5kTwhXUyD037vG7M/oi8n3cZ6KfdMhinRrs2f/825aDroNawkZAgUWMoZj8KsXl2wC6tNaAoQ/1hW5b8M0PecQqcFTM9fqQ/qhx6enc/q6EsLDiNrXTAgAgc5/Q/QpDnrzRwmsLm8RMHIGA0CwcRHjpUaraPr+lh0D8S+krrD8E9e36eghn6M1y+QGEAXJqYYiaB3Z249e5GKYGb4Le2U8MbMHq5Z+/jE+d4uF2Jx0VlspnqICYDm2C6pjSvdGctXJzp76FzmOsO0jH7cFeDULFxWUC35G08FLAf+/iApJkxHh/jY4OG44x+OmcNkqatC88zz5zoEvnLD9t/wU77oAmNO295oelEu38ces9wQYmySqbzAqdUrOEH6t+ULp3r3lwKnsKAilbhpZJk4
x-ms-exchange-antispam-messagedata: DIL6gTBQPwsuym67LPqjSCmmaeRiH0QEFTvS9zgrAG94gDeyPQyggyErgyu4rupcDXkflwTnD3G4lXJl4yV6XEjb00EYPs25IUyADIaTRZj1W57ttxAdvNZzd+9z1k2uQddP1490zsVkjqBIcMR5vg==
Content-ID: <D0B09B358ECF314782B19FAEAF1037AD@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c4098016-0e53-4704-afb2-08d7bc6ed1b9
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Feb 2020 16:54:04.5981 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Vs+v5shEPHo4K3FqyA0o1OcNYpGQg/RtkZRTu5JEMoqEeE3DH6EgS/mdYp/WWEclNDUPrrXWusKT1cMtibzdadGCTm9DcTDxCplb/4K6da8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB6654
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_085407_280183_661B0437 
X-CRM114-Status: UNSURE (   8.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.109 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Stefan Agner <stefan.agner@toradex.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Igor Opanyuk <igor.opanyuk@toradex.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Igor

On Mon, 2020-02-24 at 19:32 +0200, Igor Opaniuk wrote:
> From: Igor Opaniuk <igor.opaniuk@toradex.com>
> 
> Specify explicitly that GPL-2.0 license can be used and not
> GPL-2.0+ (which also includes next less permissive versions of GPL)
> in Toradex i.MX7-based SoM device trees.

NAK, please drop this one. Due to dual licensing permissiveness of GPL
really should not matter.

Thanks!

Cheers

Marcel
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
