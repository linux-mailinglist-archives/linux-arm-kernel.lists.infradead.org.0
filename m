Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C56C512A703
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Dec 2019 10:42:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6mVzIe7mNFWEQIB/q1gV/rxja3fMqoARujIsKHV3p6g=; b=hrLuXUGjtkiyXb
	IzX7RIR0Hm48KNg5THolJi7YcrrSiB694Y9IDgDyf9oiUz+grY4D6s8fW8HqejymGLyVPhV7LZ+Fs
	TE203SwU+YT0qxCGikzL7Bq4Hsli3XTvyxLn7SI5qVyUu7giratI7AB8PMMQPDFdV9S9F3KTne80a
	81z5rXZFHLbRfbRPAzcn2CxQKokKOymEr4p7q/nx2vVlIMJ29oDLS63Vo/NBirWH0FNa+dJTZZSRz
	7EidcmvhIn1AZxo8yli6V3e/LZzw1ACElaTrzJ4bOgDAzOsSmp/Qa7J7BbGj+KMbt2QR3iCeVWQvs
	z0fGzPkrbOFqKCHcS1UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ik3BN-0002Va-CG; Wed, 25 Dec 2019 09:42:21 +0000
Received: from mail-bn8nam11on2061.outbound.protection.outlook.com
 ([40.107.236.61] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ik3BC-0002VE-74
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Dec 2019 09:42:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GmDzoU6LfS9861GwusgyfGrjrU3lbkGZE+BEEsyfqcElBcBcq3SIovvoI8h4RtPiy4xTonIT5u5wSzqUTXtARAICkQbidXTLlRRcv9jWLx7PoMmDlkILqT+p9CbxFhSV5y+VuLqwJuGpUVN+zGgMwK5gsYDKBmdDKG9LlhgPHYDwxEr5DJa+6N6Hx4OMW7+bHWlqdDBa6YudH70vHfFf59Qrvhe/sfGnYMUVr9tlNhcNbdXMD3VObn6HROG6C1DyErazthygLUd2q7j1sXjsoo0++DHcjOCqs8qAkqlk/WFuveMyCT8ZdNaU+aoxWnLSprvy0ZLp+rzV/0n1z5L8Sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ILbzOurn3R6bsV0bRaBNRAdQHJ40b9HcElY3vUMCP8M=;
 b=FlNjpLEkMnrZRYmQ3Xd2ihGjAt97roUNI8rISZXk4rNXGn0IYSk3RZkPbntfc9WsbSmGWYpJXsn7wmewwjBIdbphTLNFdGwG2mQI2gLz3KRIYR0PBWDy2lxoFpITMbKDjVZCzgpI+Lif/MIAZrsWj3776svZ2yKt60teUsOJogz0ZJ9l7qQC6Vfi5w/99RyPDNaBEdaXlm2TXefSzKqFf/0y6tvZu/yiQsq706gi6fCMXhfykjsh+JZ3DWCTLB2a7kum3minon5zIZZuX7UK0Z/gB3uLo0qQYAkJ31fwfPK4ADDh2AGKewkCB0X172BgWBor+TfRPV9fFlMKQ9zV2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synaptics.com; dmarc=pass action=none
 header.from=synaptics.com; dkim=pass header.d=synaptics.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Synaptics.onmicrosoft.com; s=selector2-Synaptics-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ILbzOurn3R6bsV0bRaBNRAdQHJ40b9HcElY3vUMCP8M=;
 b=mdoO1Ok+O6dK+kPx9NkC7cOAOp+PVixC6acesVQdcdv2lS5us+VdFxjZfD6ZirQWaDolDT+K6dQT3jsgQSgSB1XQMnEn8DAyCwnl+cJCkBKor4LFgGkaGYsQxPLvRdE6WV0pldhD3ZKYXkraX20sTFBeRJ5am0LbKEm5H+qKyhE=
Received: from BYAPR03MB4773.namprd03.prod.outlook.com (20.179.93.213) by
 BYAPR03MB4661.namprd03.prod.outlook.com (20.179.91.218) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2581.11; Wed, 25 Dec 2019 09:42:07 +0000
Received: from BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::708d:91cc:79a7:9b9a]) by BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::708d:91cc:79a7:9b9a%6]) with mapi id 15.20.2559.017; Wed, 25 Dec 2019
 09:42:07 +0000
