Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72E4392281
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 13:37:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0uwoPapgZOqdNkKEcnxhxZYr+m8Icblur6zLv7xjZEA=; b=mEm4mjjwGleLnO
	DGhouAkxSeQEnFVehFTTi1shaHAE4mkM0uCWf/0U84z+DEP4kaqre3xuq9i2Kdr3bcDxf8pW38nzO
	yxlqQD7HJ5sh3/Uvc16SCm3nPEff80c6Bya3q3Y8cGhk6RFp6qerYza3Z58S0CNYA6w7YWI0ADLlS
	GL2Gy3KF0GWizAHfs4AXf+Od1dVOU0aNQZo5eaxd0vpdtyw0IyZHPo9mRCtzBuLvsP/ektT2hXeNV
	4gcymv4rouSXHjl0iHF8gKaJYuV0NVGXR0bqLG4Fao2oobwlyV+1BeqXOwKrgK4iW2nJqU82s0Vh5
	Jrhd1wPCL/VneHbOirSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzfy7-0004kQ-3e; Mon, 19 Aug 2019 11:36:59 +0000
Received: from mail-eopbgr770048.outbound.protection.outlook.com
 ([40.107.77.48] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzfxy-0004jf-Oj
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 11:36:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K5G4ymBeagUvXO75mVIDg/U5aPgbjpxgIAHRBA/Zn5ayvzoR7cRQAakicItUz1EZGLKbM9+nb0nlHU5SwFd9D+nGL2+0xYZekr6OKsfvFVk5AafiDeJqiF0oVooYcBa0F0Af/3MFjPe13pXivpr96gtqQghSNsT/8wEkhRhT9QJPKuNEiKMAocfBHqWQZIFXIg551PxeIwwdX/obNXbia5ydt5idc1yJ9yLSPzrWHa9W+B90+sp1zyzGWVA7l91mHkPucV+XqCu6RHmbTFd8OZ/zJyT53W/vGqKJWuzhs0Hb+TIjRZfCxDR57a4e1LLuvqyFFi7qowrxye5VDsUxoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FyckNaQgSq4hdpvyN5DvPdGi9XkzQjEcuu5+VJl2/ck=;
 b=d/UyaUynqMFSWCPJwDg762QCLS9mOpO/3Ud2MEg36pr3YGkP8kN27nCyDGwJoQjXKq10Re6d3EHA8lGaGzkTtx1OWDvWSCXW+5DbSEJefQp7Px4VI0u0NWXvfRWyrLCH9uhStWdBFZ8mM1RnjOxLWZniyQ6JxA3S/kEyXkn3qLX85bc0Ni4HXXOwBe96+Wqbqca4w+JCGTgmCl7JtXCj7C9GwOVIPLysQ9jnzsZ9RFGVjKBDzu/pXiic345gtp7a9LvnwFbcad4xRd6xFzkJ5hn6gzz5cEDVcWl3c/vQc2Fenj0SVgqr63cQp8BsB5AXt9FSkkXdk8iGdOgin5WXPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synaptics.com; dmarc=pass action=none
 header.from=synaptics.com; dkim=pass header.d=synaptics.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Synaptics.onmicrosoft.com; s=selector2-Synaptics-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FyckNaQgSq4hdpvyN5DvPdGi9XkzQjEcuu5+VJl2/ck=;
 b=bi5gyHqL/T9Zpemz9TItLFIPBjwT47qqwfEgov4IrMGggIemYSPscQd3oB4iwRg1gjGKiz8vy9nb47lP6CJNUReW6sKpa0QTjsepVKBLTiIGDbcG//O+bmvKDpsVLUW+GEu/or2aDp6vdkI/fKx48QNOSxTGlqybC2fZ/nGv5Os=
Received: from BYAPR03MB4773.namprd03.prod.outlook.com (20.179.92.152) by
 BYAPR03MB4838.namprd03.prod.outlook.com (20.179.93.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Mon, 19 Aug 2019 11:36:48 +0000
Received: from BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::a517:3578:67bf:6c88]) by BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::a517:3578:67bf:6c88%7]) with mapi id 15.20.2157.022; Mon, 19 Aug 2019
 11:36:48 +0000
