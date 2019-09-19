Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 075FCB76F2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 12:02:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a2vpUF1/Y9iY7DwUTuYrx3Q3oHfXRreFQQ2Z5/bUh/M=; b=rNmENf8DNzOFPZ
	pxdV470dCsJTJ1h7/NEBYSYy8U1zdHOCdnqhHi8ixbVYgJ6aPqhqPbETK5qvlr6bReQPm3/7gXURW
	RhO4xGNSHD+YVIirxCJp9qje7JiPZRyyJ5m0ghu7Rr95tX7rjbNi5CE4I6njqbIOESndawfXeeBKO
	+IF2aeT9zyQPdsdj5ogRF0nk/uZSFjMdmBvX7HWSszjFM0Dvlkaq5LDdEYyomnv9le2W7x5Z0u72J
	glgDes3nsplO4eJQHf2h4vzwFvlh2hQYiA+dNZzbk+qjzWOAR5xB6rCOCcGY+zdkYS5EYHB/FERMI
	oOjxv9y6b6Z9G5D8KJIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAtGO-0001DX-4i; Thu, 19 Sep 2019 10:02:12 +0000
Received: from mail-vi1eur04on060f.outbound.protection.outlook.com
 ([2a01:111:f400:fe0e::60f]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAtGC-0001D3-NN
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 10:02:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Uum/bUwjIjrkIqrAEskZ0F1pK8d3ZB5x00BpYreNs3xXHuafkBS4dEBew+z7JmYY0p96fgPoj381UQHafbPsePKkxVzqMQbD7Ce2eTEN9qkM9If4wdK4hB+AeXO759LSh1bY9y/dHPiNfpOnsXMeE3aK6rt18TLL4gX71NWObyGNmmmTz54u96KMM6BfZPYtSslSmOzT1l0GO2fJcZFOaikDAJN4mVVVzlsbPkL40VltUSVkzhMK364H+/0d+wghkXFpk1Y9inEARSHG6A8LD9WcGYDF/jMJsSGh6Alw8MPV78gLpTnpXmPsRb5PJgheZI3qlixWZutVKUallNcDvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wC/ip0vaqmRjLlxfup04aMPvWEi804Vf624fec5JaZs=;
 b=Wd8HAU3+LIlAnC+55znTarrZu30v5viRqy1beVHxzT8rFp3CgqATaBOX6FAj7wBr5B7sd4naa3+5C3tJPOBmUEDUxDW885VyY5h1ITLz5ETRHH5nPdb74AoELWYxClXq0x4d4fTcQfvdq8u8AYmiUd0IATXU/ghGdQyKUIJPj15kfrqZAu3FBErEvyUy0dHeY+DwF9+1DzjzY7FJ6+GPzWkoD+tYvqsp1fTs3jYa1/+g3B9RxsNVTjmyHTu/rtUn3OKziHofNV965FGgbgJrpUz7z+YfMXFOrDba0/qLOxwP+yOiHRucEtFeMZ56toU6UUugKM70E1RLLI+hsUtlDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wC/ip0vaqmRjLlxfup04aMPvWEi804Vf624fec5JaZs=;
 b=SWZhd7j6ca2HdyPzxbFcR3213DKKiWPBVNkYgZXhL4CVh66c39gJmIc7CGJGgOIlkM7UVLoqbIUW/FdpUxaAAxfkxrbpLNFkSiopdjSWK7prLFJPwLoEMw+wTYY7zms/gJSZofp+6GwfprpZwWk7fApAremuetxX+n2yyZ3INqA=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3705.eurprd04.prod.outlook.com (52.134.70.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Thu, 19 Sep 2019 10:01:57 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38%7]) with mapi id 15.20.2284.009; Thu, 19 Sep 2019
 10:01:57 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Schrempf Frieder <frieder.schrempf@kontron.de>, Rob Herring
 <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Leonard Crestez
 <leonard.crestez@nxp.com>, "daniel.lezcano@linaro.org"
 <daniel.lezcano@linaro.org>, Jacky Bai <ping.bai@nxp.com>, Daniel Baluta
 <daniel.baluta@nxp.com>, Jun Li <jun.li@nxp.com>, "l.stach@pengutronix.de"
 <l.stach@pengutronix.de>, Abel Vesa <abel.vesa@nxp.com>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>, "angus@akkea.ca"
 <angus@akkea.ca>, "ccaione@baylibre.com" <ccaione@baylibre.com>,
 "agx@sigxcpu.org" <agx@sigxcpu.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, dl-linux-imx <linux-imx@nxp.com>