Received: from xhacker.debian (124.74.246.114) by
 TYAPR01CA0196.jpnprd01.prod.outlook.com (2603:1096:404:29::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2581.11 via Frontend Transport; Wed, 25 Dec 2019 09:42:04 +0000
From: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Steven Rostedt <rostedt@goodmis.org>, Ingo Molnar <mingo@redhat.com>,
 "Naveen N. Rao" <naveen.n.rao@linux.ibm.com>, Anil S Keshavamurthy
 <anil.s.keshavamurthy@intel.com>, "David S. Miller" <davem@davemloft.net>,
 Masami Hiramatsu <mhiramat@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Jonathan Corbet <corbet@lwn.net>
Subject: [PATCH v7 1/3] kprobes/ftrace: Use ftrace_location() when [dis]arming
 probes
Thread-Topic: [PATCH v7 1/3] kprobes/ftrace: Use ftrace_location() when
 [dis]arming probes
Thread-Index: AQHVuweSj3f0oMePuk6TgrRxmwYaVQ==
Date: Wed, 25 Dec 2019 09:42:07 +0000
Message-ID: <20191225172752.70be1dc1@xhacker.debian>
References: <20191225172625.69811b3e@xhacker.debian>
In-Reply-To: <20191225172625.69811b3e@xhacker.debian>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [124.74.246.114]
x-clientproxiedby: TYAPR01CA0196.jpnprd01.prod.outlook.com
 (2603:1096:404:29::16) To BYAPR03MB4773.namprd03.prod.outlook.com
 (2603:10b6:a03:139::21)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jisheng.Zhang@synaptics.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0fce643c-9505-4d9c-7898-08d7891eb4e6
x-ms-traffictypediagnostic: BYAPR03MB4661:
x-microsoft-antispam-prvs: <BYAPR03MB46618FBE261292300FE1820CED280@BYAPR03MB4661.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 02622CEF0A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(376002)(396003)(39850400004)(366004)(189003)(199004)(1076003)(81166006)(26005)(81156014)(55016002)(9686003)(8936002)(4326008)(186003)(7696005)(66946007)(86362001)(16526019)(8676002)(478600001)(52116002)(66556008)(6506007)(66446008)(64756008)(66476007)(956004)(110136005)(54906003)(7416002)(316002)(5660300002)(2906002)(71200400001)(921003)(1121003)(39210200001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR03MB4661;
 H:BYAPR03MB4773.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
received-spf: None (protection.outlook.com: synaptics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iIDb2lOmzzDlxYnZeyTCHC3IYK4mua/N1x0+UwRDYs8KKGunuBNNy4C7CxyD6hY97nJ6ur7cRkPjDW6xDGqUZkx5g6M3aRZDYM3FmlcqaCPAugp5M823a2wF91+rXCV4nY+K55LlwJXT9Yu24ftf19evsO7WrXC+q6DsvVBCbC3Mtmda4KqTQ99rJHka9rNE5QoCanCEcwzevEp2v+8Ufv16PiKbNgYNCAt0aZsj8N6gRHgFP+wPu1lw0ui9Mjy6l7U5KeanfNIScgpgB+lNr5tQJDn5bL7ZpyqWT/dJjzww3xafexbhEWp5CUHegNiwKQOV49lVbdulpyk0mAmxLRvZ8wyjjAQ+F91P6FywEVcEvFUhJQ5nR2L9ui0fat5dApiCvkJ7qK46RZzq7DAolKv21AYdaFf3pqPqyKnZbcmYHO2/FOwyJCuaokTM4r7hL5UXluy+CCl+HfbB70Bje0sf99IfaHV38Ycz0bFu79dozYT9J6v68h4qTS2Vs5THBHOmv7SctDzeDGt7BOcCIVNhq61ceYDw2jcLbDWLoSk=
x-ms-exchange-transport-forked: True
Content-ID: <BBF16021EF076B4CBB9FBDA82B40A34C@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: synaptics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0fce643c-9505-4d9c-7898-08d7891eb4e6
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Dec 2019 09:42:07.5320 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 335d1fbc-2124-4173-9863-17e7051a2a0e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pMJT/VD22Zhwy7J2nasGbiPwPwvKs/0auBK8J+jYjxEnY3P/yBSIA2TxKNi0SlJPvLwH/dRU0fGYABQ/8GJ18Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR03MB4661
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191225_014210_257166_E202281E 
X-CRM114-Status: GOOD (  13.00  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.236.61 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ftrace location could include more than a single instruction in case
of some architectures (powerpc64, for now). In this case, kprobe is
permitted on any of those instructions, and uses ftrace infrastructure
for functioning.

However, [dis]arm_kprobe_ftrace() uses the kprobe address when setting
up ftrace filter IP. This won't work if the address points to any
instruction apart from the one that has a branch to _mcount(). To
resolve this, have [dis]arm_kprobe_ftrace() use ftrace_function() to
identify the filter IP.

Signed-off-by: Naveen N. Rao <naveen.n.rao@linux.vnet.ibm.com>
Acked-by: Masami Hiramatsu <mhiramat@kernel.org>
---
 kernel/kprobes.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/kernel/kprobes.c b/kernel/kprobes.c
index 53534aa258a6..5c630b424e3a 100644
--- a/kernel/kprobes.c
+++ b/kernel/kprobes.c
@@ -986,9 +986,10 @@ static int prepare_kprobe(struct kprobe *p)
 static int __arm_kprobe_ftrace(struct kprobe *p, struct ftrace_ops *ops,
 			       int *cnt)
 {
+	unsigned long ftrace_ip = ftrace_location((unsigned long)p->addr);
 	int ret = 0;
 
-	ret = ftrace_set_filter_ip(ops, (unsigned long)p->addr, 0, 0);
+	ret = ftrace_set_filter_ip(ops, ftrace_ip, 0, 0);
 	if (ret) {
 		pr_debug("Failed to arm kprobe-ftrace at %pS (%d)\n",
 			 p->addr, ret);
@@ -1011,7 +1012,7 @@ static int __arm_kprobe_ftrace(struct kprobe *p, struct ftrace_ops *ops,
 	 * At this point, sinec ops is not registered, we should be sefe from
 	 * registering empty filter.
 	 */
-	ftrace_set_filter_ip(ops, (unsigned long)p->addr, 1, 0);
+	ftrace_set_filter_ip(ops, ftrace_ip, 1, 0);
 	return ret;
 }
 
@@ -1028,6 +1029,7 @@ static int arm_kprobe_ftrace(struct kprobe *p)
 static int __disarm_kprobe_ftrace(struct kprobe *p, struct ftrace_ops *ops,
 				  int *cnt)
 {
+	unsigned long ftrace_ip = ftrace_location((unsigned long)p->addr);
 	int ret = 0;
 
 	if (*cnt == 1) {
@@ -1038,7 +1040,7 @@ static int __disarm_kprobe_ftrace(struct kprobe *p, struct ftrace_ops *ops,
 
 	(*cnt)--;
 
-	ret = ftrace_set_filter_ip(ops, (unsigned long)p->addr, 1, 0);
+	ret = ftrace_set_filter_ip(ops, ftrace_ip, 1, 0);
 	WARN_ONCE(ret < 0, "Failed to disarm kprobe-ftrace at %pS (%d)\n",
 		  p->addr, ret);
 	return ret;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
