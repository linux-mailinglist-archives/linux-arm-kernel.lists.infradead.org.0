Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 398CA11FC19
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 01:20:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q/dP4dl+ZiEsxqX943WbcBC6n1tx2i3ZqVMA4VaKZXA=; b=R0+Enwx7+VeCWT
	yZkAQWnfgmTb7XZ4S6Jco2Jg/PHbZYz/PflAQyf65hvgltNoqkL6K9OrnQZSQZCs5UVVyyRVWO4ll
	tQKyMRXfFhLvFf9AT44tnyANAK3fZwfPnXY2ONZWwLkCB2Bdpfu6Q4f7l+pt5BjhLji5Cx5jToTW9
	E//u+qqg+t/+Za6gRD1+4csvD+PiXHro+eY5ObBiUe10V1XuKxH2FczMqYrOTfHa5zZJVHHRrSNHH
	c0dj28LjpLZCi98lvAfeNVgPH12iwPxPpRcKlRqHDzurTy4/wQ6MLiKX67oDg3ydv1cHU9tWaAj2z
	gvHNE1NViUdlA6rU89tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ige7b-0004Ha-Qw; Mon, 16 Dec 2019 00:20:23 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ige6s-0003qs-LA
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 00:19:40 +0000
Received: by mail-qt1-x844.google.com with SMTP id 5so4428952qtz.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Dec 2019 16:19:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/LWpy3sT0NojI+6lHGq8dZmjGNhrVEiL5TtdHICIZc4=;
 b=YWwtUpgdB4C7Q4X0xMgmsDhu8K2YcKTpSy81xtryD588YUY101myAfwdgspbcp++85
 6rUIKyZFgNjmsF4vh3aNwsJ/DIr5fJmGbJgJRAG4m5DMAcJVWbNmgUvu85ZRr82QbH7N
 SjPcnTI82np5u2GBasGGK7q0ufep07XQTVE2LKC4dmpRPeGgmVk+Vbvn5SP5P+2/c0d+
 PW4xPb5dY7sVukOSE6AtRQFyG1c3wP0wyFooKOHxnXx9A2gSO+syfVPBz/XUSPLqmuEH
 O7l6gAeT6p4sbwV22GMICMLrj6hUwnTvwhKBHrhQNO6Z1EXh996On8A3IZd8QASa4dLh
 Jl6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/LWpy3sT0NojI+6lHGq8dZmjGNhrVEiL5TtdHICIZc4=;
 b=dONbNuOkIqohstrGmy3xIYf6RMgvAOne435OJLU19AGjssEJbb597fi398zEvfzwQW
 Y0EGsIXJO6RiAVNwzmw1WuLyW5PimPu3rLSwCz4cNOUcOFJkRLEtkJb6mDVGz0Qz2mtF
 YmZchikwcxjvmaSzGUA7Ze39j6ss4Z8+nd60tLnYs1p1/rEtyPqXS0+MSteNIRrTu/Wy
 rk7VmMnLDDb/xXhbHNRMk8X5KaEvkznFlJZkLhoFzoPx2tM2GdN/KcEr/MPaRq1mGgdD
 uDI+RAYSkhDkyESkd3OeFY8wkMJHVJXmJIVgNN5iWjMfu8tWPHYhMwoPih2HeCkb39cB
 yD6w==
X-Gm-Message-State: APjAAAURliOLX7x22ljctVb7XfYTVkqURfPrHFWFfqkldop/k8vlsQmH
 5z47ZhYMs9X70tY4FeezTYQ=
X-Google-Smtp-Source: APXvYqyhIIjZfzlpUFVMB/tiV3ydzxJugA4tfdYzQ1/oDFfstC6D6w9VTmT3ruQGJ7EWghnBfRjF2Q==
X-Received: by 2002:aed:2bc2:: with SMTP id e60mr22652718qtd.115.1576455576496; 
 Sun, 15 Dec 2019 16:19:36 -0800 (PST)
Received: from auth1-smtp.messagingengine.com (auth1-smtp.messagingengine.com.
 [66.111.4.227])
 by smtp.gmail.com with ESMTPSA id v125sm5409912qka.47.2019.12.15.16.19.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 15 Dec 2019 16:19:36 -0800 (PST)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailauth.nyi.internal (Postfix) with ESMTP id 77F3122434;
 Sun, 15 Dec 2019 19:19:35 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Sun, 15 Dec 2019 19:19:35 -0500