Subject: RE: Missing 'assigned-clocks' in usdhc node of i.MX8MQ/MM/MN dtsi?
Thread-Topic: Missing 'assigned-clocks' in usdhc node of i.MX8MQ/MM/MN dtsi?
Thread-Index: AQHVbtCPIpmeLD1Wgkq8yfUNmKVWtacyxFuA
Date: Thu, 19 Sep 2019 10:01:57 +0000
Message-ID: <DB3PR0402MB39167149796B0DD51442FD07F5890@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <e6ce599e-597a-6f67-d5d1-5487f50c7d0d@kontron.de>
In-Reply-To: <e6ce599e-597a-6f67-d5d1-5487f50c7d0d@kontron.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8acf25c6-e1d6-42e7-3535-08d73ce86851
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3705; 
x-ms-traffictypediagnostic: DB3PR0402MB3705:|DB3PR0402MB3705:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3705CCBEB870B481BDFDD3A4F5890@DB3PR0402MB3705.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 016572D96D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(376002)(39860400002)(366004)(136003)(199004)(189003)(81166006)(81156014)(2201001)(2501003)(33656002)(76176011)(14454004)(14444005)(316002)(7696005)(256004)(52536014)(9686003)(7416002)(55016002)(5660300002)(110136005)(99286004)(6246003)(6436002)(6506007)(86362001)(66476007)(6636002)(71190400001)(66556008)(66066001)(66446008)(74316002)(64756008)(4744005)(76116006)(229853002)(71200400001)(305945005)(66946007)(2906002)(7736002)(26005)(44832011)(11346002)(102836004)(186003)(6116002)(8676002)(8936002)(446003)(3846002)(486006)(478600001)(476003)(25786009)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3705;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ar7+9Vqt7zsfVtXKe6+7oVKOPf70oxJ6sGvNNwjhjuZTFT9Tg2eu0xKzlb8p03FM1j5DeeVijccpTR7jAwgaHJn0hV8TDKMVPzztEhWhmHDPL0CJQIsc4zoylVXZHkeAJR6kurfAaPMDBCBNfJGYa4Wbw+g+L6Ch4Erkfu+jTWOb+xEUvfFOD6dXX8ig+pAtiI2RzzlyaBCTUD2cuyYzqPBX3E2e46fS5OlF7dlRlZoBn4PyDdMk1WHU/tniMAr8r2ImXdAjQKLfqFSOu0+P0HUIn8SWqdB6/XXUOHS956/qaUPSPncx8NOqgerg/WQ3nQnvOtcDm9UXEifS7qwni7zb9GwQEGJ7H/JfD6ET73DRB8IXJLfljQu/ldpx4eLO+huBex8z2Vj1ADMO2oMw9MRKM4BmJJECQvJjCD2w4bE=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8acf25c6-e1d6-42e7-3535-08d73ce86851
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2019 10:01:57.4577 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GxUGQUYdVZFihaoGkoEiJuSPPoKqKIPcavs/qrZsRMYyoESQzg3pp8GeXwah6OytvGdiQfV/9BPbUEp8lNjrGA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3705
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_030200_763814_4654B610 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0e:0:0:0:60f listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 1.0 FORGED_SPF_HELO        No description available.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Schrempf

> Hi,
> 
> I wonder why imx8mq.dtsi, imx8mm.dtsi and imx8mn.dtsi have 'assigned-
> clocks' and 'assigned-clock-rates' set for all usdhc nodes, except for usdhc2.
> 
> Is this on purpose? Is it a flaw?

I don't think it is on purpose, it should be a flaw, I will double check with our usdhc owner,
if it is indeed a flaw, we will summit a patch to fix it, thanks for reminder.

Thanks,
Anson

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
