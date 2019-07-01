Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F8855B6EA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 10:34:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RTVAqlKbqVxxUAneBtMbU1K1rXZJ87ROgzvyk5U8+0A=; b=J6UWupe0wsiT1Q
	RirkYRKsm3e1q+8OK3Qo3/BDXHqNUCGvoU3NorSJWCnLR987iNe/6RNwJ+ivgnPI8NkAMwlWmbXLG
	gy8/IecIcLS95CDIas+6C+dYq8v0RNXySW/3LVben+jOmq38H3hmWvWYzu0dHGr53YWIddBmFMdh3
	XxKBN8Nohj6VnxTWF3pTdDwBoBcUBINpvQkoCX+BC1mkHg0US26wkNHbmLMBZdfjYWTlHIg3jMCQw
	vUHJ8Sdvg9cIvErlSFKgMj4du0Z2kGsFGFNXgjRibZ6isZeLrvJSb4JCEvgclOb8B1f5kVdHKnoUK
	lUph18V3LRwsnesQ5CLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhrlP-0002tO-By; Mon, 01 Jul 2019 08:34:15 +0000
Received: from mail-vi1eur04on0617.outbound.protection.outlook.com
 ([2a01:111:f400:fe0e::617]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhrlC-0002s1-IE
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 08:34:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DQh6Fy3E+hcKkt3f+QNIH3RY7wYnuSGsYLbdOadJ/Hw=;
 b=nCcO8C+pP02+Pwm/X5X/1kcLfmVTeTCdG8TeZzeTTfH1OAfDiu8S77Px9JWThuPg1KWUQotH3RimRWgDhYOsxgW9d4butBY5UA+JUoejWSoxgpD15LUvW8drsw/66dCXnkz/ctqb7rKHYHgCblg6qc///7u7RLI9gksBZHYRQBY=
Received: from AM0PR0402MB3570.eurprd04.prod.outlook.com (52.133.46.11) by
 AM0PR0402MB3842.eurprd04.prod.outlook.com (52.133.34.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.20; Mon, 1 Jul 2019 08:33:58 +0000
Received: from AM0PR0402MB3570.eurprd04.prod.outlook.com
 ([fe80::dd66:8e13:93f0:65eb]) by AM0PR0402MB3570.eurprd04.prod.outlook.com
 ([fe80::dd66:8e13:93f0:65eb%7]) with mapi id 15.20.2032.019; Mon, 1 Jul 2019
 08:33:58 +0000
From: Richard Zhu <hongxing.zhu@nxp.com>
To: "ohad@wizery.com" <ohad@wizery.com>, "bjorn.andersson@linaro.org"
 <bjorn.andersson@linaro.org>, "linux-remoteproc@vger.kernel.org"
 <linux-remoteproc@vger.kernel.org>
Subject: [RFC 0/2] rpmsg: imx: add the initial imx rpmsg support
Thread-Topic: [RFC 0/2] rpmsg: imx: add the initial imx rpmsg support
Thread-Index: AQHVL+e5ybVlx9aCkkKHdbVfPkVZZw==
Date: Mon, 1 Jul 2019 08:33:57 +0000
Message-ID: <1561968784-1124-1-git-send-email-hongxing.zhu@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0P153CA0004.APCP153.PROD.OUTLOOK.COM
 (2603:1096:203:18::16) To AM0PR0402MB3570.eurprd04.prod.outlook.com
 (2603:10a6:208:1c::11)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=hongxing.zhu@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 83ab4347-f5f4-4328-b8e1-08d6fdfedbfe
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR0402MB3842; 
x-ms-traffictypediagnostic: AM0PR0402MB3842:
x-microsoft-antispam-prvs: <AM0PR0402MB3842891462D386A4BBA377158CF90@AM0PR0402MB3842.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3173;
x-forefront-prvs: 00851CA28B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(396003)(376002)(136003)(346002)(189003)(199004)(305945005)(86362001)(186003)(6506007)(386003)(486006)(2616005)(476003)(7736002)(256004)(102836004)(26005)(50226002)(66066001)(2501003)(8936002)(36756003)(8676002)(81156014)(81166006)(6116002)(3846002)(2906002)(52116002)(99286004)(68736007)(5660300002)(478600001)(25786009)(71200400001)(14454004)(4326008)(71190400001)(4744005)(73956011)(66946007)(6486002)(6436002)(316002)(66476007)(53936002)(66446008)(6512007)(110136005)(2201001)(64756008)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR0402MB3842;
 H:AM0PR0402MB3570.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: fWaSYzVGIkDUHWtxvzU+aKOPYKHZFhRxYWrYoetXV9R+0sP3sVxHcGeqdGuLbaZNe5gXr2QLokBXI9LxEkZta19xIXKhiwTzHm4I7lpkdsbsPTpHFWhgNixgdfWKXOFq6LtoTToVWDFIlYwF2xqsB+bU8OHLUu7+/7O2tIjq5LDrnZXypOlM9+BlBmzZDaGrpGkPMwoOXNcozsZ4Wr80j/QxntwbJZOjoQ8eSDq0H6UH7my71tpKAR0/xV271XYTdEUTrcUqgkCoYfwUwNRHoHQKQ/Ho93Ktpj2e1mc6i3GY4RCrTCCPf7NzxMJBvClLG2V8fZCv4uP+3z2H9KR3jBoaIbKxlRdp7zPm7iFNyFCTtzIqDOixiP3OvoEKdhuKbuVPuPNFV8SiRMUIup9qOQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 83ab4347-f5f4-4328-b8e1-08d6fdfedbfe
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2019 08:33:57.9145 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hongxing.zhu@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR0402MB3842
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_013402_684922_E181490B 
X-CRM114-Status: UNSURE (   7.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0e:0:0:0:617 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

 [RFC 1/2] dt-binding: add imx rpmsg compatibility documentation
 [RFC 2/2] rpmsg: imx: add the initial imx rpmsg support

Documentation/devicetree/bindings/soc/fsl/fsl,rpmsg.txt |  75 ++++++++++
drivers/rpmsg/Kconfig                                   |  24 ++++
drivers/rpmsg/Makefile                                  |   2 +
drivers/rpmsg/imx_rpmsg.c                               | 542 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
drivers/rpmsg/imx_rpmsg_pingpong.c                      | 100 +++++++++++++
include/linux/imx_rpmsg.h                               |  43 ++++++
6 files changed, 786 insertions(+)
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
