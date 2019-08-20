Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28352955C4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 05:52:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5wBRZHXLEer7+seO+irYVGMZbWvx7vHIP6EfOXwIFo8=; b=VFhCgh36v3kkXs
	RlsfBOLHaMiGxMiuoCjFZSqHT0ILnLIEwtfaYdtPTTCElOOqt3b+i2u28PbbLrLTBnWga7Zx5YopO
	tNZQFw7VUTANLlvB6MgCOFLDiNlH/1Pwj2E2nc8UvLd4b5qSNZHhfbTvirA3YV0JmKJP4Rf+DCydi
	nWAXWgGVWdZYbXsY8BwL426F3LGPyWfl68W9OrVFMUqREHXrIzu/kcBDV1AArG9dXk3OxgUaNztat
	lhR+kXvOR8nuwMWHy6ybiPm6k5TIO/XzCZh5ScqrOoekB162udzYdh/NgRIBcN8crgo5YjUpLr2Z7
	J6gHXn25MtJBjibzXdiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzvC8-0001U7-H0; Tue, 20 Aug 2019 03:52:28 +0000
Received: from mail-eopbgr680047.outbound.protection.outlook.com
 ([40.107.68.47] helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzvBx-0001Ti-DP
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 03:52:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fpRyCxWibq62LWZw13MQWuRY3HgprpFLMOZCYXZFVR+EhzVh1BEMKNLfXdH8afh4srgunnfwGdfJm4D+qEqvenHNUB3AeYEfKfKskcNISoc5WCHalCIwPl+EWYHRXNM54QUmAt2u+97mFBH3uLCosr0m0zwg0eQ3oN5NJX+aYyD2C4eIJZoiRw+IYgg/Xaz88H+lQh6tboQqvyn9NutSHFgvCyQ+QnvDgeNVBZixUn3WKbYlX6yefezJFKECQnXgoDVEaYWnevM4SK0YXdooqI1J1fipBvUYSgpFZk9RAq9llMefsJrQh1SsAfVUXYi5Dbki6v8S6M5VkDN0XHBgwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XMKnhsML/1Uy9u2aqC1p0utqYye/7YKAWdCMjGB4d0I=;
 b=CBBI12H8J0J4cXldOGV4t9fu+q1FW+byT+Y5cQdImEDZz+Tr4vH2ts9LLiQgx0/tESJnZpvi43FNuyGXKVDIvND+Fb5rYqQfJb21nepShApurvt5PRK/rcHJHFE49/y7phiapd7hsCn2yvFysW1BRUaDILtcjRYcevQ1yGnVT3S7IYZQGJRfcqF9WKpmzjhFqHJrmEiiHLyGnO/rVwoowKOHbansISjHU0FWUoWxr/DJH2cWsf3Ys5PqLPXiOIGzEcrbIHZLQ7r51UGbweW4jOzPVMOA8cM//4HzL8VXYB6RoEdvngVF+tWcwA1Ag54+kRY4uRHMsqAMx9byyJcOSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synaptics.com; dmarc=pass action=none
 header.from=synaptics.com; dkim=pass header.d=synaptics.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Synaptics.onmicrosoft.com; s=selector2-Synaptics-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XMKnhsML/1Uy9u2aqC1p0utqYye/7YKAWdCMjGB4d0I=;
 b=a8zC5qgkD9vagJmeSo1UfASI3tSdEcohdFC85pY1Ovb9H+mlJ45llFtilX7dQY+wMi1DO/KcysDt7T47g/ufNYdTDbQc+m72HfTw/nMl+EqVsjKF4Fqb09Zwkf5A0WStzMdnaDQresUBax2QHFns92dVUm1TsgD112kHh5S44Lo=
Received: from BYAPR03MB4773.namprd03.prod.outlook.com (20.179.92.152) by
 BYAPR03MB4373.namprd03.prod.outlook.com (20.178.48.94) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Tue, 20 Aug 2019 03:52:15 +0000
Received: from BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::a517:3578:67bf:6c88]) by BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::a517:3578:67bf:6c88%7]) with mapi id 15.20.2157.022; Tue, 20 Aug 2019
 03:52:15 +0000
From: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Jonathan Corbet
 <corbet@lwn.net>, Will Deacon <will@kernel.org>, Thomas Gleixner
 <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov
 <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>, "x86@kernel.org"
 <x86@kernel.org>, "Naveen N. Rao" <naveen.n.rao@linux.ibm.com>, Anil S
 Keshavamurthy <anil.s.keshavamurthy@intel.com>, "David S. Miller"
 <davem@davemloft.net>, Masami Hiramatsu <mhiramat@kernel.org>
Subject: [PATCH v2 1/3] kprobes/x86: use instruction_pointer and
 instruction_pointer_set
Thread-Topic: [PATCH v2 1/3] kprobes/x86: use instruction_pointer and
 instruction_pointer_set
