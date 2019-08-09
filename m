Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 735268789A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 13:30:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XN5nRMA+iefNjB+hDG9/VBwUt05c/6TLw87vaStfelU=; b=ZcZHAePmnWBxd6
	Opd3T/BS0n2tCjCgmrja94h5q4W6IzLLV1y6Fl6CT/NfcrcsmRERO7LWD65z3V6CYYw/45EfU41RK
	6lTLt+dNWOcpnSp5mmAxmPNO9I0yRdW4sdRrZtsxVn+OtbBsg5RSKBDlbGyZ65mggz0YfFwGyesbg
	EkV8jq0CxlThHiTbjCBBNlahffDtVZATDltH+84x02uZd8kRhocdMT2hVYFPsc3xRKoSVnl2PmWrT
	jhOZtfbWkTugFnbMBCcgGsiCoREbOhVDvSFEMvpntEKg7lDyhXzRCWJZpFfXAh4+3jjWJfmW62dKv
	8q7/eOIrJulVhnL2SDzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw36Y-0000gK-I6; Fri, 09 Aug 2019 11:30:42 +0000
Received: from mail-eopbgr130047.outbound.protection.outlook.com
 ([40.107.13.47] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw35C-0006rZ-1v
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 11:29:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WvmvfzD3ptaY5T7FR0tCKDUOwMRcJWubHqz+W/WZYEQWjGds5E+g0Ep8/z9cbHFqrEa/EF8dqmVSt5GrRGfIBSQu46771J3vy5ESGrVQdn0ZO3BjqGX/RG46TYoyMBR6vPniRC4Y9Cwf28F6ID0xcrWekDAwQB6ceIJ9IjizuUqaEjDxLOA2v0KYr1d8/xQD6IEOr+ytW8azBq7GigM5F4PF9vvQvdAxDfdxkf8Biqxpa68iPi8fiwGegzxpEm6vxac8C7JR/fAYQRAEwC9HYVTOF4jmtZQ1GkphE/iFOnqdi4F0MCp8Js4c9E2WQwt4nSOsXPU0O7e90U2oue1YXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qsz5V+1aWaPpbCQ15tKsqIB9J9IX5L3HJRBgrzb9Q8k=;
 b=L0fJLrZ7T9Q9dDNcuyTBRX4+FHsFFUQOkzPLwalLlZSYlMuaza51UxaQpJ8hVAypXhqIEVM4eX04dXbCDXIj+iIkuqcjfN9e2Ga0mT1V+sXXtxFPUAwD5XMldQog3OJ0+YesDILQdtYl1iPObYihxxAjcRzqxB0dXjPeQE3EVuJvn+mRWqv6h3VcqpV9RtKFN0lKaQV6/ZkSUSoMpNrIx0E8po4Auxv//TJbM9P+gsss7u66VvPHHFm6TkSM9AX8vnV0gEO4JLP8kGR8fRUPrvsrMkQzGg6mFzHlcbTBhUO5Qru6gl29y95EDHoba6nWz11CPc8k42CKuLfLw1BCCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qsz5V+1aWaPpbCQ15tKsqIB9J9IX5L3HJRBgrzb9Q8k=;
 b=JY1Cr6+Z66UGcN/icQVne8c3cZXgXXlafTJ4Lem2tPmnedxsRO2FOlCtvKoJdlaPVFCgvqBpHoSw71Q9Lu0VjjIOd94SGyu2bmFsFmdAFCXFwZSRQqmqxRe4DQgqNHVUqr9Ywi13SlaW1WjVGuuveiZW1+k/zFXbbaZ9DrIM4io=
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com (10.175.20.18) by
 VI1PR0402MB3359.eurprd04.prod.outlook.com (52.134.1.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.13; Fri, 9 Aug 2019 11:29:14 +0000
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::7de6:ea4b:9b5d:d023]) by VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::7de6:ea4b:9b5d:d023%7]) with mapi id 15.20.2157.020; Fri, 9 Aug 2019
 11:29:14 +0000
From: Stefan-gabriel Mirea <stefan-gabriel.mirea@nxp.com>
To: "corbet@lwn.net" <corbet@lwn.net>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will@kernel.org"
 <will@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>, Leo Li
 <leoyang.li@nxp.com>
Subject: [PATCH v2 4/6] dt-bindings: serial: Document Freescale LINFlex UART
Thread-Topic: [PATCH v2 4/6] dt-bindings: serial: Document Freescale LINFlex
 UART
