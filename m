Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B320610650
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 11:29:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y6uZzed986YHapWj/ouuI88oRwDLc4jEiWyQeRs0X+U=; b=Y2ZO+JtXXib6OI
	TAJM3I4xGcfTUtW5BCnRAPi8k7XUhkYVbNtn6205a6VLgDd2Tfc1jr9yXuY32lONnOC4fAPh4o7+d
	2q6RkV4WWoM/BvRnYMlVet9LStTa05gYk/3DCD1tZO4I3SR4bA6G1XhO6rrwSnCv62/E9InNeE9DS
	RSBxzdl0PGzQo1130wYmtAYPExDegPrs18H7x/vKll7CykoVYksh6ERlK4QPocHkVafH3j5c1GZNM
	1Edqwict4jVEyDO71oS9KNQvzw0si5ncCChn/ZtJVtv7U59hNyvi8YwG3IC2e03XYSrl5whdNp9TL
	q9pZmB4MW60q18Bnz3Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLlYB-0006Mj-UY; Wed, 01 May 2019 09:29:15 +0000
Received: from mail-eopbgr20094.outbound.protection.outlook.com ([40.107.2.94]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLlY4-0006LZ-D0
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 09:29:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=prevas.se; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oEHOss+tChlyXXqJGO0y71EE80c9sJqiMhQ3L42wg/E=;
 b=ICMnzefBkqPEe1WQ1oDKxGJLNa49EFVdRve5P9kLhJJKgKtOoIRP/BjgLY+dxtkmne0OS5mvcI0hxUUJeOLLqtzxOnKEwHjbGEXoAgdPTE6N/3qB77b7+x3nVaNQuWWrxkq88APcOPLNZAyeJ4f+tnUf+Kywm8W/+1XmPjXbeH0=
Received: from VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM (20.178.126.212) by
 VI1PR10MB2143.EURPRD10.PROD.OUTLOOK.COM (20.177.60.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.14; Wed, 1 May 2019 09:29:02 +0000
Received: from VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::48b8:9cff:182:f3d8]) by VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::48b8:9cff:182:f3d8%2]) with mapi id 15.20.1856.008; Wed, 1 May 2019
 09:29:02 +0000
From: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
To: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Qiang Zhao
 <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>
Subject: [PATCH v2 0/6] soc/fsl/qe: cleanups and new DT binding
Thread-Topic: [PATCH v2 0/6] soc/fsl/qe: cleanups and new DT binding
Thread-Index: AQHVAABPKUiIhooNmUW5rKx1Bivkwg==
Date: Wed, 1 May 2019 09:29:01 +0000
Message-ID: <20190501092841.9026-1-rasmus.villemoes@prevas.dk>
References: <20190430133615.25721-1-rasmus.villemoes@prevas.dk>
In-Reply-To: <20190430133615.25721-1-rasmus.villemoes@prevas.dk>
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
x-ms-office365-filtering-correlation-id: f816a075-9126-4083-d6bc-08d6ce1771db
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:VI1PR10MB2143; 
x-ms-traffictypediagnostic: VI1PR10MB2143:
x-microsoft-antispam-prvs: <VI1PR10MB214388D2EA8446B203679CF18A3B0@VI1PR10MB2143.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 00246AB517
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(979002)(376002)(136003)(39850400004)(346002)(396003)(366004)(189003)(199004)(14454004)(81166006)(110136005)(54906003)(26005)(68736007)(8676002)(6512007)(4326008)(8976002)(486006)(74482002)(71200400001)(2906002)(7416002)(6486002)(72206003)(186003)(316002)(478600001)(2501003)(36756003)(6436002)(71190400001)(25786009)(1076003)(6506007)(2616005)(305945005)(3846002)(44832011)(256004)(11346002)(6116002)(5660300002)(8936002)(14444005)(446003)(476003)(50226002)(76176011)(42882007)(7736002)(99286004)(66446008)(64756008)(53936002)(52116002)(107886003)(386003)(66066001)(66946007)(66476007)(102836004)(66556008)(81156014)(73956011)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR10MB2143;
 H:VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: prevas.se does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: YQmxWf/qj7b+Ws9BfLs0RRpmC1F41s5yP5TXw9h2GKXqYXM/DIbb3RHgmoXyx3dC/luIAGLQQg6hgV/NorahWeKQxI8Dzs2zy9/u7mWlvu9d6dUEhNHzVEUj31lRHDc1UPaBTA/P+K7N6DJ+SBMXPlDY2VMecEIHaKe9dYBfYcN+kA88rF58z7L+snjE9gv8stfgFsocGu/IJl9Cr9eWHWjEl5pvGF9g+bUZum82Ru//ITSOCcA21b7RkszLUBVAuZZSsci1EFw+bwL2zRMyXqARHVmkHR7QNpZRjNbI2DaSLFKnUi/rXFUfSjo6ApaXfMgdtiTjGKBbvsBJgYJFP9kML3RSiuxvzXugsYp+HDywKDR2cGcTjMmdQsHIIKONNRbn3krvUp4TYP6Ct1NKqJAFQgruyEHPaRTm6r0H80I=
MIME-Version: 1.0
X-OriginatorOrg: prevas.dk
X-MS-Exchange-CrossTenant-Network-Message-Id: f816a075-9126-4083-d6bc-08d6ce1771db
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2019 09:29:01.9393 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d350cf71-778d-4780-88f5-071a4cb1ed61
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR10MB2143
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_022908_532607_F276ADE4 
X-CRM114-Status: GOOD (  10.14  )
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

This small series consists of some small cleanups and simplifications
of the QUICC engine driver, and introduces a new DT binding that makes
it much easier to support other variants of the QUICC engine IP block
that appears in the wild: There's no reason to expect in general that
the number of valid SNUMs uniquely determines the set of such, so it's
better to simply let the device tree specify the values (and,
implicitly via the array length, also the count).

v2:
- Address comments from Christophe Leroy
- Add his Reviewed-by to 1/6 and 3/6
- Split DT binding update to separate patch as per
  Documentation/devicetree/bindings/submitting-patches.txt


Rasmus Villemoes (6):
  soc/fsl/qe: qe.c: drop useless static qualifier
  soc/fsl/qe: qe.c: reduce static memory footprint by 1.7K
  soc/fsl/qe: qe.c: introduce qe_get_device_node helper
  dt-bindings: soc/fsl: qe: document new fsl,qe-snums binding
  soc/fsl/qe: qe.c: support fsl,qe-snums property
  soc/fsl/qe: qe.c: fold qe_get_num_of_snums into qe_snums_init

 .../devicetree/bindings/soc/fsl/cpm_qe/qe.txt |   8 +-
 drivers/soc/fsl/qe/qe.c                       | 164 +++++++-----------
 2 files changed, 72 insertions(+), 100 deletions(-)

-- 
2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
