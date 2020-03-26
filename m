Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A4A01936D2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 04:25:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vT9wU+87QB216m8ajkYbT/u3ttlfWJk9u8hUx1yozI4=; b=WaOEfFcwcYZFIg
	By3K9ZXiaNi9LNbLzp7oOA1BT7HTHeyTlYhgB9C1rS04iyoD8L5Ezmno8db1zh16kL6Vm4JltMrXL
	k+jnnnKriAJ58D/4YH+imVifXBk+l0H5v6dgOm+nEHQrDsY1AX43TZxU0yE6kZRRz8fvFT8pzFVmy
	dpbukexgSO0P8j/zivCN6JU2NktplQmWcIlzFKxaQ8Ic5E3TYhX+zwZhjObnxOoobxwD+P5HVXnOk
	Mby3z7xBZVDGg+sT6D48pMYe/8Wlth6xazHmaHH2PhMWjERu4b6bfNQXAH5JXazS0v5WMhGISvDzM
	pMAcNGb/E2TWp7HKri5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHJ9C-0005vI-Ms; Thu, 26 Mar 2020 03:25:34 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHJ85-0004Sk-FX
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 03:24:27 +0000
Received: by mail-qt1-x841.google.com with SMTP id z24so2948977qtu.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 20:24:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=thpe0Z5kEvTnM2eeAPZkTi6F3w4Pb+HUczSr2KuT1UY=;
 b=Nt3Xinqq4GDXUh4q1gt240eSwVB4FlleAi4yheETVwWyB9pE4ZB9fhvoPxAwkhLLpP
 Hel+tkJ2MOJLYJF6Ft+ia7fYJNDVTK0/BQEdJGWtrFp/KqJf+jbtO1QKVz1d4/aVr7E/
 odepPYYW/C2vMcwYOzeuK7gefOa2hthxOoxybyCgMgvMvSdaIgKnF2VBz1guVAylP8wj
 gcmFQcPycw8EOZJFcOXFSSph4/YpQFH5NYwCOlC6tBBxmCoZi3jeb5xpSXXAV3abItoU
 Am7UWAXBZHc8yP9UBGR9FlYtvqfxFO/+pzq6qBUb0dxaMy7wgRE0cMJ/Kt4mHT9uxfON
 EOrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=thpe0Z5kEvTnM2eeAPZkTi6F3w4Pb+HUczSr2KuT1UY=;
 b=Cg5pF0G1dNOPbHiAqcfiU0Z2Zriij+zqkqzKy+Kvi3XfB8xP+RgEzLe9ul+LR5qdtz
 pZcAxXq7Jg+Ml6IytHungS8KdgXYgMCQuYu37uA0pEZE4z0iQ4BQV+3CtNvmF7k2NBG5
 LY+bnfI9JkTpONearyT8Ku96JIn3hX5pU32py6+VGy55/SSqK1W5VLxcqFDMp61g4ds7
 1dBRwqur9Z3Sv/oKvI/5VGTUv+t2Yi0AciS7Jc6R1Hilc6BpWiKk0EfopvMuUpjPC4w4
 bddjGLyPBRuAuALkQHXQPIhV6mwBv9ka1uIKGRKkh4Sx8DOeLqR3qhX3+iKwKgmPSBUE
 zp4Q==
X-Gm-Message-State: ANhLgQ0FtTu/1Aby2dZVvabVGGDurDBJ0DH7UDDDJgG3s+1SV+QXUodW
 tK26/C/eVStKX/SyExXJXHJxYg==
X-Google-Smtp-Source: ADFU+vs8AB+ycYsqo1ntrv2C2y3Y5wNtM59sTWQw+jvfb/SJvWSGTmarQ+JsRphJYNn9X4qaL+i0xg==
X-Received: by 2002:ac8:4982:: with SMTP id f2mr6355374qtq.38.1585193064365;
 Wed, 25 Mar 2020 20:24:24 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id u4sm620034qka.35.2020.03.25.20.24.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 20:24:23 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org, maz@kernel.org,
 james.morse@arm.com, vladimir.murzin@arm.com, matthias.bgg@gmail.com,
 bhsharma@redhat.com, linux-mm@kvack.org, mark.rutland@arm.com,
 steve.capper@arm.com, rfontana@redhat.com, tglx@linutronix.de,
 selindag@gmail.com
Subject: [PATCH v9 01/18] arm64: kexec: make dtb_mem always enabled
Date: Wed, 25 Mar 2020 23:24:03 -0400
Message-Id: <20200326032420.27220-2-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200326032420.27220-1-pasha.tatashin@soleen.com>
References: <20200326032420.27220-1-pasha.tatashin@soleen.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_202425_518660_7EC09767 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently, dtb_mem is enabled only when CONFIG_KEXEC_FILE is
enabled. This adds ugly ifdefs to c files.

Always enabled dtb_mem, when it is not used, it is NULL.
Change the dtb_mem to phys_addr_t, as it is a physical address.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/include/asm/kexec.h    | 4 ++--
 arch/arm64/kernel/machine_kexec.c | 6 +-----
 2 files changed, 3 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/include/asm/kexec.h b/arch/arm64/include/asm/kexec.h
index d24b527e8c00..61530ec3a9b1 100644
--- a/arch/arm64/include/asm/kexec.h
+++ b/arch/arm64/include/asm/kexec.h
@@ -90,18 +90,18 @@ static inline void crash_prepare_suspend(void) {}
 static inline void crash_post_resume(void) {}
 #endif
 
-#ifdef CONFIG_KEXEC_FILE
 #define ARCH_HAS_KIMAGE_ARCH
 
 struct kimage_arch {
 	void *dtb;
-	unsigned long dtb_mem;
+	phys_addr_t dtb_mem;
 	/* Core ELF header buffer */
 	void *elf_headers;
 	unsigned long elf_headers_mem;
 	unsigned long elf_headers_sz;
 };
 
+#ifdef CONFIG_KEXEC_FILE
 extern const struct kexec_file_ops kexec_image_ops;
 
 struct kimage;
diff --git a/arch/arm64/kernel/machine_kexec.c b/arch/arm64/kernel/machine_kexec.c
index 8e9c924423b4..ae1bad0156cd 100644
--- a/arch/arm64/kernel/machine_kexec.c
+++ b/arch/arm64/kernel/machine_kexec.c
@@ -203,11 +203,7 @@ void machine_kexec(struct kimage *kimage)
 	 * In kexec_file case, the kernel starts directly without purgatory.
 	 */
 	cpu_soft_restart(reboot_code_buffer_phys, kimage->head, kimage->start,
-#ifdef CONFIG_KEXEC_FILE
-						kimage->arch.dtb_mem);
-#else
-						0);
-#endif
+			 kimage->arch.dtb_mem);
 
 	BUG(); /* Should never get here. */
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
