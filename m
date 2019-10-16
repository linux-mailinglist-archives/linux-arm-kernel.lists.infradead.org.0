Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F5CCD9AB3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 22:03:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bcWoR+2Chqvz8CbnwsTRDPyXa9jQSLYrotlLE1O2GOw=; b=uSNe2fntsr3dtN
	9rrDi80PV/fBhxHjH80hmvC2w7jqhOpsuaCGvE+PBnlZ6tWJQv6R7l8/gKon/9J7UPgyXpTEGXa5P
	KvVW8BCW/jUQlLdfm5HySOrUfGSXn8pEtfOWLQ3zw+zQQBemL3tDr8o+Ui2/Z4ljW+mc2/mvAGMTW
	vgDHlEfN0nyrdDLrzmrQ4b0esPrlUC3MfpgNbBv83I+1MLSw/GlKki5SZLb4edvh3in7k3R/rE1Y/
	15v7Rt/O412PhdgKHnnwDwLuNiZ1u8NQLk+EuTJEiq8TwRvPMoIe7tRa2T38hFZEbZU2/ewCOLk11
	U9yz4M6wGEhlei4xpaxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKpVj-0005re-Ga; Wed, 16 Oct 2019 20:03:07 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKpTQ-00045T-QE
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 20:00:46 +0000
Received: by mail-qk1-x742.google.com with SMTP id e66so3419902qkf.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 13:00:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=bEALksuMGDCoXJUsPuJK9KjzrlYMPFHPnYP/iTi6nJA=;
 b=PmgVNinlAhKoCy38ovygoke5eHkmtndpc1qCG+WMEy9t9CEaDFzQKRRgmdC+/OTIAr
 cClxqiICWNaO9nHeEsZv1j3YqYY8c2OLUOt90mSsJlaqZ0yME3UdcMJnjBBcAFw/MxOB
 1gU5t4NkzRJAnW47EOb8ae4y2t+V1JiAo3wDbEYc0YRWeJM0RtUeU8C3aWxAqgm21r2X
 2TjH36zN66FahrRc6sj/m312DAfD5zn543Be9cOWsRTaprJZ2ao3oHfuJffHHQSvKTfH
 Y7lPKpfR61Aw+x4ek1rgWv3PvQp/5zoyFWjLSW5+KPcvj4n3qAvnRZospNLcs5gjEocg
 UXTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bEALksuMGDCoXJUsPuJK9KjzrlYMPFHPnYP/iTi6nJA=;
 b=RABR3rmeAQ0atdb+jcKoplZJ50Frl8Qoaxs3+GKaGUqZyubVx9VB1lbZ96XFvOy7Vs
 Mnk5pWYq484nHJkK51WbtGTVfRLpVCBGEUp/uWVLU/7cNkJq3UlLBteBIufjRds4Tobh
 6sAPymUI3US8BWImiWi1E0PC53zWGVZOeBcvDU4rYJtFl2WbxmR1ow4j2rDGzH5l7QNK
 kSvuEc3M97BGeSirKgkl0mj/iYVqvBqvJtE7iMjoxgUyTuMk3SW+kR+1c6+IPF6lt3Iv
 ArwfHllapl0fQu1tg2iCdCaJt7Zlngbz4ilaBRWn/1Kp1LVHGwi72GRBZ70m4efFN/9D
 vlsQ==
X-Gm-Message-State: APjAAAXXYepUlFnBVF49WKEnhpRLPZSbut24t4vINFM+UfwInRqGqAtg
 +rRdLHNG+kVFZea/Gy3vN/iyXg==
X-Google-Smtp-Source: APXvYqzyH+2jZ2ynpwq6pYQufa7x4iWmQOZSfM/oXRiz2GauBXOrA822WeZtbs4kkqeqKB/SnonOpw==
X-Received: by 2002:a37:56c6:: with SMTP id
 k189mr41781172qkb.124.1571256043570; 
 Wed, 16 Oct 2019 13:00:43 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id c204sm13342030qkb.90.2019.10.16.13.00.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 13:00:42 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com, steve.capper@arm.com, rfontana@redhat.com,
 tglx@linutronix.de
Subject: [PATCH v7 04/25] arm64: kexec: make dtb_mem always enabled
Date: Wed, 16 Oct 2019 16:00:13 -0400
Message-Id: <20191016200034.1342308-5-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191016200034.1342308-1-pasha.tatashin@soleen.com>
References: <20191016200034.1342308-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_130044_888043_A8716237 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
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
index 12a561a54128..ad6afed69078 100644
--- a/arch/arm64/include/asm/kexec.h
+++ b/arch/arm64/include/asm/kexec.h
@@ -90,14 +90,14 @@ static inline void crash_prepare_suspend(void) {}
 static inline void crash_post_resume(void) {}
 #endif
 
-#ifdef CONFIG_KEXEC_FILE
 #define ARCH_HAS_KIMAGE_ARCH
 
 struct kimage_arch {
 	void *dtb;
-	unsigned long dtb_mem;
+	phys_addr_t dtb_mem;
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
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
