Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF7311B4B8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 13:16:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZF1ZayqCP1KDStla7/F7xSuE8J90JuStFZC7PFgIysw=; b=ef7+Ih5bH/TGy3
	dM9xGPnvfraBU9yvbse7Lb6VO+nMi8QZHt13RykmQkUAu2y9ZycDe8c4XiJz8kTz9zh5NzboYpFdF
	Cfp4c+U4Z2pokBpgYHhP0PcLcWDMuHYjyF9JjLt62rJR3uIPI++F0+eKE5XBXflPJN+cvvXtokKJU
	1af9vgkaxhd8ANxDesmqqCXkH/2Ad8pwLOo40eeytgC0hHrMJ9ww8TLzr0ARB1kWzKcUHt5IRz2/b
	SjeVgq2BMq2wfT9Veh7vxl04a8EBcrWf8w4xpZjSDUCQ9A0YhaxYXPqUVtMo0wxEo25DmJmrjHUTs
	Vm8fdM3gde8ykJFeWpRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ8wn-0002tx-PB; Mon, 13 May 2019 11:16:45 +0000
Received: from mail-eopbgr60095.outbound.protection.outlook.com ([40.107.6.95]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ8vL-00006d-KF
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 11:15:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=prevas.se; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sEuej7ss5STPp4OHMYfz0R03yzlH8IWgkfe+AgmlSy8=;
 b=LeVG7LDnVSxhb+Xq6Q6oyRjQmFim7bMUYbRCiS635BmgwJrqhI25i19OTxHFAOPMQ6bO8rHfbdZeqRkQOYATTbolyd33ctZrIK2TYZW4lRxzuyO1AO74t5PAvy3czD1ChBRIbBdzE65UjIkcJomtj903VpylFPsSgejjVPKOx2w=
Received: from VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM (20.178.126.212) by
 VI1PR10MB1950.EURPRD10.PROD.OUTLOOK.COM (52.134.27.154) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.24; Mon, 13 May 2019 11:14:58 +0000
Received: from VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::48b8:9cff:182:f3d8]) by VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::48b8:9cff:182:f3d8%2]) with mapi id 15.20.1878.024; Mon, 13 May 2019
 11:14:58 +0000
From: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
To: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Qiang Zhao
 <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>
Subject: [PATCH v3 4/6] dt-bindings: soc/fsl: qe: document new fsl,qe-snums
 binding
Thread-Topic: [PATCH v3 4/6] dt-bindings: soc/fsl: qe: document new
 fsl,qe-snums binding
Thread-Index: AQHVCX0ZXnBvt/NFO0u+76ybHNsHbQ==
Date: Mon, 13 May 2019 11:14:58 +0000
Message-ID: <20190513111442.25724-5-rasmus.villemoes@prevas.dk>
References: <20190501092841.9026-1-rasmus.villemoes@prevas.dk>
 <20190513111442.25724-1-rasmus.villemoes@prevas.dk>
In-Reply-To: <20190513111442.25724-1-rasmus.villemoes@prevas.dk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1PR0101CA0022.eurprd01.prod.exchangelabs.com
 (2603:10a6:3:77::32) To VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:803:e3::20)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Rasmus.Villemoes@prevas.se; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.20.1
x-originating-ip: [81.216.59.226]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2ae9f9da-f716-49b5-d22d-08d6d7943c4a
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:VI1PR10MB1950; 
x-ms-traffictypediagnostic: VI1PR10MB1950:
x-microsoft-antispam-prvs: <VI1PR10MB195021DADBE21BC44A5050F98A0F0@VI1PR10MB1950.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:2958;
x-forefront-prvs: 0036736630
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(39850400004)(366004)(376002)(136003)(396003)(40224003)(52084003)(189003)(199004)(51914003)(6512007)(66066001)(53936002)(107886003)(52116002)(68736007)(256004)(14444005)(71200400001)(71190400001)(76176011)(6436002)(478600001)(6486002)(1076003)(36756003)(5660300002)(72206003)(74482002)(446003)(81156014)(8676002)(14454004)(99286004)(2501003)(66946007)(66476007)(66556008)(64756008)(66446008)(73956011)(54906003)(11346002)(2616005)(42882007)(476003)(81166006)(44832011)(50226002)(486006)(8936002)(110136005)(8976002)(6116002)(7416002)(316002)(3846002)(2906002)(305945005)(7736002)(186003)(25786009)(102836004)(6506007)(386003)(4326008)(26005)(142933001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR10MB1950;
 H:VI1PR10MB2672.EURPRD10.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: prevas.se does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: iY4V8mvoG5SJUI2Hu3/s4cR0ATbU25JjUJY87KCD/Z579idi+L4su6UuQ0Cx3iZODFEeMuECo4maI3ZfHIyrJnmttEnuRsSHUAzbT39sJfeX7Dvvo7N4B232GHOS1clZL4swA7snUAwX8llmHp8IYB+emPUL2C2OeisZsAxIoxg+GtqS7hUylSRUfSykKE3MB1iGBhXQxSyrEph5UX5uR4z1C8ACgChCvQ7p6XEQChZe0kkhMDyqO2YRHcy2XivFCNkrU+CAE4p2MfvUKoLXRgyVxKtFIV4nK4Pn3o7g4s5ao9WpXTVb0w5HA1yMWjLCULwusRRL7et4ErbpE0yoGtA9sgAm5HC+T/f0skwfS64/HUW6tSoW+dUDXmCuIhXBLLWezoZjYGut9AGVmzFA6bptD2hXVnT8YjoL95EAmtU=
MIME-Version: 1.0
X-OriginatorOrg: prevas.dk
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ae9f9da-f716-49b5-d22d-08d6d7943c4a
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2019 11:14:58.8953 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d350cf71-778d-4780-88f5-071a4cb1ed61
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR10MB1950
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_041515_798533_076A1A3C 
X-CRM114-Status: GOOD (  15.53  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.95 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Scott Wood <oss@buserror.net>,
 Joakim Tjernlund <Joakim.Tjernlund@infinera.com>,
 Rasmus Villemoes <Rasmus.Villemoes@prevas.se>,
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

Signed-off-by: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
---
Rob, thanks for the review of v2. However, since I moved the example
from the commit log to the binding (per Joakim's request), I didn't
add a Reviewed-by tag for this revision.

 .../devicetree/bindings/soc/fsl/cpm_qe/qe.txt       | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/soc/fsl/cpm_qe/qe.txt b/Documentation/devicetree/bindings/soc/fsl/cpm_qe/qe.txt
index d7afaff5faff..05ec2a838c54 100644
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
@@ -44,6 +50,11 @@ Example:
 	reg = <e0100000 480>;
 	brg-frequency = <0>;
 	bus-frequency = <179A7B00>;
+	fsl,qe-snums = /bits/ 8 <
+		0x04 0x05 0x0C 0x0D 0x14 0x15 0x1C 0x1D
+		0x24 0x25 0x2C 0x2D 0x34 0x35 0x88 0x89
+		0x98 0x99 0xA8 0xA9 0xB8 0xB9 0xC8 0xC9
+		0xD8 0xD9 0xE8 0xE9>;
      }
 
 * Multi-User RAM (MURAM)
-- 
2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
