Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B65B710654
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 11:30:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JRi9Rr71I7ZyvFbqgP58B4c0c62xvRVqyhDSLr5fAlg=; b=gGAhbLgIWcvTnD
	+WustiSpvR+rC0ix/FrNJAgyT80UOuxTD7l0mka9QPIAyvMjzlI8dE/bKQFC67vwG3L8HFVOH+Tzy
	31SLy9M/Dho5BOH2hGITj/rG0G1tw7ok/WyGT473YHLCeKLZlLhVsiX7N9/8P6IvlioolqxZqFjH3
	ILSK4jnWO/JVIvhlyxh+2WzhQpzuVFo3GJ0fgzM6jsnl+a+BOoPXKv27PUeVTiyCREf09Zr3RCGpl
	MQgdTgHrRKYkmgdIjyV5GYiXIIG7IIu9fM5z4YegxrorEOybKSOtBGUwoZ37gtTocOitwUS26XgNe
	85Uu/eGfwvu1sI4TRKIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLlYt-0007HY-AE; Wed, 01 May 2019 09:29:59 +0000
Received: from mail-eopbgr20094.outbound.protection.outlook.com ([40.107.2.94]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLlYE-0006LZ-Qb
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 09:29:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=prevas.se; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fdIU3JucIMee+PIHDK9qSxLKioYm0DOUxEhV9Kua/m8=;
 b=CdOhGx0jz8s4kGEUeQ5R9YPmiwZxtbAkKJIyavqdariEiAm7AgInkuYVJIF2nu3w5gRZ99eX61TZX7NBlxELUEcaNpTTl7r2c1MiSnykatIv5szHPLGVCul3XVtJzoSJw9FFdrvFvfQUZLwHLxkHSELE0NGWfWMT+QWnhpM/D8g=
Received: from VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM (20.178.126.212) by
 VI1PR10MB2143.EURPRD10.PROD.OUTLOOK.COM (20.177.60.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.14; Wed, 1 May 2019 09:29:08 +0000
Received: from VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::48b8:9cff:182:f3d8]) by VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::48b8:9cff:182:f3d8%2]) with mapi id 15.20.1856.008; Wed, 1 May 2019
 09:29:08 +0000
From: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
To: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Qiang Zhao
 <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>
Subject: [PATCH v2 4/6] dt-bindings: soc/fsl: qe: document new fsl,qe-snums
 binding
Thread-Topic: [PATCH v2 4/6] dt-bindings: soc/fsl: qe: document new
 fsl,qe-snums binding
Thread-Index: AQHVAABTBBh/pLqBQEiPEhE0F8Qajw==
Date: Wed, 1 May 2019 09:29:08 +0000
Message-ID: <20190501092841.9026-5-rasmus.villemoes@prevas.dk>
References: <20190430133615.25721-1-rasmus.villemoes@prevas.dk>
 <20190501092841.9026-1-rasmus.villemoes@prevas.dk>
In-Reply-To: <20190501092841.9026-1-rasmus.villemoes@prevas.dk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1PR0102CA0052.eurprd01.prod.exchangelabs.com
 (2603:10a6:7:7d::29) To VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:803:e3::20)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Rasmus.Villemoes@prevas.se; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.20.1
x-originating-ip: [81.216.59.226]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 833879d1-a410-4def-0894-08d6ce1775fc
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:VI1PR10MB2143; 
x-ms-traffictypediagnostic: VI1PR10MB2143:
x-microsoft-antispam-prvs: <VI1PR10MB2143F3DD2F0944B26C7A6C858A3B0@VI1PR10MB2143.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 00246AB517
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(136003)(39850400004)(346002)(396003)(366004)(189003)(199004)(40224003)(14454004)(81166006)(110136005)(54906003)(26005)(68736007)(8676002)(6512007)(4326008)(8976002)(486006)(74482002)(71200400001)(2906002)(7416002)(6486002)(72206003)(186003)(316002)(478600001)(2501003)(36756003)(6436002)(71190400001)(25786009)(1076003)(6506007)(2616005)(305945005)(3846002)(44832011)(256004)(11346002)(6116002)(5660300002)(8936002)(14444005)(446003)(476003)(50226002)(76176011)(42882007)(7736002)(99286004)(66446008)(64756008)(53936002)(52116002)(107886003)(386003)(66066001)(66946007)(66476007)(102836004)(66556008)(81156014)(73956011)(142933001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR10MB2143;
 H:VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: prevas.se does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: AqsXV23houvs7fy1N7Du7jixIcSJhmAJ02uWpTo//NCyDX3o7OXGO9fyncZpKmzfwtw8o/c7JvJWN1u7722tYYPK3NxLkAppCGC1a0/Jk2STlEIG0mR+gVv+UYkgKkWjEzyTlpMVku1zb7V6pZDNlMNKzsX42P/goG1ZHenDsxPMLxbvtNd+/9/C/Bc6khu+/oPPvvYzoA7ieLneJkO3cnWSRL+G9onqoC8HAObaDEbNwjcJudALv2qJJopQLIYzPGTiZJeD1rrD9cpoqchwLBvO71ujN6e1FthvWx1puKE2WQShn/Hxcajll5Y0oERCir+O/gIpgzVEJMJns1xIYituoysROsPH8AnlowhnhVNwFjYaPVdTt6b2PWpbnPcSYax8oMyGrMmZ8QdSGScEO3UzmiOweREbw92rzcYFNtU=
MIME-Version: 1.0
X-OriginatorOrg: prevas.dk
X-MS-Exchange-CrossTenant-Network-Message-Id: 833879d1-a410-4def-0894-08d6ce1775fc
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2019 09:29:08.2197 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d350cf71-778d-4780-88f5-071a4cb1ed61
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR10MB2143
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_022919_290632_D2EF1593 
X-CRM114-Status: GOOD (  13.94  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.94 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Scott Wood <oss@buserror.net>, Rasmus Villemoes <Rasmus.Villemoes@prevas.se>,
 Rob Herring <robh+dt@kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Reading table 4-30, and its footnotes, of the QUICC Engine Block
Reference Manual shows that the set of snum _values_ is not
necessarily just a function of the _number_ of snums, as given in the
fsl,qe-num-snums property.

As an alternative, to make it easier to add support for other variants
of the QUICC engine IP, this introduces a new binding fsl,qe-snums,
which automatically encodes both the number of snums and the actual
values to use.

For example, for the MPC8309, one would specify the property as

               fsl,qe-snums = /bits/ 8 <
                       0x88 0x89 0x98 0x99 0xa8 0xa9 0xb8 0xb9
                       0xc8 0xc9 0xd8 0xd9 0xe8 0xe9>;

Signed-off-by: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
---
 Documentation/devicetree/bindings/soc/fsl/cpm_qe/qe.txt | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

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
-- 
2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
