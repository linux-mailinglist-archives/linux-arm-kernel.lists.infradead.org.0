Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B85BE979D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 09:08:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o7mh6H8PyEdZuA+mLeNqBC8hjeFagV5aDz8ROvSxARs=; b=TWGW+HZcF5Y3jm
	rs/GPmCrIODOCFGl/w7Vv4nlFaWCr31OfV/H5QOjGnnMfmTZikyGIzT6YBKlsdzNta5XKRMpgcIhw
	rV4spf8gtkiNguDMqj0QAwoAZQy0iR9Kic/3egWiMxdrlmPv36wxi9W93QEyBU6z5F8O7f517CeF6
	73Jc8J1Rt3IVtFVzvLphZKrL9X7PvtAC30VJYGx7btDSMM1DjBYr2bGNRcUUSEwf7HBHiFFwGhOjb
	UiNALqpddzOfh9EZMSRpzYRPhNf7vpXJfdSPzziZVuAO9hcKqunDYhYtr9SAHyVmDewHmfp+JaKm3
	UlM3aPU3GxK0K5ef31pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPj26-0004Ke-8k; Wed, 30 Oct 2019 08:08:46 +0000
Received: from mail-eopbgr130084.outbound.protection.outlook.com
 ([40.107.13.84] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPj1t-0004JX-BU
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 08:08:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kAIOak/8r0xqk59mlLEXB0yEMNAJV7KxW9vzHykYWaCMpr/mD56YLrlEYzA68Z9kU6FdM8mzBGJPWLmwowaPv681u/BJjO0/HgYn9s0l9yhG79agz+vAjbe6NkqVg8ruFm3/z/PKovl4EENwmR58XfWKwZthddUp2+4ZC+M2xIKOSdBoWIo03d6FpquIZCbO0CfDPFnLvBmI7OOoiuOKpj5M9L9hOTZuQRBZ3/mr+C7IO7Ug4G4RI9MDx2MDtX+M04Csi6/Vl2Z9b4iRKkPQl0YAIt3coK9aY/4P1F34maITDbJA0hCsiGtUjSyESU7AK551NgjpVuMaozYo2R1SBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FLthxlZB1YGbA8aAPO/M6xvpM09nTqQ6mhgHnl9AMlc=;
 b=l46m1WBx52GaGF54sKKrQKtkh/JhUFD3kXn9fspgFOkdf3btfAR8xtREnGUpc1FOKLI0nfVymsz2UmZqAKNwwsDs8Y3wj1kEVacd7BLnd68p29YtHhSjewnTtncA/yhixtc+4GqvaIGJlbDk1zziTo3H5NP1lnzJo0UE2hX2Z7Hi3+ms8ZHqlgXbNjmU5XtAl/F+YcTO5SnZ/vNh3SBWAH+Ji2N+ShYpiKx9RFH6h7PxrNgI0oF6aBIJm9Qc8QHZlpU5tbUPD/oBUn1HefFVGfiKg5hPPrkUqj7T7THoOnycoScYy9iOsQ3KcO6oWpx7AMmlPTdUwMnQfAIq+NtY2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FLthxlZB1YGbA8aAPO/M6xvpM09nTqQ6mhgHnl9AMlc=;
 b=UPIGTtiWdTo5METWj+WoFkxu2GjIqEu2B9ZHj2UAxdgusiSb538v+CbeFMCRKi/lwtwVb31Zxr/6rI0CP9PXDJFNScGnfR/fWTK+0cKhP2HxBgODPJSFHw4umRUe/4qnAxV34zuhLbdXat2jDXa5kSITDbeIzkTfy9/ETY4Vjl0=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB5299.eurprd04.prod.outlook.com (20.177.42.84) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2367.20; Wed, 30 Oct 2019 08:08:25 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::4122:fda5:e903:8c02]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::4122:fda5:e903:8c02%3]) with mapi id 15.20.2347.033; Wed, 30 Oct 2019
 08:08:25 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Martin Kepplinger <martink@posteo.de>
Subject: Re: [RFC 0/2] Add workaround for core wake-up on IPI for i.MX8MQ
Thread-Topic: [RFC 0/2] Add workaround for core wake-up on IPI for i.MX8MQ
Thread-Index: AQHVH4Y/3naZJOmQTkOgrNdQmlNuA6apM84AgMpe64CAACCggA==
Date: Wed, 30 Oct 2019 08:08:25 +0000
Message-ID: <20191030080727.7pcvhd4466dproy4@fsr-ub1664-175>
References: <20190610121346.15779-1-abel.vesa@nxp.com>
 <d217a9d2-fc60-e057-6775-116542e39e8d@posteo.de>
 <7d3a868a-768c-3cb1-c6d8-bf5fcd1ddd1c@posteo.de>
In-Reply-To: <7d3a868a-768c-3cb1-c6d8-bf5fcd1ddd1c@posteo.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM5PR0502CA0009.eurprd05.prod.outlook.com
 (2603:10a6:203:91::19) To AM0PR04MB5779.eurprd04.prod.outlook.com
 (2603:10a6:208:131::23)
