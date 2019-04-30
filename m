Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61317FA8D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 15:37:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Ps3VrsQ90PyaeztZTVsm7nkmg0zpzt6WIFl8g9K8rg=; b=EJ0JvGTtswFUCC
	Qr+Gz+Phc/4U24WwhUZsGaOmpcCyjTiCwqr3VyD1DtwO7ik28AebbycAdehJdKYaXhZIVLg7gTI+2
	PBJxRWFSK2k+29i5vj3Hyql9ngbSSRXviWfUtgiIOtzloTIK15sVBSijIhSke4Xz+vDneaPr8TLUW
	zh4VcavqedpR39ISXxptv4gk/YHVDx+dB2/p9lyXAeTkXCL4mRG2QSqr4Kt9KFE1X4DeJr29L3Qyi
	UAevawsh130Oo85m8m3v+peKwLkxT/TqlnzcxNVZ846YYBNqBTTSbZ5BMbzWqdARReSHVrPXA7AtO
	n6GulCmaqqaXhZPkCQ/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLSwW-00024R-M5; Tue, 30 Apr 2019 13:37:09 +0000
Received: from mail-eopbgr40126.outbound.protection.outlook.com
 ([40.107.4.126] helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLSw1-0001gV-Sa
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 13:36:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=prevas.se; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3reqgDViKoUe61oNm1kPh3X/94DMIzVWeXGbeYFces0=;
 b=pjLWBtue5t5t+g8WWix984Rgbo9aicuaNVu2RCW+FlcZGsGjyZYK9d2zvmwxJBavIAUF4uLOay/NCDH8808o6GVOonPif8dvZzlphArzbRvAM3elIHMvlNzCAvaguQJsiZdbmVj1xcJm+2qu4eNx6xap2vvc2TjzvS3Bc+nC7vA=
Received: from VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM (20.178.126.212) by
 VI1PR10MB2637.EURPRD10.PROD.OUTLOOK.COM (20.178.126.78) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.12; Tue, 30 Apr 2019 13:36:29 +0000
Received: from VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::48b8:9cff:182:f3d8]) by VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::48b8:9cff:182:f3d8%2]) with mapi id 15.20.1835.018; Tue, 30 Apr 2019
 13:36:29 +0000
From: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>
Subject: [PATCH 1/5] soc/fsl/qe: qe.c: drop useless static qualifier
Thread-Topic: [PATCH 1/5] soc/fsl/qe: qe.c: drop useless static qualifier
Thread-Index: AQHU/1m30LYp9RcqLU2JYpKyfmSmOQ==
Date: Tue, 30 Apr 2019 13:36:29 +0000
Message-ID: <20190430133615.25721-2-rasmus.villemoes@prevas.dk>
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
x-ms-office365-filtering-correlation-id: 39349b14-3eb1-44f0-312a-08d6cd70d9df
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:VI1PR10MB2637; 
x-ms-traffictypediagnostic: VI1PR10MB2637:
x-microsoft-antispam-prvs: <VI1PR10MB2637BD28CF7142CE2AAF57168A3A0@VI1PR10MB2637.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:497;
x-forefront-prvs: 00235A1EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(366004)(346002)(39850400004)(136003)(376002)(199004)(189003)(5660300002)(81156014)(81166006)(36756003)(6116002)(8676002)(50226002)(2906002)(8976002)(76176011)(102836004)(25786009)(186003)(26005)(6506007)(386003)(256004)(8936002)(11346002)(316002)(6486002)(42882007)(476003)(97736004)(446003)(44832011)(4326008)(73956011)(486006)(7736002)(74482002)(14444005)(64756008)(66446008)(305945005)(66066001)(66556008)(66946007)(66476007)(3846002)(2616005)(14454004)(68736007)(72206003)(110136005)(53936002)(99286004)(6512007)(52116002)(6436002)(71200400001)(71190400001)(54906003)(107886003)(1076003)(4744005)(71446004)(478600001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR10MB2637;
 H:VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: prevas.se does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: RyA6gI5jC/DJtQNXf2PE3EqNVbudTZ3tBRu4FfF9A+B9iuBB54vbMdaDRAfZP676U56g4Y/13Fr/wVxL4Zwz2cU2hxQFSimHqFOWDevHr1Ma1ah4FsxlgXtNo/j5JUr/5PhHKUCXnOKrlvArXEuhAbNOROD47/qDbB3gQFkO38LN8UuW3h6+1Q/aw1SGt1ljxykd5xUORWy/QNoFRS7pzE86H+G4OYFGylAim3+FoGEoORUlEBwvLA0l4VY1cHeBCSso6Xv8h79gW8Ac4AaBglaw/1kjc+ynyyPgQQ0mebDClG+lwRzgPPhDSg6vInbwCtByNxuHv9BmUby+tlO52vdrT6/DDV9isGuRdpgDrewu3/9dJ6UN1y+5IhDoOru3y8ZgAEuY0TSyFzwU4aaIIKZv2AYPFnft4yFdeCMAr7w=
MIME-Version: 1.0
X-OriginatorOrg: prevas.dk
X-MS-Exchange-CrossTenant-Network-Message-Id: 39349b14-3eb1-44f0-312a-08d6cd70d9df
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2019 13:36:29.7900 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d350cf71-778d-4780-88f5-071a4cb1ed61
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR10MB2637
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_063637_922678_4D18659E 
X-CRM114-Status: GOOD (  10.86  )
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

The local variable snum_init has no reason to have static storage duration.

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
