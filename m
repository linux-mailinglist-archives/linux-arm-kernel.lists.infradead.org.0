Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2F772B54D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 14:32:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RtD6CfXrgsd8aJ7I3BZJ2V6oKXQeL3RODbLn9mtaPGQ=; b=sgPELSUh1iWCYW
	aBO8ynnzxYY2smUhoESGCzo6j684xgp40xozaMHU+Hk7L0IHTWOrNAN3M0g21mqkaGgz/TouCFAG/
	HUWCxamEcI5bpD9zH3scK+vSosMZzqfyZyReKutjxr4JFsDHuHpXl/AuwZCCz175W6La3XAynCXvj
	1FIhbuDBc7iv8pjQoh/lM3Hof+JfH5UvrTta4zSO40uPD8mnrTIl7kaT5WeL7+frWzdo7PPSJ3bEm
	HZbh7Q9pJaBYWOR5rzcDbaNNrLdae39Bv5Ik1lR4WmwgX6wWIdN7HmtdTa4AIB1fgzdp9aiDwZ2J9
	4b95kZQSwQ9oFLskczzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVEo2-0002e1-4S; Mon, 27 May 2019 12:32:46 +0000
Received: from mail-eopbgr140047.outbound.protection.outlook.com
 ([40.107.14.47] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVEnV-00021V-0y
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 12:32:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X2kJI0bnG9vYr0Dv9257snPjYQvX9ItSIa4yQA+mCIM=;
 b=d92dV9trSMT2+SZZPIkNJpScsjAckfJfG/kczhdZwMFCjYpQXW4UyrQ7c0775y+267QIuF+4NgJsduZszmPD8SZeICQykA7zjFTYSCcs1dPaP12ycO8jdZmHluz8QzKO/pjZ8g9g1z7Ccqo97C1rHzvbP1dlZCyL7fFcDAC4Uok=
Received: from AM6PR04MB5032.eurprd04.prod.outlook.com (20.177.34.92) by
 AM6PR04MB5094.eurprd04.prod.outlook.com (20.177.34.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.20; Mon, 27 May 2019 12:32:10 +0000
Received: from AM6PR04MB5032.eurprd04.prod.outlook.com
 ([fe80::55a3:c244:9ba:6d21]) by AM6PR04MB5032.eurprd04.prod.outlook.com
 ([fe80::55a3:c244:9ba:6d21%4]) with mapi id 15.20.1922.021; Mon, 27 May 2019
 12:32:10 +0000
From: Pramod Kumar <pramod.kumar_1@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "manivannan.sadhasivam@linaro.org" <manivannan.sadhasivam@linaro.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, "Michal.Vokac@ysoft.com"
 <Michal.Vokac@ysoft.com>, Leo Li <leoyang.li@nxp.com>
Subject: [PATCH v3 1/3] dt-bindings: arm: nxp: Add device tree binding for
 ls1046a-frwy board
Thread-Topic: [PATCH v3 1/3] dt-bindings: arm: nxp: Add device tree binding
 for ls1046a-frwy board
Thread-Index: AQHVFIg0u8rP+y8vIUS+R5uZRTBHUg==
Date: Mon, 27 May 2019 12:32:09 +0000
Message-ID: <20190527123404.30858-2-pramod.kumar_1@nxp.com>
References: <20190527123404.30858-1-pramod.kumar_1@nxp.com>
In-Reply-To: <20190527123404.30858-1-pramod.kumar_1@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-clientproxiedby: PN1PR0101CA0055.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c00:d::17) To AM6PR04MB5032.eurprd04.prod.outlook.com
 (2603:10a6:20b:9::28)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pramod.kumar_1@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [92.120.1.70]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: befd1599-33e1-40f4-7af5-08d6e29f5422
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR04MB5094; 
x-ms-traffictypediagnostic: AM6PR04MB5094:
x-microsoft-antispam-prvs: <AM6PR04MB5094608403A6C181DF9BAA34F61D0@AM6PR04MB5094.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1227;
x-forefront-prvs: 0050CEFE70
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(136003)(39860400002)(396003)(366004)(199004)(189003)(99286004)(25786009)(1076003)(478600001)(256004)(7736002)(6116002)(316002)(6486002)(36756003)(71200400001)(81156014)(81166006)(71190400001)(50226002)(5660300002)(66066001)(6436002)(2501003)(305945005)(66476007)(3846002)(14454004)(4744005)(8676002)(6636002)(8936002)(486006)(102836004)(386003)(6506007)(6512007)(4326008)(2616005)(476003)(68736007)(2201001)(2906002)(86362001)(446003)(11346002)(73956011)(66946007)(53936002)(66556008)(64756008)(66446008)(110136005)(76176011)(52116002)(186003)(26005)(54906003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB5094;
 H:AM6PR04MB5032.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: LcFUiFF1+UNSb/Y0XEY5u/cptOoP+ygCHO0Wl8OCgkSnANEbTCIoqNuZCnwO5d7ApMgRh9hm+S2Wet2zNxjExFUA7b+L0cAl/5i0hTjrx1NugxJyrLAwSNMJ822Y1SIyyTb+wAb07do5byJZgE8k+vzfG31PGyF/eFF5J40JPfy8ogtFdiORvRsi8ZvRVqf2ZZhZX7AjlbhapxClmMXdcm+FUJ3mVdQIwT73wKub3hN2Y9ioal+9CAW/aQph072bFOlgExGHugw/NTT356YHa+WBI5/bQezjnU6Pq4PA2bPPE5F7366tbmM8QWOPWloOywe4hp/Mw1fn/uGDtALgfuhgPxsrBJ9oQyEcFmMeZY76mV2cp1FqHdnjWDAzp/irGnF+kbh9O68S/O+5o+XT+oU7GqZSgd92Jlz4uB8fTlA=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: befd1599-33e1-40f4-7af5-08d6e29f5422
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2019 12:32:09.9582 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pramod.kumar_1@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5094
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_053213_370462_897681D0 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.47 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Vabhav Sharma <vabhav.sharma@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add "fsl,ls1046a-frwy" bindings for ls1046afrwy board based on ls1046a SoC

Signed-off-by: Vabhav Sharma <vabhav.sharma@nxp.com>
Signed-off-by: Pramod Kumar <pramod.kumar_1@nxp.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 407138ebc0d0..09ff1999ce96 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -241,6 +241,7 @@ properties:
           - enum:
               - fsl,ls1046a-qds
               - fsl,ls1046a-rdb
+              - fsl,ls1046a-frwy
           - const: fsl,ls1046a
 
       - description: LS1088A based Boards
-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
