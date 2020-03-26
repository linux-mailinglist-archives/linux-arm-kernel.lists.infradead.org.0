Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAC62193715
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 04:33:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E2Y20pOleLrjukXw/qviSCP0bjjomM+GHFhpP0VlM/8=; b=Pj9XV3FQibwQms
	li1ox21Jwkg1Tx/rLyYsyzof1wq4Ks6uvugPVOOx9BeOLYFPbtRJTMbQ+zS9kSoPmSojSXZbx01LH
	TYNlrtNRCSAuOkYFAJ4q74T415zDUS4leGPMmI6nz2H7O7ghYxCAYjBhCpsFozjxTCZUcr5dqHdZ/
	aRgnn1iyz1mBOtRJeA4TEAP6Ph77AJyngZag3UDAP28NVwQ8V0aBZo93Yv3NM8QW0Z3GARBPUj3cb
	2giWWB02x+SEUWmT9vPKcNHWP2K3SaXOGkIzEQIdBanWxNvIbjtmC9qJLSKX2RKb1ZMZT9qcQc4RZ
	sL7BE1CF8lRaVph/anyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHJGI-0004cI-QD; Thu, 26 Mar 2020 03:32:54 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHJ8V-0004sc-Vb
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 03:25:02 +0000
Received: by mail-qk1-x743.google.com with SMTP id b62so5110267qkf.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 20:24:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=MnZdOr+8pXZ+Q7gD/wn/800kgQqBl+vWc7FKb2K6x14=;
 b=D/H04vs13b+3H+e67P/UARnFyO7yDtN0Ty+ZK+OBnCiOWB9/F+Fc5HLOOOqDcTyHXC
 upUUgW/VGgZc6ZbqtfIcIdr3SJktRRblws7WTorOV6RIpwbJmBWbJZmJn/xEcGByGchL
 cgLawoxwGWLWJDPU5b0SNyZVc/3EonILMFMYCcmx5VbqUVEkhwHQx/8p///+O99PsEfh
 7tHmGRUCwyp4Gjeb4Dw2BjU252LKFebXdKHsAIdI6bsXvV+axA/VrSlQbWfyV2hfRI+F
 7OSwGZufegvOoRbjxEOCpclvwAeJqLE2MQkXVU7ipXNnwAtmZuBXghgbzMJ5ly/fRQMh
 rQrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=MnZdOr+8pXZ+Q7gD/wn/800kgQqBl+vWc7FKb2K6x14=;
 b=FhNYwPPDGD1ET+Wkwu2jPEPBHQtOWrf2qtOrkftI1SGTU/Nhs6HNDVF0RrWnqXIri8
 PscEfB7qvgSgzcEpUEPrR3a7eqjfLz5wU6sY9dGsbHDg1Q6dKP12zMFO2yafBAxWxACo
 4qMAf5Tudk8pS6nCEnnRujgbJldz3Xhs9jZxKiSF8UshT9stIXXcLvpH5Dht2iFtOW/7
 o48bjjJRj0+wyJVOiFqQ81SdRQWvE74glynHulASFMJ0XJ3dliNYeZ1wwHgh3xjn10oO
 xNIYk70fHzJ0EKMI4YxtB0WC9OEztlKZFh8gKTzpXTfSxY7PaIemPgwzY/lBKoWESI94
 Tugg==
X-Gm-Message-State: ANhLgQ00gf+1WiVK+JhOoIBDylV/FKRz0yTjlyDBFvddCewps3dlytG/
 ZCg0r5fnv6BBtQPde+fWNNXRdw==
X-Google-Smtp-Source: ADFU+vvws7EYyMJKXCP8dR+RR+Z2bEQdm8J7Bgw0yIj4Z09bNr3plFyZB9XoZ8d3WpnVnyh4mAc+YQ==
X-Received: by 2002:a37:6807:: with SMTP id d7mr6162363qkc.112.1585193090776; 
 Wed, 25 Mar 2020 20:24:50 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id u4sm620034qka.35.2020.03.25.20.24.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 20:24:50 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org, maz@kernel.org,
 james.morse@arm.com, vladimir.murzin@arm.com, matthias.bgg@gmail.com,
 bhsharma@redhat.com, linux-mm@kvack.org, mark.rutland@arm.com,
 steve.capper@arm.com, rfontana@redhat.com, tglx@linutronix.de,
 selindag@gmail.com
