Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 360516BA16
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 12:26:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8rBfWLMAgGC2SR5rsZM83xloY1rMYfPk9NoONKa/2DU=; b=cqGBtFBSycfbET
	+5jYfTqZZvSVYnf2gu8C2V+lpAWV6lHGC6UzU9eOSvq1HusShX3qVw2gBwq3z06G+ZT6MbQjHAbQl
	k58CiNN06xtmFi/twTv2SFzb4fDJPXddpJuTLW507C1/I8ysjdzc4WOfVItha5Ea2sPqpFnWkhXaF
	vM6lC9ubW6vyAEo10XjZ+W8ijQWw/qIJm+X+3L5ogZuhelW3sdYShjq7E6DWpDdV6X/U/lvzt4P7M
	+VNeCdTF37ABOLtz+bHBXmel7hy0ADNkkUAnBeqFSz0w3z1Qt1BBRsJ3WkyOjjotlL9CwnVb3qoZk
	8CNQk0u8yc94cbmd9Kfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnh96-0008BW-1X; Wed, 17 Jul 2019 10:26:48 +0000
Received: from mail-db5eur01on0624.outbound.protection.outlook.com
 ([2a01:111:f400:fe02::624]
 helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnh8s-0008B3-4G
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 10:26:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PQx+W2UPZJByIx+J/oXIOWBjgYsbwbfnQ2PGkEfxZZ8m9RDurVepKSugahDvb2b5Wde+75yUvqoSgvtHS+P1FnB/jQOb2rU90gdPUKgPUe9DhRrKnKmuIhdCYJVXMYr5ChBV/2cmz53AKU2IiAI629111l6DiJA3OTTUSd/VkFsMoJzvPHW9W2yJd++h4fA+5bEdiUEQL1VjnApG54LkORax/jRXn0WKhhwXMU54jO4ajFImmpk6Sz28MQK5PzsNRFl2G4z6xhi86oHe5hZxQAqMODx20eo1a41vx2Kj+S2LSomyeBbQvDW7Zg7ua1SLWY2zPUZpXWc/wSzVfAg7FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=swgPGqtt1BaNBY8SzzBCVBDSwX2D8vPm7WqfMY5jRJc=;
 b=KJgmBYP4s7x4SAxGRo8hHpIlfMIC67iZF2GGJESvwuKJBs+i+E+Ct+OGQP5eg82+fAVcvdFdu5W5F+t1fBlaGvRe3kFbmgYG1RbsvieVo6Ci9XGyOk64752u3PsXX7IV2E5VOgg77REiiA4r8yJtUjfSmlMjH9IbAZNbeOH/cCrH9Y1/aDyU6WYwuDfZlii111gnkaBi7cEH87rdrCl3VSxO334BaLAqpojZ9dbreNeMz6IxFk2FY9tW5IWQ3NfuEumYRuR8FI65fj/o7KuHQRd/PgZm3Kfl6IDLo3HFcc2pAAQPpiILjKecKLozxbU9PX96wuaeCOW5BFOTmY85kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=swgPGqtt1BaNBY8SzzBCVBDSwX2D8vPm7WqfMY5jRJc=;
 b=X44Pl8Mlq3B5VzEmpmdcJw2IYRHi+YpMh3Hdv3Twj5K/rm9lgN31vZvizhetCveoknh8NoQBwC2GD5An5jhYqOFiGJaJnt10iuVe9HFI6ANgydzWL8buLz6wI1pGz/Pr9uHMuj+6fu3tY5q6qfPP/dLV3G9ed2UkHZM0TOKYSR4=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB6306.eurprd04.prod.outlook.com (20.179.33.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Wed, 17 Jul 2019 10:26:31 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::7882:51:e491:8431]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::7882:51:e491:8431%7]) with mapi id 15.20.2073.012; Wed, 17 Jul 2019
 10:26:30 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "robh+dt@kernel.org" <robh+dt@kernel.org>
Subject: RE: [PATCH 1/3] dt-bindings: Add Vendor prefix for Einfochips
Thread-Topic: [PATCH 1/3] dt-bindings: Add Vendor prefix for Einfochips
Thread-Index: AQHVPGZqg5LESwYIhES8Xd8HR6s4kqbOmyvA
Date: Wed, 17 Jul 2019 10:26:30 +0000
Message-ID: <AM0PR04MB4211BC8A04B5FB935E15598980C90@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <20190717061039.9271-1-manivannan.sadhasivam@linaro.org>
 <20190717061039.9271-2-manivannan.sadhasivam@linaro.org>
In-Reply-To: <20190717061039.9271-2-manivannan.sadhasivam@linaro.org>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2ef2cd81-8324-4319-be20-08d70aa13c0f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6306; 
x-ms-traffictypediagnostic: AM0PR04MB6306:
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-microsoft-antispam-prvs: <AM0PR04MB6306DB898244413AFEDBCA8D80C90@AM0PR04MB6306.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1775;
x-forefront-prvs: 01018CB5B3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(376002)(366004)(346002)(396003)(199004)(189003)(7416002)(81166006)(81156014)(446003)(74316002)(2501003)(7736002)(25786009)(64756008)(66946007)(66476007)(66556008)(66446008)(86362001)(8936002)(478600001)(558084003)(68736007)(76116006)(54906003)(316002)(8676002)(110136005)(53936002)(76176011)(55016002)(5660300002)(6436002)(3846002)(4326008)(6116002)(66066001)(33656002)(52536014)(7696005)(11346002)(476003)(14454004)(2906002)(71190400001)(44832011)(305945005)(486006)(71200400001)(9686003)(6246003)(229853002)(186003)(102836004)(26005)(6506007)(2201001)(256004)(99286004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6306;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: VmdGQpJUcpCONLqxkHPDIkYPx6xir8487iQp8FuzIQlfI0MBgU5ufWMsyvUM01rAYQ9eB+lbc8l34Ax5XjSAIuIcur3K85o5ADUf86H4ON1FbdzKswD7rzzWxU8ZnQT5efuYuq8k0AZM4EcybZM4SfFNA7mnp7Ue3pz0rk5BOEpDqoJilryG+mezrCPbxb8clM2d+BVxfRsK2uNLUsZPSI6MeeQOUHqENJRsJocBHqd5KYNWg3V7r+r6d+8Cl7dKvQNwDeAj4pq7LtroNf3cGsjlUGE39s8dIdGJeNrnFk3JgwXHUUbioNBO1HLRO65swFBHLYhcX1qETcb+5J1XXiEY2KUXrJCXAQFGFKnP2rnEjqZvuc5oQAVn7D0Upbx8d6n2ywRbdP8NBKwfjWbMf2uMZ06HBeyuJlzDVTRptrw=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ef2cd81-8324-4319-be20-08d70aa13c0f
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jul 2019 10:26:30.9052 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aisheng.dong@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6306
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_032634_168995_A925584B 
X-CRM114-Status: UNSURE (   7.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe02:0:0:0:624 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Kinjan Patel <Kinjan.patel@einfochips.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Darshak Patel <Darshak.patel@einfochips.com>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Prajose John <Prajose.john@einfochips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Sent: Wednesday, July 17, 2019 2:11 PM
> 
> Add devicetree vendor prefix for Einfochips.
>
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
