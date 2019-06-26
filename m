Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 365AF567E6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 13:50:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:List-Owner; bh=b/TE1KuxxrUjyeF6LxSMMpzGI+hgVDXuzK/LpmCJLyg=; b=cC
	E5FDapn63KlqvBFuiIhCaigsKOj6MZNWlQQF1RL1H2j0nx/7nKFj+FmGkQpTdxYDNoqYTQ4ImHvjq
	af1H/ltRGPhrw0DlMbkroKbQz7HLyC8LGdTbZGOSE77sD/OPtODZbJDRDMrr3ioNnEiwZWR0Su1YD
	usgTwpAfJXD6hpTFt8X4b4vpDE7fjU1wTEo9Yzj2KsFLPkm00gNcnYe9nRoVHCNO6HHTbM9VUlJot
	oYoNQvQqp2Zyw91v4dHJON3MK4S8z0FK+7i4ro+C1WHP5IIVdpVqVuN3qyGoT9RC9UupKA7xRPc1U
	rS8GkaYN1iXaYIpwtYGvzub348Md96oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg6Rh-0003nn-NV; Wed, 26 Jun 2019 11:50:37 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg6RY-0003mp-HN
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 11:50:30 +0000
Received: from epcas1p1.samsung.com (unknown [182.195.41.45])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20190626115018epoutp03eb1224beef9627cdf313c72bfce4a652~rvUlqsq643173431734epoutp03R
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 11:50:18 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20190626115018epoutp03eb1224beef9627cdf313c72bfce4a652~rvUlqsq643173431734epoutp03R
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1561549818;
 bh=Rkq7DEDyErtaZQ8jeJ0L+lufdkPG1uI6401iyLHsv3s=;
 h=From:To:Cc:Subject:Date:References:From;
 b=lMktFmMmpC9cnTeTeebrFpZNJvz3XYN5vUWbczhj1sE22mLWqXzHKBqkq0zwV3dez
 DBC64eZHXTjxt1l94tx51/G3koNUnVSui8UDDpQrEsDgmoBMf/HCkAKcd8BSTEc/OU
 eTfmwgvY+HkP5CEoIsUwcoxl1FpH69WMsnxbJdvQ=
