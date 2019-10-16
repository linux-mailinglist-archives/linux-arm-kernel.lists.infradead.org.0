Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A80DD9B22
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 22:11:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ShI4mVK/VGFGCHZyhfnLEHmDHT7EuDDJEBfaxF2KkDg=; b=piy1zdRgbuiG2W
	sHmmajaffFzrs83acudx0QvmO6VmCw5I+14TxIQav69XNFHjMz8d8zQrInbI3G7QvJX88yZFzF42K
	tmu92eZmHDykypy5RQph4c3mcyXcIBmfFij3qFlgxini0BE4/lnAhZaMJzRfCZiEFuR9yZabHuCxE
	3WFL5p1yI+93KpcHu8W27gpG/9C1ItS4P98SWhNvQFn7o0EL0UNKMMV5Nw+FkNqpdbqsVnLDN3YFG
	y0MBXX8vx3DycrbD0RkcOCuG12Y0LjHYteP/sVD3PBrIyAZ+1UcboyiNH8/bf9wa+ViPPZj8W+VqZ
	IFLawrAhTL3bKNeTkhSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKpe3-0006IA-KO; Wed, 16 Oct 2019 20:11:43 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKpTx-0004en-Rg
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 20:01:20 +0000
Received: by mail-qt1-x841.google.com with SMTP id u22so37993257qtq.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 13:01:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=T3XWTOgEP/9W4ZS1E8/VXGGfXzT8jd4exEGR+bMuwFQ=;
 b=TwrU+GOQ941Sbph2SFlImjGbplb/clyAhQMdLITdEqfku17H8sdjTfFUMvAZe4kojq
 4YBgVZ0VBiTp3siA8nE/jqe9SmThHOYeBqzBNcz8IFDf7vf796F/kPBtX4VfC12d9cGF
 Z87WVxZ17F7bODF0yNyx32TQf/Uq2xQTMJQjkPTJhaIYadOcoA+UnpOO4MqsumekXePm
 dnsb99L63dW8eqGMUTHNASV5cIoNW8HlxIKZwH2Oq2DtBbwk8VEm4Kb7drd+R4rQyPl9
 cAk4Ro2mCrP6oNxUCU7i27imKhoBEzF+naSPVz9JYZWlBy9dvkx82EpjYrBvxvcm4UJ8
 tBUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=T3XWTOgEP/9W4ZS1E8/VXGGfXzT8jd4exEGR+bMuwFQ=;
 b=cffv3vLhvX70eqfUlp8oiGc0TrfJ1JRSVSc6hHlxoOjWpWkDZSHBxwOmo3gGI1Vhbo
 XhTGcX0x2zHlDWOX9x5F3VK5gXv6jRZpcXaeERn8FvVHO3MrIIAkph8rj/66LcIVvYcv
 iQ8lsouVDDX8HcQycsIxP+wzcx82warwEwB0obPdhBZECxZR9Ie82brRT60z34aOpaoU
 qm5zfa7W0dyMy1cbiB45bdbH1Ge9XY/Rj7DJZiivtZD1WJvHNbgBAGmjEx7T+F4Ku3p+
 2u0rPLcpAEw3ggSau30Bqgc3QdQvsr6S3B0fiPiwkEht+IH0aXyat4JRF2iQaMJ+Zwcf
 QGDw==
X-Gm-Message-State: APjAAAWzv8OjL6KMrWoA7Klfu+fQDGybSpAPa0dhWGct+aAqqqtaRvIA
 hv1IYsIohdHg8s77jGle8OC2og==
X-Google-Smtp-Source: APXvYqxUeYI2VVeNKwOcx1CBf1Vuu9NAWArtbmb0ydUiJoKzSapQ6z4MonpaFLHL7qk8ur/XLUM3Ag==
X-Received: by 2002:ac8:f28:: with SMTP id e37mr47590802qtk.274.1571256076532; 
 Wed, 16 Oct 2019 13:01:16 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id c204sm13342030qkb.90.2019.10.16.13.01.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 13:01:15 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com, steve.capper@arm.com, rfontana@redhat.com,
 tglx@linutronix.de
Subject: [PATCH v7 25/25] arm64: kexec: remove head from relocation argument
Date: Wed, 16 Oct 2019 16:00:34 -0400
Message-Id: <20191016200034.1342308-26-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191016200034.1342308-1-pasha.tatashin@soleen.com>
References: <20191016200034.1342308-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_130118_027701_7ECBB317 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
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
index 4147d9d70c1c..4ec01f29718d 100644
--- a/arch/arm64/kernel/asm-offsets.c
+++ b/arch/arm64/kernel/asm-offsets.c
@@ -129,7 +129,6 @@ int main(void)
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
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
