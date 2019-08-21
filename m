Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F1C496F84
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 04:28:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/lhOL28+yhOpbSToThhkGW8CpBz/SjLHNNEMdlgHt7U=; b=rDJcHYIzP6O7Ax
	Hof43ouOn1uZc1+YmRWKf2CfmLTFhj3m9k5Ea8xA0NJa+H2f/6ibOPjG/e14cYNp0z+qCdgaCwrky
	LhLP7QY0Pjg/kH9Q0chZI58VYyIKtOeN2Ckeqx06Y7H+krMA7/CJowSL5J4WDrmzitin9sg91mJTL
	/wEfn2R+ydBuQSogli3sXRHThLmh+keDpBHt9QhmJj991L0H9EsxiXdaGozCEUWFeaBRNBgr/FUEo
	+l3DIicbZQ5H1Pumo/mVsKHLe1Zrv4fe6Z6wGE3pWMMnzwbhmaOFZgCMekLq91O8g/z2Pv5JNHCbu
	bnLWx5eo08nXe5otsGtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0GM9-0008Lo-Uk; Wed, 21 Aug 2019 02:28:13 +0000
Received: from mail-eopbgr00042.outbound.protection.outlook.com ([40.107.0.42]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0GLc-0007pg-5B
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 02:27:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WzbMggFTw5IiCB8Z7OqwILgFyAoyXRh2eIkHwX6EKQaBNpSQVASrQcvKtGNI7xFmbpaHX3x33yoMkkxw1PsCDVd+P313fODE3weCY5mrMJHSkVUbOPCEbmfuNdpbimuDNBfQ3mlTZlEvwnh0OYLp89gPceJwWfGjWNuKoib+C3USeeef2UpgHGQzOFJF2ExL/tAmpb/ZlvzoVBw09Q4YTnUOOzeOt/1Mq07uyOvIQALxbuLBEw9eEfKNZfQZDnyjfc8GB83fCLjT6vDLd7b0CEXYdw8XiZCNVhlpEyL8ljgT9F55afU35RWIOeLFbQlR/0+WWIiZU9JFZd8GZJu5Tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nlyKDqbAZrhBIahnIfbCebQOjozXH4YYloAEvc1R4Gk=;
 b=a+vEux9WdyTyiDaDAJV4LDvIqVsIhBD8FLjZmFC5igSuxsj1EMcx9UELdNVMkTWgs5UD0nTLHeYtR0PxZPQzk8OR1yN5SvzwWOQUomANbNWBfP5bNJNik/QmtX1iIkTPrLZR7m/MEuyYxganEmjuDsHl7UhUlYGc1nZfMKY8xuzoEZDK2L+uw1ombluBgB6yYytJll55M3j7ebJX3QkBWP+pTDu5eh+xsyF2+77ByRJYmVpujpJomJaO+OlW9tiCeN+zrk4cPLTjhKYAiO/n0UIqUer4XPmRLRnCDPYbWS50IPPvtxQx3sGqQGm7xPi0FVtl9StrX7KDek7vFb/UYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nlyKDqbAZrhBIahnIfbCebQOjozXH4YYloAEvc1R4Gk=;
 b=C4iHz9NcRu/RhSLIXSI88Zp1+hrRIlvs5z+YO9bpWounMr7G9X9ZET4Eq6TkCkfmZbHyovigkYpaAMvqf3KpiBcWO8ru3h7ueh78kX9kCqbaEMO+cxbTm9LS2QVHPJ7Q6e8RfXi8oxyrI8c043nvpvOo2GYdKvsV2TaqK53FUZE=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3947.eurprd04.prod.outlook.com (52.134.67.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Wed, 21 Aug 2019 02:27:36 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::7cdf:bddc:212c:f77e]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::7cdf:bddc:212c:f77e%4]) with mapi id 15.20.2178.020; Wed, 21 Aug 2019
 02:27:36 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Guenter Roeck <linux@roeck-us.net>
Subject: RE: [PATCH V2 2/4] watchdog: Add i.MX7ULP watchdog support
Thread-Topic: [PATCH V2 2/4] watchdog: Add i.MX7ULP watchdog support
Thread-Index: AQHVUOzJdlx/RURMR0y8AoMZ6GYoIacENvGAgAAEkICAALI+IA==
Date: Wed, 21 Aug 2019 02:27:36 +0000
Message-ID: <DB3PR0402MB391612986F147D70D1486F34F5AA0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190812085321.13823-1-Anson.Huang@nxp.com>
 <20190812085321.13823-2-Anson.Huang@nxp.com>
 <20190820153155.GA19394@roeck-us.net> <20190820154815.GA20033@roeck-us.net>
