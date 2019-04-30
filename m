Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0926FA96
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 15:37:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IySmcPYxSkXh8lqCYlIo9pcL9TLqBfqPfvxFJAeF+3k=; b=otUzjReyQJOzlR
	NUDXIm6gb28f2NCXwwJGWeYWYlpYWQONJ66Fz3UQ368vHzMN5SWEeJN7FnR93X70vfuaaHj5zWo6h
	iW0vTsoNOUQ3OV5MU+qhV9AsS5dQCUJ59RgZSei1NacGga60tpHtmy3lRR7K7qQrpMpWwWHK8rETF
	+bSS2Lgysg6JTVp3OC1shS29St1zYn8b5yT5EXXcyHTnJieOvPtDYrqkWCqCUo5a0AoUbEU2TQ/KU
	DfY6rdRQf7BalfDKQ9eQyk72Ed5KDzH9BotalHaCt7pfA/byZ8a78H3S8dHoqMbIVSvyh05mPMEM0
	BuSzSRmc3GJ4/BQyxwZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLSwq-0002W4-DC; Tue, 30 Apr 2019 13:37:28 +0000
Received: from mail-eopbgr140093.outbound.protection.outlook.com
 ([40.107.14.93] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLSw4-0001gZ-GY
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 13:36:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=prevas.se; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vnO0q2oPfxnnC3fB8XigbmuveP9dsgWT5X45K2MEwPA=;
 b=iL3toJ5Z9tJf+kM8s8Y9v4IioJeRo2R+pbkqvV16FlEk+5KFNIPd6mBYTszw8JlGslfbuhYbxdw1WN0ALCD///vKwS2zPyreKPR7okhWYkJRedz2kQZ2JtKz1cr+iixfjJ0s4efiGOGzXktnyKVf4nlgydoJ/eyxqdiJrNq+uy4=
Received: from VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM (20.178.126.212) by
 VI1PR10MB0735.EURPRD10.PROD.OUTLOOK.COM (10.167.203.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.13; Tue, 30 Apr 2019 13:36:33 +0000
Received: from VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::48b8:9cff:182:f3d8]) by VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::48b8:9cff:182:f3d8%2]) with mapi id 15.20.1835.018; Tue, 30 Apr 2019
 13:36:33 +0000
