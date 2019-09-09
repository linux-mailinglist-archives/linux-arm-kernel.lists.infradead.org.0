Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C99EADE94
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 20:14:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d5zF/hfds6TSLCGQagQGFjkyvjp6PSO7NrdmCge0R50=; b=GaNZhlEKYIK7XX
	x/hj7Q5EUObvJ8QzNKdO3aL9G4+CK+QW+DrVVSoXM+AnXddQMHin6nfAO/gg5sCEnJh8cKRJInaAx
	9mJ8za8uL8Bbq8kp0gjjwC3g4KECg1s+7W/oY0S+NBN1jmd4Yeh/zFtGnBjZvpPS/qf3OEcyDQsdG
	NsnDUn3f7q11uJ9CG3UzxsJWufqxo9+OPIxmoLX/Uhomeotr60DckRKv9W/xIHNCXzB9c7qcHEHWK
	Wk5zoDZbhIVSIVDstlh6r5WQLoizG3FI0Idg6LWGEsILESGRRnzV01cMQdwRTbcZ5eqtzEroip/2x
	w0BtqEDbhug4Z8QPXiQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7OAv-0001TE-Em; Mon, 09 Sep 2019 18:14:05 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7O9O-0008KD-I4
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 18:12:32 +0000
Received: by mail-qt1-x842.google.com with SMTP id r15so17235827qtn.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 11:12:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=PMN+GU/7lAwuo7DCEIP2WVoBijVCk7hpbqQ7uFmtqns=;
 b=nnzdApBloMLNe7CmaSyIXPwdwXUub97dhH0hmTNuPhU6Ey5v2IK6XwrSriwQ8EMtik
 1vrTnTVLsxI946LCFlzno1fZjJbbkSBdiwKX/O1V2Sr23i93JseUgZz92ReGWyU9xzMz
 5PnosW9KUenjWvGEQg1FYBtiL4AY/NQ5R2BoydvlYSWk78rThpghy/DJwC9veyytWXCv
 J6VATeAnl1BI6kHItkqSnWP4w0jL/n5QNSwz8LSXfEgxN1LcVaHcptxnHyozclpwZbXv
 t4Bv5epj9+nYTFy0S8Q1O1I/adisDjKUjth8bD3anE6TV0dCTJwQFLgiUbyM23E4rPs4
 vGxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PMN+GU/7lAwuo7DCEIP2WVoBijVCk7hpbqQ7uFmtqns=;
 b=pmy00b2lOOUX6Gs9YoCbvwOgYeQsUjKAEJU5lyPX0WwdWP9f8u+LkXkHr3FQsdihdP
 c3ty2aTyv8jDLvHhFLNKuMbDcvFDTFxYSVWh8uqAtJysIep943BzuiTz2G0hnGyzQ+BX
 0IkAHAtbejQQJlIjypUiTFLoNA3piTN4Nbks0CfreT2mwDBCoTrS2jSKotfoAYmXIVsO
 5Rwu9wfXntStF3bZvyTGUVi3dvhfcR7+BXgULXCt/F3npdmbLhSdKKsOZmEemwrFOwDx
 HH/owKhV7qpH/Xc464PEJFadYQuTcz9IeGwH13YCeenk4sk8ouEDwvMGt9XHKVJwt118
 saDQ==
X-Gm-Message-State: APjAAAVX0ICC1g6dccf0gEg6PcK+VT4jequXOOIQ+O29irfRIG1Lb0d8
 EM10NG/0ghiGAZyZfmzHGbd1rQ==
X-Google-Smtp-Source: APXvYqz6jhv4a/IfFo65uSy2aKVphPkzU4Qff5D49UQCU1mAfkT1Y9m5gUkUa74hm3EqOo/yODu9Uw==
X-Received: by 2002:ad4:4441:: with SMTP id l1mr15336417qvt.7.1568052749777;
 Mon, 09 Sep 2019 11:12:29 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id q8sm5611310qtj.76.2019.09.09.11.12.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Sep 2019 11:12:29 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com
