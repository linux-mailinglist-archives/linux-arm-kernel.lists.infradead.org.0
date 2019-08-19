Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D8769227F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 13:36:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qALNP3wOKdNbpDVdu9M+i/Q5AcugxjJdzga8kJ4CRRA=; b=jrWRlP4TZXmK5z
	Zmdb7MSVderV9NH/kI/WQyRRNf5IIGjweWWzbwx41qDJRpzSQiXzYmuNdDlJQiT1hJacvCXMyDECG
	bEdWxDSrGK36Tq06hUV41TT8BH4mUrCF4xHRploQs0MISniFMhIkg86bwasxELnRUA1jIECq1Uf8O
	p6rTalAZG1UTwOw2RQpRfY+sM2yjbAIoWPPq6eUIfG8euGjftvNs8F0RfdpZkdlwr4vHOzC7JFiwk
	7CC6OxPqg0tZ5dFapLqS6bAGIzeJ8RHpzTzvL3hAcvdW0eSn+QdKNq+3yfEEZ9ANaPe1f4+aCcaJ0
	Xx6C908ppibllTiklM8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzfxS-0004PN-SV; Mon, 19 Aug 2019 11:36:18 +0000
Received: from mail-eopbgr710043.outbound.protection.outlook.com
 ([40.107.71.43] helo=NAM05-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzfxL-0004P1-L1
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 11:36:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ob/qWgPxLDbO1j2rVc45mkZRHnS6njXTehJk2JeEQmWwRrt1QtP0/RiPvdRUDr5YPRvgNCBigJ0+2AUV+m5IO1EgbvYX1lY+MryQWgVhliYjE4pVIWQLWcTDDvX0rzEDtoGvch/JamldjdhownxiwsXNTsT8XzbG9Q0QfaAGYK1odjudyOBs0bfeSTm2kU57O6PvQU34V46i+qLOrGSMEgpgA6s0kViOp67MckzwKDCPR6xfMzmEXIEtuzvlTWXNsRJub8Vy6Yo5M/fNCUyUIw5uWg8dZYWqSTKyTq7BSJNuwjMOnJg3dPQTb7oLWrb5LA/9I6xsMkH5MUcgfUhBKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EKpBe//J7CHtDTR2w3jG8GwEs1XJGPcWYz2zYmDSEZs=;
 b=bNFk7nEZ95GGwtx6TBuaxp6RgpHFN8+zdI7+g3LYJDtYE1vgUHiEF/HrIWSlXZ47bSC4cDpVr6hGKGYU46rXiIiE0CDdUiY5BswHj4r2EWecquLo0XdRcUfspQIC7f6xqMfv9WsqIlnm8ewqoAGNUoAA2XH19xOBKdQcuat4uA+8ATfvOo+kZS2r5y8hR3Ad1Aj5CZEaTHZRDZ5mvXesTcZmmy9hUaC5rH1SDggssk3BbMS7f9PtRoqMib8S5wfBhsF+4Ogq+89VG3L+Nt+xauXsEcHpzFpXGQtSwlEWYTdP46cga0wGcqxqs4ea37G8lUsA3K1aObuZ7b8ahyuN4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synaptics.com; dmarc=pass action=none
 header.from=synaptics.com; dkim=pass header.d=synaptics.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Synaptics.onmicrosoft.com; s=selector2-Synaptics-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EKpBe//J7CHtDTR2w3jG8GwEs1XJGPcWYz2zYmDSEZs=;
 b=EZN53o4d/t7XYuciWjmoGPuY7Y7LlGFxAAJcCujA2ZGaInhPIcGOMv0z6jyJ4c2TojPAh2VpcLOCyIhHa73nBjykq/UU1hHsFHg8Qxl26yjGkWk0u55gdQgo/CFTXF0AeOSqMpn/ckAZvYJ2/L3sYmK9C1IqYrBVF+KX9WAWf8w=
Received: from BYAPR03MB4773.namprd03.prod.outlook.com (20.179.92.152) by
 BYAPR03MB4838.namprd03.prod.outlook.com (20.179.93.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Mon, 19 Aug 2019 11:36:10 +0000
Received: from BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::a517:3578:67bf:6c88]) by BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::a517:3578:67bf:6c88%7]) with mapi id 15.20.2157.022; Mon, 19 Aug 2019
 11:36:10 +0000
From: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>, Masami
 Hiramatsu <mhiramat@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Anil S Keshavamurthy <anil.s.keshavamurthy@intel.com>, "Naveen N. Rao"
 <naveen.n.rao@linux.ibm.com>, Steven Rostedt <rostedt@goodmis.org>
