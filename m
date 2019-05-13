Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC38B1B4A9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 13:15:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WO6gtgHVZPJMGIKvYnGOn5gDAiEBvv8qzk/SsEYaZ+Y=; b=NWTJB/WLbhs9zA
	YpjeQoHcau6N5VMDYjNqcMYPlEf2dIpNdNue/TTPg3X1BFS+kU305ves2PHgulWL7NDCxGG763ZUd
	4yyqVobl2EeOKdlrGwVDwhVA7CooqgxLZIcoNrYdCdm/YyL1FZkrFVL/RPuuGa6mKlZc0WakKgvQ/
	/1LI/fHutbqLKgYBoxZ+B1MzkOHer+s2fNgFfCmid1+1nRYBJ96pNhG9OfYkTNaLUu3jCFehlSWxR
	OvM3RBPEXgKc2Jh/8dmF19V7JCIS7NNL71LE/HKkYGbzKowyjcWB2DS9B2J+c8brCqEhC+08e9d4/
	XWzwumhr5bVvo+hjDpHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ8ve-0001kq-RN; Mon, 13 May 2019 11:15:34 +0000
Received: from mail-eopbgr60095.outbound.protection.outlook.com ([40.107.6.95]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ8v8-00006d-5k
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 11:15:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=prevas.se; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D+8Kgzm9ZzUSGh/sqgH4zHXiaGOchvRxgwWj8JNneO4=;
 b=l9vGglx1dMIFFOzP3xDXscmFb78V0HBmIDxPULOjiEke9vVogpJYFcyPbK/0xtyK6Y2/Cj0Ge6A/kCgPlvYW0aA8Sq344+gbPk5hQsENDP4LrNm2HfQ1sr6EKu4JDt6MPlVg/RXMx9LKSNUmPPrB/yMLIesPp6r5YtmVByWYSVg=
Received: from VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM (20.178.126.212) by
 VI1PR10MB1950.EURPRD10.PROD.OUTLOOK.COM (52.134.27.154) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.24; Mon, 13 May 2019 11:14:54 +0000
Received: from VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::48b8:9cff:182:f3d8]) by VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::48b8:9cff:182:f3d8%2]) with mapi id 15.20.1878.024; Mon, 13 May 2019
 11:14:54 +0000
From: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
To: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Qiang Zhao
 <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>
Subject: [PATCH v3 1/6] soc/fsl/qe: qe.c: drop useless static qualifier
Thread-Topic: [PATCH v3 1/6] soc/fsl/qe: qe.c: drop useless static qualifier
Thread-Index: AQHVCX0XqWweYTTW4Ui0pvWYzLl4aw==
Date: Mon, 13 May 2019 11:14:54 +0000
Message-ID: <20190513111442.25724-2-rasmus.villemoes@prevas.dk>
References: <20190501092841.9026-1-rasmus.villemoes@prevas.dk>
 <20190513111442.25724-1-rasmus.villemoes@prevas.dk>
In-Reply-To: <20190513111442.25724-1-rasmus.villemoes@prevas.dk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1PR0101CA0022.eurprd01.prod.exchangelabs.com
 (2603:10a6:3:77::32) To VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:803:e3::20)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Rasmus.Villemoes@prevas.se; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.20.1
x-originating-ip: [81.216.59.226]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d8673d95-778f-4240-5171-08d6d79439c2
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:VI1PR10MB1950; 
x-ms-traffictypediagnostic: VI1PR10MB1950:
x-microsoft-antispam-prvs: <VI1PR10MB1950EE05FF8094316F0C181E8A0F0@VI1PR10MB1950.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:497;
x-forefront-prvs: 0036736630
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(39850400004)(366004)(376002)(136003)(396003)(189003)(199004)(6512007)(66066001)(53936002)(107886003)(52116002)(68736007)(256004)(14444005)(71200400001)(71190400001)(76176011)(6436002)(478600001)(4744005)(6486002)(1076003)(36756003)(5660300002)(72206003)(74482002)(446003)(81156014)(8676002)(14454004)(99286004)(2501003)(66946007)(66476007)(66556008)(64756008)(66446008)(73956011)(54906003)(11346002)(2616005)(42882007)(476003)(81166006)(44832011)(50226002)(486006)(8936002)(110136005)(8976002)(6116002)(7416002)(316002)(3846002)(2906002)(305945005)(7736002)(186003)(25786009)(102836004)(6506007)(386003)(4326008)(26005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR10MB1950;
 H:VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: prevas.se does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: fbA/ERyrEYvUSXkEukIoMKq5Xr5HmpRlg9OAIUuBpj4wDPD/Vb1S0rAJVJ2ezzoe+5K30sKDDcQuY7a9stY7FDsBAisT0Kui9kC/o3AtVh/jm+3TvY75+jDxsZt7mwoB5SqHT+Kth1nWjNILh+Tj2gLv2A9HlIQ85ZXTsyw9kyzxQd0oS6c2cUFKRPTWjux0Xdmiz16hvH5tJW3j+aa3Lo7xfWN4z3/z5gk1qh8cwBtJraaPeSh5baHxHJErxXe6iZiiSxjo1PQuBiDAs8n6PA6hg8xAX3oip1c91bW/3Kzf4FI2SlrJ6aszBC+Icipu4HmaMMqYQC+9D15un4ROFzl5VThzA7zSbOsb1YMFSK+grsvpGNq7R9gabnXvOwM5ojMRpLIpqTN0RzklYuknZeEqOYxFHOEKjGPDnnGlByo=
MIME-Version: 1.0
X-OriginatorOrg: prevas.dk
X-MS-Exchange-CrossTenant-Network-Message-Id: d8673d95-778f-4240-5171-08d6d79439c2
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2019 11:14:54.6923 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d350cf71-778d-4780-88f5-071a4cb1ed61
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR10MB1950
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_041502_238423_0F9708FB 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.95 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 Mark Rutland <mark.rutland@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Scott Wood <oss@buserror.net>,
 Joakim Tjernlund <Joakim.Tjernlund@infinera.com>,
 Rasmus Villemoes <Rasmus.Villemoes@prevas.se>,
 Rob Herring <robh+dt@kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The local variable snum_init has no reason to have static storage duration.

Reviewed-by: Christophe Leroy <christophe.leroy@c-s.fr>
Reviewed-by: Qiang Zhao <qiang.zhao@nxp.com>
Signed-off-by: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
---
 drivers/soc/fsl/qe/qe.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/soc/fsl/qe/qe.c b/drivers/soc/fsl/qe/qe.c
index 612d9c551be5..855373deb746 100644
--- a/drivers/soc/fsl/qe/qe.c
+++ b/drivers/soc/fsl/qe/qe.c
@@ -306,7 +306,7 @@ static void qe_snums_init(void)
 		0x28, 0x29, 0x38, 0x39, 0x48, 0x49, 0x58, 0x59,
 		0x68, 0x69, 0x78, 0x79, 0x80, 0x81,
 	};
-	static const u8 *snum_init;
+	const u8 *snum_init;
 
 	qe_num_of_snum = qe_get_num_of_snums();
 
-- 
2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
