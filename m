Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99F80203C5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 12:41:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZAxlQ7UNd5aHFB+z/WP7V667MJy02oWggUrAB2gRL7k=; b=s3IvYIs2bFIoGc
	w42eLAxHSssMgfGn4PZiHY5EkEVVKtT+vmbpHGoqxJH9iAZMe/rMulPzVn6k/0tN15EOuRgCdxK4f
	QL4isdFTL+9RPRsTXKY8m/7dsM7loXy4OQlmUCdPj/QYroJrapwlRXysKQqYM9MCvdj+/8XzJaDcC
	P3M6k00pv/iYz8vUq3xpp42pWOecRfQg70XcQ73nXmLtJBuIbpnAH7YpgNkzPAvCBtCWx/7D8d1U9
	YAfHYpVus2a4bXrVlGrF6/V8lfvx11Zxy6Ws93uzzyMwfGwFtHlsLlx1RAhZHo2jH94pOtNBzaLit
	+gFqq2D8Ol4PHV0kBAlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRDpX-0002lU-F8; Thu, 16 May 2019 10:41:43 +0000
Received: from mail-ve1eur03on0631.outbound.protection.outlook.com
 ([2a01:111:f400:fe09::631]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRDnh-0007k7-Og; Thu, 16 May 2019 10:40:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6GGn8BfSWxOY/vB9Q0JJqn5M73/wKbDQ2Fs5M/Z2JKQ=;
 b=nfl0L7u69Vs6thNXjUO0afldS+7m6QSJ1yjlhh9j5HNb+cqEyJoR7WwFBIGU6klEFJulu5U6Z8fYMXhrjZw7UnkiNNPj0CJpePQmh3s9R57QLVod4gF5aVSpQomzjqwBHU5UkPxadJYbvdFlhDIMCPiud6iiFYqQxnEzduOdthY=
Received: from AM0PR0402MB3556.eurprd04.prod.outlook.com (52.133.43.147) by
 AM0PR0402MB3460.eurprd04.prod.outlook.com (52.133.48.28) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.21; Thu, 16 May 2019 10:39:44 +0000
Received: from AM0PR0402MB3556.eurprd04.prod.outlook.com
 ([fe80::f891:76d:8a6a:3dfd]) by AM0PR0402MB3556.eurprd04.prod.outlook.com
 ([fe80::f891:76d:8a6a:3dfd%2]) with mapi id 15.20.1900.010; Thu, 16 May 2019
 10:39:44 +0000
From: Kuldeep Singh <kuldeep.singh@nxp.com>
To: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: [PATCH] dt-bindings: spi: spi-fsl-qspi: Add bindings of ls1088a and
 ls1012a
Thread-Topic: [PATCH] dt-bindings: spi: spi-fsl-qspi: Add bindings of ls1088a
 and ls1012a
Thread-Index: AQHVC9OshF0uyEzNyEaAYx9P/97pXg==
Date: Thu, 16 May 2019 10:39:44 +0000
Message-ID: <20190516104046.23830-1-kuldeep.singh@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BMXPR01CA0083.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:54::23) To AM0PR0402MB3556.eurprd04.prod.outlook.com
 (2603:10a6:208:17::19)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=kuldeep.singh@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [92.120.1.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a7fd8b2c-ce41-4ee9-9311-08d6d9eacf04
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR0402MB3460; 
x-ms-traffictypediagnostic: AM0PR0402MB3460:
x-microsoft-antispam-prvs: <AM0PR0402MB34609EABE42D5A61E2D4824CE00A0@AM0PR0402MB3460.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:862;
x-forefront-prvs: 0039C6E5C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(39860400002)(376002)(346002)(136003)(366004)(189003)(199004)(305945005)(1076003)(4326008)(71190400001)(71200400001)(8676002)(26005)(4744005)(6116002)(53936002)(3846002)(8936002)(81156014)(81166006)(1730700003)(99286004)(256004)(25786009)(6512007)(50226002)(52116002)(6486002)(6436002)(68736007)(2906002)(5640700003)(14454004)(86362001)(6506007)(6916009)(386003)(44832011)(2616005)(476003)(316002)(7736002)(186003)(478600001)(66066001)(2501003)(36756003)(486006)(5660300002)(54906003)(73956011)(66946007)(102836004)(66476007)(66556008)(66446008)(64756008)(2351001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR0402MB3460;
 H:AM0PR0402MB3556.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: uXze1UnNr2vHRFI5mSFvbVCLYazhM27p0wSURkPGJGhKsrQp69XzUYwVNOBeN8JDj4S76xaHewfPLaBzbx8JMU1ioIwX0C9UC+O8oCSnQQ3OlcuxHTkZXUaUDGvnhHV+XtXNNkCZ44gozg9B8H+vc3/f5wifxXMtz1Sxsaiwjvw0kM/T1r6trsZAr8notKxyMUPWu5V0deRqpQM/4cJpc64NP1fbDr7zYCihXC5JQJ3I+uZfr4iasHiGgaM4l+f6CAuWpyx/f9pUUukDsZYYO0Wi07SlFvBbC/hX3BpBPa56BEQFB73De3C4cGkhJsLbsHK/T62ObwYwyU2V5MniWRCypJyyQQKEMvKJc1zSGD6NXG5OAl/3MwXF5rxyOwO4FalismU6M3XG8WFXo6lpjH1LFZZynu2pol3wYdtSzKs=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a7fd8b2c-ce41-4ee9-9311-08d6d9eacf04
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2019 10:39:44.1680 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR0402MB3460
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_033950_553462_A8FA87E6 
X-CRM114-Status: UNSURE (   8.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe09:0:0:0:631 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "bbrezillon@kernel.org" <bbrezillon@kernel.org>,
 Kuldeep Singh <kuldeep.singh@nxp.com>, Ashish Kumar <ashish.kumar@nxp.com>,
 "broonie@kernel.org" <broonie@kernel.org>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Ashish Kumar <ashish.kumar@nxp.com>
Signed-off-by: Kuldeep Singh <kuldeep.singh@nxp.com>
---
 Documentation/devicetree/bindings/spi/spi-fsl-qspi.txt | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/spi/spi-fsl-qspi.txt b/Documentation/devicetree/bindings/spi/spi-fsl-qspi.txt
index e8f1d627d288..a72616a1ad2d 100644
--- a/Documentation/devicetree/bindings/spi/spi-fsl-qspi.txt
+++ b/Documentation/devicetree/bindings/spi/spi-fsl-qspi.txt
@@ -7,6 +7,8 @@ Required properties:
 		 or
 		 "fsl,ls2080a-qspi" followed by "fsl,ls1021a-qspi",
 		 "fsl,ls1043a-qspi" followed by "fsl,ls1021a-qspi"
+		 "fsl,ls1012a-qspi" followed by "fsl,ls1021a-qspi"
+		 "fsl,ls1088a-qspi" followed by "fsl,ls2080a-qspi"
   - reg : the first contains the register location and length,
           the second contains the memory mapping address and length
   - reg-names: Should contain the reg names "QuadSPI" and "QuadSPI-memory"
-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
