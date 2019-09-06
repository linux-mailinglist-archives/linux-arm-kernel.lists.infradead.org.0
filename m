Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BF61ABA0A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 15:57:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=66GWzntJqc5eDDhJVt2cX4/uVYJrwUc1RnEs3+dFCdY=; b=R1UxlMeQpnww87
	kN5vfYbCnOFtZj0lMJyrErU4T2aPjFsk/hHEGDwgQ98uRgG9fFJUP8XJS+f2eDHhtpsdus0BbfYNz
	s6vA8Bb8LBAUgWFScMAqJSLFt+7EmImJUNoD//8FuJ6kOZ68ECUslXWFcayJXAR6muCEGjvlXTevO
	b4OABMh6gMJmaIQkCcK/4slwA+fFB7IHYazq9vue9HOnVCYEXFp+yEB5p9yLPz56c7ymdBSuMz94V
	8E/YH/Fh99VB66U9w2vEVjJkmG+iavHc+jHRMzsEmKX6zU57ZJN7wxBUCDr6fnA+hX5BCtjX1pA/s
	v32eNitdei4Q7D0mak0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6EjT-0000YK-Nb; Fri, 06 Sep 2019 13:56:59 +0000
Received: from mail-eopbgr70051.outbound.protection.outlook.com ([40.107.7.51]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6EjN-0000Xc-5n
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 13:56:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fWYo6mMieaGocSK+hK7fVQsquCms/6rPQz4yORvjykSHkaio81rpCK6f+xUiWSXLxCWrvFLlSipx5WHCkh+Yuc0C10H+g9diVAzKicummw7dnweBtoBD7BHAeRXEIFOd4yCxy0buMGCsrVus5ScHkMWGMqL1h4smtDBXeX7xEYJU1TjwRs1LPwzcnFitYOCHDjL9HVYxfgkPN37Wx+AdGiV2+TQWjXBhF+b21fI4e1s8T6VNfA65rKTbOxG6JIdQl6eD+JqdXMe9ZphRPkx1TItdYqNwOrNz3S9b6yih2GdcBtfRCokqx2C3fqR1GNoSGUCvVFH5qAjFj6+PbB6rBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BV8AXvmPi2NpjYYx3NCFbc2gJzv+RTNwfGRiU2PSHgM=;
 b=ZdcSa0fLSshKOZcEAnNNPZgKknWfkcLynBvhRpPY9O5kv3t1OaxkIxJtKB1nkj6i/Yy287VEb6McqjTOurBNzBlGtcj+UMOwCy/g7AOWn84w0T5LLhkqmgzhdOrLQso2j7zUSH7aEz8TTM2c+aEoETAE7YXmhhZ/y0ypwqikC3ROmfUWY3BQEdOncXttaa7vkkQ/d//a9XdUIDkjrNgodtkZ8VUucDs7dvWAujo7jNZ9Vd+7Lcyy4nFIh/ItERASUuaek9usHfH/lRCd03LhUXg9hkndnL5C9KlXEpkVZf1y1ygF5H/Q0tV2tNgOVlSsvMkBVKcXKNZPaS+0Q+wsHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BV8AXvmPi2NpjYYx3NCFbc2gJzv+RTNwfGRiU2PSHgM=;
 b=okyLbWdRMWCYJYS6Au4+MwLQH0oFAztsMg8mPkFMuD50BNEVVSGMJ9m7fVJkuNENq7nqN/ceGwcegdwSUd8648ANSJFM8mww3btVp0rdxXDxEzl85Mt/sv017Tym4WS+8v/X791qPCj1d8tlJy2lFLrhNI+aHO4Jzoo/Grnnfes=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB5040.eurprd04.prod.outlook.com (20.177.50.97) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.19; Fri, 6 Sep 2019 13:56:47 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::c5e8:90f8:da97:947e]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::c5e8:90f8:da97:947e%3]) with mapi id 15.20.2241.018; Fri, 6 Sep 2019
 13:56:47 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "sboyd@kernel.org" <sboyd@kernel.org>, 
 "shawnguo@kernel.org" <shawnguo@kernel.org>
