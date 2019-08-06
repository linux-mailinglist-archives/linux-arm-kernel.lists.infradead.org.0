Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC14582E6B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 11:10:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ltmw1huCQNz4PY+AdXd+LG8NX7+Z87+wgrVOZUwOPDw=; b=ClBQvHCWrGKRcY
	kFHpYyvaJY8WUKTw6CZ98t4hsQKAJmIy2xzmC/w6HrA/KC+y8aD2E2+icbL7P4K1iso6RhHIx/DmA
	vFjEjhDF5cx/KuFdgGClyKS5JW+jDrMgccp+2O0HgYHDb5LQjKtrAOegKgiwNAgOqnnUGHO/mKfsv
	K6Br8WFrrfRbNjXEN0kcfOaOfPkNyrqikandnQelMdmNWguw5htGhc3Ee/cEJ1haBGLX0GbNamTen
	yBPIbEjFW/ChX/yyG/wC8ZA+1JsbcMvWp3Y8RkMocMlEkFKbpgUWxiJueQHeqkGIVMClO+onj/Xjj
	3YFdalS+/6tIkBE/f4dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huvTz-0001wx-3x; Tue, 06 Aug 2019 09:10:15 +0000
Received: from mail-eopbgr40073.outbound.protection.outlook.com ([40.107.4.73]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huvTk-0001nV-6B
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 09:10:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LtBWGoHqXmcTIIKJYpXwLfVgjiNp+5xfG7io2p0o7WKfvECe8/6rNNEhekuzef6RcCCg1e+IBpQz71psz0Vbh/cdQDaWJ0RIrLrGQLRU8zqFvMXQvkkde6EvvY40d/EI9aqG+ROf3rxhiFlv/Ksp3WX2Szp+BF0MgggnywMkIRIqZJG+S05vlrWwljDEn6DE+153hPibfvz3kmgwfTqVkZC1l0t6J8zX2c4qawkgrRA9X3NHasKH2LfZF8dEjqnSoWpohBummhncyqVwxcSCedaW2gwJCHKQxka/GpGN+UOeVq8db6ud4RdiNGrzhBbVcWfUtQJmhv/3m49r9gAujw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/nKftMWjY934pOzqU3H14jfywtR37BlCJHdjFEIKxI4=;
 b=JhXefSe80oDgtLgxudEYp9mk2jm57lsG2m76mXK1hcllslJ5cZNKpgWqdezCcj/hP60VSDGtE9YJ2IrtcOkEpQAmAtOsMMMWmc1DoFwLyD/0NR8TTxUsKmfp1UEq8wGmIat4CbkJBYl70S6Z2diSvNU832yGDxGfQDY86poPzRSzGdJEX1FlUGXzDhQazmogOo5bBvpuQFQA7xcWa69bkU0beaEhbHUYGymQLd8tA9zyYBBw7h0dYgZZrlNh1nw9EOAV1quOIDwBIbKKQ/i+BXMX12udFMx7C3ow1Y/fjQngGMRk01g8laZZ5QNoqJrgOJ6F+M/cByitzlrKXSLSMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/nKftMWjY934pOzqU3H14jfywtR37BlCJHdjFEIKxI4=;
 b=R0hKzPZGzcKWMX33DMSL5+eK8JAHihjdq2Gjh7aJ2gCfzHHS0ealDN+OS/Vd7H8NfFjplgzDEfbHiSgoe8tS0ncIUBKKZdGBAL0lV/wBKmMbvbVWMOTWGgfMeInV3B+q78p/qbJtzeM3wZnhJDdlcVl7+cTi6qSPRljhRaps554=
Received: from VI1PR04MB4094.eurprd04.prod.outlook.com (52.133.13.160) by
 VI1PR04MB7103.eurprd04.prod.outlook.com (10.186.156.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.13; Tue, 6 Aug 2019 09:09:54 +0000
Received: from VI1PR04MB4094.eurprd04.prod.outlook.com
 ([fe80::c85e:7409:9270:3c3c]) by VI1PR04MB4094.eurprd04.prod.outlook.com
 ([fe80::c85e:7409:9270:3c3c%7]) with mapi id 15.20.2136.018; Tue, 6 Aug 2019
 09:09:53 +0000
From: Daniel Baluta <daniel.baluta@nxp.com>
To: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Fancy Fang
 <chen.fang@nxp.com>, "mturquette@baylibre.com" <mturquette@baylibre.com>, 
 "festevam@gmail.com" <festevam@gmail.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, Jacky Bai <ping.bai@nxp.com>, Jun Li <jun.li@nxp.com>,
 "agx@sigxcpu.org" <agx@sigxcpu.org>, Abel Vesa <abel.vesa@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Anson Huang <anson.huang@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>, Peng Fan
 <peng.fan@nxp.com>, "kernel@pengutronix.de" <kernel@pengutronix.de>, Leonard
 Crestez <leonard.crestez@nxp.com>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>
Subject: Re: [PATCH 1/2] clk: imx8mm: Unregister clks when of_clk_add_provider
 failed
Thread-Topic: [PATCH 1/2] clk: imx8mm: Unregister clks when
 of_clk_add_provider failed
Thread-Index: AQHVTCQEIiAvfTsLQk6nSaEaD5dOEabt1SEA
Date: Tue, 6 Aug 2019 09:09:53 +0000
Message-ID: <16eb2412986ec69d8fd99a63daa98d174ea6d499.camel@nxp.com>
References: <20190806064614.20294-1-Anson.Huang@nxp.com>
In-Reply-To: <20190806064614.20294-1-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=daniel.baluta@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 876d7c30-5301-4fa2-155e-08d71a4dd84c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB7103; 
x-ms-traffictypediagnostic: VI1PR04MB7103:
x-microsoft-antispam-prvs: <VI1PR04MB710349B93265F6D737A3AE24F9D50@VI1PR04MB7103.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 0121F24F22
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(366004)(39860400002)(346002)(136003)(189003)(199004)(66946007)(7416002)(316002)(2201001)(99286004)(50226002)(5660300002)(486006)(25786009)(2906002)(110136005)(229853002)(4326008)(3846002)(26005)(2616005)(6116002)(86362001)(68736007)(558084003)(6246003)(102836004)(76176011)(446003)(256004)(66066001)(6512007)(71200400001)(305945005)(8936002)(53936002)(71190400001)(118296001)(11346002)(81156014)(478600001)(8676002)(6436002)(6486002)(476003)(64756008)(6506007)(186003)(66446008)(44832011)(81166006)(76116006)(2501003)(14454004)(7736002)(66476007)(91956017)(66556008)(36756003)(99106002)(921003)(32563001)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB7103;
 H:VI1PR04MB4094.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 97/+BX4A5dzYSMcuQULlH6c2pjW0Ri6EAG9LVrefqy30vMKVCwXqwD/9KVhgTZ1v++iGIZm8EOKC3laEuLNa84sv2qungvUxgh0ecZBOtDUYEccJMFOHhJPy7s2BjmCbNbuFuqApA8wJatQXXApkR6nX1n7Z+224cHatfc85FaYbQgggyMnTKNvoHsx3zIXvRdP2FZrP4LgcsW0P2nSWTutlM6qNtEOTl4HjNQM/FFBzXFOea0jB/oMHUk6EvIYTCU05jfk1j3kabyc1W9eJe15sHyG0H9fievkw7ERkcioi4IFqsjizzkeCwP+0YtlCtQGWZD9lTqcGbLe1VZbj6d9F+zcH79Hbbe0PiUF0mO8lHS//iuLArsxWLhVhpNqccLFyirmrkS+gsChcxF+xW8DkdgexD/yHxQoPCpHiDAM=
Content-ID: <13DE6831E267424BBCCC77BEA2122F31@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 876d7c30-5301-4fa2-155e-08d71a4dd84c
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2019 09:09:53.8294 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: daniel.baluta@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB7103
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_021000_339136_B0760E86 
X-CRM114-Status: UNSURE (   8.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.73 listed in list.dnswl.org]
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-08-06 at 14:46 +0800, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> When of_clk_add_provider failed, all clks should be unregistered.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>


Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>

Thanks Anson for the patch!
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
