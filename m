Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9128B4C7AF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 08:53:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:List-Owner; bh=db1BorpxakiiKrxWpOeCdoWxP4KfKdmpwo1h5NFL9kI=; b=nA
	u1prz8XvxB9+1XbAu2dIVrByYpPz8vMntDJXydToTsnvv3+EHFbDkUPBHOiShfW8GKj/wPhIo+m8V
	c5X7HlSZF3xkjG0KL3wLlJHsVoGfKFeTEsdvPf+KRtNgpHqs/x6wx4nOyUp/H905ZKevXqkG+1IXO
	F23olNjzZw/qBba1+lzF9tVD44OhRqiiMNtM9m/gm7LB93NVCVmLL1C2W3eyJwb82ksg1Njhgc1Fv
	x3Ik4zNNNd3JMBXjeNeqceSUBJQtzedjXjoxRpS+1asmBb47nApjM+A0euajF4AVxpMcN0fVbOKIY
	ErAtWIyYdveCAUhFUOGT0XPURq/WtsKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdqwa-0001XG-4R; Thu, 20 Jun 2019 06:53:12 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdqwN-0001Wv-Sd
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 06:53:01 +0000
Received: from epcas1p3.samsung.com (unknown [182.195.41.47])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20190620065255epoutp0283dfec2bcc82be07ba83ee763c68b638~p1ZOXugQ41189811898epoutp02Z
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 06:52:55 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20190620065255epoutp0283dfec2bcc82be07ba83ee763c68b638~p1ZOXugQ41189811898epoutp02Z
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1561013575;
 bh=8kAK/UeCnQfaOcRotO5/7t7udyRnGpmBdJuYeqb91lU=;
 h=From:To:Cc:Subject:Date:References:From;
 b=dpfYxnH6+dwz6MLEJfOeN9iGLSbqgD+eGkbXwTCtjdlH4yOFgaDPBHIcI0ww/a7iV
 FvD3H8hBxhWCPBNtrnv2g1U/eEQ1d+w6vv9n5RCe8jhWmX/gtKynb1729iDl3vBLBM
 066vpmPxVzriAJX/NPqfHjzBI5l0eS2tBlkZ5gIA=