Thread-Index: AQHVTqWsK9eiDQvZCkSXj9zSiL4EIw==
Date: Fri, 9 Aug 2019 11:29:14 +0000
Message-ID: <20190809112853.15846-5-stefan-gabriel.mirea@nxp.com>
References: <20190809112853.15846-1-stefan-gabriel.mirea@nxp.com>
In-Reply-To: <20190809112853.15846-1-stefan-gabriel.mirea@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.22.0
x-clientproxiedby: AM5PR06CA0024.eurprd06.prod.outlook.com
 (2603:10a6:206:2::37) To VI1PR0402MB2863.eurprd04.prod.outlook.com
 (2603:10a6:800:af::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=stefan-gabriel.mirea@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 603143c5-5588-4576-d40f-08d71cbcce86
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0402MB3359; 
x-ms-traffictypediagnostic: VI1PR0402MB3359:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0402MB33596BEE56EB232EC275E0D4DFD60@VI1PR0402MB3359.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 01244308DF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(376002)(396003)(39860400002)(136003)(346002)(199004)(189003)(66476007)(66446008)(66556008)(64756008)(5660300002)(6512007)(26005)(186003)(6306002)(2201001)(52116002)(76176011)(8936002)(99286004)(14454004)(50226002)(1076003)(86362001)(66946007)(71190400001)(71200400001)(4326008)(386003)(966005)(6506007)(53936002)(478600001)(102836004)(110136005)(2906002)(256004)(25786009)(8676002)(66066001)(476003)(2616005)(14444005)(54906003)(2501003)(486006)(316002)(36756003)(6116002)(3846002)(6486002)(7736002)(6636002)(7416002)(6436002)(305945005)(81156014)(446003)(11346002)(81166006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3359;
 H:VI1PR0402MB2863.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: pyJFHjIUEliOyVUYZX+TBq4EgOAByFAAQuNnprOTDNokq1fSHGtovveafIXb6L+8y5pK5CV5DAyB/cOFX1yPfIMUR4J35JwaLQa0rPDG4rQ50OX2vFWNs/b2PidJ0O1+jCVXM0LEcNZ62VP7+mv9/MoESuIcN4uy0TNuBTJS641SdpS1OvmkPmddPFGB5XTeIV9CXrD7XLcPKpZxWxLTxqQ6Oze0LkN1TTTgxONBBCjhxTIt4ewMwFGtO+R8eFVwGD9oU+r99Qx+K/ov8M7wXs8NTvNvoi1We0mQsdgw8KZBXlvgsFKH0KbR6yRgt3QO0u2AgbcMOXTUb18AdLyiwQv1dUyr8+yYS8MEB/2me17RbdnzU6TXdgcDpVw4HstnqCkmlRnJzKWerxKBnbtXBVtQ4xmT8wOImXMXSA80hcE=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 603143c5-5588-4576-d40f-08d71cbcce86
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Aug 2019 11:29:14.3255 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Qi5aF0Kj8G143MBx3NA8PiRMKlSyetGcHOoVFSxu8Zzrdy6gUoI2mNF8sQ4JeRiTBSeboix1ehcDgkzwynKVGEnzNHYpMxHbXOeDyvJStSQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3359
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_042918_162148_26BF1498 
X-CRM114-Status: GOOD (  11.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.47 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 Larisa Ileana Grigore <larisa.grigore@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "jslaby@suse.com" <jslaby@suse.com>,
 Cosmin Stefan Stoica <cosmin.stoica@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Stoica Cosmin-Stefan <cosmin.stoica@nxp.com>

Add documentation for the serial communication interface module (LINFlex),
found in two instances on S32V234.

Signed-off-by: Stoica Cosmin-Stefan <cosmin.stoica@nxp.com>
Signed-off-by: Larisa Grigore <Larisa.Grigore@nxp.com>
Signed-off-by: Stefan-Gabriel Mirea <stefan-gabriel.mirea@nxp.com>
---
 .../bindings/serial/fsl,s32-linflexuart.txt   | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/serial/fsl,s32-linflexuart.txt

diff --git a/Documentation/devicetree/bindings/serial/fsl,s32-linflexuart.txt b/Documentation/devicetree/bindings/serial/fsl,s32-linflexuart.txt
new file mode 100644
index 000000000000..957ffeaca9f1
--- /dev/null
+++ b/Documentation/devicetree/bindings/serial/fsl,s32-linflexuart.txt
@@ -0,0 +1,24 @@
+* Freescale Linflex UART
+
+The LINFlexD controller implements several LIN protocol versions, as well as
+support for full-duplex UART communication through 8-bit and 9-bit frames. The
+Linflex UART driver enables operation only in UART mode.
+
+See chapter 47 ("LINFlexD") in the reference manual[1].
+
+Required properties:
+- compatible :
+  - "fsl,s32-linflexuart" for linflex configured in uart mode which
+  is compatible with the one integrated on S32V234 SoC
+- reg : Address and length of the register set for the device
+- interrupts : Should contain uart interrupt
+
+Example:
+uart0:serial@40053000 {
+	compatible = "fsl,s32-linflexuart";
+	reg = <0x0 0x40053000 0x0 0x1000>;
+	interrupts = <0 59 4>;
+	status = "disabled";
+};
+
+[1] https://www.nxp.com/webapp/Download?colCode=S32V234RM
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
