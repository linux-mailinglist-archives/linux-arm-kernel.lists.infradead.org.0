Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55DAA63B08
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 20:33:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nc0a6Cr9dsc3MDjO7Q82jkKtUnphiCdVmmnp4lu5uqw=; b=iw/cM2995OVOka
	e2CFBtQ46hYAbPuaVcd+XHJbBJUC6vh5Bd7JZSs2n1xAc1r+47jD2t0NWhvmVFVV+h8dx/0pvyXpI
	+HzfTfwJMDxxv5YcAhQ5CEd33P6xG6pPGos324aE4a3l8BSVmIOTfHn6WD8uyObfpSqBodopHzIjH
	p+VbokS+TeWtFsomXEmcjGo2i7M4+tZCA2P7VcR0Nqrd4OfcmsS+VRL/VERgmmpXGkm8Q++phevRY
	S9CJp3aX4K+YpHEq96+NVbY8tZGjmV6oCKNYnvX1SvKops5HdhiBLzK+yxXuKr1crwuvvBmEVQmrQ
	jcFUm1d05ttx5D5zmdtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkuvw-00078S-Hl; Tue, 09 Jul 2019 18:33:44 +0000
Received: from us-smtp-delivery-168.mimecast.com ([216.205.24.168])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkuus-0006Ms-14
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 18:32:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=impinj.com;
 s=mimecast20190405; t=1562697154;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=+i9C47iqWA85jvkoY0wrCXCMueDxc4UIs5b5RehCbuU=;
 b=L2nlZZMhs3bhLOQ697no9zW9zgWBYviPGjkIBP897unfkazWh/y9AFjzn4YNUt7S7cabBe
 XWyuGjiMWpnemiHaNyGBs3ZLmxIQE6dFOiQv7hGs+EkO0hrOY5TxsF9aToT5tE0TAxcnLT
 Bu8d5tRy3/kTq3j6Tqli4lttk7yRBlo=
Received: from NAM01-BN3-obe.outbound.protection.outlook.com
 (mail-bn3nam01lp2051.outbound.protection.outlook.com [104.47.33.51]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 us-mta-245-1DYIrM9XPBS_YGhCoDl5vQ-1; Tue, 09 Jul 2019 14:30:41 -0400
Received: from MWHPR0601MB3708.namprd06.prod.outlook.com (10.167.236.38) by
 MWHPR0601MB3754.namprd06.prod.outlook.com (10.167.236.147) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.19; Tue, 9 Jul 2019 18:30:36 +0000
Received: from MWHPR0601MB3708.namprd06.prod.outlook.com
 ([fe80::2d66:fca6:b053:764f]) by MWHPR0601MB3708.namprd06.prod.outlook.com
 ([fe80::2d66:fca6:b053:764f%6]) with mapi id 15.20.2052.020; Tue, 9 Jul 2019
 18:30:36 +0000
From: Trent Piepho <tpiepho@impinj.com>
To: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH 1/2] nvmem: imx-ocotp: Set type to OTP
Thread-Topic: [PATCH 1/2] nvmem: imx-ocotp: Set type to OTP
Thread-Index: AQHVNoRmgSfh+b8bxEqLRXCXcoi5ig==
Date: Tue, 9 Jul 2019 18:30:36 +0000
Message-ID: <20190709183016.4789-1-tpiepho@impinj.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR08CA0017.namprd08.prod.outlook.com
 (2603:10b6:a03:100::30) To MWHPR0601MB3708.namprd06.prod.outlook.com
 (2603:10b6:301:7c::38)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.14.5
x-originating-ip: [216.207.205.253]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9387f0af-511c-488f-fb16-08d7049b88d0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR0601MB3754; 
x-ms-traffictypediagnostic: MWHPR0601MB3754:
x-microsoft-antispam-prvs: <MWHPR0601MB3754641100834E8610022AB3D3F10@MWHPR0601MB3754.namprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:363;
x-forefront-prvs: 0093C80C01
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(376002)(366004)(136003)(39850400004)(346002)(189003)(199004)(256004)(86362001)(2351001)(50226002)(4744005)(81166006)(5640700003)(186003)(68736007)(6512007)(486006)(102836004)(6506007)(386003)(26005)(5660300002)(71190400001)(71200400001)(36756003)(54906003)(8676002)(476003)(81156014)(2616005)(8936002)(25786009)(4326008)(316002)(1076003)(2906002)(99286004)(64756008)(66476007)(6436002)(66946007)(52116002)(73956011)(66556008)(66446008)(66066001)(305945005)(478600001)(7736002)(53936002)(6486002)(2501003)(14454004)(3846002)(6116002)(6916009);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR0601MB3754;
 H:MWHPR0601MB3708.namprd06.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: V9zAVa8o5YzmhTl1l9OBYRRkNgaCED9oTFZmEoZIIRzHlctqOfdYPvnAx0L8bqPjckzUKsBh6uXaMA9lx6iD0YePAA9V6DlfQze3Uxr1UqhUP9qyV67SaMGdIQP5tgFW5vdPwy8xLqhRl42Notp9VCQiWxD2DGypmQ00kIJ0oRXZpEijwIAln7UTv64OZVuzdL6kEET9/xbmj6HXnPiKeeLEd0VH6u51B0Yyr7IoYgIw/hPjYj/Jr36Udo0D18nkotR4Xk5ObTbTZS5SCzHTDKXf+ZrTlr7tAvy3bc/NR6J1mpLar2epS9c/z4J7ZX1UJHhpg6159iS0tIOwMP3SQS3cZpcmLjrjvSVTzHIvoNLxuTWCannYtxktMIMq8uSYQpbeCBL5H5kS7QUu30n37gEDeIdS3y6BYuuUjcGvVmU=
MIME-Version: 1.0
X-OriginatorOrg: impinj.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9387f0af-511c-488f-fb16-08d7049b88d0
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jul 2019 18:30:36.1491 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6de70f0f-7357-4529-a415-d8cbb7e93e5e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tpiepho@impinj.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR0601MB3754
X-MC-Unique: 1DYIrM9XPBS_YGhCoDl5vQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_113238_169945_94FE5503 
X-CRM114-Status: UNSURE (   5.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [216.205.24.168 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 NXP Linux Team <linux-imx@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Trent Piepho <tpiepho@impinj.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The nvmem subsystem supports a type, like battery backed nvram, eeprom,
or otp.  This device is otp.

Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Fabio Estevam <festevam@gmail.com>
Signed-off-by: Trent Piepho <tpiepho@impinj.com>
---
 drivers/nvmem/imx-ocotp.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/nvmem/imx-ocotp.c b/drivers/nvmem/imx-ocotp.c
index 42d4451e7d67..d45e71e9b73a 100644
--- a/drivers/nvmem/imx-ocotp.c
+++ b/drivers/nvmem/imx-ocotp.c
@@ -414,6 +414,7 @@ static int imx_ocotp_write(void *context, unsigned int offset, void *val,
 static struct nvmem_config imx_ocotp_nvmem_config = {
 	.name = "imx-ocotp",
 	.read_only = false,
+	.type = NVMEM_TYPE_OTP,
 	.word_size = 4,
 	.stride = 4,
 	.reg_read = imx_ocotp_read,
-- 
2.14.5




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