Received: from epsmges1p3.samsung.com (unknown [182.195.40.163]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTP id
 20190620065254epcas1p3ce6112836d061178ca65b1ce17063d33~p1ZNHQkr30190301903epcas1p3R;
 Thu, 20 Jun 2019 06:52:54 +0000 (GMT)
Received: from epcas1p1.samsung.com ( [182.195.41.45]) by
 epsmges1p3.samsung.com (Symantec Messaging Gateway) with SMTP id
 EA.20.04143.64D2B0D5; Thu, 20 Jun 2019 15:52:54 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTPA id
 20190620065254epcas1p48539060e94433cc254a1650cdc359ac4~p1ZM1Um_T2298422984epcas1p4o;
 Thu, 20 Jun 2019 06:52:54 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190620065254epsmtrp2dac2ae93b73dd2ec22d067bca15c9279~p1ZMx571L3115131151epsmtrp2U;
 Thu, 20 Jun 2019 06:52:54 +0000 (GMT)
X-AuditID: b6c32a37-394199c00000102f-cd-5d0b2d46e9e6
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 30.75.03692.54D2B0D5; Thu, 20 Jun 2019 15:52:53 +0900 (KST)
Received: from U16PB1-0090.tn.corp.samsungelectronics.net (unknown
 [10.253.235.20]) by epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190620065253epsmtip25f61d1eaa1b462c1f86d599f734f296c~p1ZMkIFK11529915299epsmtip2c;
 Thu, 20 Jun 2019 06:52:53 +0000 (GMT)
From: jinho lim <jordan.lim@samsung.com>
To: will.deacon@arm.com
Subject: [PATCH v2] arm64: rename dump_instr as dump_kernel_instr
Date: Thu, 20 Jun 2019 15:52:49 +0900
Message-Id: <20190620065249.24112-1-jordan.lim@samsung.com>
X-Mailer: git-send-email 2.17.1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrAKsWRmVeSWpSXmKPExsWy7bCmrq6bLneswe+tYhY9u3cyWew7kWzx
 f1sLu8WNZWEWmx5fY7W4vGsOm8XfO//YLJZev8hk8XlZG4vFy48nWBy4PNbMW8PosXPWXXaP
 BZtKPTYvqffo27KK0ePzJjmPKYfaWQLYo3JsMlITU1KLFFLzkvNTMvPSbZW8g+Od403NDAx1
 DS0tzJUU8hJzU22VXHwCdN0yc4BuU1IoS8wpBQoFJBYXK+nb2RTll5akKmTkF5fYKqUWpOQU
 GBoU6BUn5haX5qXrJefnWhkaGBiZAlUm5GTc+NvEWvCUr2L1v3WMDYyfuLsYOTkkBEwkZr79
 ytLFyMUhJLCDUWLSu+/sEM4nRomF628zg1QJCXxjlHi6KbaLkQOsY8qjTIiavYwSy6ctYINw
 OpgkGj+uZwVpYBPQkHiweAELiC0iIC5xZuIWJhCbWeAHo8T0HZIgtrCAo0TnrDuMIDaLgKrE
 /ynX2UFsXgFrieYVE9kgzpOXWL3hADPIAgmBFWwSM3cfZIS4wkVi9modiBphiVfHt7BD2FIS
 n9/tZYOob2aUOHDqHVRzA6PErEtfoKYaS/T2XGAGGcQsoCmxfpc+RFhRYufvuYwQh/JJvPva
 wwqxi1eio00IwlSR+LO8DmbV7x5QYIGEPSTOHFKABFWsxKv1r9gmMMrOQhi/gJFxFaNYakFx
 bnpqsWGBMXIUbWIEpzYt8x2MG875HGIU4GBU4uE9ocUVK8SaWFZcmXuIUYKDWUmE9ykjd6wQ
 b0piZVVqUX58UWlOavEhRlNg2E1klhJNzgem3bySeENTI2NjYwsTM3MzU2Mlcd547psxQgLp
 iSWp2ampBalFMH1MHJxSDYzKP09d0DSsY7+x8HNw8qwDcpz2Zs+M903+Y3ffyqVb9drrT5EK
 y31uRQXufli/e6NPiaoJP/eZSZvu1bcobSr/UT1hjd49f6uL6qc21eYvVTJ7/fTErDU/y3Zw
 PVj91XblVye+xmNLfDStcgqr32x+sz0y4/+C50tWN2cea7kpk9SbGRTosUFSiaU4I9FQi7mo
 OBEAAyscWIMDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrALMWRmVeSWpSXmKPExsWy7bCSvK6rLnesQetSc4ue3TuZLPadSLb4
 v62F3eLGsjCLTY+vsVpc3jWHzeLvnX9sFkuvX2Sy+LysjcXi5ccTLA5cHmvmrWH02DnrLrvH
 gk2lHpuX1Hv0bVnF6PF5k5zHlEPtLAHsUVw2Kak5mWWpRfp2CVwZN/42sRY85atY/W8dYwPj
 J+4uRg4OCQETiSmPMrsYuTiEBHYzSszevYexi5ETKC4l8fF3NzNEjbDE4cPFEDVtTBJ/L01h
 BalhE9CQeLB4AQuILSIgLnFm4hYmkCJmgSYmia/rfjKDJIQFHCU6Z90BG8oioCrxf8p1dhCb
 V8BaonnFRDaIZfISqzccYJ7AyLOAkWEVo2RqQXFuem6xYYFhXmq5XnFibnFpXrpecn7uJkZw
 uGlp7mC8vCT+EKMAB6MSD+8JLa5YIdbEsuLK3EOMEhzMSiK8Txm5Y4V4UxIrq1KL8uOLSnNS
 iw8xSnOwKInzPs07FikkkJ5YkpqdmlqQWgSTZeLglGpgnOtpX6c8T33a3MPcoem/1Kf6rWn1
 0c336d+w7saVbeyPn89g7t+qeU+J/xgf+8eH5zJTPnSqpJ//teSr9Gdx3vkKusfafxic2m9k
 kvJEWUErrfN3hu56hXnOL0Ju3LRNzp+lMzlu4qVYH+GphybZGdXOnHBtrpjeRImPYpKXj+5y
 sC0NqFzAqcRSnJFoqMVcVJwIACTf+6EzAgAA
X-CMS-MailID: 20190620065254epcas1p48539060e94433cc254a1650cdc359ac4
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190620065254epcas1p48539060e94433cc254a1650cdc359ac4
References: <CGME20190620065254epcas1p48539060e94433cc254a1650cdc359ac4@epcas1p4.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_235300_256516_B1985D0D 
X-CRM114-Status: GOOD (  15.84  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

[v2]
dump_kernel_instr does not work for user mode.
rename dump_instr function and remove __dump_instr.

Signed-off-by: jinho lim <jordan.lim@samsung.com>
---

Thanks for review, I rename dump_instr function and merge __dump_instr in it.

 arch/arm64/kernel/traps.c | 29 ++++++++++++++---------------
 1 file changed, 14 insertions(+), 15 deletions(-)

diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
index ccc13b45d9b1..7053165cb31a 100644
--- a/arch/arm64/kernel/traps.c
+++ b/arch/arm64/kernel/traps.c
@@ -66,11 +66,20 @@ static void dump_backtrace_entry(unsigned long where)
 	printk(" %pS\n", (void *)where);
 }
 
-static void __dump_instr(const char *lvl, struct pt_regs *regs)
+static void dump_kernel_instr(const char *lvl, struct pt_regs *regs)
 {
-	unsigned long addr = instruction_pointer(regs);
+	unsigned long addr;
 	char str[sizeof("00000000 ") * 5 + 2 + 1], *p = str;
 	int i;
+	mm_segment_t fs;
+
+	if (user_mode(regs))
+		return;
+
+	addr = instruction_pointer(regs);
+
+	fs = get_fs();
+	set_fs(KERNEL_DS);
 
 	for (i = -4; i < 1; i++) {
 		unsigned int val, bad;
@@ -84,19 +93,10 @@ static void __dump_instr(const char *lvl, struct pt_regs *regs)
 			break;
 		}
 	}
+
 	printk("%sCode: %s\n", lvl, str);
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
+	set_fs(fs);
 }
 
 void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk)
@@ -182,8 +182,7 @@ static int __die(const char *str, int err, struct pt_regs *regs)
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
