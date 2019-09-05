Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED5C9AA223
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 13:59:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gl9fvIKCLDqOSwMfogXblpxiQNgOkV+7+u65aMWHUGA=; b=F69zbsEHdCsZxF
	IRTIIo759iwMRxcKu2htdoQ0y6DlebQy7DYHDtChn8dEca99B0wrpXql41EJQ4vC/iPB4AFnJ9xmK
	GWJOfaof05FJgYuXLLgZydzZhJSi2oScARSDl1WWAR+oPsUp27AnumOUY7fS6ydDT8AbaKfvBkIm2
	hNoJDkjWplwQjvkcVgVsHnJm7HROpCYlGCKKMh/zQ2t+oWQBhW0LIvsD9TkEzg9J/Doxu2NWRluPo
	4NxGc6H0302kPqOQi7B9uzohiaf9+FvphDikrJ+S3GgGmOoivLKQq8SA/qqnlxd2zvgBn1zT69cC3
	8GuGf5pEnBBlCPkV90Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5qQ9-00053A-Rq; Thu, 05 Sep 2019 11:59:25 +0000
Received: from mail-db5eur03on061f.outbound.protection.outlook.com
 ([2a01:111:f400:fe0a::61f]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5qPO-0004UO-BR
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 11:58:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H6+kmODlRo4w6jtgfChlx1wtmXtNzmM6fyCig24yldkSijjvhKK32B39rNq+b6vW1mN7JdhrkyLJirEPZihoOjV8tf/WlCEU2cXg1EALdT7opKRbDs9XdM29b1mLFFwmH2nqfww4gu80+OEVJkjuSf4oQ5yRSmnQHugsHyfRSgmjGcPrKF6oJ6TPiM73UT5sWSpVDZMc3TDnObzxPSOErhieMFwYi9c+MGDrTNA6HKe3RUd0YIMa/t5U2x2+pkdUhgKX40yF3sPZJdN8h5N7RjtQJSFW5ZpQnA4UUEC/nAZoPrzQyTwdZJmsxJ4et5E5BcRuvDYWqeNt9mxgKPGqcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pe33SIbYB88KZ1InOfVAGswqJd5chZSXWAxNGDHRk5M=;
 b=UDfvq3i+HP3RgQuMOszAX7RCP8kqJKUJ9pMRrKP2ZB56Q1eotWiMuRfECCjv/xS4Lgugt1O+VjZfqcppmHG2ca+2xGg0okfZ2fI5J7paVC/bR3RWRN9tvUVYou/hGDXmxjZhSA4tzNNE1L8kJcvjmPqPXsAmYtJpXgzh7Kx1MKB75cTZ+yYm2xGGBjTSzHY7KUpVIMNonoFWwmSo+XbTrJY6s2CzqR52el3oi+nNZZe4k/ZbuxxGIhHZ5wFVwBIY3XSbwDQDmYc/s5+ngRdwnCBPceHzLjgQedAtYRCpB/E076LCDfn5n9lE+kGdazDOsYXo47635hOC+zRmGBRs5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pe33SIbYB88KZ1InOfVAGswqJd5chZSXWAxNGDHRk5M=;
 b=hrKh88Arql4uEXjaCjycdM2pHxlo9qHw9oh7OJLB1jGO7AzePlLYBFLvCmfezdKdfChOKkXp7aqdBC9XwYzvIohnhYal+ZrRlNp070WN/IsUlBCFAcYw9vfMjE6obTZlktn/1UTbqJF2I4YVe0W/drqkOGqy8GjgnBox8G3wRTk=
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com (10.175.20.18) by
 VI1PR0402MB3805.eurprd04.prod.outlook.com (52.134.16.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.18; Thu, 5 Sep 2019 11:58:34 +0000
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::19cd:9f82:31ce:fbbb]) by VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::19cd:9f82:31ce:fbbb%8]) with mapi id 15.20.2220.022; Thu, 5 Sep 2019
 11:58:34 +0000
From: Stefan-gabriel Mirea <stefan-gabriel.mirea@nxp.com>
To: "corbet@lwn.net" <corbet@lwn.net>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will@kernel.org"
 <will@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>, Leo Li
 <leoyang.li@nxp.com>
