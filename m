Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2970FA8B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 15:36:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LBuqEfhHycjNjCMRvNGqUI9pWO3JLrXDGmAVbX95qqM=; b=XjF/1NcS5sCCQM
	+uf0yMc9GMbztulooJCFGWP7hbZS6HmJvpzfvef5qwB90wowfyDGa46wLAXwnOxxSk4NQDHHVFUfk
	PdH7RH0BXIeXHvUYwMOxe8exKgL5EV0fPGSvW4qnSA8CaO+R0ujJZ6B9wo8qjoPnK5t5SBCgZOS8T
	rRqsgLjMLnaOZycl0SpNA44nLDPh7Tj3TzhVoRFUOehmR4nVSaTAINtjHGD2DaK+ITPwAUP1PKDMD
	v0Sqa6iDbYOKOIHJLsx3+LtEgKJBELEDlgsB4JMxl7/NkT3ADDs3fMVuEuRy5u6SqGNuZTxMDeIl3
	jGDzhXXo1uCk7VhHMz+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLSw8-0001i4-5G; Tue, 30 Apr 2019 13:36:44 +0000
Received: from mail-eopbgr40126.outbound.protection.outlook.com
 ([40.107.4.126] helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLSvz-0001gV-EZ
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 13:36:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=prevas.se; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3NrWMpB5CprkChy4USClY/Q0ahMSQUV6S9IFc1CWutc=;
 b=mXRhcfO0Me+xfehMRvcKCYtu0VbQQOyzpbw5EM4dCG8PkU3JSKlRhnXPjZLwymLs41BeSJTFeR0f1mRIiJNHQigFLLwFKVWXjY6GjDcjuMVVfEvjKeHkawgU9U9yJcz7nycUzuQyMI/YfCBt6HD646D7nl8aKxV2HU4t/VSLBVo=
Received: from VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM (20.178.126.212) by
 VI1PR10MB2637.EURPRD10.PROD.OUTLOOK.COM (20.178.126.78) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.12; Tue, 30 Apr 2019 13:36:28 +0000
Received: from VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::48b8:9cff:182:f3d8]) by VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::48b8:9cff:182:f3d8%2]) with mapi id 15.20.1835.018; Tue, 30 Apr 2019
 13:36:28 +0000
From: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>
Subject: [PATCH RESEND 0/5] soc/fsl/qe: cleanups and new DT binding
Thread-Topic: [PATCH RESEND 0/5] soc/fsl/qe: cleanups and new DT binding
Thread-Index: AQHU/1m2JNrDiUIkoE2pl4x3Q9euZA==
Date: Tue, 30 Apr 2019 13:36:28 +0000
Message-ID: <20190430133615.25721-1-rasmus.villemoes@prevas.dk>
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
x-ms-office365-filtering-correlation-id: 33965843-a4d9-4d80-5d82-08d6cd70d91a
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:VI1PR10MB2637; 
x-ms-traffictypediagnostic: VI1PR10MB2637:
x-microsoft-antispam-prvs: <VI1PR10MB2637055F8E82BA0758C278CB8A3A0@VI1PR10MB2637.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 00235A1EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(366004)(346002)(39850400004)(136003)(376002)(199004)(189003)(5660300002)(81156014)(81166006)(36756003)(6116002)(8676002)(50226002)(2906002)(8976002)(102836004)(25786009)(186003)(26005)(6506007)(386003)(256004)(8936002)(316002)(6486002)(42882007)(476003)(97736004)(44832011)(4326008)(73956011)(486006)(7736002)(74482002)(64756008)(66446008)(305945005)(66066001)(66556008)(66946007)(66476007)(3846002)(2616005)(14454004)(68736007)(72206003)(110136005)(53936002)(99286004)(6512007)(52116002)(6436002)(71200400001)(71190400001)(54906003)(107886003)(1076003)(71446004)(478600001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR10MB2637;
 H:VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: prevas.se does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: NII+RoozhoNAjDgQ9lnTOGzt4ZnXOWJ/+yC0IJ0XzAcG/q5zMt25cZ5IElGqryU5/58SnuhXWhvlGK1QPB263Guza7DgFRk8PCWTLaFYgbJL/ajT1S8TpFByth+068x8T97vMDL3NbAEmj6E8y6gI4EpG/EwGghdZeh9C1WNnNu0u1siOhVMUvvzCHE1m9mU72NdIcb2OusRSuMoil23Ch+F1kFe41rhdd54DMq5ep8122si/ziDGy92PSBZR6FhVArMrpv18mjhrMV2JLqsOi8Fzi6K01ag3jbrKdVxDf85RVel8qFf/wiZB5ZeL9NvGh4UR5UhQq9R+0pCMY1E84PenYGPuSMUPHJlfr55tiVyzEf5TyvZixnWcEW8W0rX8MgvJqMynsK9EneoeR+ZyBj8rBTwYS/GN6CyJygHdcU=
MIME-Version: 1.0
X-OriginatorOrg: prevas.dk
X-MS-Exchange-CrossTenant-Network-Message-Id: 33965843-a4d9-4d80-5d82-08d6cd70d91a
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2019 13:36:28.5441 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d350cf71-778d-4780-88f5-071a4cb1ed61
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR10MB2637
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_063635_580923_7DF49715 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.126 listed in list.dnswl.org]
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

This small series consists of some small cleanups and simplifications
of the QUICC engine driver, and introduces a new DT binding that makes
it much easier to support other variants of the QUICC engine IP block
that appears in the wild: There's no reason to expect in general that
the number of valid SNUMs uniquely determines the set of such, so it's
better to simply let the device tree specify the values (and,
implicitly via the array length, also the count).

I sent these two months ago, but mostly as POC inside another
thread. Resending as proper patch series.

Rasmus Villemoes (5):
  soc/fsl/qe: qe.c: drop useless static qualifier
  soc/fsl/qe: qe.c: reduce static memory footprint by 1.7K
  soc/fsl/qe: qe.c: introduce qe_get_device_node helper
  soc/fsl/qe: qe.c: support fsl,qe-snums property
  soc/fsl/qe: qe.c: fold qe_get_num_of_snums into qe_snums_init

 .../devicetree/bindings/soc/fsl/cpm_qe/qe.txt |   8 +-
 drivers/net/ethernet/freescale/ucc_geth.c     |   2 +-
 drivers/soc/fsl/qe/qe.c                       | 162 +++++++-----------
 include/soc/fsl/qe/qe.h                       |   2 +-
 4 files changed, 73 insertions(+), 101 deletions(-)

-- 
2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
