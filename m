Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2450CBBD05
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 22:36:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=utW/NIT9JR35RyFowCHt5xpjKGpOI6rjkLWHsRVplzg=; b=PTjwtDhVWDAdWF
	NvBpZUqom5hZgKFrg0gDepcFUxPCMYs+GcDTaXgkveZ1ky37n7vV/4ctbT0HMGbEBBsKj/yH4cqXE
	1vWlOjMOezMsob0dt7M4VU0APNOX83gNJLZalW3oWSXvDXAudbBJJUp16qHH75G4tw1ThdPOAQRej
	j8WU98MPQspGuwPgPaXTQlWAu6piJmF5EzRvG2jOuhP9wf+9iDROU4vQKHoDKBxP2Q5ZEeFP6Rgdz
	3s7h3Xr5AIRj+nvPx2d8nE3DodJ2IE3L8zp7Wbw4A9c9n46c01o57XO2SkK/OJzw7ug1b8N79Uv0X
	RPpTFzLYpE3Odefr+sTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCV45-0004ce-4x; Mon, 23 Sep 2019 20:36:09 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCV2j-0002FU-Hl
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 20:34:46 +0000
Received: by mail-pl1-x643.google.com with SMTP id u12so6996105pls.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 13:34:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=4PNhEWMnxTPqUB+Gwx2nqJhU+kkzlGq5UWgg81CPAOk=;
 b=oWTaiXQUOW/n+bZ3aNPNA4OtwzBJkIcKJ7w8UHidzdwXhLyBh7H6XeCFOH4hrLa0TF
 5tO48HD+yimpY3hC6jgRBluPwrr5tgxt77/q6RSoQIg8t/tRCWOU6l8oYNCNvsXRKB4D
 Z8cHhyCyQ6gPEYAU2u5cdpMqDzvOZEnFOvri1Ewy4jmdOYjAh+x8UWdyU39v2SL5rPSV
 K4dkoFFYKtiBQ1BjRZfz7omkXdFczekyPXcpEcNWyxECRtdRYNCDtUFUDOsq8wHx+W9f
 xkjwmwwuLO8WLQ/ZZtLJsCija11LteHo6qyLnvLelyuoP2vORsoEtQA4U9vpzDPIcO1V
 1N7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4PNhEWMnxTPqUB+Gwx2nqJhU+kkzlGq5UWgg81CPAOk=;
 b=EWd7Efez9RWZblWKEdcnnHeiBvKcRyG+CvkknV1l5vkSt5qL8ZjCGTB/JHQtNeDBwk
 Z9jNEujsYfxeXrhC/1UPa1rDAvZG/qK8p+G+uDA4+IbH2OMli8f9ZwRxvyll6Gjzqt6r
 /v7AIhMuZYa1Z8NWn4NMjv/m93hZZtoeQa28bOfA6kwJgy9qHs5f0ml/0CSnb6hTgAV8
 BAHULgk21q8rU8uImiEsqqD8qBbwBDqsFWZHbJfDzOUhu7+t73T0AgBGVGzLJgzUFXB3
 /+NOB9q+wednOUm+ST2/UcoDvgAaPWAJVO+3NZBSYsXS7bV7RXm9+GFdNIRO7+nTNDU8
 Byeg==
X-Gm-Message-State: APjAAAUPfpMz7IR1rpUuiKEFqJB9wQZZkAxSnsUuN+c2d0MFyyo9yXas
 Vkhgw/dEXekVyTH5lCq1oAyC0g==
X-Google-Smtp-Source: APXvYqzyh38AtgfcuB6R0U6M0N80Ipw7rS/QgbnW4pA75DgBWBEPXi74l8ts5ld5MRP7duUrSaZIBA==
X-Received: by 2002:a17:902:8492:: with SMTP id
 c18mr1658221plo.279.1569270884919; 
 Mon, 23 Sep 2019 13:34:44 -0700 (PDT)
Received: from xakep.corp.microsoft.com (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id n29sm12798676pgm.4.2019.09.23.13.34.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Sep 2019 13:34:44 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com
Subject: [PATCH v5 03/17] arm64: hibernate: check pgd table allocation
Date: Mon, 23 Sep 2019 16:34:13 -0400
Message-Id: <20190923203427.294286-4-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190923203427.294286-1-pasha.tatashin@soleen.com>
References: <20190923203427.294286-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_133445_605872_B1AFD2F3 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