Subject: [PATCH v4 04/17] arm64: hibernate: use get_safe_page directly
Date: Mon,  9 Sep 2019 14:12:08 -0400
Message-Id: <20190909181221.309510-5-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190909181221.309510-1-pasha.tatashin@soleen.com>
References: <20190909181221.309510-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_111230_607368_29148B7C 
X-CRM114-Status: GOOD (  12.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

create_safe_exec_page() uses hibernate's allocator to create a set of page
table to map a single page that will contain the relocation code.

Remove the allocator related arguments, and use get_safe_page directly, as
it is done in other local functions in this file to simplify function
prototype.

Removing this function pointer makes it easier to refactor the code later.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/kernel/hibernate.c | 17 +++++++----------
 1 file changed, 7 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
index 227cc26720f7..47a861e0cb0c 100644
--- a/arch/arm64/kernel/hibernate.c
+++ b/arch/arm64/kernel/hibernate.c
@@ -196,9 +196,7 @@ EXPORT_SYMBOL(arch_hibernation_header_restore);
  */
 static int create_safe_exec_page(void *src_start, size_t length,
 				 unsigned long dst_addr,
-				 phys_addr_t *phys_dst_addr,
-				 void *(*allocator)(gfp_t mask),
-				 gfp_t mask)
+				 phys_addr_t *phys_dst_addr)
 {
 	int rc = 0;
 	pgd_t *trans_pgd;
@@ -206,7 +204,7 @@ static int create_safe_exec_page(void *src_start, size_t length,
 	pud_t *pudp;
 	pmd_t *pmdp;
 	pte_t *ptep;
-	unsigned long dst = (unsigned long)allocator(mask);
+	unsigned long dst = get_safe_page(GFP_ATOMIC);
 
 	if (!dst) {
 		rc = -ENOMEM;
@@ -216,7 +214,7 @@ static int create_safe_exec_page(void *src_start, size_t length,
 	memcpy((void *)dst, src_start, length);
 	__flush_icache_range(dst, dst + length);
 
-	trans_pgd = allocator(mask);
+	trans_pgd = (void *)get_safe_page(GFP_ATOMIC);
 	if (!trans_pgd) {
 		rc = -ENOMEM;
 		goto out;
@@ -224,7 +222,7 @@ static int create_safe_exec_page(void *src_start, size_t length,
 
 	pgdp = pgd_offset_raw(trans_pgd, dst_addr);
 	if (pgd_none(READ_ONCE(*pgdp))) {
-		pudp = allocator(mask);
+		pudp = (void *)get_safe_page(GFP_ATOMIC);
 		if (!pudp) {
 			rc = -ENOMEM;
 			goto out;
@@ -234,7 +232,7 @@ static int create_safe_exec_page(void *src_start, size_t length,
 
 	pudp = pud_offset(pgdp, dst_addr);
 	if (pud_none(READ_ONCE(*pudp))) {
-		pmdp = allocator(mask);
+		pmdp = (void *)get_safe_page(GFP_ATOMIC);
 		if (!pmdp) {
 			rc = -ENOMEM;
 			goto out;
@@ -244,7 +242,7 @@ static int create_safe_exec_page(void *src_start, size_t length,
 
 	pmdp = pmd_offset(pudp, dst_addr);
 	if (pmd_none(READ_ONCE(*pmdp))) {
-		ptep = allocator(mask);
+		ptep = (void *)get_safe_page(GFP_ATOMIC);
 		if (!ptep) {
 			rc = -ENOMEM;
 			goto out;
@@ -530,8 +528,7 @@ int swsusp_arch_resume(void)
 	 */
 	rc = create_safe_exec_page(__hibernate_exit_text_start, exit_size,
 				   (unsigned long)hibernate_exit,
-				   &phys_hibernate_exit,
-				   (void *)get_safe_page, GFP_ATOMIC);
+				   &phys_hibernate_exit);
 	if (rc) {
 		pr_err("Failed to create safe executable page for hibernate_exit code.\n");
 		goto out;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
