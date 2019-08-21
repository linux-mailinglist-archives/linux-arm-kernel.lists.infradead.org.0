Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B933598305
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 20:34:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A+IzDPcBLTEQ6A0Yp1S4WSLt/IwhlPNad5xXfsrL0wI=; b=R5LUUV4GK9lQQm
	8f9Zk60xBLaQjrwsMqRwMXv0PVFdbPLizY1r3y5QLTKzLv2bra6J5N+Q+/02HmDAwXfBJLF1WcLPP
	CNcZBTjwZ5UFkDg0WcKGKE/k9uVrNtCfck0xi3sDrbNwdcncLYJ2xF+fFtgOokfucGsirX076mOoZ
	QnhuUWADJVFCEJXyxZ7AXOBxBYh/IJ+2oojd/b6BPHz5QJUBxTA1fHH/mGkldKbdYo1sUU/UCzzYO
	JlUaZ8GrmhuM4DcgL79NYi7KusdHazQ5gqIRz6LIky+wOTi6bPX3AnTUVI6CpnQYZgkpDVWUPxLeo
	XlZqbWuGZdbwPE1ep1UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0VQk-0005h3-RC; Wed, 21 Aug 2019 18:33:58 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0VP3-000428-Vh
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 18:32:15 +0000
Received: by mail-qk1-x741.google.com with SMTP id r21so2745398qke.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 11:32:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=Wh9WjFIAkHLcLqaIxEdJCbYPtfUD1HKjJMfvVa6suJE=;
 b=F5/vglG3qyPmeB0JD/AkU7IGnC36OiRKuIbJpU/5z6Qd1GRGZOhFlF4y4Lh2ICo5Fx
 vtQOuW3utAdvtWyr18dzkIZCDVqXJao9VeZUSFJutBJ77JmxNiuLaWJh03JuWREaAQHG
 FUxoecx1zcaDw4ixSBLROQIVxLWli/e9CqYQ6KV/GQnqhUgExJN7sHGLijzlXW3+8H9p
 T1Fy4UosgCEWylhQulEZ68Ue/TEGUq5aaC9Fuso7GsR0u+2KN1F6WA5iq9CXrtN1hbws
 KCspb69kFM10WTEkPeGAYxLiYN2U8KBR4h/dfkNn5EtUCntDKVOFUooIGbuk8QCbibaC
 VDUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Wh9WjFIAkHLcLqaIxEdJCbYPtfUD1HKjJMfvVa6suJE=;
 b=bNr6BuMSDRvy3JfIZ1x9C6SvAAp8ZJnX6bX8HhljQjASWqQ+N2TVlvEwWrgmFuULaf
 uaW/tCeG8xpiO3n8TskdLqhOP5oGdcZKBoNQN9Xzv8wocUDS7mn4Pv/G4/GZ4t0/2Gh0
 gK2h5uQnSzFReSpIZUmk1tAVwBfJX/PHlSlldJ0sJbJJwPUf+Xx3Qe3O+hUkHnjajCBm
 dD1Xpy4JNtKo5OrjyemELSNy8WBXn1Aby3BywMWMqCh+bfr3T/fAM4xgL7F5likNmT9/
 svHZsb5k9AHoxMFFQnYGlp9lVmt2RJeHsxE22hOurXyuYbq0ybhSesmA28ex2FcVtayT
 F20g==
X-Gm-Message-State: APjAAAVcN19SrbZ4M9DiGeGm+6XoydgJaoeAMDs4ySGSxu31e8R+1r7A
 hu+olxZe2ZIONcLS7ZkFh6Gpsw==
X-Google-Smtp-Source: APXvYqzVNLy+zlNZt58NDFTFB1VkACqlq5vozOSGre9tQf+0u5mRcMmJRu7ZCEw94OQindIwKWGR9A==
X-Received: by 2002:ae9:eb87:: with SMTP id
 b129mr31494076qkg.453.1566412333290; 
 Wed, 21 Aug 2019 11:32:13 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id q13sm10443332qkm.120.2019.08.21.11.32.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 11:32:12 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com
Subject: [PATCH v3 05/17] arm64, hibernate: check pgd table allocation
Date: Wed, 21 Aug 2019 14:31:52 -0400
Message-Id: <20190821183204.23576-6-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190821183204.23576-1-pasha.tatashin@soleen.com>
References: <20190821183204.23576-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_113214_031408_7EE8C8D4 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

There is a bug in create_safe_exec_page(), when page table is allocated
it is not checked that table is allocated successfully:

But it is dereferenced in: pgd_none(READ_ONCE(*pgdp)).

Another issue, is that phys_to_ttbr() uses an offset in page table instead
of pgd directly.

So, allocate page table, check that allocation was successful, and use it
directly to set ttbr0_el1.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/kernel/hibernate.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
index ee34a06d8a35..750ecc7f2cbe 100644
--- a/arch/arm64/kernel/hibernate.c
+++ b/arch/arm64/kernel/hibernate.c
@@ -199,6 +199,7 @@ static int create_safe_exec_page(void *src_start, size_t length,
 				 phys_addr_t *phys_dst_addr)
 {
 	void *page = (void *)get_safe_page(GFP_ATOMIC);
+	pgd_t *trans_pgd;
 	pgd_t *pgdp;
 	pud_t *pudp;
 	pmd_t *pmdp;
@@ -210,7 +211,11 @@ static int create_safe_exec_page(void *src_start, size_t length,
 	memcpy(page, src_start, length);
 	__flush_icache_range((unsigned long)page, (unsigned long)page + length);
 
-	pgdp = pgd_offset_raw((void *)get_safe_page(GFP_ATOMIC), dst_addr);
+	trans_pgd = (void *)get_safe_page(GFP_ATOMIC);
+	if (!trans_pgd)
+		return -ENOMEM;
+
+	pgdp = pgd_offset_raw(trans_pgd, dst_addr);
 	if (pgd_none(READ_ONCE(*pgdp))) {
 		pudp = (void *)get_safe_page(GFP_ATOMIC);
 		if (!pudp)
@@ -251,7 +256,7 @@ static int create_safe_exec_page(void *src_start, size_t length,
 	 */
 	cpu_set_reserved_ttbr0();
 	local_flush_tlb_all();
-	write_sysreg(phys_to_ttbr(virt_to_phys(pgdp)), ttbr0_el1);
+	write_sysreg(phys_to_ttbr(virt_to_phys(trans_pgd)), ttbr0_el1);
 	isb();
 
 	*phys_dst_addr = virt_to_phys(page);
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
