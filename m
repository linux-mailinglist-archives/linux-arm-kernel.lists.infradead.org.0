Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B06E871563
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 11:40:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2+lxqoFjL4E7Brr7ah4BsjsyEbz3KSYe8KFXmEOrMok=; b=Y3kyDezIxNBwIg
	5hha/qa8oJJiFCGNv/drFOCUPkQ7U0dVqRi3Dy5TEohgX79vjW0qetnRMiNSwA4WQgRcGc6YQfHhj
	FytidfjkSj2JtSwzhCVKnYceq9pnjZY/J18Cf35zWrXTZBW7jwHR651WeBI8WOE3WK/FJuUq05C0W
	4xazMuIUDRDpDQdvbyIDv4VCmwlp3IGjQL3azuZpf0LnRIVfLFcFX6KD3x4k1W6uO0I5VD9OjteB7
	rpH97KbY9BE32Jar8EU9t/sLOKERu8jiPd/QC3APMCGMOsRX7tOpLk7SwSscoaN1kmFZCnUMygRrq
	S6TeMk2mhjOsCsNM+emg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hprH5-0006sC-LI; Tue, 23 Jul 2019 09:39:59 +0000
Received: from mail-am5eur03on0630.outbound.protection.outlook.com
 ([2a01:111:f400:fe08::630]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hprGq-0006rB-CI
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 09:39:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q+yjdHciVj5lXPxtsk44IjEEnQKVGk6mxzjXN3g3YbMEBcDVRNWpF/UVkD9ag/JWlwgXnmuQcw+ujCxqWe8EUC/OJteuLO5+9qLgrP0R3tL5l2/od6PahV3phov7CijaRET71VuFbX5z3emazMVnADO5GSykqqYVUi7Yszq/VpU1MIfy1YIX7P46L7tHTvfvE/k2N2oNwd50xjI+GYTlrhgtX1plnbemxMYweaXTGuHIMBHn6BO4FxqFTnyuixgGvcCDepXcIO1P3D80HkXUdkoGrUU92hWytcADwfVuZgDX6mGRSkqy9pSvpuowJlstUvKoBjaExgnOHIxMI5ixhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lLF0Y/Ec0tifAwySyObSrya9robouJG6vvPac0aewxI=;
 b=eTrbFOmwzIZrtCU/uNzfY7O6ACgfDH0UwhZv/6OBVDd2Ko0WI6K+NAVR9hEgzo6DeLrN5EUYfIeutgqz8pLohjfJLSlpiGdzeUh6Z3mCcbz9sLH19iOu7cyR4w6CZx/WlnbH0N9qtpLKUspxNtu4kyUKy/039dZFG1QEA+lwj6Nv0lyEfBvt77KIldDTv9WqKP9b0FjZfU0bOj+JnkAwBtkBmIo+RiDmxXVU6cCMAO+1a7uhG1/lFbcpsVK+lSRw96L1+W5hSCmJIZUILX8PKPJIQyk1WeCHmn0pFACw2tkp4nIgCPbXBlIb/t8xXFDR3aKdvbCZS1SPom87Dnh1jQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lLF0Y/Ec0tifAwySyObSrya9robouJG6vvPac0aewxI=;
 b=kF/DMJXO0s5M8vS5hHzQJfgzgFFrkMj9ULhSO0itYxQ5c5vz9dRJzdOEwzOsMQoO+0R/jOzmeY0tJiTrz6uCzFrzVcscwsSqBsJaADcDZskmwzgKVSJt/c50TAopoihyuKIwgKAGlp+ZikDo32tTYIy5gFFhKA82LGT+l9lfUYM=
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (20.179.235.81) by
 VE1PR04MB6382.eurprd04.prod.outlook.com (20.179.232.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.16; Tue, 23 Jul 2019 09:39:39 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::905c:a110:72fc:3a49]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::905c:a110:72fc:3a49%7]) with mapi id 15.20.2094.017; Tue, 23 Jul 2019
 09:39:38 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH v5 12/15] ARM: dts: imx6ul: add dma support on ecspi
