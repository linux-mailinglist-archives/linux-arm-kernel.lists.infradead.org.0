Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2857A6BCF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 16:49:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=Hb2bXmu1CI4cmliMMIfl2vQfyL1Ae7eChua7vM4MnVo=; b=js/7hNRJBYweRE
	BiyyPq922d8i/GNwN1Oh+Pr4jYBJuyvp72s7YZASV1G2vSBn4suJaBl4LbIMz2lANBR2toEBJ0ARR
	Qnf5hqjMOc4e+tjhj43bizNJJ3lD3todP+yKR8/3y/I9ZKe6dBgEXi8QgSJg5qEfLXvVH2SgAmUeE
	/jkyoSuZhER16G/ye7IEe+BgOq24wpDqWGYjb2OJfNfAHvmzP5Dunyxx8vYgtyI4zSky5k2BnZpPl
	HZRvUklsii1BT5PR10u4FWXeXW5KGzg3btZLj8t/kVvreQKBLdR/gChsc26mmDaRniz7FAbAdZIce
	cyR/dFICj+8Ed4wSjufQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5A7C-0006mE-C0; Tue, 03 Sep 2019 14:49:02 +0000
Received: from mail-eopbgr00048.outbound.protection.outlook.com ([40.107.0.48]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5A71-0006lO-AK
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 14:48:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ORa4cKQPGUVX/DljBJ5ZkDoChVxa29kitiNNLBZTz1LWca0lVJGMPu/DH3ua1PQAehfcF7zxIg+hcyYX09u4yQY+Aj0jTuNjR/yqlDd7S7Of0vLi0Kzar0faE/hUY9qyYNVz5xLKS8ZC4EdfIrlCQ0r3cmfjcsRUCikSl7CBx7/JyKsvOecD2Q+zVN1RWICWlNXDAWBBGqmutD/m/ktjl/0FlbcjmYJyVH+BG+hUQvIqKEsSmrRynQXJVrv22UPCVkwNdT5U0IL89yEsnWWihAnmY8Y93q55PvdVTrr7OBEs0Di557Jei90OnRPA+ikBqT1PNsycB/Gj17lQkwY5tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hjMyT6aTPp5h+TnbQOXPCVvwYfhlyJom5oo7tUlTKtI=;
 b=kBqOvsba9DaqAIXP60cRI56FUc+Jkgat0n/FVfJ4Ac4hs9FlswrqW3rr6l8EBRz3SMZOaO8uUcV+TWXlQ1Dx1xUBImwAmtxVKMNelucZzKyUD4Drp8eJsshnGu1e02j++dwHnLZ6dlvz/Mwf/vTzfi0dWNzd7xDrg5pODqSA1ij46Od/MxbmjmxoADdDQc8xeV10z/upG3YVM/IdExzdYqAhdBNQenZt5fl4fn1PuT7VvPGtdOxQG+dCOxsGWq85lhWFD8aaKSJO7flne8EX80ZEi3W3J+3/WFn8qMGGzelUUUtd4oUaxA458OOVn+5jH6AxJNE+bsNOidzcJyfg8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hjMyT6aTPp5h+TnbQOXPCVvwYfhlyJom5oo7tUlTKtI=;
 b=gQhwVStYl8KsnDckeGZX31VX9mDvpJfnSmAdDt6yB34pphpbVZeKzv4zniQvIn1EM/DUEsVd/51BdE/CnV6JW5JbB0uBKx6tmgFS8LO0/VvGUGCfRQ/aKLLbFxfYwl+9TF+gqW8zAP5aWq7Yv85ClkBAQPpWXWgkd31ueTK8NSc=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB4765.eurprd04.prod.outlook.com (20.177.48.210) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.19; Tue, 3 Sep 2019 14:48:46 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::c5e8:90f8:da97:947e]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::c5e8:90f8:da97:947e%3]) with mapi id 15.20.2220.022; Tue, 3 Sep 2019
 14:48:46 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Jurgen Lambrecht <J.Lambrecht@TELEVIC.com>, Robin Gong <yibin.gong@nxp.com>
