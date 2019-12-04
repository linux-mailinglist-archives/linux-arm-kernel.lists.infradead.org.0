Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA9F1112FAD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 17:09:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZPuY5gXQ9P8CLmtL0egIT16L4Qp+VJe7FYflqSfJK7s=; b=Rrb2S0nHVv1y4c
	a7YX00ytUp8+/VFVn5Kl93Y1aLU6/3j310UCr5v65PJN1fLHOFyAyhQMLJ7r+kz106E5Z6ALTMxqo
	U8xSk5TA9aZXsWwZTzH+EORE9SytvBkb756j3DQTkKXiTvl4aob1kTexgRUx4UsXEZu+V2rJA6Iek
	dBFR3HEg2keS9wy/8ETpmfVjXLxykHp7G11L5BOhFzJUG2Cwxxvgy06wg4c9PUcJByGerAl/PHJab
	ZwoCPE0Cn/GlFQODhb6BuDvmyprmlJCH0j5hff+0grN06d2QmkdNo4LeP2/hc4Phtm1WxwIC8d+PA
	G5jJUjQ/YLpInIeKp4Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icXDg-0001QU-Og; Wed, 04 Dec 2019 16:09:40 +0000
Received: from mail-qk1-f193.google.com ([209.85.222.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icX4d-0000W4-6u
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 16:00:27 +0000
Received: by mail-qk1-f193.google.com with SMTP id d124so356694qke.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 08:00:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=BuF9kAsg7zDfcrmW+AeEjDBvvgUIdNN48m7WKwFLEPQ=;
 b=NjQ8W05YdjdCeIvOSOYx3wjfSJNJOobpA3c17yvVui1k3d8t2K7RqtU86mEcN8Szx7
 Ny+jGMla7VSh3rjQ80VXpIvNW3Ck2bDv0ttq4S+8c2YwXRL6fsyR6Lkev+ROCBv7TM0h
 rF/g8L2bpc0ZRlVROF4xerVe1SCO4xEtq1FMq6IuTkxZlllQbaw3a8r3s9MizMRjGset
 I9i1uTUUun6MGicBRvcUV7Bb2wcQ8EIxO6sAH0vd7w2iA1lGWF45M9v2ceNk/b/Uv2yn
 tCeFX1DOU3bn04ycwDxbG63Hcccv6KXWQKjR6ARN81S1SLg1YJztrRhIRODFqkj9bij6
 OkNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BuF9kAsg7zDfcrmW+AeEjDBvvgUIdNN48m7WKwFLEPQ=;
 b=Fd8FGWrAsNCM/TEzsQx9poQsdq4CGYBi23pk9Ut5Zf/Z70uVmqaR2g3/FFIkzOWax7
 n1ooaEvRaDPlySZgJbFJibHn87DxLJo28NpG9bsujXUKapdYVZXSkBeyRMvUoNxA/kKs
 tIBkKKMXjoA3R7rJ+jmuumkYRI85S7phV4e59dWvprPbo59trjCtgE9FNCFeB8EQODQt
 RevwzjgT0daJ29OFHNpwiORSE1EO/G5HtUafb+HVoEOJaINibPQ4yE13VNnFcmAxhUXR
 th5WTg9kEUZfhDDkmqYqLAkQbmSQo4qBvuOXf1+wmJzQlmosRftcuigWWiS6OHvrPaej
 MoQg==
X-Gm-Message-State: APjAAAV0cwmDhu59qRut1uzBHmme/keUnQZCTZNpvReaUV2Y4mTKox0p
 jwgh4qdoHifFX8+/FWbfVjBBqg==
X-Google-Smtp-Source: APXvYqyyV8D1PYFAItU27qvsqV4aL2nD5BfdiIVUg4kS+PmYBpdlTmEAV0SE7aK9iMs6O+J5ih64+Q==
X-Received: by 2002:a37:a9cd:: with SMTP id s196mr3713467qke.264.1575475218073; 
 Wed, 04 Dec 2019 08:00:18 -0800 (PST)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id w21sm4177585qth.17.2019.12.04.08.00.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 08:00:17 -0800 (PST)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com, steve.capper@arm.com, rfontana@redhat.com,
 tglx@linutronix.de
Subject: [PATCH v8 25/25] arm64: kexec: remove head from relocation argument
Date: Wed,  4 Dec 2019 10:59:38 -0500
Message-Id: <20191204155938.2279686-26-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191204155938.2279686-1-pasha.tatashin@soleen.com>
References: <20191204155938.2279686-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_080019_343818_F8E784A0 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Now, that relocation is done using virtual addresses, reloc_arg->head
is not needed anymore.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/include/asm/kexec.h    | 2 --
 arch/arm64/kernel/asm-offsets.c   | 1 -
 arch/arm64/kernel/machine_kexec.c | 1 -
 3 files changed, 4 deletions(-)

diff --git a/arch/arm64/include/asm/kexec.h b/arch/arm64/include/asm/kexec.h
index df911a4aa8ce..b3a39736d0db 100644
--- a/arch/arm64/include/asm/kexec.h
+++ b/arch/arm64/include/asm/kexec.h
@@ -104,7 +104,6 @@ extern const unsigned long kexec_el2_vectors_offset;
 
 /*
  * kern_reloc_arg is passed to kernel relocation function as an argument.
- * head		kimage->head, allows to traverse through relocation segments.
  * entry_addr	kimage->start, where to jump from relocation function (new
  *		kernel, or purgatory entry address).
  * kern_arg0	first argument to kernel is its dtb address. The other
@@ -119,7 +118,6 @@ extern const unsigned long kexec_el2_vectors_offset;
  * copy_len	Number of bytes that need to be copied
  */
 struct kern_reloc_arg {
-	phys_addr_t head;
 	phys_addr_t entry_addr;
 	phys_addr_t kern_arg0;
 	phys_addr_t kern_arg1;
diff --git a/arch/arm64/kernel/asm-offsets.c b/arch/arm64/kernel/asm-offsets.c
index 63060ea51727..097b4df616a2 100644
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
index 8edcc4be0b15..2e11194b8023 100644
--- a/arch/arm64/kernel/machine_kexec.c
+++ b/arch/arm64/kernel/machine_kexec.c
@@ -174,7 +174,6 @@ int machine_kexec_post_load(struct kimage *kimage)
 	memcpy(reloc_code, kexec_relocate_code_start, kexec_relocate_code_size);
 	kimage->arch.kern_reloc = __pa(reloc_code) + kexec_kern_reloc_offset;
 	kimage->arch.kern_reloc_arg = __pa(kern_reloc_arg);
-	kern_reloc_arg->head = kimage->head;
 	kern_reloc_arg->entry_addr = kimage->start;
 	kern_reloc_arg->kern_arg0 = kimage->arch.dtb_mem;
 	/* Setup vector table only when EL2 is available, but no VHE */
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
