Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16827CEE7A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 23:36:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XSynpD8QtZBdfDV1Dt2S50/LI6gl/NE0+j5g3/zJF3Y=; b=pnng9I73Q3pcjy
	Qc+rdYc2zyRiXDp1Fi+eSOko1Vv66MUAsWeSS296ZyV8ssydvhvD6xSBmvu3cQGf1FUM/PifTfrxt
	Pi4NsnMnpNFNwGgcPlpX20jGnGo9iCOZA4Nhn6tts3Y4gnNBf1DoPs6qZSWkYPi0dJZKarKA8Hri+
	YhY3YWRQMWtPtJj9vYjqh+JgSe5B0B5cbmisEhAGzdreFsb9EO/XiF+ug2EpwfhzXaeYWjwM0HHwN
	UW/1DSBHoJm3vIL6T/nMtkgoACQ2d6vQBZSp+TmYDD/m57HrDJq1UUn1Lopt3rVbBhhkkc0ThN0fI
	sMexXDeAAzvlfMCzXmfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHagF-0004jh-QA; Mon, 07 Oct 2019 21:36:35 +0000
Received: from mail-eopbgr150085.outbound.protection.outlook.com
 ([40.107.15.85] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHag6-0004j5-VE
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 21:36:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nKR/PS2geALwHm/hD3c4gqKaZWTcmrnCCYx9nallOPhwWMFvRqIEVwixumTsKuvN/3/NmxV5kBpM92InTzLp9ml3+B8RrSKeLRiANbO5Hd4Rkbin+KwIOIDMu4io8SUgZCBZlQwYhyae124EvdOGVgVDRoqEgxcFWkM6KmicW/hQNJMpfJFP94VX4Zt+UuRlhPPlvrU+4Akl7sxDQRRv7Hd1NIczK8sJZC4cswK8A48OaN9iNyhaHc+/IxI3kQvqPHWFemEU0PKgdCE4etArq2vCBeu+HWJ/jAEqybSebtoyW3mQWLx+4NvmfmV9/uZ7eCSi9LVkgmgazwvp/c5IRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ei25beopCtm1f87mBuCBJIwvy5p0S1xRGw56QyoxYRI=;
 b=D0r8FgC2cTeNZBB7SqANVIFUgX6Ckjqx/IEMErzt83Ryz4JDZLn3Xf8agIqxl6NU7PQKX2k+1vhk2YAk3m+3nwL4JqVpqB929yoojwiKRwdm+SdCr74cMMvWrJQB01qqub58ZDMFU4QWM7IK99qRQVRYubEbl0DitdPkdt1Nr5xYNRCC1jx0nTJM4qvtlo5kaeOlNDiHtPPBfg+36R4BxrP3BCspkuH2G59FCcpYgrxrVOTuhf1BgJDtE1dVMVR2zWhgGJX8zcB1shAKx41nYqIRw77LNEQdG1Be5DJGgIaxAuuLIOO+dUrSmYCczwH+p9uiE+WitaXexh4PVxpU0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ei25beopCtm1f87mBuCBJIwvy5p0S1xRGw56QyoxYRI=;
 b=aLdYhfC9mozXwUWUi5QKcJVD0aZYjNt9ao4+IqqKrwWdFhSjmKeO1PSZLe6f+3aZlFEvyf8DwEkflSfch1juvRZnrWqOOBfVW8I4iOxbdliwBNne/XYTY01WTpzUN2dp2W3eplaUZwrI3QxvSqWrrngYAgkfvoDdoVJtTDWv1jo=
Received: from VE1PR04MB6687.eurprd04.prod.outlook.com (20.179.234.30) by
 VE1PR04MB6749.eurprd04.prod.outlook.com (10.255.118.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.24; Mon, 7 Oct 2019 21:36:24 +0000
Received: from VE1PR04MB6687.eurprd04.prod.outlook.com
 ([fe80::c93:c279:545b:b6b6]) by VE1PR04MB6687.eurprd04.prod.outlook.com
 ([fe80::c93:c279:545b:b6b6%3]) with mapi id 15.20.2327.025; Mon, 7 Oct 2019
 21:36:24 +0000
From: Leo Li <leoyang.li@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Ran Wang <ran.wang_1@nxp.com>
Subject: RE: [PATCH] arm64: dts: lx2160a: Correct CPU core idle state name
Thread-Topic: [PATCH] arm64: dts: lx2160a: Correct CPU core idle state name
Thread-Index: AQHVbSoQgKuB1YvE4E++c/2kBBS2fqdPMKwAgACjaGA=
Date: Mon, 7 Oct 2019 21:36:24 +0000
Message-ID: <VE1PR04MB66874D4C179BA0AD091AC3DB8F9B0@VE1PR04MB6687.eurprd04.prod.outlook.com>
References: <20190917073357.5895-1-ran.wang_1@nxp.com>
 <20191007115104.GF7150@dragon>
In-Reply-To: <20191007115104.GF7150@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leoyang.li@nxp.com; 
x-originating-ip: [64.157.242.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2696280a-3eed-48a3-a3f3-08d74b6e670c
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: VE1PR04MB6749:|VE1PR04MB6749:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB6749E86F6E03C13BB4279AEA8F9B0@VE1PR04MB6749.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:462;
x-forefront-prvs: 01834E39B7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(396003)(376002)(136003)(39860400002)(346002)(13464003)(199004)(189003)(186003)(4326008)(2906002)(6116002)(26005)(55016002)(6436002)(33656002)(64756008)(66946007)(102836004)(66556008)(66476007)(6636002)(76116006)(25786009)(6246003)(66446008)(71200400001)(9686003)(229853002)(7696005)(71190400001)(99286004)(76176011)(305945005)(3846002)(74316002)(53546011)(66066001)(7736002)(256004)(14444005)(6506007)(110136005)(11346002)(446003)(54906003)(476003)(14454004)(486006)(316002)(5660300002)(8936002)(8676002)(81156014)(81166006)(478600001)(52536014)(86362001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6749;
 H:VE1PR04MB6687.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vfToijxhyQ7YVdx+vuxNSbRq5mLgIbI7WlUPrSNFiCvTe8lC7gnCi00Gy0XgvdlQqQoyIy/1gnyDiOnx1kPcn38JpqVmjUmw9YnkIrQe9QPH6+At+1F6qIfLrwEys/4I+Imj9y46qGveRRSkSOwVAK3m9NeSVwTku2qbcDL9tRYd1ZVleEkjAJ89MGHHXMeqY3ZgW6kV3T0iO8tuKPrlkhWoh9Xe7W2P3vAXNAhJfAgH7V+1oLDCtcP9gkq6r4UwWMsb8B3+Qt1+qx0HPPdS5VUhlmt42fhut93qfrKiZPT2nq/EULS3pR12vTPEuzgOizOGowBKW3y2yBh3ycrxWUNJs3eRNknUSUHxgaEcj4G6mBA1qUZsGuEEpJOCQqcxAfEN5JE0jB2PdJlx2BTaX2XmICv/QSl68hme329+1Oc=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2696280a-3eed-48a3-a3f3-08d74b6e670c
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2019 21:36:24.2332 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cKe6iu2w3Vt4s2rekkmEKMey0TeksJLfy1WtXEEYWZCJ2QsKbHqo/o9xTLhGQN+VSpklnZWnhq4XUu4FndeS2Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6749
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_143627_006411_EFC1CF29 
X-CRM114-Status: GOOD (  14.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.85 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.15.85 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Shawn Guo <shawnguo@kernel.org>
> Sent: Monday, October 7, 2019 6:51 AM
> To: Ran Wang <ran.wang_1@nxp.com>; Leo Li <leoyang.li@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>; Mark Rutland
> <mark.rutland@arm.com>; linux-arm-kernel@lists.infradead.org;
> devicetree@vger.kernel.org; linux-kernel@vger.kernel.org
> Subject: Re: [PATCH] arm64: dts: lx2160a: Correct CPU core idle state name
> 
> On Tue, Sep 17, 2019 at 03:33:56PM +0800, Ran Wang wrote:
> > lx2160a support PW15 but not PW20, correct name to avoid confusing.
> >
> > Signed-off-by: Ran Wang <ran.wang_1@nxp.com>
> 
> Leo, agree?

Ya.  The statement is correct.

Acked-by: Li Yang <leoyang.li@nxp.com>

> 
> Shawn
> 
> > ---
> >  arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi | 36 +++++++++++++------
> -------
> >  1 file changed, 18 insertions(+), 18 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> > index 408e0ec..b032f38 100644
> > --- a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> > @@ -33,7 +33,7 @@
> >  			i-cache-line-size = <64>;
> >  			i-cache-sets = <192>;
> >  			next-level-cache = <&cluster0_l2>;
> > -			cpu-idle-states = <&cpu_pw20>;
> > +			cpu-idle-states = <&cpu_pw15>;
> >  		};
> >
> >  		cpu@1 {
> > @@ -49,7 +49,7 @@
> >  			i-cache-line-size = <64>;
> >  			i-cache-sets = <192>;
> >  			next-level-cache = <&cluster0_l2>;
> > -			cpu-idle-states = <&cpu_pw20>;
> > +			cpu-idle-states = <&cpu_pw15>;
> >  		};
> >
> >  		cpu@100 {
> > @@ -65,7 +65,7 @@
> >  			i-cache-line-size = <64>;
> >  			i-cache-sets = <192>;
> >  			next-level-cache = <&cluster1_l2>;
> > -			cpu-idle-states = <&cpu_pw20>;
> > +			cpu-idle-states = <&cpu_pw15>;
> >  		};
> >
> >  		cpu@101 {
> > @@ -81,7 +81,7 @@
> >  			i-cache-line-size = <64>;
> >  			i-cache-sets = <192>;
> >  			next-level-cache = <&cluster1_l2>;
> > -			cpu-idle-states = <&cpu_pw20>;
> > +			cpu-idle-states = <&cpu_pw15>;
> >  		};
> >
> >  		cpu@200 {
> > @@ -97,7 +97,7 @@
> >  			i-cache-line-size = <64>;
> >  			i-cache-sets = <192>;
> >  			next-level-cache = <&cluster2_l2>;
> > -			cpu-idle-states = <&cpu_pw20>;
> > +			cpu-idle-states = <&cpu_pw15>;
> >  		};
> >
> >  		cpu@201 {
> > @@ -113,7 +113,7 @@
> >  			i-cache-line-size = <64>;
> >  			i-cache-sets = <192>;
> >  			next-level-cache = <&cluster2_l2>;
> > -			cpu-idle-states = <&cpu_pw20>;
> > +			cpu-idle-states = <&cpu_pw15>;
> >  		};
> >
> >  		cpu@300 {
> > @@ -129,7 +129,7 @@
> >  			i-cache-line-size = <64>;
> >  			i-cache-sets = <192>;
> >  			next-level-cache = <&cluster3_l2>;
> > -			cpu-idle-states = <&cpu_pw20>;
> > +			cpu-idle-states = <&cpu_pw15>;
> >  		};
> >
> >  		cpu@301 {
> > @@ -145,7 +145,7 @@
> >  			i-cache-line-size = <64>;
> >  			i-cache-sets = <192>;
> >  			next-level-cache = <&cluster3_l2>;
> > -			cpu-idle-states = <&cpu_pw20>;
> > +			cpu-idle-states = <&cpu_pw15>;
> >  		};
> >
> >  		cpu@400 {
> > @@ -161,7 +161,7 @@
> >  			i-cache-line-size = <64>;
> >  			i-cache-sets = <192>;
> >  			next-level-cache = <&cluster4_l2>;
> > -			cpu-idle-states = <&cpu_pw20>;
> > +			cpu-idle-states = <&cpu_pw15>;
> >  		};
> >
> >  		cpu@401 {
> > @@ -177,7 +177,7 @@
> >  			i-cache-line-size = <64>;
> >  			i-cache-sets = <192>;
> >  			next-level-cache = <&cluster4_l2>;
> > -			cpu-idle-states = <&cpu_pw20>;
> > +			cpu-idle-states = <&cpu_pw15>;
> >  		};
> >
> >  		cpu@500 {
> > @@ -193,7 +193,7 @@
> >  			i-cache-line-size = <64>;
> >  			i-cache-sets = <192>;
> >  			next-level-cache = <&cluster5_l2>;
> > -			cpu-idle-states = <&cpu_pw20>;
> > +			cpu-idle-states = <&cpu_pw15>;
> >  		};
> >
> >  		cpu@501 {
> > @@ -209,7 +209,7 @@
> >  			i-cache-line-size = <64>;
> >  			i-cache-sets = <192>;
> >  			next-level-cache = <&cluster5_l2>;
> > -			cpu-idle-states = <&cpu_pw20>;
> > +			cpu-idle-states = <&cpu_pw15>;
> >  		};
> >
> >  		cpu@600 {
> > @@ -225,7 +225,7 @@
> >  			i-cache-line-size = <64>;
> >  			i-cache-sets = <192>;
> >  			next-level-cache = <&cluster6_l2>;
> > -			cpu-idle-states = <&cpu_pw20>;
> > +			cpu-idle-states = <&cpu_pw15>;
> >  		};
> >
> >  		cpu@601 {
> > @@ -241,7 +241,7 @@
> >  			i-cache-line-size = <64>;
> >  			i-cache-sets = <192>;
> >  			next-level-cache = <&cluster6_l2>;
> > -			cpu-idle-states = <&cpu_pw20>;
> > +			cpu-idle-states = <&cpu_pw15>;
> >  		};
> >
> >  		cpu@700 {
> > @@ -257,7 +257,7 @@
> >  			i-cache-line-size = <64>;
> >  			i-cache-sets = <192>;
> >  			next-level-cache = <&cluster7_l2>;
> > -			cpu-idle-states = <&cpu_pw20>;
> > +			cpu-idle-states = <&cpu_pw15>;
> >  		};
> >
> >  		cpu@701 {
> > @@ -273,7 +273,7 @@
> >  			i-cache-line-size = <64>;
> >  			i-cache-sets = <192>;
> >  			next-level-cache = <&cluster7_l2>;
> > -			cpu-idle-states = <&cpu_pw20>;
> > +			cpu-idle-states = <&cpu_pw15>;
> >  		};
> >
> >  		cluster0_l2: l2-cache0 {
> > @@ -340,9 +340,9 @@
> >  			cache-level = <2>;
> >  		};
> >
> > -		cpu_pw20: cpu-pw20 {
> > +		cpu_pw15: cpu-pw15 {
> >  			compatible = "arm,idle-state";
> > -			idle-state-name = "PW20";
> > +			idle-state-name = "PW15";
> >  			arm,psci-suspend-param = <0x0>;
> >  			entry-latency-us = <2000>;
> >  			exit-latency-us = <2000>;
> > --
> > 2.7.4
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
