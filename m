Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E1921B4BC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 13:17:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zEcbGGvJUE02xnOZ8c+qtdjUlai5te+4PuxHrE0d+lc=; b=oV5zD2nG7g1blU
	ZVLiBgUuZCqvQSgDE3b4J/0ZrKOIVyjzFDpkryOFR6BxuQM9jp21pKYaQCgbHiyBQYbVuPzu7tCCw
	7w9hz95BE/F4aPvG2xyI3sG6LuHBtHuEGFYo3kxFYCoU1rfEW9NxXJQvjghMu153XKFf/Z6tz9tYr
	80Z1Q9eO0l3V2ZZgV0qoiBU7TP3qabRUoFJydxZMZc54MP1IF0PyfjNjAlj1RPrQml/STwcW/YxYf
	AlMtdvfDSR0buJSkDeJ/n2FyacPx3uOExvDFS0wNtkikVXU9ZO0etHyQgLC/I4dh5kesu/OjrH/1s
	+eJzTE0iK0iHJo2FB5Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ8wz-00038v-7a; Mon, 13 May 2019 11:16:57 +0000
Received: from mail-eopbgr60095.outbound.protection.outlook.com ([40.107.6.95]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ8vV-00006d-CO
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 11:15:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=prevas.se; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hFXFaYxZbDf4YVKZ2AuPrr15Glit1zEkKAeApbr5ys0=;
 b=bH6O7GUIk0a6YuBfsMyJb+HX88KimZLLAxKOsJ8vhs4JqRPD2IfddEkgGnIRfPDg+XfepG3uCE0vi3/3hdazZMScX5f/gKqPnb/eON79SJsLN0gxryE3zelbKV4FE7R91CmSNpdvdzQ1128BURsZTJFbXvZSbWasz/x4Ld3L9w8=
Received: from VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM (20.178.126.212) by
 VI1PR10MB1950.EURPRD10.PROD.OUTLOOK.COM (52.134.27.154) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.24; Mon, 13 May 2019 11:15:00 +0000
Received: from VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::48b8:9cff:182:f3d8]) by VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::48b8:9cff:182:f3d8%2]) with mapi id 15.20.1878.024; Mon, 13 May 2019
 11:15:00 +0000
From: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
To: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Qiang Zhao
 <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>
