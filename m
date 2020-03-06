Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CB5217BC82
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 13:17:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8vViamgiSt4KrD+0d4oo3GPV0FdawhDWA6uz8pamKFA=; b=WCav49AVBAkZ42
	wiGVpRAN0OpNXycghO3jBRtbeKeyd2lC1YtOr/p59VoKcd1feP8s7xFC52W2vlQVmlLXiOd33AX9E
	fLSYDzWlN7jb2UgY+0Cu41i5e98eXTA4P+MbPiF2yST1HywXYGI+n5NL/5/LNSEzDXe9w2TlMdarc
	kFA9G0jp/PO5f0ANg0A2D+qJbSDYJNxq0nYaSR+yHrQ2ShxKvme5SNyhEm8TD9icC/eTgR+h5QKU4
	UbABSFaYhI2N4XRRHM8ihbYXTnbXLVOOCglvs1L9uDXYyH3UFjLvvsi0wihgyt0e3uJ++JbxlY6/G
	bS4Yvud1cWm+oWG1FLQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jABuW-000388-OV; Fri, 06 Mar 2020 12:17:00 +0000
Received: from mail-eopbgr80101.outbound.protection.outlook.com
 ([40.107.8.101] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jABuQ-00037P-8G
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 12:16:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NlUiXieJ2mpaPBKIVrRIKlWwSfqe05vM3xlxOrfbXntnBiLY8ZPusaFbrkcTTY/IrhWocFqMsZ4OKmpu+L73uYQ+tBlcc3GvE5xjlgkAC2LoAGfMTny/0n9zbI6FZMmMABsAYZ/KIMspzbkL0UH7WSJf+nXYtFPHZ/TPJZPgFn17GiRTEo+BXSCMCFI7sf0bhY0XK8HEp9ChPsSqYB/6mgsTtXfiDIGFsZdd8SDD4VxeQjK8xVzs7y/xCreCW03fR8nEbLlr4v2FOghyrNI9bbfghelw1V/99r28VbOfUJJtga9KpobkAo2l+ETMW4NcH5MRw6XVz1gm+SciPUBLGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+E09GbmJqS9ei2PnP7pEqRYGj6enrrTw4hH06mXQHiw=;
 b=SkSDaP8jGJMzcnAvJoMT0KVs8gP0WC7pewIREO+BCrGj9Nf2uoQAbedzNRZ275S8FDnaTm7TAZuu+JqFgih01nvihbGNE441VRjXh7kMWNjuZGTb/4i83DR3ILDjfyOrBOEKYmNEwTxzQUpgiibj3zr2hVfASAbjO7OcRZOzjXzbjYDOeOfNssMZ3YvHbMuvx9aXNPTwikQfup8NtZItvu27lHHQT/S0TFnjJO0wffop3a+Wu2WNYyvRl558og9gTKxQZPqCrp1cXHRbVm/2uH/axZfiWKoZHJ4eWkmSXEa2kbdALfDLZVgXYbRb7yP1pjgfKEZTgurPloXrWwpboQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+E09GbmJqS9ei2PnP7pEqRYGj6enrrTw4hH06mXQHiw=;
 b=uRIBqHF7tp2mn7JKI6reelxZlXqtzQU/eVPQVWxL13MIOvtiVGu5xhMGQu9nRZPRg5GYKje4/js4M1r+XS/H6F7I6433HRcNR43gfK/qmaC0P0YMIcGfi7pyuIFHdWeKJqSFRSNWMM1o/D8bOwFKbM8WB5wjUhD+Sp+4TIax/dg=
Received: from AM6PR05MB6120.eurprd05.prod.outlook.com (20.179.1.217) by
 AM6PR05MB4197.eurprd05.prod.outlook.com (52.135.164.160) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.15; Fri, 6 Mar 2020 12:16:49 +0000
Received: from AM6PR05MB6120.eurprd05.prod.outlook.com
 ([fe80::dee:ffa2:1d09:30e]) by AM6PR05MB6120.eurprd05.prod.outlook.com
 ([fe80::dee:ffa2:1d09:30e%4]) with mapi id 15.20.2772.019; Fri, 6 Mar 2020
 12:16:49 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: "o.rempel@pengutronix.de" <o.rempel@pengutronix.de>,
 "a.fatoum@pengutronix.de" <a.fatoum@pengutronix.de>, "andrew@lunn.ch"
 <andrew@lunn.ch>
Subject: Re: [PATCH] ARM: mach-imx6q: add ksz9131rn_phy_fixup
Thread-Topic: [PATCH] ARM: mach-imx6q: add ksz9131rn_phy_fixup
Thread-Index: AQHV8vTsfP1BktnxKEy+q0EhrXMNZqg6EXKAgAAlWYCAAPjzgIAAIqIAgAAYeQCAABF0AA==
Date: Fri, 6 Mar 2020 12:16:49 +0000
Message-ID: <e8ab2b1953dfd27fa38a15b2a3481584c7b53545.camel@toradex.com>
References: <20200305134928.19775-1-philippe.schenker@toradex.com>
 <20200305143805.dk7fndblnqjnwxu6@pengutronix.de>
 <20200305165145.GA25183@lunn.ch>
 <7191ffe6-642a-477c-ec37-e37dc9be4bf8@pengutronix.de>
 <4e48d56f184ed56d15d2ae6706fdb29e4c849132.camel@toradex.com>
 <f47a46b9-6d6a-e257-4309-7e49852bc88e@pengutronix.de>
In-Reply-To: <f47a46b9-6d6a-e257-4309-7e49852bc88e@pengutronix.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-originating-ip: [31.10.206.124]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a0b4b8e1-0f8b-4ebd-e175-08d7c1c83f27
x-ms-traffictypediagnostic: AM6PR05MB4197:
x-microsoft-antispam-prvs: <AM6PR05MB4197B66E2EF1EFCB41BAD188F4E30@AM6PR05MB4197.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2089;
x-forefront-prvs: 0334223192
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(376002)(136003)(39850400004)(346002)(366004)(199004)(189003)(6486002)(66946007)(6512007)(44832011)(7416002)(36756003)(91956017)(2616005)(71200400001)(76116006)(5660300002)(66476007)(64756008)(54906003)(66556008)(8676002)(478600001)(316002)(110136005)(66446008)(6506007)(81166006)(86362001)(81156014)(53546011)(26005)(186003)(2906002)(4326008)(8936002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:AM6PR05MB4197;
 H:AM6PR05MB6120.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MWQtueJcWhPLefsSkmcRwdXVdKaE+4SvxR8K5TxQLMkz8sBgOUT6xGyj7R4yQsFqjnbHr5q0ntUBFIA0uvHgXqZveJQNK4iDctAwKIb52DggseXKqK2wbfzDjlfbnwPFhzSAdey0fOSphjx2hMZOoj4UrVBjOYn+ULDxM1lW1uEBNV2ldUsjIggkmqYc/w4NB/BzGpKAU+5NYAqcbku3/RiKDfBDBIru9h9INq+/s3GV7VKDjfeREmQ2QixuUN3VKD1d6zxlGJYXnOu8V/iIm0jjpiDjfpkznht5JU2Rt4aLyaKKmSjupOo+dXMZoJROme11fXTicRhtrs4S1cl9b5Fc2OjcT9fAH02aQyFIphXU8HkmAWjLu9RCnKi0tu2UhfRPYG4ivmyvm7DMb2ovC2XrAViuVtcZkYPflcsMR/DOGtsVDJIqpWqUlIPiKCDy
x-ms-exchange-antispam-messagedata: MU/JIAr4Xls1bQfTaMmlS6AzduJre3Dnbzep7Hn1csKwwoeaHAQUueqdvO4mqWBDzC4vM0EHisNy/T6JejL4WHVmKQjK6rkcX7hdobbdjOiTuQQvTN9jlmvYHCYspffi3+p9NOXicCjQgXy4+MMLlw==
x-ms-exchange-transport-forked: True
Content-ID: <67C1775E882C2F4495C3ADF89349F3E7@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a0b4b8e1-0f8b-4ebd-e175-08d7c1c83f27
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Mar 2020 12:16:49.2253 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 10/42m/d7SNKQoXDVl0UrTx0/R3VI0aVWoJbqJuZ2p3yfKB+ko1tiSk/WLq69jVn+Q3AfUeM/HnZwuAgxg63dXRpVDBLWzO6cx+ZYCjy6ik=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR05MB4197
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_041654_356772_F90B2ADB 
X-CRM114-Status: GOOD (  17.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.101 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "kstewart@linuxfoundation.org" <kstewart@linuxfoundation.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "allison@lohutok.net" <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2020-03-06 at 12:14 +0100, Ahmad Fatoum wrote:
> Hello Philippe,
> 
> On 3/6/20 10:46 AM, Philippe Schenker wrote:
> > Hi Andrew and Ahmad, thanks for your comments. I totally forgot
> > about
> > those more specific phy-modes. But just because none of our driver
> > supports that. Either the i.MX6 fec-driver as well as the micrel.c
> > PHY
> > driver supports this tags.
> > What do you guys suggest then how I should implement that skew
> > stuff?
> 
> I think implementing them in the Micrel driver would make sense.
> When more specific skews are supplied, these are used.
> If not, the rgmii_[tx]?id applies the appropriate timings for length
> matched
> lines. Device trees matching your use case will then only have to
> specify
> rgmii-txid. 
> 
> > The problem is that i.MX6 has an asynchronic skew of -100 to 900ps
> > only
> > enabling the PHY-delay on TXC and RXC is not in all cases within the
> > RGMII timing specs. That's why I implemented this 'weird' numbers.
> 
> I am not too well-versed with this. What's an asynchronic skew?
> A non-deterministic internal delay..? So, you try to be as accurate as
> possible, so the skew is within the acceptable margin?

Asynchronic was a term I introduced because in RGMII spec, TXC of a MAC
should have -500 to 500ps skew. However the i.MX6 has "asynchronic" -100
to 900ps.

I did a worst-case study of those timing values. If I only enable the
2ns delay on the KSZ9131 PHY this is resulting in a T_setup_T of 1.9-
2.4ns (min-max). Under the assumption that tcyc (cycle time of the
clock) has min-max of 7.2-8.8ns this results in T_hold_T values of min-
max 0.7-2.5ns. The 0.7ns should be at least 1ns according to spec.

If I fine tune these values with the other registers I can "middle-out"
the clock-edges in relation to data signals and therefore I get all
values to be within RGMII timing specs.
> 
> Cheers
> Ahmad
> 
> 
> > Philippe
> > 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