Subject: [PATCH v9 18/18] arm64: kexec: remove head from relocation argument
Date: Wed, 25 Mar 2020 23:24:20 -0400
Message-Id: <20200326032420.27220-19-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200326032420.27220-1-pasha.tatashin@soleen.com>
References: <20200326032420.27220-1-pasha.tatashin@soleen.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_202452_090336_4C2C33E6 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
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

Now, that relocation is done using virtual addresses, reloc_arg->head
is not needed anymore.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/include/asm/kexec.h    | 2 --
 arch/arm64/kernel/asm-offsets.c   | 1 -
 arch/arm64/kernel/machine_kexec.c | 1 -
 3 files changed, 4 deletions(-)

diff --git a/arch/arm64/include/asm/kexec.h b/arch/arm64/include/asm/kexec.h
index 8f4332ac607a..571a2ba886b9 100644
--- a/arch/arm64/include/asm/kexec.h
+++ b/arch/arm64/include/asm/kexec.h
@@ -100,7 +100,6 @@ extern const unsigned long kexec_el2_vectors_offset;
 
 /*
  * kern_reloc_arg is passed to kernel relocation function as an argument.
- * head		kimage->head, allows to traverse through relocation segments.
  * entry_addr	kimage->start, where to jump from relocation function (new
  *		kernel, or purgatory entry address).
  * kern_arg0	first argument to kernel is its dtb address. The other
@@ -116,7 +115,6 @@ extern const unsigned long kexec_el2_vectors_offset;
  * copy_len	Number of bytes that need to be copied
  */
 struct kern_reloc_arg {
-	phys_addr_t head;
 	phys_addr_t entry_addr;
 	phys_addr_t kern_arg0;
 	phys_addr_t kern_arg1;
diff --git a/arch/arm64/kernel/asm-offsets.c b/arch/arm64/kernel/asm-offsets.c
index 58ad5b7816ab..8673a5854807 100644
--- a/arch/arm64/kernel/asm-offsets.c
+++ b/arch/arm64/kernel/asm-offsets.c
@@ -130,7 +130,6 @@ int main(void)
   DEFINE(SDEI_EVENT_PRIORITY,	offsetof(struct sdei_registered_event, priority));
 #endif
 #ifdef CONFIG_KEXEC_CORE
-  DEFINE(KEXEC_KRELOC_HEAD,		offsetof(struct kern_reloc_arg, head));
   DEFINE(KEXEC_KRELOC_ENTRY_ADDR,	offsetof(struct kern_reloc_arg, entry_addr));
   DEFINE(KEXEC_KRELOC_KERN_ARG0,	offsetof(struct kern_reloc_arg, kern_arg0));
   DEFINE(KEXEC_KRELOC_KERN_ARG1,	offsetof(struct kern_reloc_arg, kern_arg1));
diff --git a/arch/arm64/kernel/machine_kexec.c b/arch/arm64/kernel/machine_kexec.c
index db96d2fab8b2..2d3290d7b122 100644
--- a/arch/arm64/kernel/machine_kexec.c
+++ b/arch/arm64/kernel/machine_kexec.c
@@ -162,7 +162,6 @@ int machine_kexec_post_load(struct kimage *kimage)
 	memcpy(reloc_code, kexec_relocate_code_start, kexec_relocate_code_size);
 	kimage->arch.kern_reloc = __pa(reloc_code) + kexec_kern_reloc_offset;
 	kimage->arch.kern_reloc_arg = __pa(kern_reloc_arg);
-	kern_reloc_arg->head = kimage->head;
 	kern_reloc_arg->entry_addr = kimage->start;
 	kern_reloc_arg->kern_arg0 = kimage->arch.dtb_mem;
 	/* Setup vector table only when EL2 is available, but no VHE */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