In-Reply-To: <20190820154815.GA20033@roeck-us.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d5a03c27-ba70-4662-525b-08d725df219b
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3947; 
x-ms-traffictypediagnostic: DB3PR0402MB3947:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB39474312E14D9F0D4F166C5BF5AA0@DB3PR0402MB3947.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0136C1DDA4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(366004)(136003)(346002)(39860400002)(189003)(199004)(486006)(476003)(102836004)(478600001)(6506007)(74316002)(53936002)(446003)(99286004)(76176011)(14454004)(2906002)(7696005)(54906003)(256004)(11346002)(26005)(3846002)(6116002)(186003)(8676002)(81156014)(81166006)(9686003)(86362001)(44832011)(8936002)(71200400001)(71190400001)(6916009)(33656002)(7416002)(6246003)(4326008)(66446008)(64756008)(66556008)(66946007)(66476007)(25786009)(55016002)(52536014)(6436002)(5660300002)(66066001)(305945005)(229853002)(76116006)(316002)(7736002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3947;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: MOMOqGC4dWHYl3t7ywejYyNy2/KqJMS3YxoTU/pVs8eAKR/Hrqv9Wg+o60oMCB4qRdpyl2P1yM4lgpArVDaNXkYhZJfuz/IxG3U0CJ8N33y6Db4FfvoHRSMuKs8IpoVGu7rxCA0MnCF31LCg3QKVXIIcPlMABGlilK2L56BiDLCsY30s5hfwL319qq/3HeJZmNwSfJpvOZUc3UZr+A4j/Nzn8wZKS8AWHLqONcBMalelGtfN/siDIlVC7kOFoPAWR+gXrZYkM7WF/MH5oGQ15AkGEJ+xuJacgfcByWDkO9QRzgzq/S+/PW6HgKGncsTZU4qQmMB8GKu4teAt2Yau7qOc/PZb5UsRZAPo5cHRqQBPsoK+fSJuftBBc3Hh9yRQ5jDMd2Sqlq29IF6QTYJzrhCmjJs7l/1WVEPGS8cdjas=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d5a03c27-ba70-4662-525b-08d725df219b
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2019 02:27:36.7017 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3RjipqG/BthxjETIsc30HKFlvUflsthM7axOL7E5bm3u4NnopBYQzAbgUB9bZH8uP7g3D/H9Mp5wJUgisHXgOg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3947
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_192740_385294_A319AEB0 
X-CRM114-Status: GOOD (  18.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "schnitzeltony@gmail.com" <schnitzeltony@gmail.com>,
 "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "jan.tuerk@emtrion.com" <jan.tuerk@emtrion.com>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Guenter

> On Tue, Aug 20, 2019 at 08:31:55AM -0700, Guenter Roeck wrote:
> > On Mon, Aug 12, 2019 at 04:53:19PM +0800, Anson.Huang@nxp.com
> wrote:
> > > From: Anson Huang <Anson.Huang@nxp.com>
> > >
> > > The i.MX7ULP Watchdog Timer (WDOG) module is an independent timer
> > > that is available for system use.
> > > It provides a safety feature to ensure that software is executing as
> > > planned and that the CPU is not stuck in an infinite loop or
> > > executing unintended code. If the WDOG module is not serviced
> > > (refreshed) within a certain period, it resets the MCU.
> > >
> > > Add driver support for i.MX7ULP watchdog.
> > >
> > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> >
> > Reviewed-by: Guenter Roeck <linux@roeck-us.net>
> >
> 
> Wait, I have to withdraw that.
> 
> With clk_prepare_enable(), you'll also need to call clk_disable_unprepare()
> on remove. An easy way to do this and keep the code simple would be:
> 
> static void imx7ulp_wdt_clk_disable_unprepare(void *data) {
> 	clk_disable_unprepare(data);
> }
> 
> static int imx7ulp_wdt_probe(...)
> {
> 	...
> 	ret = clk_prepare_enable(imx7ulp_wdt->clk);
> 	if (ret)
> 		return ret;
> 	ret = devm_add_action_or_reset(dev,
> imx7ulp_wdt_clk_disable_unprepare);
> 	if (ret)
> 		return ret;
> 	...
> 

Ah, yes, I added the error handle but missed the remove case, thanks for your kindly
suggestion, please help review V3.

Thanks,
Anson.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
