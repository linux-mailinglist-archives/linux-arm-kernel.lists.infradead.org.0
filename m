Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BC7011FC1B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 01:21:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wqVWg85xXh2ZAwcfpfJ0jv955K4SShlybpny01s8z00=; b=ShLWhReJ36CkfO
	jWOCPWrOmbsUJjcTqAOTWcDm1JuLH7fiXLIgWpiTzgRdgJWkHNmlWtgparwX7Mp5+QTTxw4d9NvZ6
	8Iy0WaV10XK4n53SouMYWYZEPwMmWKqX9S8zlYRMG7WRTanZaHdu/tCkOr53z/UfSSRuRa5FoTaov
	Jsj9lJQB/4ikpoGuWAZpPhJ7qIfLPuLAOH5NLR08PO0YkVZeMBX10gOXkLEWJuKOrT8ezcGD7KliE
	Xgh0rh4xjqCDfILF5crLWeY5lvOB29TL6jcwUHcoLYgqEGYdy8QO01OPMuKDAlyUIUvp8rTt8T3YW
	l2VM4xkLZqCiKQCwWtig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ige83-0004pi-Nv; Mon, 16 Dec 2019 00:20:51 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ige7D-0004CI-9U
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 00:20:03 +0000
Received: by mail-qk1-x742.google.com with SMTP id c16so136118qko.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Dec 2019 16:19:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qJHTf9gLZO0OmW0oKiFiaoMPD31UWwBIv/AQO8x022Q=;
 b=UCmY/B2PlCGXERTqtwgVAtc2JqLgwUuUJuM66myj3BI4trxbjf3g0TnSG6nt58tAr5
 b6wmX04u6YUR9eii5m+YXMa0EHZfMbtFJz9VgI+Ygal0hewZUXXIVCeMfWObhUfyF884
 ccoID02pgYC30wQuv/zvjzzmDqkBrJJHen+E411WY7HJgXTj6Wx6U3NKulvnMa5Govq9
 DZ478mLox8WXtHb8Ijf7WIhQI4NskICyGfTV78MMNlQTmCghtj1RoL0rAINJT9xwhXHE
 TFSowtCHOCjZF2GfjW67JnBz9elQipCHK+6FWG2DnYry+jvTyvmUDGnSXckYfxC8F5D2
 F7yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qJHTf9gLZO0OmW0oKiFiaoMPD31UWwBIv/AQO8x022Q=;
 b=tfVNbxVxfp7quQG261+UVHQqGQ9KmbBP1S8+UPvbCajwstg66OCI1q+8azSsth+f7j
 VIp9siq4zbjA9i6z2fp5Rndmcb/L3rOq1akcY3Zy5YFopY85QXGMfq3bHnR7vcxBoUi9
 F4/nJdjMeBrrhfBW3kvK3LlGRycBIx/C7LTPlWcs4NQyfAOcTA7C18Nep3Fi33k/jKO6
 z7kMyrBJC+FB5MIUh5sPBDtrNHn0bg/ZljZTfYQDok+GDVT0DxEU7bO8pTo8lxgWgkFp
 m0XxBMd+Ka0vfNgY0RjJu6Vvnw3RqcIr5piG77lL1q1BiJAZtj2zpIWqukd/yCRifZdX
 VgKQ==
X-Gm-Message-State: APjAAAVLICfLKQLsagyuwjH4TZS2CAQHOX6Yw7ukYHh2KTz6Ym2KDgyb
 pzdx85BrJELJ38XtXwfNAmc=
X-Google-Smtp-Source: APXvYqziDt2MJepPF60CYkhXmMwNyU7utpHzVQ8iPImbF+lXkZE5ubq26nEL7jVGpgS+wAWhxEIl4A==
X-Received: by 2002:a37:a70b:: with SMTP id q11mr24215846qke.393.1576455596683; 
 Sun, 15 Dec 2019 16:19:56 -0800 (PST)
Received: from auth1-smtp.messagingengine.com (auth1-smtp.messagingengine.com.
 [66.111.4.227])
 by smtp.gmail.com with ESMTPSA id i28sm6346240qtc.57.2019.12.15.16.19.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 15 Dec 2019 16:19:56 -0800 (PST)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailauth.nyi.internal (Postfix) with ESMTP id AC2A822434;
 Sun, 15 Dec 2019 19:19:55 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Sun, 15 Dec 2019 19:19:55 -0500
X-ME-Sender: <xms:q832XWJ0BhXQcTrYcjk1bHKva8UP7EuqtVW4y1Ee6GAf1WjhXaMBjA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvddtgedgvddtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 goufhorhhtvggutfgvtghiphdvucdlgedtmdenucfjughrpefhvffufffkofgjfhgggfes
 tdekredtredttdenucfhrhhomhepuehoqhhunhcuhfgvnhhguceosghoqhhunhdrfhgvnh
 hgsehgmhgrihhlrdgtohhmqeenucffohhmrghinheplhgushdrshgsnecukfhppeehvddr
 udehhedrudduuddrjedunecurfgrrhgrmhepmhgrihhlfhhrohhmpegsohhquhhnodhmvg
 hsmhhtphgruhhthhhpvghrshhonhgrlhhithihqdeiledvgeehtdeigedqudejjeekheeh
 hedvqdgsohhquhhnrdhfvghngheppehgmhgrihhlrdgtohhmsehfihigmhgvrdhnrghmvg
 enucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:q832XVNfTCZ3v6Kv4pI60WtD8isXG21O9hss97uye1E18hH8M8o9Ww>
 <xmx:q832Xa_Z41VClRCH52woC1AnmwXQ_d6yDhF5xYPbLu89-tOq4nGZrg>
 <xmx:q832XeLFb0c_FEbHERaQ81gytweMZOLjCeZvlG8JEE1w307tDWYTyA>
 <xmx:q832XbGdsmzDJ6ZAgBmhTbg-OS0cKYnSXKrIkKdBlIb_jlstk1yAcB_QM4Y>