From: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>
Subject: [PATCH 4/5] soc/fsl/qe: qe.c: support fsl,qe-snums property
Thread-Topic: [PATCH 4/5] soc/fsl/qe: qe.c: support fsl,qe-snums property
Thread-Index: AQHU/1m5/ppidONGckmXHq9mm5btWw==
Date: Tue, 30 Apr 2019 13:36:33 +0000
Message-ID: <20190430133615.25721-5-rasmus.villemoes@prevas.dk>
References: <20190430133615.25721-1-rasmus.villemoes@prevas.dk>
In-Reply-To: <20190430133615.25721-1-rasmus.villemoes@prevas.dk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1P18901CA0005.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:3:8b::15) To VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:803:e3::20)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Rasmus.Villemoes@prevas.se; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.20.1
x-originating-ip: [5.186.118.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 80a6e09c-05d1-4323-12b5-08d6cd70dc17
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:VI1PR10MB0735; 
x-ms-traffictypediagnostic: VI1PR10MB0735:
x-microsoft-antispam-prvs: <VI1PR10MB0735F4C16E547E7B7B20B7DF8A3A0@VI1PR10MB0735.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 00235A1EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(136003)(39850400004)(366004)(376002)(346002)(40224003)(199004)(189003)(81156014)(36756003)(8676002)(6436002)(478600001)(81166006)(107886003)(50226002)(52116002)(8976002)(8936002)(74482002)(72206003)(4326008)(7736002)(6486002)(6506007)(386003)(25786009)(1076003)(53936002)(54906003)(76176011)(305945005)(110136005)(316002)(99286004)(14454004)(6512007)(476003)(11346002)(446003)(5660300002)(44832011)(66446008)(26005)(73956011)(42882007)(2616005)(6116002)(2906002)(71200400001)(66556008)(66476007)(64756008)(66066001)(97736004)(66946007)(3846002)(256004)(68736007)(71446004)(186003)(486006)(102836004)(71190400001)(142933001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR10MB0735;
 H:VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: prevas.se does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: +U02E9WoIVtOiHzYRRORe2YnVu1SS4BWueGXCxA1AqOSLAM2KfX1b6RvQFF16GXSe6hxlp2K/cpXWG9KkWgeo+aIKh4570AjJuKhMFWDgxzVk+JRTOomi/doY87Q49Ps9oP0NzK6r+5AuExyFTrPJonmMpLieG2ai+HlJVLMq8sowgJFF39JJyoXHGTPhN94sZRBYhjbPRPAUeZDfASmfdVvfQO/mwgu9zYEvogdHvn69iHUrFiJIPFJ3VE+NY9viVlhIw659Qsgx76xqhKCjsGI837vi/HaITpxlemMVNrp0gQyOMQRhtEXR87Ah6sP2V9HmGKFd4xEmJpsAE7EH1XbZzLp46+UNWUO7MKuNrsNicB9MvPfSDauGRO4FGXHMszlvzqikKOyabFvmzOzrS4DKYGfFTdvU4q2vV8UdbY=
MIME-Version: 1.0
X-OriginatorOrg: prevas.dk
X-MS-Exchange-CrossTenant-Network-Message-Id: 80a6e09c-05d1-4323-12b5-08d6cd70dc17
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2019 13:36:33.5066 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d350cf71-778d-4780-88f5-071a4cb1ed61
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR10MB0735
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_063640_843732_76008854 
X-CRM114-Status: GOOD (  16.31  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.93 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Valentin Longchamp <valentin.longchamp@keymile.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Scott Wood <oss@buserror.net>, Rasmus Villemoes <Rasmus.Villemoes@prevas.se>,
 Rob Herring <robh+dt@kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The current code assumes that the set of snum _values_ to populate the
snums[] array with is a function of the _number_ of snums
alone. However, reading table 4-30, and its footnotes, of the QUICC
Engine Block Reference Manual shows that that is a bit too naive.

As an alternative, this introduces a new binding fsl,qe-snums, which
automatically encodes both the number of snums and the actual values to
use. Conveniently, of_property_read_variable_u8_array does exactly
what we need.

For example, for the MPC8309, one would specify the property as

               fsl,qe-snums = /bits/ 8 <
                       0x88 0x89 0x98 0x99 0xa8 0xa9 0xb8 0xb9
                       0xc8 0xc9 0xd8 0xd9 0xe8 0xe9>;

Signed-off-by: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
---
 .../devicetree/bindings/soc/fsl/cpm_qe/qe.txt      |  8 +++++++-
 drivers/soc/fsl/qe/qe.c                            | 14 +++++++++++++-
 2 files changed, 20 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/fsl/cpm_qe/qe.txt b/Documentation/devicetree/bindings/soc/fsl/cpm_qe/qe.txt
index d7afaff5faff..05f5f485562a 100644
--- a/Documentation/devicetree/bindings/soc/fsl/cpm_qe/qe.txt
+++ b/Documentation/devicetree/bindings/soc/fsl/cpm_qe/qe.txt
@@ -18,7 +18,8 @@ Required properties:
 - reg : offset and length of the device registers.
 - bus-frequency : the clock frequency for QUICC Engine.
 - fsl,qe-num-riscs: define how many RISC engines the QE has.
-- fsl,qe-num-snums: define how many serial number(SNUM) the QE can use for the
+- fsl,qe-snums: This property has to be specified as '/bits/ 8' value,
+  defining the array of serial number (SNUM) values for the virtual
   threads.
 
 Optional properties:
@@ -34,6 +35,11 @@ Recommended properties
 - brg-frequency : the internal clock source frequency for baud-rate
   generators in Hz.
 
+Deprecated properties
+- fsl,qe-num-snums: define how many serial number(SNUM) the QE can use
+  for the threads. Use fsl,qe-snums instead to not only specify the
+  number of snums, but also their values.
+
 Example:
      qe@e0100000 {
 	#address-cells = <1>;
diff --git a/drivers/soc/fsl/qe/qe.c b/drivers/soc/fsl/qe/qe.c
index aff9d1373529..af3c2b2b268f 100644
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
@@ -304,9 +303,22 @@ static void qe_snums_init(void)
 		0x28, 0x29, 0x38, 0x39, 0x48, 0x49, 0x58, 0x59,
 		0x68, 0x69, 0x78, 0x79, 0x80, 0x81,
 	};
+	struct device_node *qe;
 	const u8 *snum_init;
+	int i;
 
 	bitmap_zero(snum_state, QE_NUM_OF_SNUM);
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
+
 	qe_num_of_snum = qe_get_num_of_snums();
 
 	if (qe_num_of_snum == 76)
-- 
2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