Subject: Re: FYI: imx-sdma firmware is not compatible with SLUB slab allocator
Thread-Topic: FYI: imx-sdma firmware is not compatible with SLUB slab allocator
Thread-Index: AQHVXNw+wzto4eeux06zQsdxRt35zA==
Date: Tue, 3 Sep 2019 14:48:46 +0000
Message-ID: <VI1PR04MB70235FD928F65235B2252C6CEEB90@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <1e2fe2dc-f5ea-db73-59cf-c61ec558131a@televic.com>
 <VI1PR04MB7023FB06F79F31334905D34EEEA00@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <7282882c-1c79-9685-4bfe-80195976c8d6@televic.com>
 <VE1PR04MB663818AE90C9997DC340250989A30@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <f68d8972-7471-6544-d50f-55267e6790a7@televic.com>
 <VE1PR04MB66380D06DD2619493904B38B89B90@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <dc06392b-8242-7d09-e0fe-49fb04849ebb@televic.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 23f1729e-fb7f-47db-2de1-08d7307dd328
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB4765; 
x-ms-traffictypediagnostic: VI1PR04MB4765:|VI1PR04MB4765:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB476571C37947B88D19F86C8EEEB90@VI1PR04MB4765.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:473;
x-forefront-prvs: 01494FA7F7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(346002)(366004)(39860400002)(376002)(199004)(189003)(6506007)(6116002)(3846002)(102836004)(99286004)(7696005)(53546011)(316002)(76176011)(26005)(186003)(486006)(6436002)(4326008)(2906002)(9686003)(55016002)(476003)(53936002)(44832011)(54906003)(110136005)(6246003)(25786009)(446003)(52536014)(74316002)(5660300002)(66066001)(91956017)(229853002)(76116006)(7736002)(86362001)(4744005)(66946007)(14454004)(66446008)(66556008)(66476007)(478600001)(305945005)(71190400001)(71200400001)(33656002)(6636002)(64756008)(8936002)(256004)(81156014)(8676002)(81166006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4765;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: nLM2hJ4/638qnnnXKLipVTgYauc8BviyrkDMKzF5MLKwme53GZMfTOiojO/im1SG0+y9l/qQwWE4wDx6E/NVYX7nVqVpq8DHYkMZEqrv+/UHjsE9KDlvDPMg1vpTnyd2AJLUszIh7+HusBaWAy6yU5luwpwwdWsYAta+sEiH3bbpI3BRZdyYk2oLgRo8/tBhObJCazxQH7Zh0VzIAtCdDR+dxOIKJ4avK4OXvndEiJ02t2OMwkdUUTmaTq2wxRcK/fD5c4ZKlg3B6ahu5QYGAXh1qGBHj3KIeHQ3PaK/2kvJlP/Okp7I9+J7z5IRqxD4bgNBmMgVqvRkJmMxauMON5QkO1c/BB/5JyU9aTKWx1w3Ny8MkQDIEJyHnjTvsss8UvKR1eviyOOF+SM+vSJtvKT1HTFYXkAu03jxLr8Whg4=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 23f1729e-fb7f-47db-2de1-08d7307dd328
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2019 14:48:46.6414 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ne5GS0MI0ae5Ra24AdhwutVUWtAuehh+3QUah0ZzlcUi+sjz0VvxnAmraPaKxm6ZVTxquHFAftnJX5nlzuJclw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4765
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_074851_556004_0CF473B7 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.48 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Fabio Estevam <fabio.estevam@nxp.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03.09.2019 17:32, Jurgen Lambrecht wrote:
> On 9/3/19 7:57 AM, Robin Gong wrote:
> 
>>> And that are the last commits on drivers/dma/imx-sdma.c for my 4.19.x+fslc
>>> branch. But I have already tried 5.1.x+fslc, and it also got stuck.

>> Sorry, I can't reproduce your issue on Linux 5.3-rc6 with 'CONFIG_SLOB=y' and
>> SDMA firmware built in kernel, Could you have a try on our imx6ul-14x14-evk
>> board with Linux 5.3-rc6 directly(no any patch needed)?
> 
> This works on our own board (with imx6ul)!

Something seems to be wrong with the fslc tree, using 5.1.x+fslc at 
latest commit cd1d083333e76e03d16f015c23f1f1b8c8637381 I can reproduce 
the issue on imx6ul-14x14-evk board.

Running without SLOB and builtin firmware it's fine.

I couldn't reproduce with latest 4.19.x+fslc (currently at commit 
91d5756ab9096bbec256115d1d6b85f5d7139f85), maybe some additional SDMA 
patches were applied which fixed this issue?

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