Thread-Index: AQHVVwqnz3HRGv5g102l5gAICz+hHg==
Date: Tue, 20 Aug 2019 03:52:15 +0000
Message-ID: <20190820114109.4624d56b@xhacker.debian>
References: <20190820113928.1971900c@xhacker.debian>
In-Reply-To: <20190820113928.1971900c@xhacker.debian>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [124.74.246.114]
x-clientproxiedby: TYAPR04CA0003.apcprd04.prod.outlook.com
 (2603:1096:404:15::15) To BYAPR03MB4773.namprd03.prod.outlook.com
 (2603:10b6:a03:134::24)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jisheng.Zhang@synaptics.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7e8b7161-0dc1-4479-6300-08d72521ca2a
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR03MB4373; 
x-ms-traffictypediagnostic: BYAPR03MB4373:
x-microsoft-antispam-prvs: <BYAPR03MB4373E0CDA0220226BA1111DFEDAB0@BYAPR03MB4373.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 013568035E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(136003)(366004)(39860400002)(346002)(376002)(199004)(189003)(316002)(6506007)(102836004)(25786009)(6486002)(8676002)(2501003)(486006)(476003)(71190400001)(71200400001)(305945005)(6116002)(3846002)(7736002)(186003)(1076003)(386003)(86362001)(446003)(11346002)(26005)(76176011)(7416002)(52116002)(110136005)(54906003)(81166006)(14454004)(9686003)(5660300002)(66946007)(256004)(8936002)(66446008)(64756008)(81156014)(53936002)(66556008)(99286004)(66476007)(66066001)(478600001)(4326008)(2906002)(50226002)(6512007)(6436002)(921003)(1121003)(39210200001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR03MB4373;
 H:BYAPR03MB4773.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; MX:1; 
received-spf: None (protection.outlook.com: synaptics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 3zRdRfhn4+IFxp3erj4gfrCkjT/dslFPe0psUFfB7/IGubdNv8AgAST1mUZRgadzIL9U2u17OO5j/fMn4sZtoRG0ytlvgxfXqa6LsU50ZKLhl18HTImOEggCLfpCAMkh5ob1D6imFoV6TeteXPTzhkBp+jNiOSkCEviR10eP9ecMvZPhU4sLnvFmKW8vAHthWrH62bX3HLBd5rmHewYfHZxkfZO31XoaWaVHA76Lwk/XyireOT38MzD0U1UMcnZlFg6skZQUsX449GA/gB5Ilg8Tf/zSpzIyFep31TjFox4pLTe98Lv1N/9esR/do6h7kaAHzNHy0HAOUIrvmSoQFM4eJPLsWeVLxbNmT91/Fic6zozVjAaxxMKbkmjk0te7Fvp3rxpRM8vnpw26gMkmuHmltHouIHGe+SZsA60Fo3o=
x-ms-exchange-transport-forked: True
Content-ID: <5E08BC2CF7D78542AF964F0A198BE2FA@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: synaptics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e8b7161-0dc1-4479-6300-08d72521ca2a
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Aug 2019 03:52:15.5396 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 335d1fbc-2124-4173-9863-17e7051a2a0e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: b1CWmgtcA0yFo10LmO/c2gE5e6borOYUHeyF/BSsKh4auGGqkLj7MbHwLSaAIsRWZL9Jo3GATo2D/47Wz/RFCw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR03MB4373
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_205217_451010_24821995 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.68.47 listed in list.dnswl.org]
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is to make the x86 kprobe_ftrace_handler() more common so that
the code could be reused in future.

Signed-off-by: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
Acked-by: Masami Hiramatsu <mhiramat@kernel.org>
---
 arch/x86/kernel/kprobes/ftrace.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/arch/x86/kernel/kprobes/ftrace.c b/arch/x86/kernel/kprobes/ftrace.c
index 681a4b36e9bb..c2ad0b9259ca 100644
--- a/arch/x86/kernel/kprobes/ftrace.c
+++ b/arch/x86/kernel/kprobes/ftrace.c
@@ -28,9 +28,9 @@ void kprobe_ftrace_handler(unsigned long ip, unsigned long parent_ip,
 	if (kprobe_running()) {
 		kprobes_inc_nmissed_count(p);
 	} else {
-		unsigned long orig_ip = regs->ip;
+		unsigned long orig_ip = instruction_pointer(regs);
 		/* Kprobe handler expects regs->ip = ip + 1 as breakpoint hit */
-		regs->ip = ip + sizeof(kprobe_opcode_t);
+		instruction_pointer_set(regs, ip + sizeof(kprobe_opcode_t));
 
 		__this_cpu_write(current_kprobe, p);
 		kcb->kprobe_status = KPROBE_HIT_ACTIVE;
@@ -39,12 +39,13 @@ void kprobe_ftrace_handler(unsigned long ip, unsigned long parent_ip,
 			 * Emulate singlestep (and also recover regs->ip)
 			 * as if there is a 5byte nop
 			 */
-			regs->ip = (unsigned long)p->addr + MCOUNT_INSN_SIZE;
+			instruction_pointer_set(regs,
+				(unsigned long)p->addr + MCOUNT_INSN_SIZE);
 			if (unlikely(p->post_handler)) {
 				kcb->kprobe_status = KPROBE_HIT_SSDONE;
 				p->post_handler(p, regs, 0);
 			}
-			regs->ip = orig_ip;
+			instruction_pointer_set(regs, orig_ip);
 		}
 		/*
 		 * If pre_handler returns !0, it changes regs->ip. We have to
-- 
2.23.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