Thread-Topic: [PATCH v5 12/15] ARM: dts: imx6ul: add dma support on ecspi
Thread-Index: AQHVH2TVoxrocaPAG0GbhXUgE95pRabOlrSAgAmbW7A=
Date: Tue, 23 Jul 2019 09:39:38 +0000
Message-ID: <VE1PR04MB663894FA5BC88B130C70AC0789C70@VE1PR04MB6638.eurprd04.prod.outlook.com>
References: <20190610081753.11422-1-yibin.gong@nxp.com>
 <20190610081753.11422-13-yibin.gong@nxp.com> <20190717064204.GA3738@dragon>
In-Reply-To: <20190717064204.GA3738@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f96ff179-70ad-4cc7-b322-08d70f51ae70
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VE1PR04MB6382; 
x-ms-traffictypediagnostic: VE1PR04MB6382:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <VE1PR04MB6382F5CF2D04D6B5299B4BBC89C70@VE1PR04MB6382.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0107098B6C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(396003)(136003)(39860400002)(366004)(189003)(199004)(7696005)(14454004)(81166006)(4744005)(305945005)(5660300002)(99286004)(446003)(6306002)(53936002)(6246003)(11346002)(68736007)(7736002)(26005)(9686003)(76176011)(55016002)(86362001)(3846002)(6116002)(81156014)(8936002)(2906002)(256004)(966005)(6436002)(316002)(25786009)(66066001)(71200400001)(66446008)(186003)(76116006)(74316002)(66476007)(4326008)(476003)(66946007)(33656002)(71190400001)(64756008)(52536014)(478600001)(8676002)(54906003)(7416002)(53546011)(486006)(102836004)(4001150100001)(229853002)(66556008)(6916009)(6506007)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6382;
 H:VE1PR04MB6638.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: CAw1ylzESQ0pUt41QiT0W1vyWczgi4KPP5jwsEY8Jvwen4ano1FYETlB3gCaGWo/gc6bAQrPGmRFYmHP2rxbAxTpppF97/mQxn7ey3OOvEgYkzdYBsQdULxpkqqneGJVh6Kh1ptaI2+pV7m36P/dvLWf4qP2JrkITiBMHLX9o2rk1WEP5PIgbnPc1jSB13soI+OkpIamlNUXFNL23WX33bS8LU3T5rtfShmjPZmxNvAscxplPGfzYcScZgSb+jv32V+DVF0nSGzcT0Ej4g97VhrXO2zus8PV2AQgNy6wqJdFqop32+zXyG3vWsQekR9FmhPDGm901xD0WfhvhEHvXY0ZrLJTOKdgCiKPO2T1KNHCya2CKEJtXFQqm4U3gbW70tj6lIZV5dgPT7DOp4L1NLTyZwvDGQcTOcYSC5E1CAw=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f96ff179-70ad-4cc7-b322-08d70f51ae70
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2019 09:39:38.8864 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yibin.gong@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6382
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_023944_419583_9D7885CB 
X-CRM114-Status: GOOD (  10.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe08:0:0:0:630 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "will.deacon@arm.com" <will.deacon@arm.com>, dl-linux-imx <linux-imx@nxp.com>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "broonie@kernel.org" <broonie@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-7-17 at 14:42 Shawn Guo <shawnguo@kernel.org> wrote:
> On Mon, Jun 10, 2019 at 04:17:50PM +0800, yibin.gong@nxp.com wrote:
> > From: Robin Gong <yibin.gong@nxp.com>
> >
> > Add dma support on ecspi.
> >
> > Signed-off-by: Robin Gong <yibin.gong@nxp.com>
> 
> Applied, thanks.
Thanks Shawn, but how about other dts patches such as 01/15,02/15?
Hi Mark and Vinod,
 I got Ack from you last month on v5, https://patchwork.kernel.org/cover/10984301/
Is it the right time to apply v5 ? Any concern, please let me know, thanks.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
