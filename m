Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73A406BA0B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 12:25:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jcUrgwkLDa6uGwCWxqRwPFqGofhe4yLFrhyT0ei0r9Y=; b=TGZ2xCg/aP22YX
	gkXCcwpn7Ypqf4p2T7tBRclDN8zeKlABxB1FAdOdwwdLdTs7y7ihwA7KjQeS1Uo50euDig4lU3WWH
	HS7ivdshhqdrLUwUJzhoeO2x0+do4Ujo0OPtcD7d9m/SwayGzC/7i52lv2N/lnZ2yCAyJQ53+36Ic
	hIjEiD93RCUTqOO92Fdrnt34eYbOqzHoy50KgZKBfK7uwhXQUVRLpDWb49wlF10jukBcGk4y+5n6Y
	TRYXCGVwCdCyVILZsr0xjeQf/ylcgEjmVBtWMFeYIJfWR93wcyaMfM/FDQw0zBc+ZYt2Fz2Pkgg3g
	Hpzc6ZTKIDlGKMPT4i3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnh7M-0006Hc-9i; Wed, 17 Jul 2019 10:25:00 +0000
Received: from mail-eopbgr00040.outbound.protection.outlook.com ([40.107.0.40]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnh79-0006H2-NL
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 10:24:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KRAlDqn+Mi2mdDkdyDAyyL4dIh2yFBn4Zt9Kb/d/6LrhFKsLQa1wTfmoY82CdLDL5XF2Ua7xRyT046c+IAtIpC9clcKAKjii2YwdWXsdi4ShijV3CY6taa6U2318HmYOuGTfiATftyKt6uFx+If91w8G8KUGeXP/FiY3fT7PTZ7mHz+zGO8ONRcf51y6qDbrv1hAVAm6N0tqpZciXOjK9pFfddqYeAy2ZtpEBxa0Np/QYxSNsHZgoRMJy7ZIizlQxDoq+1xUOV4CSVm0DweYuUjnB53fkDj4tCLe1p0xc5F1UHBvlWU/tochROVLr9+nA7/TM/j48ENtctVDQCnVZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DPaPT2czoME/hYVRz4ZLl0n89PINpuSoCKA/T7QGlF4=;
 b=MPVq5yILoTfMjDR0AteqDYPrx4snc0kUHN5kRVHL3eGfHm25YoYavj0o7Hov8GxEQ03nzpfVm739ANePGWL4lBM+uf+1+ak45M3upLC7UR+5DO4e8i/F3/8B/RSuVBjtNCI6mzMQbrpLlaweBfybX8d3jN6nBX/z4OuNIeg+3AYUaWCKZY/3G7mhAgUQy+0OvMUVFH2Ucw3WkwVbzQs4XxPpqBIFTM1jYJbS7Pc669koyBLL9Fva3he3xB8L3boXOMq8cigxhijNm05V3DKuNV/LGvj9GGcPb6sSkxyFkUClJ5Gami8tDUzJi323kTucW8kjMMFxfjgFEerMTDUxQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DPaPT2czoME/hYVRz4ZLl0n89PINpuSoCKA/T7QGlF4=;
 b=ZS3ZHe4Qy2UDElGOCAgwU2CEo8qkZt6a0YZJNZvKT/IUpK3oJMNFdFW2Dl2+mlXczfo/szWAUVEOCyNQS7MdMuSKHILs5kK+3QHZxoYpgcQlStoc7U40aEEekFG1nQyGwDdetc8rXlhEVp4UmqztybvHvQ43IajRLg7AfKU1Ajs=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB5604.eurprd04.prod.outlook.com (20.178.203.80) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Wed, 17 Jul 2019 10:24:44 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::7882:51:e491:8431]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::7882:51:e491:8431%7]) with mapi id 15.20.2073.012; Wed, 17 Jul 2019
 10:24:44 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "mpm@selenic.com" <mpm@selenic.com>,
 "herbert@gondor.apana.org.au" <herbert@gondor.apana.org.au>, "arnd@arndb.de"
 <arnd@arndb.de>, "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "rfontana@redhat.com"
 <rfontana@redhat.com>, "allison@lohutok.net" <allison@lohutok.net>,
 "kstewart@linuxfoundation.org" <kstewart@linuxfoundation.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>, "linux-crypto@vger.kernel.org"
 <linux-crypto@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH 2/2] char: hw_random: mxc-rnga: use
 devm_platform_ioremap_resource() to simplify code
Thread-Topic: [PATCH 2/2] char: hw_random: mxc-rnga: use
 devm_platform_ioremap_resource() to simplify code
Thread-Index: AQHVPH/8+IsxXD8FhUCRO+/vflUVhqbOmptw
Date: Wed, 17 Jul 2019 10:24:44 +0000
Message-ID: <AM0PR04MB42113B130EF5F03C0AF1801A80C90@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <20190717090438.31522-1-Anson.Huang@nxp.com>
 <20190717090438.31522-2-Anson.Huang@nxp.com>
In-Reply-To: <20190717090438.31522-2-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0b07ef63-8af8-411a-95d2-08d70aa0fc8d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5604; 
x-ms-traffictypediagnostic: AM0PR04MB5604:
x-microsoft-antispam-prvs: <AM0PR04MB56043F92844E560614CEAF5680C90@AM0PR04MB5604.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1247;
x-forefront-prvs: 01018CB5B3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(366004)(396003)(376002)(346002)(199004)(189003)(8936002)(6506007)(53936002)(102836004)(71190400001)(44832011)(7696005)(2201001)(81156014)(76176011)(66446008)(66556008)(66476007)(76116006)(64756008)(71200400001)(5660300002)(2906002)(99286004)(305945005)(2501003)(66946007)(52536014)(229853002)(26005)(8676002)(6436002)(66066001)(6246003)(476003)(446003)(55016002)(11346002)(478600001)(86362001)(3846002)(186003)(110136005)(6116002)(25786009)(68736007)(33656002)(316002)(256004)(4326008)(74316002)(558084003)(14454004)(486006)(7416002)(7736002)(81166006)(9686003)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5604;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: kopargwr+xnTBicKRrzy37X/5hnuGPmbGu3/tvOg0a9W7HFW9jj5Au98Ie7PkrL7JM8rKkhvqQL4MaBF6SPu71sx7DskS2FErurmGWNmiReDZ4ZZbUdxYYq9IyMbeJ5p/dFm3jHlGn/3O5bxuCf4Fc92lOF0poQ0SvnVHZxjdrtzE9tFQtdukFTx6g24UBObFrnpkVdt54AJ0xNv45EVMfQgeyn6MTtHm01GXHiecvalSmdiL2jgnvyWomr0MpfDFPbV3Bsrl5jsC7VMtCXOuUOxeqHilbvqojgHPhZEnuluOrqmc3A4vOt/sII7Yh0U2AWs2C5LXZa4Q6Rrkv7DgE05F+wDK08LOIHvEvWhFaSvTxIVnwQsEJdRUDuP0vi/xEKjkAJJYW83TmeOe6Tar5dZw68zar4dYMCabBX5eQQ=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b07ef63-8af8-411a-95d2-08d70aa0fc8d
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jul 2019 10:24:44.3877 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aisheng.dong@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5604
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_032447_762812_F374F99C 
X-CRM114-Status: UNSURE (   6.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.40 listed in list.dnswl.org]
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Anson.Huang@nxp.com <Anson.Huang@nxp.com>
> Sent: Wednesday, July 17, 2019 5:05 PM
> 
> Use the new helper devm_platform_ioremap_resource() which wraps the
> platform_get_resource() and devm_ioremap_resource() together, to simplify
> the code.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
