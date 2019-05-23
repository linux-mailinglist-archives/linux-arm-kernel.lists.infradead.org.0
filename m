Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A4327BAD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 13:23:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MNUWaHTqGa7tZ8i8xX4AIRVNGdEjkq1QQiflUDq4azE=; b=NFC0X247VPKxuJ
	KGNntE7WuNbnO3lJywGDHQ+zk53igEAnik6qxUDdT34RFXMp6ywW7f8RwgVqJfePAaoFtjW2bWlq+
	4uY0aLSbPS/7gRrKnJYS+w3T49wLfWOuYmOzNXfnOJN4PZmlor2f0CIf8EZSgGJChEbBLxeicCvZ7
	yWyNTleAe0PqaQ2sAreUtltzcoWfW2WERDJu6NUVtvJGCQYnzDF7P2rbXDerOj3KR1dx6YbZEmW69
	9NHjQhfyi2pn8YuublCOR1GehVfo5S8133y3lez+PkqW7H7zLW9VbHXHC9XmE/OLTfu6gCgTgHWH+
	kMKs2Bn4+G8Hud0wwRfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTlp7-0003ow-5f; Thu, 23 May 2019 11:23:49 +0000
Received: from mail-eopbgr70079.outbound.protection.outlook.com ([40.107.7.79]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTloz-0003oJ-Pq
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 11:23:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=epam.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ed32Chka+6thbE9sFwHyq6Y69WFt2xNaPXh/EdResLo=;
 b=oQm+uwUhOChqWiXMiyHk/Bo0POzG/55pUsSiD2FBCuvoLX7hMinj1ceimkr9ykREYaI3LU9+581zm4kgkSNEdVy+d4yAZcikIUs/jcLq3tbt1DkU09Ne0dqYXtB/gIQjDVQdyCLuN1RPD27BfaqWn38ErAebeBRbPkdYdH62lDiwD9VkkV5XZniqUQ1eZrpXzdGkchQpiHEwIOq+vxzxIkpo4Gz7ALSEDiC8G4YFqy6iL5g0fvPAJR0ixUHZWM35nN2066qPpPu7L264arkNrQFEIe1ymNFmUmMRDmA0BpMWkROifYFPgXW0nsDcMjgYrg/WvC2cpOov1iex6ZJV5g==
Received: from AM0PR03MB4148.eurprd03.prod.outlook.com (20.176.214.210) by
 AM0PR03MB4097.eurprd03.prod.outlook.com (52.135.145.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.16; Thu, 23 May 2019 11:23:35 +0000
Received: from AM0PR03MB4148.eurprd03.prod.outlook.com
 ([fe80::55c5:599a:1f80:208a]) by AM0PR03MB4148.eurprd03.prod.outlook.com
 ([fe80::55c5:599a:1f80:208a%3]) with mapi id 15.20.1900.020; Thu, 23 May 2019
 11:23:35 +0000
From: Volodymyr Babchuk <Volodymyr_Babchuk@epam.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: [PATCH] dt-bindings: arm: fix the document ID for SCMI protocol
 documentation
Thread-Topic: [PATCH] dt-bindings: arm: fix the document ID for SCMI protocol
 documentation
Thread-Index: AQHVEVn2U05P8CKPx0+q1JYvuEenTQ==
Date: Thu, 23 May 2019 11:23:35 +0000
Message-ID: <20190523112312.24529-1-volodymyr_babchuk@epam.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Volodymyr_Babchuk@epam.com; 
x-originating-ip: [85.223.209.22]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2ff935c0-f8c9-43a9-d420-08d6df7118ba
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:AM0PR03MB4097; 
x-ms-traffictypediagnostic: AM0PR03MB4097:
x-microsoft-antispam-prvs: <AM0PR03MB40974CAFCF458D85FD153078E6010@AM0PR03MB4097.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 00462943DE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(39860400002)(396003)(136003)(366004)(189003)(199004)(71200400001)(66066001)(71190400001)(14444005)(2906002)(6506007)(72206003)(4744005)(26005)(86362001)(7736002)(256004)(3846002)(305945005)(186003)(316002)(80792005)(36756003)(54906003)(6916009)(6512007)(6486002)(8936002)(91956017)(66556008)(64756008)(66446008)(73956011)(76116006)(508600001)(66946007)(66476007)(25786009)(486006)(476003)(6436002)(1076003)(2616005)(8676002)(81156014)(53936002)(102836004)(81166006)(4326008)(14454004)(5660300002)(99286004)(55236004)(6116002)(68736007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR03MB4097;
 H:AM0PR03MB4148.eurprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: epam.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: gtKwsS3K30wIPVTa4jZasgER5FVv/HiaAE9l9PIMPUGjifB6CoPxlZbDwHnn4O8B/l2TrNZMqXlv3lx8vYaYhHlcP5iEhy7Kl24CEjRgqiS19l7HtnK3IKjKwz8WSaUnJIU/LbIUIPxZmKeQzKo68M8Sw03uUFTq8YVKBp9/YkEG8d0ZlSLEjufjpbRRESGD/u5tEHFNE0bZLapn6Cy72QIykTOQJnqBoLNGM75ZQTLmgyWYJ3VBTdD3Jz5gopdNiOKXFaG0uaYw4Jh/yGh01RyIjhK2oFOs8Hm5kHW3bULoI1wA+D9z3RKVsL46qRmcqsXxcd+ml7DAmjKUUP0aPJFgCiFre5vQxWJ/pwLbh8s4yhO0zdzEJDjfuH2hmNcIafa/b8/eA2upDpMJNto9gfCgiPjARl4qeuQtohv6Ye0=
MIME-Version: 1.0
X-OriginatorOrg: epam.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ff935c0-f8c9-43a9-d420-08d6df7118ba
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 May 2019 11:23:35.7760 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b41b72d0-4e9f-4c26-8a69-f949f367c91d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR03MB4097
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_042341_944104_50440B13 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.79 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "trivial@kernel.org" <trivial@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Volodymyr Babchuk <Volodymyr_Babchuk@epam.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Volodymyr Babchuk <volodymyr_babchuk@epam.com

arm,scmi.txt used the wrong document identifier. "ARM DUI 0922B" is
the "ARM Compute Subsystem SCP, Message Interface Protocols". What we
need is the ARM DEN 0056A - "ARM System Control and Management
Interface Platform Design Document".

Signed-off-by: Volodymyr Babchuk <volodymyr_babchuk@epam.com>
---
 Documentation/devicetree/bindings/arm/arm,scmi.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/arm,scmi.txt b/Documentation/devicetree/bindings/arm/arm,scmi.txt
index 5f3719ab7075..317a2fc3667a 100644
--- a/Documentation/devicetree/bindings/arm/arm,scmi.txt
+++ b/Documentation/devicetree/bindings/arm/arm,scmi.txt
@@ -6,7 +6,7 @@ that are provided by the hardware platform it is running on, including power
 and performance functions.
 
 This binding is intended to define the interface the firmware implementing
-the SCMI as described in ARM document number ARM DUI 0922B ("ARM System Control
+the SCMI as described in ARM document number ARM DEN 0056A ("ARM System Control
 and Management Interface Platform Design Document")[0] provide for OSPM in
 the device tree.
 
-- 
2.21.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