Subject: [PATCH v3 5/6] soc/fsl/qe: qe.c: support fsl,qe-snums property
Thread-Topic: [PATCH v3 5/6] soc/fsl/qe: qe.c: support fsl,qe-snums property
Thread-Index: AQHVCX0azViUEmjOIE6yA42BiGSQgw==
Date: Mon, 13 May 2019 11:15:00 +0000
Message-ID: <20190513111442.25724-6-rasmus.villemoes@prevas.dk>
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
x-ms-office365-filtering-correlation-id: ba6d851b-b994-4ae2-98d2-08d6d7943d20
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:VI1PR10MB1950; 
x-ms-traffictypediagnostic: VI1PR10MB1950:
x-microsoft-antispam-prvs: <VI1PR10MB19505FC88D4C475383E4A8F38A0F0@VI1PR10MB1950.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:2399;
x-forefront-prvs: 0036736630
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(39850400004)(366004)(376002)(136003)(396003)(189003)(199004)(6512007)(66066001)(53936002)(107886003)(52116002)(68736007)(256004)(71200400001)(71190400001)(76176011)(6436002)(478600001)(6486002)(1076003)(36756003)(5660300002)(72206003)(74482002)(446003)(81156014)(8676002)(14454004)(99286004)(2501003)(66946007)(66476007)(66556008)(64756008)(66446008)(73956011)(54906003)(11346002)(2616005)(42882007)(476003)(81166006)(44832011)(50226002)(486006)(8936002)(110136005)(8976002)(6116002)(7416002)(316002)(3846002)(2906002)(305945005)(7736002)(186003)(25786009)(102836004)(6506007)(386003)(4326008)(26005)(142933001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR10MB1950;
 H:VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: prevas.se does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: uJp8v4HOR+DW0xmeKxRc1EOdLFAgYrI0AEqNoNqyhOG6PqFo7qwAU3dytXRXzDPBn4f2FN1iOVNasjvZIY9V65dZyPX+my2KzNnvBdT33X8Km364xW7ISus11ZKTSpAPXmuNKEQUzwfnKukCLd+6y6+3g9P6c5dE0lkM6gMZPp4hBkrwt9nHAeVlU8a6E5t1C4g8HrOr/CsCYxQykV+2E2sNOmKy5m59d50Ugyu0PIm0uKOe8pNLG8xkSYTu8QoYBsLjXlSrVW4z8Nm/5rHOVu+kWRnWe4vwOmJXjLfLY8bWHAcEa5t9S4ctYwE+cjPIsAKXrj8RydZJDOF7q+mFCr+xloUwAiwEOHWlxeJAA3nilTOPHV1iyBRLkhT4AsXe/JtWPgF7AxpTI/ZRuDwDVEOyJjjX5vy57prB1D9QIss=
MIME-Version: 1.0
X-OriginatorOrg: prevas.dk
X-MS-Exchange-CrossTenant-Network-Message-Id: ba6d851b-b994-4ae2-98d2-08d6d7943d20
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2019 11:15:00.2763 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d350cf71-778d-4780-88f5-071a4cb1ed61
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR10MB1950
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_041526_097946_4BFB125F 
X-CRM114-Status: GOOD (  15.16  )
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

Add driver support for the newly introduced fsl,qe-snums property.

Conveniently, of_property_read_variable_u8_array does exactly what we
need: If the property fsl,qe-snums is found (and has an allowed size),
the array of values get copied to snums, and the return value is the
number of snums - we cannot assign directly to num_of_snums, since we
need to check whether the return value is negative.

Reviewed-by: Christophe Leroy <christophe.leroy@c-s.fr>
Reviewed-by: Qiang Zhao <qiang.zhao@nxp.com>
Signed-off-by: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
---
 drivers/soc/fsl/qe/qe.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe.c b/drivers/soc/fsl/qe/qe.c
index 4b444846d590..1d27187b251c 100644
--- a/drivers/soc/fsl/qe/qe.c
+++ b/drivers/soc/fsl/qe/qe.c
@@ -283,7 +283,6 @@ EXPORT_SYMBOL(qe_clock_source);
  */
 static void qe_snums_init(void)
 {
-	int i;
 	static const u8 snum_init_76[] = {
 		0x04, 0x05, 0x0C, 0x0D, 0x14, 0x15, 0x1C, 0x1D,
 		0x24, 0x25, 0x2C, 0x2D, 0x34, 0x35, 0x88, 0x89,
@@ -304,7 +303,21 @@ static void qe_snums_init(void)
 		0x28, 0x29, 0x38, 0x39, 0x48, 0x49, 0x58, 0x59,
 		0x68, 0x69, 0x78, 0x79, 0x80, 0x81,
 	};
+	struct device_node *qe;
 	const u8 *snum_init;
+	int i;
+
+	bitmap_zero(snum_state, QE_NUM_OF_SNUM);
+	qe = qe_get_device_node();
+	if (qe) {
+		i = of_property_read_variable_u8_array(qe, "fsl,qe-snums",
+						       snums, 1, QE_NUM_OF_SNUM);
+		of_node_put(qe);
+		if (i > 0) {
+			qe_num_of_snum = i;
+			return;
+		}
+	}
 
 	qe_num_of_snum = qe_get_num_of_snums();
 
@@ -313,7 +326,6 @@ static void qe_snums_init(void)
 	else
 		snum_init = snum_init_46;
 
-	bitmap_zero(snum_state, QE_NUM_OF_SNUM);
 	memcpy(snums, snum_init, qe_num_of_snum);
 }
 
-- 
2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
