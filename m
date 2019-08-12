Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F38D8A8BD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 22:59:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=307OAZ7DrtUUkwB+fQeHa/Jd8Ns7oNtaD5u8YBbUR8A=; b=diir6eumjpxjtm
	eJLrXcV2yivCPTl3ryBYohKA2WmgJ10EHCM5j0KikAhfzDG8gZu6jXpHdf0Rr80bqGPMRwBmRQAs/
	1cZVlt1Bo5gubutpD8UInFhZEEeOzVvPRmhiTM40sGMhTsvuf+Cms9rWnbLjqcD6yUPbL/sWAfPdO
	jK7AO9j7LoqCcBd4fSVZosqOAnXLikHGaQWHUiefdgzYl6zwGQM+QDIG/0kY6UDPkqbOukj653GJA
	vC3xhSHXNyztfqMBznW8fu/GxaAr7Xx8wsnWLo0lLEyPQQxUb1P13qK6xpKaBhRYlAZuPDgbo8Viv
	POPTVRkvDYKAt8xJT8aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxHPr-0007Vf-N6; Mon, 12 Aug 2019 20:59:43 +0000
Received: from mail-eopbgr50088.outbound.protection.outlook.com ([40.107.5.88]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxHPd-0007Ux-F5
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 20:59:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kfSFNc5Rbf9fz0Z23mBx03hDJDkLg0TbCgZvwLDRScGwfcriIObBq+u6yoW8T9OG0jQVclBuYqE7wMoDfPJOKvVn46Rmwuzo1jQJwje/lyVRZ5Zu7brf/K95ASnn/uTvmpVRQCYZLupe1i032VjDKDj/17FK8m/YD1VRqsyu8eRlfYvClXz23aqQZVJpNYJweyKX8SDkrYFUO6DN9p1Ob5x8h4kr3W0oKbx59wHuG8cd+5xICFDRHjcQxcF1iuoLob+e3+Wk5Sc+4Z1rJz2GfR3cBZ8l4+14Nhui9t1Gcn5Br65flpvLCkXOFcB+TQyeM3f3p70PPg3Cs0p8TCVAtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3ueLC5WdPKDO4ejphAo0fTxLqSnGHuSttB5HNb4rsNU=;
 b=b3LMMhEIyPfkS41z96elvBp9dNIPZpzrmQr/x8EylEPNvOS88AACz/QBh/DwQ8wdgpnOGJAd95rTZJsXs7YBUws6s9u6ahFJdbwcJYkl26X2URVvvy5I/jD5elLNdZLagKk0jJk5mQvC0LF3BgMlXRO3R9TyfGFCb4+meEFHUHURx+OhRrgm2uFTJ9xR4wLChgb0fBIUvFyQo5NEKEDoAd9EBiGbo4MiWxp6bc480bAFVYi3RQLTzV7owYKcBTFEdB5mcICD9YYeiYzOhjV/xoQzxdpSdhPl1smFGeW5rmZ+xB394pTY7NOWT1RMk5IdOz4wCxdrR+gXJkNe6VQa1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3ueLC5WdPKDO4ejphAo0fTxLqSnGHuSttB5HNb4rsNU=;
 b=WDlrxKQPCqzM35+PCfeI/YeWFBtQTCJoYMoRcNlv6bYJiswW8q7ZCoz2i2G2kU5ab/aXTiLK9g6mBVeDvPPgqookkiB78SM2po7miIC6MpEXstOkypcb4q5Vd+5Kq3q27Buc3H6+Evz+sKz8m+ZhHWENM0yPfzVGzwAs6/ei9Jo=
Received: from VE1PR04MB6687.eurprd04.prod.outlook.com (20.179.235.152) by
 VE1PR04MB6365.eurprd04.prod.outlook.com (10.255.118.78) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.15; Mon, 12 Aug 2019 20:59:24 +0000
Received: from VE1PR04MB6687.eurprd04.prod.outlook.com
 ([fe80::3d61:6e52:a83c:7c59]) by VE1PR04MB6687.eurprd04.prod.outlook.com
 ([fe80::3d61:6e52:a83c:7c59%6]) with mapi id 15.20.2136.018; Mon, 12 Aug 2019
 20:59:24 +0000
From: Leo Li <leoyang.li@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Chuanhua Han <chuanhua.han@nxp.com>
Subject: RE: [PATCH 1/4] arm64: dts: ls1088a: Fix incorrect I2C clock divider
Thread-Topic: [PATCH 1/4] arm64: dts: ls1088a: Fix incorrect I2C clock divider
Thread-Index: AQHVTDQ4Ae8WN9+9zkCguoEFMcJTHKb3mOoAgABwPWA=
Date: Mon, 12 Aug 2019 20:59:24 +0000
Message-ID: <VE1PR04MB66871BA9508765C03449E2598FD30@VE1PR04MB6687.eurprd04.prod.outlook.com>
References: <20190806084223.23543-1-chuanhua.han@nxp.com>
 <20190812141722.GJ27041@X250>
In-Reply-To: <20190812141722.GJ27041@X250>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leoyang.li@nxp.com; 
x-originating-ip: [64.157.242.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bec6a755-dead-46ed-e885-08d71f67f50d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VE1PR04MB6365; 
x-ms-traffictypediagnostic: VE1PR04MB6365:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB6365BD6B5C115B8E49785C208FD30@VE1PR04MB6365.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2958;
x-forefront-prvs: 012792EC17
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(136003)(346002)(39860400002)(396003)(189003)(199004)(13464003)(33656002)(81156014)(55016002)(86362001)(71190400001)(7696005)(6506007)(7736002)(9686003)(53936002)(6436002)(186003)(102836004)(52536014)(74316002)(476003)(53546011)(486006)(6246003)(8676002)(76176011)(25786009)(316002)(229853002)(110136005)(26005)(5660300002)(305945005)(4326008)(99286004)(446003)(6636002)(11346002)(54906003)(3846002)(6116002)(64756008)(71200400001)(66446008)(14454004)(14444005)(66066001)(66946007)(478600001)(76116006)(8936002)(66476007)(256004)(66556008)(81166006)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6365;
 H:VE1PR04MB6687.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: wGZ+/bBOzNvwQBWUBrjFqhlIVrzmvnawTXatTZPvRBI4H+1QNhapFsAL9YYiK3eioL10OR+z3eb2vGN6uV8vvJzGO/PclXxBUaCqdcKtFTeVCQ1wvmDsfLpxbKXyrSwtS4XmY/P2lakbWvWmrY8jkuCbTgLQuJsEj34lHU9YDCHbwByp0v8AIukOCTSe//uCobi+wDt9IgjJdFjI1iEZeKtVqvfGZ9JffGldMKmqkPt4rwZ9tkhkTlJeaJSQed55jVoOJahgaBWdxEl9oHNmolr0DhNrO7aH0SHr95nJC2Fys6hFcN3F0hhKB5qi1HJv5jiTjsVktJ/bejqH6PFirbpZxWo0FQAZpQ6BkXdcOrBMPwE/rEC3d9f+GLlrabiiOBXMJhoCNYE33yASzOcrNwMBWoheK5Oc0LQF/VvEXtY=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bec6a755-dead-46ed-e885-08d71f67f50d
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2019 20:59:24.8866 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: leoyang.li@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6365
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_135929_595146_8E58B3F5 
X-CRM114-Status: GOOD (  14.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.88 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Shawn Guo <shawnguo@kernel.org>
> Sent: Monday, August 12, 2019 9:17 AM
> To: Chuanhua Han <chuanhua.han@nxp.com>
> Cc: Leo Li <leoyang.li@nxp.com>; robh+dt@kernel.org;
> mark.rutland@arm.com; linux-arm-kernel@lists.infradead.org;
> devicetree@vger.kernel.org; linux-kernel@vger.kernel.org
> Subject: Re: [PATCH 1/4] arm64: dts: ls1088a: Fix incorrect I2C clock divider
> 
> On Tue, Aug 06, 2019 at 04:42:20PM +0800, Chuanhua Han wrote:
> > Ls1088a platform, the i2c input clock is actually platform pll CLK / 8
> > (this is the hardware connection), other clock divider can not get the
> > correct i2c clock, resulting in the output of SCL pin clock is not
> > accurate.
> >
> > Signed-off-by: Chuanhua Han <chuanhua.han@nxp.com>
> 
> @Leo, looks good?

Yes.

Acked-by: Li Yang <leoyang.li@nxp.com>

> 
> Shawn
> 
> > ---
> >  arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
> > b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
> > index 20f5ebd..30b760e 100644
> > --- a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
> > @@ -324,7 +324,7 @@
> >  			#size-cells = <0>;
> >  			reg = <0x0 0x2000000 0x0 0x10000>;
> >  			interrupts = <0 34 IRQ_TYPE_LEVEL_HIGH>;
> > -			clocks = <&clockgen 4 3>;
> > +			clocks = <&clockgen 4 7>;
> >  			status = "disabled";
> >  		};
> >
> > @@ -334,7 +334,7 @@
> >  			#size-cells = <0>;
> >  			reg = <0x0 0x2010000 0x0 0x10000>;
> >  			interrupts = <0 34 IRQ_TYPE_LEVEL_HIGH>;
> > -			clocks = <&clockgen 4 3>;
> > +			clocks = <&clockgen 4 7>;
> >  			status = "disabled";
> >  		};
> >
> > @@ -344,7 +344,7 @@
> >  			#size-cells = <0>;
> >  			reg = <0x0 0x2020000 0x0 0x10000>;
> >  			interrupts = <0 35 IRQ_TYPE_LEVEL_HIGH>;
> > -			clocks = <&clockgen 4 3>;
> > +			clocks = <&clockgen 4 7>;
> >  			status = "disabled";
> >  		};
> >
> > @@ -354,7 +354,7 @@
> >  			#size-cells = <0>;
> >  			reg = <0x0 0x2030000 0x0 0x10000>;
> >  			interrupts = <0 35 IRQ_TYPE_LEVEL_HIGH>;
> > -			clocks = <&clockgen 4 3>;
> > +			clocks = <&clockgen 4 7>;
> >  			status = "disabled";
> >  		};
> >
> > --
> > 2.9.5
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