Received: from localhost (unknown [52.155.111.71])
 by mail.messagingengine.com (Postfix) with ESMTPA id EB795306012F;
 Sun, 15 Dec 2019 19:19:54 -0500 (EST)
From: Boqun Feng <boqun.feng@gmail.com>
To: linux-hyperv@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [RFC 4/6] arm64: vdso: hyperv: Map tsc page into vDSO if enabled
Date: Mon, 16 Dec 2019 08:19:20 +0800
Message-Id: <20191216001922.23008-5-boqun.feng@gmail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191216001922.23008-1-boqun.feng@gmail.com>
References: <20191216001922.23008-1-boqun.feng@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_161959_348065_204EC53F 
X-CRM114-Status: GOOD (  16.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 Michael Kelley <mikelley@microsoft.com>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Stefano Stabellini <sstabellini@kernel.org>, Matteo Croce <mcroce@redhat.com>,
 xen-devel@lists.xenproject.org, Thomas Gleixner <tglx@linutronix.de>,
 "K. Y. Srinivasan" <kys@microsoft.com>, Will Deacon <will@kernel.org>,
 Boqun Feng <boqun.feng@gmail.com>, Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Hyper-V, a tsc page has the data for adjusting cntvct numbers to
clocksource cycles, and that's how Hyper-V guest kernel reads the
clocksource. In order to allow userspace to read the same clocksource
directly, the tsc page has to been mapped into userspace via vDSO.

Use the framework for vDSO set-up in __vdso_init() to do this.

Note: if HYPERV_TIMER=y but the kernel is using other clocksource or
doesn't have the hyperv timer clocksource, tsc page will still be mapped
into userspace.

Signed-off-by: Boqun Feng (Microsoft) <boqun.feng@gmail.com>
---
 arch/arm64/kernel/vdso.c          | 12 ++++++++++++
 arch/arm64/kernel/vdso/vdso.lds.S | 12 +++++++++++-
 2 files changed, 23 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/vdso.c b/arch/arm64/kernel/vdso.c
index b9b5ec7a3084..18a634987bdc 100644
--- a/arch/arm64/kernel/vdso.c
+++ b/arch/arm64/kernel/vdso.c
@@ -9,6 +9,7 @@
 
 #include <linux/cache.h>
 #include <linux/clocksource.h>
+#include <clocksource/hyperv_timer.h>
 #include <linux/elf.h>
 #include <linux/err.h>
 #include <linux/errno.h>
@@ -105,14 +106,22 @@ static int __vdso_init(enum arch_vdso_type arch_index)
 	struct page **vdso_code_pagelist;
 	unsigned long nr_vdso_pages;
 	unsigned long pfn;
+	struct ms_hyperv_tsc_page *tsc_page;
+	int tsc_page_idx;
 
 	if (memcmp(vdso_lookup[arch_index].vdso_code_start, "\177ELF", 4)) {
 		pr_err("vDSO is not a valid ELF object!\n");
 		return -EINVAL;
 	}
 
+	/* One vDSO data page */
 	vdso_lookup[arch_index].nr_vdso_data_pages = 1;
 
+	/* Grab the Hyper-V tsc page, if enabled, add one more page */
+	tsc_page = hv_get_tsc_page();
+	if (tsc_page)
+		tsc_page_idx = vdso_lookup[arch_index].nr_vdso_data_pages++;
+
 	vdso_lookup[arch_index].nr_vdso_code_pages = (
 			vdso_lookup[arch_index].vdso_code_end -
 			vdso_lookup[arch_index].vdso_code_start) >>
@@ -130,6 +139,9 @@ static int __vdso_init(enum arch_vdso_type arch_index)
 	/* Grab the vDSO data page. */
 	vdso_pagelist[0] = phys_to_page(__pa_symbol(vdso_data));
 
+	if (tsc_page)
+		vdso_pagelist[tsc_page_idx] = phys_to_page(__pa(tsc_page));
+
 	/* Grab the vDSO code pages. */
 	pfn = sym_to_pfn(vdso_lookup[arch_index].vdso_code_start);
 
diff --git a/arch/arm64/kernel/vdso/vdso.lds.S b/arch/arm64/kernel/vdso/vdso.lds.S
index 7ad2d3a0cd48..e40a1f5a6d30 100644
--- a/arch/arm64/kernel/vdso/vdso.lds.S
+++ b/arch/arm64/kernel/vdso/vdso.lds.S
@@ -17,7 +17,17 @@ OUTPUT_ARCH(aarch64)
 
 SECTIONS
 {
-	PROVIDE(_vdso_data = . - PAGE_SIZE);
+	/*
+	 * vdso data pages:
+	 *   vdso data (1 page)
+	 *   hv tsc page (1 page if enabled)
+	 */
+	PROVIDE(_vdso_data = _hvclock_page - PAGE_SIZE);
+#ifdef CONFIG_HYPERV_TIMER
+	PROVIDE(_hvclock_page = . - PAGE_SIZE);
+#else
+	PROVIDE(_hvclock_page = .);
+#endif
 	. = VDSO_LBASE + SIZEOF_HEADERS;
 
 	.hash		: { *(.hash) }			:text
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
