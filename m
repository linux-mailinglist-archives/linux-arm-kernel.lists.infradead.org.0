Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 405F959482
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 08:59:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vhp9nce2Ugj1Ku0dhSPFqo0BzazI0zyvbzhVEypzqSQ=; b=uwtY2J+liHRVsa
	ATmPpqE7B25gHIlt3pLS4pbJuEdcBGgCp3L6ufxgoopcFMTPD9iavL/F8WHRLNhlqvXbLUA9gX3+f
	5EJKRy+ZpSnRcrBL751cKAlRrFoaFDUmk1fxB8TZ7JqxpQWyEHD+QW1ptHlPI+xYYCZbUzw7wFh+U
	F+DPSZs0JdGcN2ciHWgwhOJsdVEjmnY/O3C3OQ6WEuK4EDoRmYSlVKIoXNe+DMFPCMLSAXGxe2WXS
	lMy82aeOXXqTVdvqitv8ECCFRKnCeUSzNvFOglwpfXDhfebI7ou4C3sBD6ARJzN2lRo5arPKddo/+
	uQ3R9oBkQ/BeoHH0UUeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgkrD-0006Nc-Oy; Fri, 28 Jun 2019 06:59:40 +0000
Received: from mail-db5eur01on0621.outbound.protection.outlook.com
 ([2a01:111:f400:fe02::621]
 helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgkr1-0006N7-8H
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 06:59:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=testarcselector01; d=microsoft.com; cv=none;
 b=DPg05ow4Cc4F+wX7Y9WRFgbq8bEVw+GAQdMN4c4mJUku4TNd7TLMToCICjYOSJURPSFywzuQLAknDuKVqSHM2i8R9Dwlz8RRxdUl3KeAu1xbIzQHrOVcGUcjtvx28u72M9iEiCBTHzRlZ1CJUda+iIcuMTiMq2SnjHqUhemqsng=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=testarcselector01;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ng7sYhThv2TVOJv4+Z4iNZX0IpyCAVu3J1Is4KBaFUU=;
 b=cRACF9qVhDLeBGrSCJjTeJDLB9vb7SPuf2i27aONaiP+9YhazE+t663EjkMqbHQWXjtjgDpoTaZ2TGn2XGwoPjJg3zZg8bUOjNZsy+QgmwbviFmivIRJvIt9WENKQ+mMvB1GYcaCz0AL+pOkIcdKYVGxqS3PB7eXP2bCVoBbg2Y=
ARC-Authentication-Results: i=1; test.office365.com
 1;spf=none;dmarc=none;dkim=none;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ng7sYhThv2TVOJv4+Z4iNZX0IpyCAVu3J1Is4KBaFUU=;
 b=F0oCbKl5BJV2GA5i48N5I06EeeCeyQByoSuPmtFKqw+cK3wkYFRvPVk9fukT+dNe4+no62WHqNaXVEWj1C8Y3NkwGgYxEDypCkxXMfNdqwgF3F43lca5Xlh11zHrZDfq5qxy8mSpmLUhP4pR4uQoJNW948Ihyi3oEOX/VSeC1EM=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3642.eurprd04.prod.outlook.com (52.134.65.24) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Fri, 28 Jun 2019 06:59:22 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191%4]) with mapi id 15.20.2032.018; Fri, 28 Jun 2019
 06:59:22 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Leonard Crestez <leonard.crestez@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Subject: RE: [PATCH 1/2] arm64: dts: imx8mq: Correct OPP table according to
 latest datasheet
Thread-Topic: [PATCH 1/2] arm64: dts: imx8mq: Correct OPP table according to
 latest datasheet