Subject: Re: [PATCH V2 1/2] clk: imx8mm: Move 1443X/1416X PLL clock structure
 to common place
Thread-Topic: [PATCH V2 1/2] clk: imx8mm: Move 1443X/1416X PLL clock structure
 to common place
Thread-Index: AQHVZFNWfQl41vmmtkmNMXjVtPmV0A==
Date: Fri, 6 Sep 2019 13:56:47 +0000
Message-ID: <VI1PR04MB702336953B1C7E0E2212A10BEEBA0@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <1567776846-6373-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c8a027d9-1839-476a-dab8-08d732d20f15
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB5040; 
x-ms-traffictypediagnostic: VI1PR04MB5040:|VI1PR04MB5040:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB5040BC7B6244C72D8243B88BEEBA0@VI1PR04MB5040.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2201;
x-forefront-prvs: 0152EBA40F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(346002)(376002)(136003)(39860400002)(189003)(199004)(3846002)(316002)(110136005)(81156014)(76176011)(8936002)(14454004)(25786009)(8676002)(71190400001)(71200400001)(81166006)(478600001)(6506007)(53546011)(186003)(102836004)(54906003)(6116002)(256004)(99286004)(4326008)(26005)(4744005)(74316002)(305945005)(66446008)(64756008)(66556008)(91956017)(2906002)(7696005)(2201001)(6246003)(7736002)(76116006)(66476007)(66946007)(66066001)(86362001)(476003)(53936002)(33656002)(446003)(2501003)(44832011)(486006)(55016002)(9686003)(7416002)(52536014)(5660300002)(6436002)(229853002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5040;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Y0dkITIiQR6VZOwohP5/lqfs0kgrmt3SBiIDEIFjNwGvZKOCgGn5VesYmDqmWL2ZdT5bdA0hlCCMCVaPtX88AEfkvDcQgYXVTBHQhW2+rq97Bt1DUt2/qRYQ4iBBkuI3/Cf7ZNNwfJaLlxJr0jrcLoUetF1iGmibct3ZuawUkuLvlSnpEJAoV2F9owbVUJ8IVPVutHgRcHDE651vL4rlBUBVQs8bOW5+GWsEkYVvmh0tixI8KIYA2d9cjFg7OENOksTm/2VFZ3j4rb/dChR81ebrcIFYpjUdMxvLF38ohP4PPpHSKtdfn2LP4I9VheeY8MGegXZ+7n26/aAdpKmK2hQCmk17/b9yWM/vAA1wWLdU2RBjwch5H9d2jtFyrZ5Vu9QrvGcDO2XQe6dtavMgnXhLXuELvPjPFQTupNyRqig=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c8a027d9-1839-476a-dab8-08d732d20f15
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Sep 2019 13:56:47.1954 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: d76E/ipb0rWGGWB/d6sFYek++/G+xqwJr5sbrZ2LoAl3sAZ4+F8Kh5hVgZV9eBY1M4xdSDcRh+wTkCexSDSBSw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5040
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_065653_402956_1EEE6A36 
X-CRM114-Status: UNSURE (   7.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.51 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, "S.j. Wang" <shengjiu.wang@nxp.com>,
 Peng Fan <peng.fan@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 "sfr@canb.auug.org.au" <sfr@canb.auug.org.au>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fancy Fang <chen.fang@nxp.com>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06.09.2019 04:35, Anson Huang wrote:
> Many i.MX8M SoCs use same 1443X/1416X PLL, such as i.MX8MM,
> i.MX8MN and later i.MX8M SoCs, moving these PLL definitions
> to pll14xx driver can save a lot of duplicated code on each
> platform.
> 
> Meanwhile, no need to define PLL clock structure for every
> module which uses same type of PLL, e.g., audio/video/dram use
> 1443X PLL, arm/gpu/vpu/sys use 1416X PLL, define 2 PLL clock
> structure for each group is enough. >
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

For both:
Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