Subject: [PATCH 1/4] kprobes: adjust kprobe addr for KPROBES_ON_FTRACE
Thread-Topic: [PATCH 1/4] kprobes: adjust kprobe addr for KPROBES_ON_FTRACE
Thread-Index: AQHVVoJMyFG9yAYnDUGqVMEGNEXBVw==
Date: Mon, 19 Aug 2019 11:36:09 +0000
Message-ID: <20190819192505.483c0bf0@xhacker.debian>
References: <20190819192422.5ed79702@xhacker.debian>
In-Reply-To: <20190819192422.5ed79702@xhacker.debian>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [124.74.246.114]
x-clientproxiedby: TYCPR01CA0053.jpnprd01.prod.outlook.com
 (2603:1096:405:2::17) To BYAPR03MB4773.namprd03.prod.outlook.com
 (2603:10b6:a03:134::24)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jisheng.Zhang@synaptics.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2c17c311-704d-49d0-e979-08d724996e64
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR03MB4838; 
x-ms-traffictypediagnostic: BYAPR03MB4838:
x-microsoft-antispam-prvs: <BYAPR03MB4838B9844640A19A5DE7FB8FEDA80@BYAPR03MB4838.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:478;
x-forefront-prvs: 0134AD334F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(136003)(396003)(376002)(346002)(366004)(189003)(199004)(316002)(50226002)(7416002)(52116002)(99286004)(6486002)(478600001)(2906002)(66066001)(71200400001)(54906003)(86362001)(14454004)(3846002)(5660300002)(71190400001)(110136005)(76176011)(4744005)(8936002)(6436002)(66946007)(305945005)(81156014)(66446008)(64756008)(81166006)(66556008)(66476007)(8676002)(6116002)(7736002)(186003)(102836004)(1076003)(26005)(6512007)(446003)(9686003)(11346002)(53936002)(486006)(6506007)(386003)(476003)(256004)(25786009)(4326008)(921003)(1121003)(39210200001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR03MB4838;
 H:BYAPR03MB4773.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
received-spf: None (protection.outlook.com: synaptics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: c81MKNF1YphsHMlylKiRBU9aJ/xP+u1Lbl7wz7r9VK8QVsMiwQP716huOxdjDlYnF3KL+jyYIKS4gjY3lHngl/P/23jPM9fCt2/k3VtDdDwn+AIR6grdlMY+S5qfz3xrgJFmDLnobohoEwX7oOwWMAgF4ycFuG1NF0UOkpVzYQ9fW3Rislt7AcgmT/c0OUsteCC1jJYPK9bDRsdFzqcmvT5IVTHTxFpphG/zgd+P/wbo7/DO6ZROzcSSVwmtCviGynM31y+8rPofZShups3RsSPd7udYV8sLqaVTuOcmuSvTtRRU+jBGL4tHZhQRrKIHdLnJ0N1gmdz8ShX/4mhGEaS8ZaALF5r1jESAFJnLCQHRhwZD6cGeqiUrBRPpNOIzUpzoU5mnWrybcJFHBfhce+A/UViQTaqshE7eWp5lsTU=
x-ms-exchange-transport-forked: True
Content-ID: <C2360F92B5CA694C9B2DBE540C46BC57@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: synaptics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c17c311-704d-49d0-e979-08d724996e64
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Aug 2019 11:36:10.0036 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 335d1fbc-2124-4173-9863-17e7051a2a0e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0nXnn4v0KeDRAUFNixQYt1ALLlXZaxisepbnOOmcF1QL3/QeF5ra00On90OhH//GuJZKNwV0Ve2tlIF6fTLQPQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR03MB4838
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_043611_688277_C49AC52F 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.71.43 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "x86@kernel.org" <x86@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For KPROBES_ON_FTRACE case, we need to adjust the kprobe's addr
correspondingly.

Signed-off-by: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
---
 kernel/kprobes.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/kernel/kprobes.c b/kernel/kprobes.c
index 9873fc627d61..f8400753a8a9 100644
--- a/kernel/kprobes.c
+++ b/kernel/kprobes.c
@@ -1560,6 +1560,9 @@ int register_kprobe(struct kprobe *p)
 	addr = kprobe_addr(p);
 	if (IS_ERR(addr))
 		return PTR_ERR(addr);
+#ifdef CONFIG_KPROBES_ON_FTRACE
+	addr = (kprobe_opcode_t *)ftrace_call_adjust((unsigned long)addr);
+#endif
 	p->addr = addr;
 
 	ret = check_kprobe_rereg(p);
-- 
2.23.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
