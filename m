Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D72C615C098
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 15:46:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ezBp2RjK1Da437k6aBw8dsxew3HysURyeKFI8UnfzSM=; b=uen9BKbTJYQ69p
	5fvVKY8SvXscYIfQXz0b7YccBpUVnMthy2MN3wVz0PbArFrS2xy6LGAGijtnqJnK1cVLXN8nH4K5x
	yZXUQNpHljk1wc4XdbMgRzbUeZzArczo01YHNoAsXffUeSLDGCgmrVHJ6p8+t8eBcF2DWucnJF7Un
	ijkpknV9iTDAryuXIO7yiLQvUjLj47t+bocXhDJpOQXdIrPSsVq9Ru2qiH6G4bkAh9omMDFOWc7cP
	gEjbWXUlUKvd1k1wZlETBzxUF1r2abcz7/BhKPpEQTn7ew4JF5mLAlp8Nbg6apA48+H6mPX9wKscY
	imeC3xp8KVn3FrqeHL+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Fkx-0005Vt-Uk; Thu, 13 Feb 2020 14:46:19 +0000
Received: from mail-eopbgr140059.outbound.protection.outlook.com
 ([40.107.14.59] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Fkq-0005Uw-4U
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 14:46:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZHFcOjm7PFUyppLt9qNY99DY8wnkCDhK79pR7mkpDa6/p2AeXwaUtascMIOw17z8JvFySdwl56u1taNVk7oN8LL2/PU9BCl0I8jiv2K6G8vNwDCQbBfNYnYzf2KiwQz6gTWSTaVITeSnZEX4T4voxig0Lkxu1wDTwItULzJvrx13jq8lvolp5xwF8ndZ65OCydJqbw4QhC1k6exVIsGXieAxB1HFKEYAznFCdngjfJ5GakjQBbFeWKe33OhwlOiJZq0p5dEBpFodMaxDTgV54hKgdt0vCv64xo8GJEDub97o0K+zUak1paE9+kX3oz0D3ScFH7CTOfdhX9zrGuM25w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QBg84B6nB4eQ1UUMZirmp02kNykjg6R0cbBRnCBPXQI=;
 b=VGNaO4wvsQQ45xUxPJZ9PY2AJtrUn95m3tAMAWSvAqZM3r5fk8NuJRGBZ+BrpfYnP+N3xEz7sqaDi++Kfn9s+NGTbXnN9FkOWAK0Ajvj2GN8FVyCoT1zyiCtbRm/kso0wxo+lkAy+0+iZaDkCM4kaMP6x4GxMifo1nU9jy1JJiUWshXvcyV3LB3Hvv3SYFm2DeeSiVFyLmSyyRJo9mTv2pwJht0+u48rMDsbf3O/CZ8W/ZkhhYocLvClP2FSiuxlp4gFdeB6DyXwzlkkXsmyeHMvuzeToYe41AxlSZqo6xRju8LdQL7jQQgi9d6zbo6nSkO/tzNsyf2uLsLn0Ver1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kococonnector.com; dmarc=pass action=none
 header.from=kococonnector.com; dkim=pass header.d=kococonnector.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=KoCoConnector.onmicrosoft.com; s=selector2-KoCoConnector-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QBg84B6nB4eQ1UUMZirmp02kNykjg6R0cbBRnCBPXQI=;
 b=EEvCzfPWHJJzoSLP4AjYFALD7R9wCSNYnFi2YKdKDnHMFsakzbuN9STZ6ZHY7MdD7PAsCyYiYenyxUfqJCtqd4CmtCx3nEYDu0TJPpcBvKjmtmS9u5c++eAtIh2MNVciUFZ27xnq7pKOSUfr6cXZLOVCJorxMLBGS32FmiVDD1o=
Received: from DB6PR0902MB2072.eurprd09.prod.outlook.com (10.170.212.23) by
 DB6PR0902MB2038.eurprd09.prod.outlook.com (10.170.213.147) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.21; Thu, 13 Feb 2020 14:46:05 +0000
Received: from DB6PR0902MB2072.eurprd09.prod.outlook.com
 ([fe80::406b:dddb:f0d2:7ea7]) by DB6PR0902MB2072.eurprd09.prod.outlook.com
 ([fe80::406b:dddb:f0d2:7ea7%7]) with mapi id 15.20.2729.025; Thu, 13 Feb 2020
 14:46:05 +0000
Received: from localhost (193.47.161.132) by
 AM4PR0501CA0052.eurprd05.prod.outlook.com (2603:10a6:200:68::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2707.24 via Frontend
 Transport; Thu, 13 Feb 2020 14:46:04 +0000
From: Oliver Graute <oliver.graute@kococonnector.com>
To: "aisheng.dong@nxp.com" <aisheng.dong@nxp.com>
Subject: [PATCH v1] dt-bindings: arm64: imx: Add board binding for i.MX8QM MEK
 Board
Thread-Topic: [PATCH v1] dt-bindings: arm64: imx: Add board binding for
 i.MX8QM MEK Board
Thread-Index: AQHV4nxRs2kDGa0OcEWFKtzPa5a5Tg==
Date: Thu, 13 Feb 2020 14:46:05 +0000
Message-ID: <20200213144451.31455-1-oliver.graute@kococonnector.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM4PR0501CA0052.eurprd05.prod.outlook.com
 (2603:10a6:200:68::20) To DB6PR0902MB2072.eurprd09.prod.outlook.com
 (2603:10a6:6:8::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=oliver.graute@kococonnector.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-patchwork-bot: notify
x-originating-ip: [193.47.161.132]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bcff7765-e81e-4c54-63b5-08d7b0937395
x-ms-traffictypediagnostic: DB6PR0902MB2038:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB6PR0902MB20389369B1CC04BC2052D7F1EB1A0@DB6PR0902MB2038.eurprd09.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1051;
x-forefront-prvs: 031257FE13
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(136003)(39840400004)(376002)(346002)(396003)(199004)(189003)(6916009)(71200400001)(4744005)(36756003)(2616005)(64756008)(66476007)(956004)(66556008)(508600001)(966005)(6486002)(66446008)(66946007)(5660300002)(52116002)(6496006)(7416002)(186003)(54906003)(26005)(81156014)(16526019)(2906002)(86362001)(4326008)(44832011)(8676002)(8936002)(316002)(1076003)(81166006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0902MB2038;
 H:DB6PR0902MB2072.eurprd09.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: kococonnector.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /N/kXS4R+bfVHIqbj5IfXz7k/1NSk065GBpmxydmt4QkdsYRLP8QGe3tc3StZW0er8K81Zj626pTJTCyiIzLVFLNa1YZu2GvsfUrgiBizm+cGUlrTFyqGy9l6ZZdo45UjRF6RyYPVKbZcJvPs+XaUQzAJi6OAOAy4EIWVSBU9olicsvKmljTCd5c84n+RMGitJPNLw1qwiDaGTDKT7lJ2VbpS0LzjHMQFupNyvzsxR7wuT74ot0o0PcmJ5+PVjMe5tubZX8NkYYI0SiUxnM8j4UtM9X+eG5ETUtLnOfx7xah808a61HEtA47yXsTkkwuZTOZFpKgBSCCA+ajdFDWR6CpOlrmKYfg0L/IJFmzILriKwjGr9S7YQrhid6S0rqCIvc7pgOH/n2LeOUe70UUFoJUUel7MP4GLg/Wy6Ifmx+N6oWJ5wGkLWE79X+6axT6eXkMI5XnU3Rvyic47KgEgpUaaLH7JklT/Q2/dcl+YwFq2p+/KabgRNTSaP8mw4apeCBmmFWTl9otKUgkXqI5Jg==
x-ms-exchange-antispam-messagedata: p1ZCW01HQa1qn5l/uEl4CpzDKbO+M1Gx6xF6xtiKfnJ9WWIfqwVA1iHzRa93OjwyRqYJdjLsBLx87PzitdjCMF2mrWHqNf8JSnOsIN0mHjT7rHj41LhrU65tWcrMXvhMUF4tOkyd0GU6ALQA0JRBsw==
MIME-Version: 1.0
X-OriginatorOrg: kococonnector.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bcff7765-e81e-4c54-63b5-08d7b0937395
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2020 14:46:05.3239 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 59845429-0644-4099-bd7e-17fba65a2f2b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oC8oRy59O0hYD/EkYZstaEro9bhmt04eOlO8KIJUU7SQYNhOrLK9CabSLhgI5UkafoKyLKUTkaTIlO1dXZLksBkNojqgaNNO2CBBHWVpCVs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0902MB2038
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_064612_177613_EF4FFB93 
X-CRM114-Status: UNSURE (   8.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.6 (+++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (3.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [193.47.161.132 listed in zen.spamhaus.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.59 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "peng.fan@nxp.com" <peng.fan@nxp.com>,
 Andrey Smirnov <andrew.smirnov@gmail.com>,
 Oliver Graute <oliver.graute@kococonnector.com>, "Angus
 Ainslie \(Purism\)" <angus@akkea.ca>,
 =?iso-8859-1?Q?Jonathan_Neusch=E4fer?= <j.neuschaefer@gmx.net>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 "fabio.estevam@nxp.com" <fabio.estevam@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add board binding for i.MX8QM MEK Board

Signed-off-by: Oliver Graute <oliver.graute@kococonnector.com>
---

 this patch should belong to this series:

 https://patchwork.kernel.org/patch/10824573/

 Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index a8e0b4a813ed..8b75ee13006d 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -336,6 +336,12 @@ properties:
               - technexion,pico-pi-imx8m  # TechNexion PICO-PI-8M evk
           - const: fsl,imx8mq
 
+      - description: i.MX8QM based Boards
+        items:
+          - enum:
+              - fsl,imx8qm-mek  # i.MX8QM MEK Board
+          - const: fsl,imx8qm
+
       - description: i.MX8QXP based Boards
         items:
           - enum:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