From: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>, Masami
 Hiramatsu <mhiramat@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Anil S Keshavamurthy <anil.s.keshavamurthy@intel.com>, "Naveen N. Rao"
 <naveen.n.rao@linux.ibm.com>, Steven Rostedt <rostedt@goodmis.org>
Subject: [PATCH 2/4] kprobes/x86: use instruction_pointer and
 instruction_pointer_set
Thread-Topic: [PATCH 2/4] kprobes/x86: use instruction_pointer and
 instruction_pointer_set
Thread-Index: AQHVVoJjLhLBz1QsakilYQzbvNrNQg==
Date: Mon, 19 Aug 2019 11:36:48 +0000
Message-ID: <20190819192543.32cec143@xhacker.debian>
References: <20190819192422.5ed79702@xhacker.debian>
In-Reply-To: <20190819192422.5ed79702@xhacker.debian>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [124.74.246.114]
x-clientproxiedby: TYAPR01CA0139.jpnprd01.prod.outlook.com
 (2603:1096:404:2d::31) To BYAPR03MB4773.namprd03.prod.outlook.com
 (2603:10b6:a03:134::24)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jisheng.Zhang@synaptics.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d88841ae-1f36-46ca-44d6-08d724998573
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR03MB4838; 
x-ms-traffictypediagnostic: BYAPR03MB4838:
x-microsoft-antispam-prvs: <BYAPR03MB4838557F8F5E7129AEA9181EEDA80@BYAPR03MB4838.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0134AD334F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(136003)(396003)(376002)(346002)(366004)(189003)(199004)(316002)(50226002)(7416002)(52116002)(99286004)(6486002)(478600001)(2906002)(66066001)(71200400001)(54906003)(86362001)(14454004)(3846002)(5660300002)(71190400001)(110136005)(76176011)(8936002)(6436002)(66946007)(305945005)(81156014)(66446008)(64756008)(81166006)(66556008)(66476007)(8676002)(6116002)(7736002)(186003)(102836004)(1076003)(26005)(6512007)(446003)(9686003)(11346002)(53936002)(486006)(6506007)(386003)(476003)(256004)(25786009)(4326008)(921003)(1121003)(39210200001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR03MB4838;
 H:BYAPR03MB4773.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
received-spf: None (protection.outlook.com: synaptics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: P6oqox4x9vHnqK69OXqXzdM1X6Y92zzDP2yRoHP9nAgPIe8ctzbmXgwugkOPTekCEh6I7YkZZu8CsdJ4VRnQfvuRpXd1/V1czglIzZZv+ZuGf+cq/lKLLniisj/osCwmBBMxzGF8DWlz6/3S3+wSXLp/+qQe6ktvoNDXnK9byu+q/q4pdltq8DWvqDU7q7dzbH4eJu6bP9OP3MzDT7UBOk4l4XRprQls9hGd6GklDKQGo9Nv/c+2PMd+LhRMDuDQmIFgLO1pKIxqgt0AbpBgJKvtpAjid9oxI8imebhN2uCDnzpgCcv0oHyGaLI22rpmD+vInmugR4sqgA7eaBNvSDLB4OYwDh2fEsSW8KOM7gxrvx+XvnTBxVOjAK6NBTkePIseC3rnNiNfFRGnoWh8K2Tnp5eSaRK+d+6OzKbm/tA=
x-ms-exchange-transport-forked: True
Content-ID: <419B39D67DED6746B89233CE29FB2E87@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: synaptics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d88841ae-1f36-46ca-44d6-08d724998573
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Aug 2019 11:36:48.6912 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 335d1fbc-2124-4173-9863-17e7051a2a0e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: B9MBc/P1AMByozT6p/cgpsr1pdSR7atfz62QEH+qVJa7KJ4fL21S9THfTebOgrMWrC+EzpSXVOXOSKndaiJtuw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR03MB4838
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_043650_801848_B33007EB 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.77.48 listed in list.dnswl.org]
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

This is to make the kprobe_ftrace_handler() common, so we can move it
to common code in next patch.

Signed-off-by: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
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