Thread-Index: AQHVLWLGC+RlanjcBUWXXhB78aHmNqawoHUw
Date: Fri, 28 Jun 2019 06:59:22 +0000
Message-ID: <DB3PR0402MB39166309D463520DE5C129C8F5FC0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190628032800.8428-1-Anson.Huang@nxp.com>
 <VI1PR04MB50553915C0D978A8019BDC5CEEFC0@VI1PR04MB5055.eurprd04.prod.outlook.com>
 <DB3PR0402MB39161C60DC780B693933F9EAF5FC0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <VI1PR04MB505542FB866BC18A27D22B90EEFC0@VI1PR04MB5055.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB505542FB866BC18A27D22B90EEFC0@VI1PR04MB5055.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6a4362ab-3205-469b-deba-08d6fb962680
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3642; 
x-ms-traffictypediagnostic: DB3PR0402MB3642:
x-microsoft-antispam-prvs: <DB3PR0402MB3642AD5B60D201655E0CD0AEF5FC0@DB3PR0402MB3642.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 00826B6158
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(376002)(39860400002)(366004)(136003)(189003)(199004)(13464003)(446003)(9686003)(73956011)(110136005)(54906003)(44832011)(66476007)(66446008)(11346002)(64756008)(76116006)(7416002)(53936002)(81156014)(8936002)(4326008)(3846002)(81166006)(25786009)(68736007)(6116002)(86362001)(476003)(486006)(478600001)(66556008)(26005)(8676002)(6436002)(229853002)(55016002)(53546011)(102836004)(6506007)(186003)(33656002)(2906002)(5660300002)(76176011)(71190400001)(71200400001)(52536014)(7696005)(66946007)(74316002)(2501003)(66066001)(256004)(7736002)(14444005)(6246003)(14454004)(316002)(99286004)(305945005)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3642;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: TnuAsgFIFQrnoJs+/442c3OXG5903S+a95/0C04fRs40fNySAOycJr75NkuoPbPwd7TIDcscFtWQh+XO2zkg4svHKZXva9Ff0m2pF05PqomoiNEnHGJ0oXlXu+drbktTce/uW69DxuO7pgUqKQo5Ob9kkDn1z64d3aTdqFoS/BCDO1JAorjd/4KVEF1o0Vvgy4sS65gJAOpO8XtagQ3Jy25B5IVQm1pOQq8lQJgvLaHMYn8GIrAHrIagjEjn018HH+opOMvwiGRZqqats0nV+FYQFg84DlahcDM9UJGRxj0zojcB0Kt7cMUZO1hIjPkgYRN8m3WJ38GjKtV+5aYTn/KJpwfo7T0h3ynShWHotwmZ5i+bzcGtGTnQYmRIVrQjgVGOuOWAfytmW2/sjZ+vsptnxdFSjPEkImvijE70ywQ=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a4362ab-3205-469b-deba-08d6fb962680
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jun 2019 06:59:22.7890 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3642
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_235927_389480_A646B80C 
X-CRM114-Status: GOOD (  24.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe02:0:0:0:621 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
 Abel Vesa <abel.vesa@nxp.com>, "ccaione@baylibre.com" <ccaione@baylibre.com>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "angus@akkea.ca" <angus@akkea.ca>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 "festevam@gmail.com" <festevam@gmail.com>, "agx@sigxcpu.org" <agx@sigxcpu.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Leonard Crestez
> Sent: Friday, June 28, 2019 2:45 PM
> To: Anson Huang <anson.huang@nxp.com>; Jacky Bai <ping.bai@nxp.com>;
> l.stach@pengutronix.de
> Cc: shawnguo@kernel.org; robh+dt@kernel.org; mark.rutland@arm.com;
> s.hauer@pengutronix.de; kernel@pengutronix.de; festevam@gmail.com;
> viresh.kumar@linaro.org; Daniel Baluta <daniel.baluta@nxp.com>; Abel
> Vesa <abel.vesa@nxp.com>; andrew.smirnov@gmail.com;
> ccaione@baylibre.com; angus@akkea.ca; agx@sigxcpu.org;
> devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> kernel@vger.kernel.org; dl-linux-imx <linux-imx@nxp.com>
> Subject: Re: [PATCH 1/2] arm64: dts: imx8mq: Correct OPP table according to
> latest datasheet
> 
> On 6/28/2019 9:16 AM, Anson Huang wrote:
> >> From: Leonard Crestez
> >>> From: Anson Huang <Anson.Huang@nxp.com>
> >>>
> >>> According to latest datasheet (Rev.1, 10/2018) from below links, in
> >>> the consumer datasheet, 1.5GHz is mentioned as highest opp but
> >>> depends on speed grading fuse, and in the industrial datasheet,
> >>> 1.3GHz is mentioned as highest opp but depends on speed grading
> >>> fuse. 1.5GHz and 1.3GHz opp use same voltage, so no need for
> >>> consumer part to support 1.3GHz opp, with same voltage, CPU should
> >>> run at highest frequency in order to go into idle as quick as possible, this
> can save power.
> >>
> >> I looked at the same datasheets and it's not clear to me that 1.3 Ghz
> >> should be disallowed for consumer parts. Power consumption increases
> >> with both voltage and frequency so having two OPPs with same voltage
> >> does make sense.
> >
> > The consumer part datasheet does NOT mention 1.3GHz at all, so
> > consumer part ONLY support 1GHz/1.5GHz, and industrial part ONLY
> > support 800MHz/1.3GHz, this is what we did in our internal tree and
> > NPI release, so better to make them aligned, otherwise, we have to change
> it when kernel upgrade.
> 
> Datasheet seems ambiguous: it mentions "max freq for volt" so my
> understanding is that any lower freqs should also work at that voltage.
> 
> This also seems to be the understanding behind commit 8cfd813c7307
> ("arm64: dts: imx8mq: fix higher CPU operating point") by Lucas. 
> 
> On datasheet page 7 it mentions that product code can have "JZ" or "HZ"
> for 1.3Ghz or 1.5Ghz. Are you saying that only industrial parts can be "JZ"?

If take a look at page 6 table2, industrial datasheet ONLY has "HZ", and consumer
Datasheet ONLY has "JZ". And yes, that is my understanding.

And considering our rule, I don't think is benefit for consumer part to run 1.3GHz.

> 
> >>>    			opp-hz = /bits/ 64 <1500000000>;
> >>>    			opp-microvolt = <1000000>;
> >>>    			/* Consumer only but rely on speed grading */
> >>> -			opp-supported-hw = <0x8>, <0x7>;
> >>> +			opp-supported-hw = <0x8>, <0x3>;
> >>
> >> If you don't want to rely on the fact that only consumer parts should
> >> be fused for 1.5 Ghz then please delete the comment.
> >
> > Don't quite understand, 1.5GHz is indeed consumer ONLY, but if the
> > consumer part is fused to 1GHz, then 1.5GHz is also NOT available, so
> > it also rely on speed grading. So keep the comment there is OK?
> 
> What I meant with that comment is that 1.5Ghz is only mentioned for
> consumer parts but instead of explicitly banning it on industrial parts we rely
> on MFG never fusing industrial parts for 1.5Ghz.
> 
> Now you're explicitly banning it on industrial parts.

Yes, industrial parts never support up to 1.5GHz, so explicitly banning it is just OK.
The speed grading fuse and market segment fuse are actually has some overlap,
we better to implement both of them.

> 
> This comment is indeed confusing so better to just remove all instances.

I agree to remove those comments, no need to let it introduce any confusion.

Anson.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