Subject: [PATCH v4 2/6] arm64: Introduce config for S32
Thread-Topic: [PATCH v4 2/6] arm64: Introduce config for S32
Thread-Index: AQHVY+E+ReIuxfnMP0GZYie3bCDopA==
Date: Thu, 5 Sep 2019 11:58:34 +0000
Message-ID: <20190905115803.19565-3-stefan-gabriel.mirea@nxp.com>
References: <20190905115803.19565-1-stefan-gabriel.mirea@nxp.com>
In-Reply-To: <20190905115803.19565-1-stefan-gabriel.mirea@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.22.0
x-clientproxiedby: AM6P193CA0005.EURP193.PROD.OUTLOOK.COM
 (2603:10a6:209:3e::18) To VI1PR0402MB2863.eurprd04.prod.outlook.com
 (2603:10a6:800:af::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=stefan-gabriel.mirea@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 38f7cb3b-944b-440f-c4f0-08d731f860c7
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0402MB3805; 
x-ms-traffictypediagnostic: VI1PR0402MB3805:|VI1PR0402MB3805:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0402MB38051AA48F40A5BFD59DA5DADFBB0@VI1PR0402MB3805.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 015114592F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(366004)(396003)(376002)(136003)(199004)(189003)(476003)(81156014)(81166006)(446003)(2616005)(486006)(71190400001)(11346002)(6436002)(1076003)(54906003)(71200400001)(110136005)(53936002)(8676002)(7416002)(102836004)(478600001)(36756003)(14454004)(6512007)(25786009)(2501003)(2201001)(86362001)(256004)(66556008)(64756008)(66446008)(186003)(66946007)(26005)(4326008)(4744005)(3846002)(7736002)(316002)(6506007)(52116002)(99286004)(8936002)(76176011)(2906002)(305945005)(6486002)(5660300002)(50226002)(66066001)(6116002)(66476007)(6636002)(386003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3805;
 H:VI1PR0402MB2863.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: rG1Z/T24/fg58W50AuAd3J8EyTbZKK65/Crm0swh4/ZQn85MMOtQwA6NNv0LSvfENUxaPLM6Qp8BF1JNh3k3atrTPmum+4IlZijzt7gqQfCb8J4us3Hy2CQOFBge8zc5br7gNFgG5gL1jF8yBnvUjKso60qVMmFUnLycjUkc9T+t2wL20LjJalCiTM0DxCnTPece/SvdTs7DMwkyH+7927NQOEDYPMIfPp/mf+crIxfVOoQZxUIAZXgd0OfPozBHffIXgUnqw7F6JcfmngHfezVbRofQFMFJdNX4c3C8q5KAQ5DnYLla8ocT5zwON5uBxZD5vosBAXz9CUCGgJFnFkXRIrx51fpxmsgDPxbyfsPUX6Q30h3+Ot++etDBZ+r9xo1iEjEr3qg/+Oc5op9JFUuVXI7V/OO6msfVmkRIEeo=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 38f7cb3b-944b-440f-c4f0-08d731f860c7
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Sep 2019 11:58:34.5468 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: REvhj/6nsbFkKMvRvoNHl7u+an9wAm+xmVFQvIfWzUcbWmMtRRDBsZ40w9T1g00h6XLl6ROrifabO/UK/F4CHQICEAbut7N5bjvYyl1+xcs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3805
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_045838_550268_C0AC0959 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0a:0:0:0:61f listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FORGED_SPF_HELO        No description available.
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
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "jslaby@suse.com" <jslaby@suse.com>,
 Cosmin Stefan Stoica <cosmin.stoica@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mihaela Martinas <Mihaela.Martinas@freescale.com>

Add configuration option for the NXP S32 platform family in
Kconfig.platforms. For starters, the only SoC supported will be Treerunner
(S32V234), with a single execution target: the S32V234-EVB (rev 29288)
board.

Signed-off-by: Mihaela Martinas <Mihaela.Martinas@freescale.com>
Signed-off-by: Stoica Cosmin-Stefan <cosmin.stoica@nxp.com>
Signed-off-by: Stefan-Gabriel Mirea <stefan-gabriel.mirea@nxp.com>
---
 arch/arm64/Kconfig.platforms | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
index 4778c775de1b..64bbe2d0b04f 100644
--- a/arch/arm64/Kconfig.platforms
+++ b/arch/arm64/Kconfig.platforms
@@ -210,6 +210,11 @@ config ARCH_ROCKCHIP
 	  This enables support for the ARMv8 based Rockchip chipsets,
 	  like the RK3368.
 
+config ARCH_S32
+	bool "NXP S32 SoC Family"
+	help
+	  This enables support for the NXP S32 family of processors.
+
 config ARCH_SEATTLE
 	bool "AMD Seattle SoC Family"
 	help
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
