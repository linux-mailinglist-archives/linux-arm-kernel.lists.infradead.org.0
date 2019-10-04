Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEB1BCC310
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 20:54:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=utW/NIT9JR35RyFowCHt5xpjKGpOI6rjkLWHsRVplzg=; b=aqAXSBYSzUq7hT
	w1jeH4e9+dkRs3XfERJOKWKBbkW4lWhpjkE0qjMFyVfOmVyA2yJVQchhrLL2uCvsadEPJTIc2KIGc
	I4UF82fmj4eGYNcThi+MeCUr86fKJMYSEVO5jMhg2v7ERVfiDkXRJMr1xuFKurQ+f+qzx3Q2ybpCN
	qNs+aZ49yGm69CdHq9nJXZD/zp0FgIPnsv9TYGXfPsRNOKBHbQztQh3vVOi/W5Ddf8RkoAEkE2/7J
	n6E8sja63Dve3YeZTxG/XbYCj+jnJuu4KBA8quXTybGMv/qH3f4Q8QP+M1a1wpGLFbkGbeO1HdTmk
	t5Fwrt2cz+FWKdi04SEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGSic-0003Tl-8u; Fri, 04 Oct 2019 18:54:22 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGSh0-00023m-OV
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 18:52:45 +0000
Received: by mail-qk1-x744.google.com with SMTP id x134so6790566qkb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 11:52:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=4PNhEWMnxTPqUB+Gwx2nqJhU+kkzlGq5UWgg81CPAOk=;
 b=lVmb0L/iZn4vml+LkXL+dphQdKWHA3ZxZOSIfHW6RdR89T1N8qbenCUryqtggxK3xI
 2YWXUT+RIi3O3IPWLfEjGnZEot6UGfhyytibbPammdDaqqOHY2jSrYeeaz69WCX55zDJ
 ARR8UtRjp1dCiCMwHoD/kq1/FRE5CIDkp0WMatzDRfSMO3mVaWfALlnhYpfMmklovldn
 L+YVm/vC1fIiKHkItpf0CaL62jrrp3Mx4GvlKOg6qtSPOp29gwYIWkBObPyaPf6fFqfI
 cytqC/IKiibTxGr/3qe2UZdiTCHf6hQjg8u7Sm1Ig/duvtrFAuCuFXm/vwfjHnoMzJmz
 640g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4PNhEWMnxTPqUB+Gwx2nqJhU+kkzlGq5UWgg81CPAOk=;
 b=gPnxwkeQ9O6cmlTk8wIF01+8KYm9PlbRDUbtyOwB4OYUGH4A8LGN7fGwMso28KO1xV
 3R1redvZT49Ji9D1iL7oQ3D83OzsfXURt+PSP/IHZD0T4fPjmrcWhDmNZPeY8lzB2+jk
 FrvrU2BEYdS72VGVuYnJLJ3tLAaPZWcf4W4y8VLTsx9xsV2IHONGhaUQKwK/0e3H4scT
 pZoiCo30JUS0sATrwFGKYmvhEYlBt/o9WjbuVBYCBNH1vCQlyMmsvCtRF55Cl2YvCFyE
 lw37UbYrOjyw704HA9f4O4cQw8n2Br9GYLIdDtWkT4IuHM3mbJnlqwisQuBBtmW/O6qN
 Cq1A==
X-Gm-Message-State: APjAAAVs4W5fac+6OJ0zjfHdKLxGU6gl1qRRtuJfCSqAwzo67XWLnKAL
 Kx6Gev1ju6y1JahwFPcMJiFfYQ==
X-Google-Smtp-Source: APXvYqzPH2B95+uAdwEjwo4WR65DaJB/4AKIlmg9VM3DvOImvx1M/3g1HZeOciIjj3beg2Lbibemtg==
X-Received: by 2002:a37:9202:: with SMTP id u2mr11825975qkd.8.1570215161651;
 Fri, 04 Oct 2019 11:52:41 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id p77sm4042514qke.6.2019.10.04.11.52.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Oct 2019 11:52:41 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com
Subject: [PATCH v6 03/17] arm64: hibernate: check pgd table allocation
Date: Fri,  4 Oct 2019 14:52:20 -0400
Message-Id: <20191004185234.31471-4-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191004185234.31471-1-pasha.tatashin@soleen.com>
References: <20191004185234.31471-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_115242_843276_F7FC19CD 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
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

There is a bug in create_safe_exec_page(), when page table is allocated
it is not checked that table is allocated successfully:

But it is dereferenced in: pgd_none(READ_ONCE(*pgdp)).  Check that
allocation was successful.

Fixes: 82869ac57b5d ("arm64: kernel: Add support for hibernate/suspend-to-disk")

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/kernel/hibernate.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
index d52f69462c8f..ef46ce66d7e8 100644
--- a/arch/arm64/kernel/hibernate.c
+++ b/arch/arm64/kernel/hibernate.c
@@ -217,6 +217,11 @@ static int create_safe_exec_page(void *src_start, size_t length,
 	__flush_icache_range(dst, dst + length);
 
 	trans_pgd = allocator(mask);
+	if (!trans_pgd) {
+		rc = -ENOMEM;
+		goto out;
+	}
+
 	pgdp = pgd_offset_raw(trans_pgd, dst_addr);
 	if (pgd_none(READ_ONCE(*pgdp))) {
 		pudp = allocator(mask);
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