X-ME-Sender: <xms:l832XfZQSIBODTOKHYP4OiihyxvNi_m-U8HmMcdMAJwD7fT-DlWZ1g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvddtgedgvddtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 goufhorhhtvggutfgvtghiphdvucdlgedtmdenucfjughrpefhvffufffkofgjfhgggfes
 tdekredtredttdenucfhrhhomhepuehoqhhunhcuhfgvnhhguceosghoqhhunhdrfhgvnh
 hgsehgmhgrihhlrdgtohhmqeenucfkphephedvrdduheehrdduuddurdejudenucfrrghr
 rghmpehmrghilhhfrhhomhepsghoqhhunhdomhgvshhmthhprghuthhhphgvrhhsohhnrg
 hlihhthidqieelvdeghedtieegqddujeejkeehheehvddqsghoqhhunhdrfhgvnhhgpeep
 ghhmrghilhdrtghomhesfhhigihmvgdrnhgrmhgvnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:l832XfDsMu_b4P7cjdMpjiVhjWGLh_COxGdpGHu1Ng78W0-PKoIj6g>
 <xmx:l832XdFRYH1QxOB5aK2Pny-EtgZguMv0iUEYiIAbwvBhn9J-hOp8hw>
 <xmx:l832XaOm27CluqGyM6I7GBn5R-49iEMEdkx-rmXJKicVKLx1SwzaCw>
 <xmx:l832XZNG7-vMXq9oqX4_jGmE5UiJ3XjAVM63umg-Sj4VkYZ4Dks7cHrGOzE>
Received: from localhost (unknown [52.155.111.71])
 by mail.messagingengine.com (Postfix) with ESMTPA id A59FA80059;
 Sun, 15 Dec 2019 19:19:34 -0500 (EST)
