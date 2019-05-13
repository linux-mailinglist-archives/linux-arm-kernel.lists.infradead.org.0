Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2778F1AEA1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 02:39:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W1W2Lfbr+rit67uZEu4KtldofwgYisAsCHlQGH+XUIE=; b=u2Nv4NpBHyUjDJ
	H0otfc2dP3J9kmq1gVeJyBFq3Rcnm9EGeqR3HJYJNQVWPKwXrinzM6FCoDn4b4opKxrCfNf5Pe0Cm
	AbT9/l+yxiPLV7NrkurdQeIvSB8n5AcgFIHviC4ZqTTFGXW4hxPDZVeim0rO09cLcdusKjj8GuxSo
	rgOp7Eerg2//T4hwezQ1jY0E88xRBJX4tL5xvc+Bz3E+CETNQT7CAvvWa12EBAfisYa/WPqeVisso
	cDK2yJFFIt2tQr47aWZhhFGFh0LhjxPzPmWRWreeRHUtV+HJMf81Do5iGF0J0zs8KYjCO2mJxHVd+
	HT/THPwVEWFymloiVUJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPz02-0007lt-PN; Mon, 13 May 2019 00:39:26 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPyzt-0007hE-Qw
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 00:39:19 +0000
Received: by mail-pf1-x444.google.com with SMTP id y11so6195929pfm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 May 2019 17:39:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jbMbvlKHRDKPF33fkDdqZosCX8TlLi6L2lIp8AEgfEI=;
 b=ahcAC2+7tRqSmf9Sq99vuJtmBgerjrkeU5hvbO9VJcojV+ouWXEK2WeqLWILjwlbdt
 Wi53Y/OQI6YLkTJgy3lPLJJPk5CF8eddpc9pRhuK7JQ+wEabCM8KLJhCp5aFSUa4RvWI
 Qlz1Lwoz3OiB7nRfGUHgjdqktnzFo+efzXEbk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jbMbvlKHRDKPF33fkDdqZosCX8TlLi6L2lIp8AEgfEI=;
 b=HDZWJhj0/ythqbyTZ7GZp1l5Lf9INR4VL47w28Lvh6ebQT4pwgDq1ZtnX2x4fdcFuv
 5SPLzCaWH2ALbMFld4SI8qfYnhPpZT3DO8WHnC/6CK1/Wf8TBFSvyzv+u+7qS0mkoC5p
 V6vwE3h+0O8kAr9Zkpm9GrfX+8aFuKhMchdI5Xcdz6J4FmSdAtwj4He1d8aAL/7KXz/e
 I7gTROGsTtEMQNHWDnJJbRy9/4lPRqsIBSC1+BBIbChOb5jMSBRAmR8YIY5VobQ6+bJL
 /4+VSxq9CUVur3OGnorPe3Icf58RpANW2eV3xmf/fptL62ZXN2wstB5l0IMDgWqWT8u6
 lxFw==
X-Gm-Message-State: APjAAAXohlDrXrAby5sruuK+bNLR0jF+ZoU2JIEDc/jcptRAYpY2zdez
 tLfk5+A7Rw+oHagGs9TCNyJFhe3D1Ws=
X-Google-Smtp-Source: APXvYqwvJ+s42h/ZoVPUfChayYtwKVcwlby7x/lX5fwmShnyI1xrkZYSHRWHIJyOpTadffshc3b6qg==
X-Received: by 2002:a63:3dcf:: with SMTP id k198mr28317089pga.60.1557707956264; 
 Sun, 12 May 2019 17:39:16 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id a9sm14619577pgw.72.2019.05.12.17.39.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 12 May 2019 17:39:15 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/2] amr64: map FDT as RW for early_init_dt_scan()
Date: Mon, 13 May 2019 08:38:19 +0800
Message-Id: <20190513003819.356-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190513003819.356-1-hsinyi@chromium.org>
References: <20190513003819.356-1-hsinyi@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_173917_902258_D3A4D344 
X-CRM114-Status: GOOD (  15.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 boot-architecture@lists.linaro.org, Michal Hocko <mhocko@suse.com>,
 Kees Cook <keescook@chromium.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kernel@vger.kernel.org,
 Will Deacon <will.deacon@arm.com>, Stephen Boyd <swboyd@chromium.org>,
 Miles Chen <miles.chen@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 James Morse <james.morse@arm.com>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Andrew Murray <andrew.murray@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Mike Rapoport <rppt@linux.ibm.com>,
 Frank Rowand <frowand.list@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently in arm64, FDT is mapped to RO before it's passed to
early_init_dt_scan(). However, there might be some code that needs
to modify FDT during init. Map FDT to RW until unflatten DT.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 arch/arm64/kernel/setup.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
index 413d566405d1..08b22c1e72a9 100644
--- a/arch/arm64/kernel/setup.c
+++ b/arch/arm64/kernel/setup.c
@@ -179,9 +179,13 @@ static void __init smp_build_mpidr_hash(void)
 		pr_warn("Large number of MPIDR hash buckets detected\n");
 }
 
+extern void *__init __fixmap_remap_fdt(phys_addr_t dt_phys, int *size,
+				       pgprot_t prot);
+
 static void __init setup_machine_fdt(phys_addr_t dt_phys)
 {
-	void *dt_virt = fixmap_remap_fdt(dt_phys);
+	int size;
+	void *dt_virt = __fixmap_remap_fdt(dt_phys, &size, PAGE_KERNEL);
 	const char *name;
 
 	if (!dt_virt || !early_init_dt_scan(dt_virt)) {
@@ -320,6 +324,9 @@ void __init setup_arch(char **cmdline_p)
 	/* Parse the ACPI tables for possible boot-time configuration */
 	acpi_boot_table_init();
 
+	/* remap fdt to RO */
+	fixmap_remap_fdt(__fdt_pointer);
+
 	if (acpi_disabled)
 		unflatten_device_tree();
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
