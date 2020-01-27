Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C58C14A117
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 10:46:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CjB/0Wc/VPgiMNJ1Z+UWG664D6BWoBZYTXRNgb6QMrg=; b=lDVN4UhlV9woYd
	wOcSUVf8jfHUuSOU9MDuXOwzZ3txcMOREmJN/GIHnLe0+9cEntlHJgwgIsWZt3G/9Hrs/8D7LDkNg
	RcWAK+4rXV982RubUMLFg3e0/2/y4cSo7WzL5TzRpIFPb3CIDFCtZ/cUPJ8oWZHDrGpG/pIECd03J
	CXm3Ci3iRnGVIPKYlT5pLihsQsj+4weftJR1LTuOgydg+/s3zPjYcS6VHSIW6AMEix6vDC2FCPnOz
	fRaGo5Fp2KQHygKaxsXeFxHebiWBRre7IUnaF4vd9Yf83T6wZKcx9XuSUkA9QHvZpiU9oTtq+08Fy
	RkW8nB1fh5KgHuJU7y8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw0yF-0000sB-RX; Mon, 27 Jan 2020 09:46:15 +0000
Received: from mail-eopbgr70085.outbound.protection.outlook.com ([40.107.7.85]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw0x3-00073r-7U
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 09:45:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GwF6rZUPqgoz8FaQ6kO6qKxYVwpGnx130jIi56hUEFUMA5hac0aVe2SimhNV4bGArPpzaQgiqZrEUyUucpe2CcqGyPshkW+IYKmQmUf8BrYnXKM42xvhFdmZpV5nm/tuIoHeoopYpskqS3bFZ+vMdsdUL9SeH1YNy4cIR523FcO1HwexnNw5Eql+Rso4nhCDkn3s7/PF4k6N/H49JRu2nTvn50uEyokdWCt0vJqxf6rBRcNd2Y25GMSwyFUfEji9bS77237Ue2+ZO2aSYn1HnG+PUdOqh7cjJht5SaW8FaxQMfVYxJWoeCObOyvNzjfZ9goxN0JIJEpSUVg8YT8U7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mlZpygzK/k9J+YwhyuXjvtbmE4EeQxGwrIc6hX/MHzw=;
 b=MUFqxE6SXbT4PdGnPTsb/FcieUhi0Cx6E6h35QLvVXJ6+iNwXz54hLzvlwDoGo4g69PQJ1fcZSOQy2dPPIwWFQpRXU03H6GOTOlIJKhM/0fEGCA6Q1GPaoVPsLdZplAHJMKIxtZz5W3TRuodHbutKx9TiLlFcO3sKdjr2tQBK2d+7mXAv2wevBBwuEXMM2O376qfTyae035NmG8lTAqEF/a2QD3H7dL/wJmPJEWn7Xm+1Q/PaA7STHjW3gg/hDqrXaBDVQqyv4qPVw4MH6EUJnFtlsUCdPp/pe16w62iJApSGwKFv5NOIHlLDP71iP3R5UeBaVKJ46Z49+Jd2eBMhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mlZpygzK/k9J+YwhyuXjvtbmE4EeQxGwrIc6hX/MHzw=;
 b=rGY+AuTd8LdaKlydd1s59ooOrPMETmWJCZjkZ1PSdUytLpzdSyJkSbOvDitZQGzUNzRfyDODbAAn2L3EvFoX4vrLu6VlKZH+kSmuhzLjFKsQlYr7atjOk8Qqa8n2XiT4f4uDubmFyCdiqap4j/AmOIWj+hyzCpvlq5VPM7mJIOA=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6436.eurprd04.prod.outlook.com (20.179.252.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.24; Mon, 27 Jan 2020 09:44:57 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2665.017; Mon, 27 Jan 2020
 09:44:57 +0000
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR0401CA0005.apcprd04.prod.outlook.com (2603:1096:202:2::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2665.24 via Frontend
 Transport; Mon, 27 Jan 2020 09:44:53 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will@kernel.org"
 <will@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "arnd@arndb.de"
 <arnd@arndb.de>
Subject: [PATCH V2 4/5] soc: Makefile: increase build coverage for i.MX
Thread-Topic: [PATCH V2 4/5] soc: Makefile: increase build coverage for i.MX
Thread-Index: AQHV1PZv67IYkgl6NE6QVwElj/wbFg==
Date: Mon, 27 Jan 2020 09:44:57 +0000
Message-ID: <1580117979-4629-5-git-send-email-peng.fan@nxp.com>
References: <1580117979-4629-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1580117979-4629-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR0401CA0005.apcprd04.prod.outlook.com
 (2603:1096:202:2::15) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 1756bc26-8351-4701-3d61-08d7a30d91d4
x-ms-traffictypediagnostic: AM0PR04MB6436:|AM0PR04MB6436:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB64369A7905D637E4976265A7880B0@AM0PR04MB6436.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:843;
x-forefront-prvs: 02951C14DC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(136003)(39860400002)(396003)(346002)(376002)(189003)(199004)(81166006)(81156014)(8676002)(71200400001)(8936002)(2906002)(6512007)(4326008)(44832011)(7416002)(69590400006)(86362001)(36756003)(110136005)(54906003)(316002)(52116002)(4744005)(66446008)(5660300002)(478600001)(6506007)(64756008)(66476007)(66946007)(6486002)(2616005)(956004)(186003)(16526019)(26005)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6436;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CPHtDDTg61CwNCPOz39WpAsub7Cg20d5cpTDmLNvPGn32cCIdRsWHSD/hEugA8EcfZVwPjmYf6LJEsqpd1yzXjOQoGXoVRFndiKgMN4CK9JZQxKGHP8Hys6md9VNu8O+Fa8J2EiyxF1JltuUKZSQw33dytTyK1UZxboSlwHW6rLeDgvwe6HLXZTphAcvFDiLhLuJyDiuVqtm5zzMIVO9Hpylx8jHUCTaS8XgyDv5A4B9H9clX64ZQZd0pnrqIPks7rcCGpnoA+02dvG7cpUQaG+PIIAWXw/Et6S+iNxCb6Ya3yYfpC5xhZlJkW0SsJKEEwhe1VFuTun+7kw4Zp/bGWezauNoP0wE+eCtOepprUx6+DEB31ULBoRPZsZ2liP7WupiOb+1QppgdSYkcQJ+2LdKX9hjYmxRbFvL7I4XDyW+joaDwDxkq7PDUaUksjOOj5LWG6y7HJlRBMvj+/HAKaK4knS0pdvpGcEeWQzMjYr16Ye1ztcnJGOJ40XrJsXJ
x-ms-exchange-antispam-messagedata: lkhDd0SG+CF2gXYVxT1vCr0EeMYVKm48YB0njpM6SSCjqT4eJ5UcQSp9AzDYv1TX/GhwDCbUhCCAsMnfnUtVmp5kgs5NglmRE2GU8SlQYrvmi+xNBGZybvYvJ3CuswBsMG8GNNU7EkLhIrWM0nBIhQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1756bc26-8351-4701-3d61-08d7a30d91d4
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2020 09:44:57.6889 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +WIWVsyS49WD02XEXSPJciPsCTvAkmjZZdfvPPVNAweeljz2GH2PHmtrLWRVUnsqxJrVWMbj2ks9gskDI8P4IQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6436
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_014501_334410_FF65BEF6 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Abel Vesa <abel.vesa@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "krzk@kernel.org" <krzk@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "olof@lixom.net" <olof@lixom.net>, Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Increase build coverage for i.MX SoC drivers.

Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/soc/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/soc/Makefile b/drivers/soc/Makefile
index 2ec355003524..614986cd1713 100644
--- a/drivers/soc/Makefile
+++ b/drivers/soc/Makefile
@@ -11,7 +11,7 @@ obj-$(CONFIG_ARCH_DOVE)		+= dove/
 obj-$(CONFIG_MACH_DOVE)		+= dove/
 obj-y				+= fsl/
 obj-$(CONFIG_ARCH_GEMINI)	+= gemini/
-obj-$(CONFIG_ARCH_MXC)		+= imx/
+obj-y				+= imx/
 obj-$(CONFIG_ARCH_IXP4XX)	+= ixp4xx/
 obj-$(CONFIG_SOC_XWAY)		+= lantiq/
 obj-y				+= mediatek/
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