From: Boqun Feng <boqun.feng@gmail.com>
To: linux-hyperv@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [RFC 2/6] arm64: vdso: Add support for multiple vDSO data pages
Date: Mon, 16 Dec 2019 08:19:18 +0800
Message-Id: <20191216001922.23008-3-boqun.feng@gmail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191216001922.23008-1-boqun.feng@gmail.com>
References: <20191216001922.23008-1-boqun.feng@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_161938_692384_F8B8D967 
X-CRM114-Status: GOOD (  17.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (boqun.feng[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sasha Levin <sashal@kernel.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Stephen Hemminger <sthemmin@microsoft.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 Michael Kelley <mikelley@microsoft.com>,
 Stefano Stabellini <sstabellini@kernel.org>, Matteo Croce <mcroce@redhat.com>,
 xen-devel@lists.xenproject.org, Thomas Gleixner <tglx@linutronix.de>,
 "K. Y. Srinivasan" <kys@microsoft.com>, Will Deacon <will@kernel.org>,
 Boqun Feng <boqun.feng@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Split __vdso_abi::vdso_pages into nr_vdso_{data,code}_pages, so that
__setup_additional_pages() could work with multiple vDSO data pages with
the setup from __vdso_init().

Multiple vDSO data pages are required when running in a virtualized
environment, where the cycles read from cntvct at userspace need to
be adjusted with some data from a page maintained by the hypervisor. For
example, the TSC page in Hyper-V.

This is a prerequisite for vDSO support in ARM64 on Hyper-V.

Signed-off-by: Boqun Feng (Microsoft) <boqun.feng@gmail.com>
---
 arch/arm64/kernel/vdso.c | 43 ++++++++++++++++++++++++----------------
 1 file changed, 26 insertions(+), 17 deletions(-)

diff --git a/arch/arm64/kernel/vdso.c b/arch/arm64/kernel/vdso.c
index 354b11e27c07..b9b5ec7a3084 100644
--- a/arch/arm64/kernel/vdso.c
+++ b/arch/arm64/kernel/vdso.c
@@ -50,7 +50,8 @@ struct __vdso_abi {
 	const char *name;
 	const char *vdso_code_start;
 	const char *vdso_code_end;
-	unsigned long vdso_pages;
+	unsigned long nr_vdso_data_pages;
+	unsigned long nr_vdso_code_pages;
 	/* Data Mapping */
 	struct vm_special_mapping *dm;
 	/* Code Mapping */
@@ -101,6 +102,8 @@ static int __vdso_init(enum arch_vdso_type arch_index)
 {
 	int i;
 	struct page **vdso_pagelist;
+	struct page **vdso_code_pagelist;
+	unsigned long nr_vdso_pages;
 	unsigned long pfn;
 
 	if (memcmp(vdso_lookup[arch_index].vdso_code_start, "\177ELF", 4)) {
@@ -108,14 +111,18 @@ static int __vdso_init(enum arch_vdso_type arch_index)
 		return -EINVAL;
 	}
 
-	vdso_lookup[arch_index].vdso_pages = (
+	vdso_lookup[arch_index].nr_vdso_data_pages = 1;
+
+	vdso_lookup[arch_index].nr_vdso_code_pages = (
 			vdso_lookup[arch_index].vdso_code_end -
 			vdso_lookup[arch_index].vdso_code_start) >>
 			PAGE_SHIFT;
 
-	/* Allocate the vDSO pagelist, plus a page for the data. */
-	vdso_pagelist = kcalloc(vdso_lookup[arch_index].vdso_pages + 1,
-				sizeof(struct page *),
+	nr_vdso_pages = vdso_lookup[arch_index].nr_vdso_data_pages +
+			vdso_lookup[arch_index].nr_vdso_code_pages;
+
+	/* Allocate the vDSO pagelist. */
+	vdso_pagelist = kcalloc(nr_vdso_pages, sizeof(struct page *),
 				GFP_KERNEL);
 	if (vdso_pagelist == NULL)
 		return -ENOMEM;
@@ -123,15 +130,17 @@ static int __vdso_init(enum arch_vdso_type arch_index)
 	/* Grab the vDSO data page. */
 	vdso_pagelist[0] = phys_to_page(__pa_symbol(vdso_data));
 
-
 	/* Grab the vDSO code pages. */
 	pfn = sym_to_pfn(vdso_lookup[arch_index].vdso_code_start);
 
-	for (i = 0; i < vdso_lookup[arch_index].vdso_pages; i++)
-		vdso_pagelist[i + 1] = pfn_to_page(pfn + i);
+	vdso_code_pagelist = vdso_pagelist +
+			     vdso_lookup[arch_index].nr_vdso_data_pages;
+
+	for (i = 0; i < vdso_lookup[arch_index].nr_vdso_code_pages; i++)
+		vdso_code_pagelist[i] = pfn_to_page(pfn + i);
 
-	vdso_lookup[arch_index].dm->pages = &vdso_pagelist[0];
-	vdso_lookup[arch_index].cm->pages = &vdso_pagelist[1];
+	vdso_lookup[arch_index].dm->pages = vdso_pagelist;
+	vdso_lookup[arch_index].cm->pages = vdso_code_pagelist;
 
 	return 0;
 }
@@ -141,26 +150,26 @@ static int __setup_additional_pages(enum arch_vdso_type arch_index,
 				    struct linux_binprm *bprm,
 				    int uses_interp)
 {
-	unsigned long vdso_base, vdso_text_len, vdso_mapping_len;
+	unsigned long vdso_base, vdso_text_len, vdso_data_len;
 	void *ret;
 
-	vdso_text_len = vdso_lookup[arch_index].vdso_pages << PAGE_SHIFT;
-	/* Be sure to map the data page */
-	vdso_mapping_len = vdso_text_len + PAGE_SIZE;
+	vdso_data_len = vdso_lookup[arch_index].nr_vdso_data_pages << PAGE_SHIFT;
+	vdso_text_len = vdso_lookup[arch_index].nr_vdso_code_pages << PAGE_SHIFT;
 
-	vdso_base = get_unmapped_area(NULL, 0, vdso_mapping_len, 0, 0);
+	vdso_base = get_unmapped_area(NULL, 0,
+				      vdso_data_len + vdso_text_len, 0, 0);
 	if (IS_ERR_VALUE(vdso_base)) {
 		ret = ERR_PTR(vdso_base);
 		goto up_fail;
 	}
 
-	ret = _install_special_mapping(mm, vdso_base, PAGE_SIZE,
+	ret = _install_special_mapping(mm, vdso_base, vdso_data_len,
 				       VM_READ|VM_MAYREAD,
 				       vdso_lookup[arch_index].dm);
 	if (IS_ERR(ret))
 		goto up_fail;
 
-	vdso_base += PAGE_SIZE;
+	vdso_base += vdso_data_len;
 	mm->context.vdso = (void *)vdso_base;
 	ret = _install_special_mapping(mm, vdso_base, vdso_text_len,
 				       VM_READ|VM_EXEC|
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