x-originating-ip: [89.37.124.34]
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abel.vesa@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 9085088d-c282-4d29-511d-08d75d10567a
x-ms-traffictypediagnostic: AM0PR04MB5299:|AM0PR04MB5299:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5299BFFCDBA9C7AA302B87C4F6600@AM0PR04MB5299.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 02065A9E77
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(4636009)(376002)(396003)(346002)(136003)(366004)(39860400002)(189003)(43544003)(199004)(9686003)(186003)(25786009)(305945005)(71190400001)(7416002)(6246003)(561944003)(71200400001)(1076003)(478600001)(66066001)(8676002)(4326008)(45080400002)(81166006)(81156014)(33716001)(54906003)(14454004)(14444005)(476003)(486006)(966005)(8936002)(316002)(256004)(11346002)(446003)(6916009)(386003)(99286004)(6506007)(53546011)(6512007)(44832011)(102836004)(5660300002)(229853002)(7736002)(26005)(66946007)(3846002)(52116002)(6116002)(66476007)(66446008)(64756008)(6486002)(6436002)(86362001)(6306002)(66556008)(2906002)(76176011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5299;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7JqvnNWss7cofZtOeuqDBy8CwL9sKSgLa79vgkr51eeGoLD6xtCVa+dX7H81XCS4O0vpEmYRDg0GtqXDpcOU+8nUeGVpNN6lJFjEYwFNKZs3YLkMknS0zcdsGca7x8cJLYlmRGMjhQV40SrtN6gAOrG8+MH+YcTZkV1PKVHPaVS7rJ18D10qx+et5JjhRk0rB/NwLUeGRwJXev4xC2MPWUpUpO14pIaYEsJGveSW6eycI4d1unZ9NfFFtn1hXi/E+WpgQcshn3HnQdD+2XpeKa5L+XtFKnasHwEL4+vMhOQasE/ol5xL4g7/ETjRB507ugS9P+WRpKVYrnCTZ6DoI8aZX+a8rJGiW3FZtdD4ajScIx8Eq+JEszT+xGeX8nlAMB+XwvKFjexEVc21foy6TrW/szGm+gZ+jOga+9du7JL0+zfnQNqjUIvy+nvZDShyeLCSa+G9+uCMP/oqJO7CN4s5OhQ8InHT7WzzvPh3kMU=
Content-ID: <AB8B11A4C0983D4180C46EC0E6D8AF86@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9085088d-c282-4d29-511d-08d75d10567a
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Oct 2019 08:08:25.0459 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7+gJ0utMzMekiEXxQ/dTEVe9TYUq18xFj6vbu5ZhNI8tgka0a1vS66S4u8jCWCFUTvFKV4SSxSwdzFnXTtFJDQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5299
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_010833_496929_D0E43D4B 
X-CRM114-Status: GOOD (  23.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.84 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Jacky Bai <ping.bai@nxp.com>,
 Carlo Caione <ccaione@baylibre.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Abel Vesa <abelvesa@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-10-30 07:11:37, Martin Kepplinger wrote:
> On 23.06.19 13:47, Martin Kepplinger wrote:
> > On 10.06.19 14:13, Abel Vesa wrote:
> >> This is another alternative for the RFC:
> >> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flkml.org%2Flkml%2F2019%2F3%2F27%2F545&amp;data=02%7C01%7Cabel.vesa%40nxp.com%7Cf5f8d8dd37974234fcb108d75d000944%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C1%7C637080127051582184&amp;sdata=qZEo1fY1lkTjqZWuuQftYJ5euEsSxjEAqGILCY8ChnU%3D&amp;reserved=0
> >>
> >> This new workaround proposal is a little bit more hacky but more contained
> >> since everything is done within the irq-imx-gpcv2 driver.
> >>
> >> Basically, it 'hijacks' the registered gic_raise_softirq __smp_cross_call
> >> handler and registers instead a wrapper which calls in the 'hijacked' 
> >> handler, after that calling into EL3 which will take care of the actual
> >> wake up. This time, instead of expanding the PSCI ABI, we use a new vendor SIP.
> >>
> >> I also have the patches ready for TF-A but I'll hold on to them until I see if
> >> this has a chance of getting in.
> > 
> 
> Hi Abel,
> 
> Running this workaround doesn't seem to work anymore on 5.4-rcX. Linux
> doesn't boot, with ATF unchanged (includes your workaround changes). I
> can try to add more details to this...
> 

This is happening because the system counter is now enabled on 8mq.
And since the irq-imx-gpcv2 is using as irq_set_affinity the 
irq_chip_set_affinity_parent. This is because the actual implementation
of the driver relies on GIC to set the right affinity. On a SoC
that has the wake_request signales linked to the power controller this
works fine. Since the system counter is actually the tick broadcast
device and the set affinity relies only on GIC, the cores can't be
woken up by the broadcast interrupt.

> Have you tested this for 5.4? Could you update this workaround? Please
> let me know if I missed any earlier update on this (having a cpu-sleep
> idle state).
> 

The solution is to implement the set affinity in the irq-imx-gpcv2 driver
which would allow the gpc to wake up the target core when the broadcast
irq arrives.

I have a patch for this. I just need to clean it up a little bit.
Unfortunately, it won't go upstream since everuone thinks the gic
should be the one to control the affinity. This obviously doesn't work
on 8mq.

Currently, I'm at ELCE in Lyon. Will get back at the office tomorrow
and sned you what I have.

> thanks!
> 
>                               martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