Received: from epsmges1p3.samsung.com (unknown [182.195.40.160]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190626115017epcas1p2c401e841486df141df1ab3299aec1312~rvUkGlQgI1331813318epcas1p2E;
 Wed, 26 Jun 2019 11:50:17 +0000 (GMT)
Received: from epcas1p1.samsung.com ( [182.195.41.45]) by
 epsmges1p3.samsung.com (Symantec Messaging Gateway) with SMTP id
 DE.E8.04143.9FB531D5; Wed, 26 Jun 2019 20:50:17 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTPA id
 20190626115016epcas1p455530417de86ea2e72ce1b389ae57a75~rvUjyoO-z2980629806epcas1p46;
 Wed, 26 Jun 2019 11:50:16 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190626115016epsmtrp1bef4df790f9b038e22d782e1acac33fe~rvUjvT_Od3121131211epsmtrp12;
 Wed, 26 Jun 2019 11:50:16 +0000 (GMT)
X-AuditID: b6c32a37-f19ff7000000102f-32-5d135bf91632
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 16.82.03692.8FB531D5; Wed, 26 Jun 2019 20:50:16 +0900 (KST)
Received: from U16PB1-0090.tn.corp.samsungelectronics.net (unknown
 [10.253.235.20]) by epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190626115016epsmtip1685a43fa3697a0ca0619d3c3da2d53e4~rvUjg8Oa92836328363epsmtip1V;
 Wed, 26 Jun 2019 11:50:16 +0000 (GMT)
From: jinho lim <jordan.lim@samsung.com>
To: will.deacon@arm.com
Subject: [PATCH v3] arm64: rename dump_instr as dump_kernel_instr
Date: Wed, 26 Jun 2019 20:50:13 +0900
Message-Id: <20190626115013.13044-1-jordan.lim@samsung.com>
X-Mailer: git-send-email 2.17.1
X-Brightmail-Tracker: H4sIAAAAAAAAA01Se0hTURz27O7lY3WZPU6j1G4FKU53ndNbqRmJXMjCECSrsS7z4MS92t0k
 I2pQaMh6CEVoWiOblUmaLZnO1JagPawsykKj7PFHkYZa9lCrzavUf9/5zved7+N3fmJMOiaQ
 iQuNVmQxMnpCGMJvuRMtl//cFa5WfPkpoBzeVh7V0aul/rQcEVEv6nKp5nfPBdTTtmohNTP0
 W0i5Bvp51ERdKZ/6ONbLTw+hG841ALq16pWIdjbb6BsXD9HH3fWAnmiOoE/5yvjZop36FB1i
 8pElChm1pvxCY0EqsSVHs1mjSlKQcnIdlUxEGRkDSiUysrLlmYV6fzciqpjR2/xUNsOyRHxa
 isVks6IonYm1phLInK83kwpzHMsYWJuxIE5rMqwnFYoElV+5R69zPRoDZt/CfX3vvwnswBNW
 DoLFEE+EtV19vACW4h4A+yYjykGIH48DeNt5F+MOkwBe7hoA8w7fuVEh57gFYFPlMk50lAft
 lf2zF0J8LXxT6+QH8CJ8KXxQ4Z6NwPAfAJ7xLAvgcHwTfOYe92vEYj6+BnbUUwFagm+AZyvL
 MS4rEl5t6potAfEGIezp7pgrkQH7L/ziczgcfupxizgsgx9PlIo4w2EAu+6NzrntAFY9+Srk
 VEp4zPEYCyRjeDRsbIvn6JWwdaoGcEUXwNFvDkFAAnEJPFoq5eBqOH3p4HzUlOP7XCwNawYn
 5qaohsc8I4KTYEXVv/edANSDJcjMGgoQS5qV//9RM5hdt5hkD2h6mOUDuBgQYRJ7pFQtFTDF
 bInBB6AYIxZJXAyulkrymZL9yGLSWGx6xPqAyj+8Cky2WGvyL6/RqiFVCUqlkkpMSk5SKYml
 Ek3oy91SvICxoiKEzMgy7+OJg2V2EDTuRdmrcq9tokLLJFnd26+/jR12TIM8X4JrubvFbY0l
 w4OaysiiFcqt5zuq6cjMacMHjdXXuVDDJqQj48Y/us6ZQxv2nva+rnDc/5w31NuiTo32Tg/z
 zoZBa4oXc6YUh/R2t2vba12ZaV8P5lx5MDkiv7lOZt5R3Xggb3AbwWd1DBmDWVjmL7KbOIGE
 AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrALMWRmVeSWpSXmKPExsWy7bCSnO6PaOFYg5NnVS16du9ksth3Itni
 /7YWdosby8IsNj2+xmpxedccNou/d/6xWSy9fpHJ4vOyNhaLlx9PsDhweayZt4bRY+esu+we
 CzaVemxeUu/Rt2UVo8fnTXIeUw61swSwR3HZpKTmZJalFunbJXBlLD3/kbHgEH/F2SdfWRsY
 d/B0MXJySAiYSBya946ti5GLQ0hgN6PE69cPmCASUhIff3czdzFyANnCEocPF0PUtDFJ/GmZ
 yQJSwyagIfFg8QIwW0RAXOLMxC1MIEXMAk1MEl/X/WQGSQgLOEpc3fKJBWQQi4CqxL5VFiBh
 XgFridkzu5ghdslLrN5wgHkCI88CRoZVjJKpBcW56bnFhgWGeanlesWJucWleel6yfm5mxjB
 4aaluYPx8pL4Q4wCHIxKPLwN8kKxQqyJZcWVuYcYJTiYlUR4lyYKxArxpiRWVqUW5ccXleak
 Fh9ilOZgURLnfZp3LFJIID2xJDU7NbUgtQgmy8TBKdXAuGCm0fJjAWy3VnHPueHDs/3y5bVF
 XLc8vVvULyubqn+qYFxbu3Sa9cbeXc9n7PEJ3KI0uSApdKeEY9aJjUsXX53z3GKl77PlB2sd
 Z9ydv74r+1Vr78Kb3n4z73ZodDwqdTiUvDzY0Kuj7OZX21dCdf1dr9bWXnRawtL34+ufw6uT
 PzM+iNTYIqPEUpyRaKjFXFScCABUvwvnMwIAAA==
X-CMS-MailID: 20190626115016epcas1p455530417de86ea2e72ce1b389ae57a75
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190626115016epcas1p455530417de86ea2e72ce1b389ae57a75
References: <CGME20190626115016epcas1p455530417de86ea2e72ce1b389ae57a75@epcas1p4.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_045028_746275_A5A25FA5 
X-CRM114-Status: GOOD (  14.65  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, anshuman.khandual@arm.com, marc.zyngier@arm.com,
 andreyknvl@google.com, linux-kernel@vger.kernel.org, seroto7@gmail.com,
 jinho lim <jordan.lim@samsung.com>, ebiederm@xmission.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In traps.c, only __die calls dump_instr.
However, this function has sub-function as __dump_instr.

dump_kernel_instr can replace those functions.
By using aarch64_insn_read, it does not have to change fs to KERNEL_DS.

Signed-off-by: jinho lim <jordan.lim@samsung.com>
---
 arch/arm64/kernel/traps.c | 23 +++++++----------------
 1 file changed, 7 insertions(+), 16 deletions(-)

diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
index ccc13b45d9b1..7e69454fd250 100644
--- a/arch/arm64/kernel/traps.c
+++ b/arch/arm64/kernel/traps.c
@@ -66,16 +66,19 @@ static void dump_backtrace_entry(unsigned long where)
 	printk(" %pS\n", (void *)where);
 }
 
-static void __dump_instr(const char *lvl, struct pt_regs *regs)
+static void dump_kernel_instr(const char *lvl, struct pt_regs *regs)
 {
 	unsigned long addr = instruction_pointer(regs);
 	char str[sizeof("00000000 ") * 5 + 2 + 1], *p = str;
 	int i;
 
+	if (user_mode(regs))
+		return;
+
 	for (i = -4; i < 1; i++) {
 		unsigned int val, bad;
 
-		bad = get_user(val, &((u32 *)addr)[i]);
+		bad = aarch64_insn_read(&((u32 *)addr)[i], &val);
 
 		if (!bad)
 			p += sprintf(p, i == 0 ? "(%08x) " : "%08x ", val);
@@ -84,19 +87,8 @@ static void __dump_instr(const char *lvl, struct pt_regs *regs)
 			break;
 		}
 	}
-	printk("%sCode: %s\n", lvl, str);
-}
 
-static void dump_instr(const char *lvl, struct pt_regs *regs)
-{
-	if (!user_mode(regs)) {
-		mm_segment_t fs = get_fs();
-		set_fs(KERNEL_DS);
-		__dump_instr(lvl, regs);
-		set_fs(fs);
-	} else {
-		__dump_instr(lvl, regs);
-	}
+	printk("%sCode: %s\n", lvl, str);
 }
 
 void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk)
@@ -182,8 +174,7 @@ static int __die(const char *str, int err, struct pt_regs *regs)
 	print_modules();
 	show_regs(regs);
 
-	if (!user_mode(regs))
-		dump_instr(KERN_EMERG, regs);
+	dump_kernel_instr(KERN_EMERG, regs);
 
 	return ret;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
