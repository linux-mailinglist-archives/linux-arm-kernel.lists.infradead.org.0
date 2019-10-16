Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB173D9AB6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 22:03:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7QuDed4A6CgfN8d2TNm50p744d5dA+/KD9HAMkTlhSc=; b=msqTLw+50F9hJ3
	XXXjaCavnAhR29osyfIbGIi3L58Og48Lj46zdvP9cbaJ9ZLIIuYpCkbkA6qucMuXXQSPq5XpXRen1
	l62VZZq4JkT5u1HlM1oOoDiSjRt60jg+wU4xTGTje3pf3h8+PO9qdsYQyS9uhYwS1tmSp3f6fUPcQ
	wRNtMgjDDZqC7EFZbyJa2RbNBwVIA58jdGcdArG1q5EUw8R/WEFvSMeSZfIPkjidKQ4R3al8J5u1u
	O0HhpZ/wunQjENbPd7c16E8mf5irOrhYdDZdVDSPDZp9M6LXVq6xkS3qdjXADXWkf8pJi86JVuZ6W
	/+vBnOb7LVwnh52Tu9Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKpW9-0006DO-QQ; Wed, 16 Oct 2019 20:03:33 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKpTT-00047R-4a
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 20:00:48 +0000
Received: by mail-qt1-x841.google.com with SMTP id j31so37988860qta.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 13:00:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=1tiYj23HzXJX4ZgHt0ym5ajKMNsnlXF/xQZzBPKQP48=;
 b=bptSRtBN3xr8useYmB7iLV+OcV0ABHihVJ91UYRzIEEb848dVyygGn+GE2+y3sD+H/
 Ehgz4BslCL365594q2uwcmw87mAuhVCKVq/TyG5alBLrXhyPibXYtKRBQWqMAkZ9CoYC
 9gsBU+jwTuKTMeH0NqgRU0ie6dAH9U4KR8K9yJfl/vmKON73ksH2ohoeFCWPK6TWnGs/
 JY6rS3hpFuit6exKgtq1rRDzbjh8aCparhwYVDnwi0yOtbtg6XsW3ND76Y4zZO7Kgb/v
 K5H0M1+2n/9/qGjrK17r20FGbMgWr0Qfx2uD66/tMR219XpCScNUfnH9v+OJDVSWzhgA
 YK4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1tiYj23HzXJX4ZgHt0ym5ajKMNsnlXF/xQZzBPKQP48=;
 b=QdsOmlV2Dg7OJ1IX5YH4PW30qbFUt+bVO/cKw2Y/G0DtlP0y1E4aC7UrPMIkluq1B5
 QN9yYvPdgwafGNMyivIAKKivswV4/1/MV9pXn1sPVKcy3UPhXzk3F006T4lVSSOf9T3Z
 Hb+DspewJ9YnQYvVuNvkV5aG7PRIPQgnt8Kpb/wKi984TfwIAlMOYvMmI8MUBfvf7rX6
 kQxyDi7iRYyaWfVEd0mp2Gn3mUc4Mj74WmXniW7FsRC6H4vPfjFAbRQax4uLX1zdQeVp
 SlrCgSRxR2sNMUDtOvU1/NtH07DqfJ6p9yznkgaDt7EbY0evkQL5BbLZFbloIu1eY2Zf
 BPyw==
X-Gm-Message-State: APjAAAVaMrrj+rppalBovG3w/tiFpPxZavAlQ6uCRMLqij2pBdg416Ib
 9o6uaC/QWgfcqSb5Kp7JjFOLEcO06uw=
X-Google-Smtp-Source: APXvYqwmRVQSdQU55owY+pKif3Q4GJGRGYVJkFk5zjZ7AznjZD2B0mWV7kq/8erD2qHWWjyifhfziA==
X-Received: by 2002:ac8:550d:: with SMTP id j13mr46331075qtq.37.1571256045529; 
 Wed, 16 Oct 2019 13:00:45 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id c204sm13342030qkb.90.2019.10.16.13.00.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 13:00:44 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com, steve.capper@arm.com, rfontana@redhat.com,
 tglx@linutronix.de
Subject: [PATCH v7 05/25] arm64: hibernate: pass the allocated pgdp to ttbr0
Date: Wed, 16 Oct 2019 16:00:14 -0400
Message-Id: <20191016200034.1342308-6-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191016200034.1342308-1-pasha.tatashin@soleen.com>
References: <20191016200034.1342308-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_130047_293518_CBF88ED7 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ttbr0 should be set to the beginning of pgdp, however, currently
in create_safe_exec_page it is set to pgdp after pgd_offset_raw(),
which works by accident.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
Reviewed-by: James Morse <james.morse@arm.com>
---
 arch/arm64/kernel/hibernate.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
index a96b2921d22c..ef46ce66d7e8 100644
--- a/arch/arm64/kernel/hibernate.c
+++ b/arch/arm64/kernel/hibernate.c
@@ -269,7 +269,7 @@ static int create_safe_exec_page(void *src_start, size_t length,
 	 */
 	cpu_set_reserved_ttbr0();
 	local_flush_tlb_all();
-	write_sysreg(phys_to_ttbr(virt_to_phys(pgdp)), ttbr0_el1);
+	write_sysreg(phys_to_ttbr(virt_to_phys(trans_pgd)), ttbr0_el1);
 	isb();
 
 	*phys_dst_addr = virt_to_phys((void *)dst);
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
