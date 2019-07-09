Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 106BC63019
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 07:41:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K6fE6kkl/ohaTj+zoQD7Y+KJ1B6i+W/fh5QxC3a52N0=; b=NBkVi9lu1PZm0g
	tZQL9lmjWejnk0fwi4OYP0wIKsN8JFwRChg5Kn+KgoCy4q5AskEENHn7KrLnXAo2lcGm/Xft9/fTG
	GGfLEJsB2EMc17cJWwQxsszCmOQwKbuSe0joyhVRRrMr9xiKOlt4z5+OusNsejPN+sBRM6ai+q+Ct
	gzHJV11Yeo7Y3egfGbLgFVnb3h5vMLGC+yW4f6OW3SrfgeEbB9YgZ7n1As+HPMzlvkn7AqJuRapO5
	gPTP+nCGRa5ndOcJ0Rmcr9aM7Jxbd+fkjOm2H8FjgmATQ3F8QezbudM9EM9aQ8HuZ88o7r4eFxtbd
	MAfFfyOmbIjtJ7b09o1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkisG-0001Zk-LC; Tue, 09 Jul 2019 05:41:08 +0000
Received: from mail-eopbgr70054.outbound.protection.outlook.com ([40.107.7.54]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkis0-0001ZF-Db
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 05:40:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=alo2+jNxlDvHNnmY6ncZT3TG91kd09P5iTNL58KzdHc=;
 b=ko1RFjjHEoKQXg7k5mLvWEsoGM088kYUdeAgR+PPKUOVB0A2QDZCDc/QoslqaJQWAerme5SsxJZ7papAb9VzVrHcQa+U6e0D3m4UHnaizsTECQB//WS4/lp6N+KW6/XoiAG5i4O1DIv5ULfnfE1x7SkJPcr9atrDkHEQ2X5cs/w=
Received: from AM6PR0402MB3911.eurprd04.prod.outlook.com (52.133.30.10) by
 AM6PR0402MB3799.eurprd04.prod.outlook.com (52.133.29.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.16; Tue, 9 Jul 2019 05:40:49 +0000
Received: from AM6PR0402MB3911.eurprd04.prod.outlook.com
 ([fe80::d5e6:6a87:7e6:95a]) by AM6PR0402MB3911.eurprd04.prod.outlook.com
 ([fe80::d5e6:6a87:7e6:95a%5]) with mapi id 15.20.2052.020; Tue, 9 Jul 2019
 05:40:49 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: RE: [PATCH 2/2] arm64: dts: imx8mm: Assign highest opp as suspend opp
Thread-Topic: [PATCH 2/2] arm64: dts: imx8mm: Assign highest opp as suspend opp
Thread-Index: AQHVMjD62bccyXxndUyDszIpSDkBnabAaO+AgAACe/CAAARwgIAAADZQgAFNtACAAA828A==
Date: Tue, 9 Jul 2019 05:40:49 +0000
Message-ID: <AM6PR0402MB3911D4AA40BC328420DD2CA5F5F10@AM6PR0402MB3911.eurprd04.prod.outlook.com>
References: <20190704061403.8249-1-Anson.Huang@nxp.com>
 <20190704061403.8249-2-Anson.Huang@nxp.com>
 <DB7PR04MB50519C02D90675070F21501DEEFA0@DB7PR04MB5051.eurprd04.prod.outlook.com>
 <20190708082511.py7gnjbqyp7bnhqx@vireshk-i7>
 <DB3PR0402MB391622133CD116FDE26A4F9AF5F60@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20190708084957.waiwdun327pgvfv4@vireshk-i7>
 <DB3PR0402MB39164E2F386181255ED37F45F5F60@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20190709044504.gyljwwnxdt5niur5@vireshk-i7>
In-Reply-To: <20190709044504.gyljwwnxdt5niur5@vireshk-i7>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f690bd0a-d01f-406e-60ce-08d7042fff7f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR0402MB3799; 
x-ms-traffictypediagnostic: AM6PR0402MB3799:
x-microsoft-antispam-prvs: <AM6PR0402MB3799E10FC12C5E4EEBD416F6F5F10@AM6PR0402MB3799.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0093C80C01
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(39860400002)(366004)(376002)(136003)(189003)(199004)(76176011)(305945005)(8936002)(99286004)(7696005)(54906003)(26005)(7416002)(81166006)(102836004)(186003)(66476007)(6916009)(66066001)(7736002)(14444005)(446003)(476003)(5660300002)(11346002)(74316002)(64756008)(66446008)(44832011)(76116006)(86362001)(256004)(66946007)(52536014)(6506007)(66556008)(81156014)(8676002)(53546011)(486006)(71200400001)(71190400001)(73956011)(6246003)(478600001)(25786009)(14454004)(2906002)(15650500001)(6436002)(316002)(229853002)(3846002)(6116002)(55016002)(4326008)(53936002)(9686003)(33656002)(68736007)(4744005)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR0402MB3799;
 H:AM6PR0402MB3911.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: AtrVcCsnY0+uiR1Zxv8u8uBg045zmLvTdSq5Y+3xaoXMMi09MWWXZXZEMLuN7aaCt96HkiBXhedphH14ULzA5bKa2Z/7kA0vZm+ITm/7nxox9P46C+Wzog4tygnGErVrDKXGEkMJXMKZMjd4p811LbGGB9eDwkVBK/NbwUdso+UdUHcAjyXYLUc4irL4kiEmdUBleuamryFzaJ4Ag9P3lk/ZW+II8puKtk3QN5LWygUQMt+PTLxAIIYy8dF3aH0e+6V52JKh2yLMMCpgTn7fUr2ZCncCTP8PX80mow7SYQU2Gi1C+T0tSrsjjl0boeu6IUfiwaWqv9dqb5duxaerKNBgS+FlvAWi9LRvFm4SuIVAXm53MiHyXxM0pXG/nfh+ctAbosleAUnjJ5f7uPVVPFuEmwoB/uLj75ZmIdnQRtw=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f690bd0a-d01f-406e-60ce-08d7042fff7f
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jul 2019 05:40:49.1397 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0402MB3799
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_224052_463255_7877B6BA 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.54 listed in list.dnswl.org]
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Jacky Bai <ping.bai@nxp.com>, "ccaione@baylibre.com" <ccaione@baylibre.com>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "angus@akkea.ca" <angus@akkea.ca>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "agx@sigxcpu.org" <agx@sigxcpu.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Viresh

> On 08-07-19, 08:54, Anson Huang wrote:
> > Each OPP has "opp-supported-hw" property as below, the first value
> > needs to be checked with speed grading fuse, and the second one needs
> > to be checked with market segment fuse, ONLY both of them passed, then
> > this OPP is supported. It calls dev_pm_opp_set_supported_hw() to tell
> > OPP framework to parse the OPP table, this is my understanding.
> >
> > opp-supported-hw = <0x8>, <0x3>;
> 
> Right, so that's what I was expecting.
> 
> One thing we can do is change the binding of OPP core a bit to allow multiple
> OPP nodes to contain the "opp-suspend" property and select the one finally
> with the highest frequency. That would be a better as a generic solution IMO.
> 
> And then a small OPP core patch will fix it.

Looks good, I will try to generate a patch for of OPP core.

Thanks,
Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
