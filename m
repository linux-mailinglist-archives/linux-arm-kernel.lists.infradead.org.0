Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 764971936F8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 04:29:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DIseI7TY/NeXfyIWcLPsU5thxVQkG05s4SVf+F4FAs0=; b=IgR1bQKu0XFEaY
	eyfs/FEAlwsZyAiFdpiFSiVw8ldE3uJFlN70DuQU4Q1gOgGnLd1wAMFOXUn6U3CVdH4pFMTYmAJWI
	olqhoXYTa5sKXpJSdnkqh1IY0Of+7eU35E1Mbz3vjmT1qrXm/GumLLSXMvs70Gm+YDKxgtgBLN4VJ
	BfMEX5iSqSrVL6Dn5ozIJtrjnMMxDaxBEBUG3zPElKXRZE0+gGXgSz2x6reD30IpeY+S4z187ZPkk
	cA6ZTGj9Eew+cLvCzqfBXS7TmCFx2EXwsKgSqZbXnP/aRtJzw3dpmQeuuypztXBVN4plHJZzdbsDA
	K30zk/HkYqbFCpPTWy4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHJDK-0000iH-8L; Thu, 26 Mar 2020 03:29:50 +0000
Received: from mail-qv1-xf41.google.com ([2607:f8b0:4864:20::f41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHJ8I-0004eq-CO
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 03:24:40 +0000
Received: by mail-qv1-xf41.google.com with SMTP id p19so2285217qve.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 20:24:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=pWO3w3fg/bu1qLpz2kK7AN0HJrvbrhfCZrrLUhDFmXA=;
 b=cwhHLgf1ShP+9c8KtQ5dZpXfzLqFYUBpwqKsV3HZaplJ84EIJbdpHaM6NuJ2wlnEzt
 m08QUXtYf36hyXSeXnPsTpKXEJnJhT/HEeBpgHQpag3F8caUMtXyruGEEUxEb9VuT53N
 xhgjzaa00d1RLd/RIwIljbmeaPfUPwnzdN8U/AzmGBsITwwFUjooj8dcTZl2uUgUmyFv
 8LXYv02eoJxsRq0Y42HhNBBm7SHwtS2dGd9g791Nlg3U+3IAuZ5tjDGYoG8eWK8KIIfT
 30wbQFnx+teO+i/+te5evTv88yW+bxFAV8lL1oHLvRGfQspHQWgQ6RuRbdApM1rSjQLX
 OcZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=pWO3w3fg/bu1qLpz2kK7AN0HJrvbrhfCZrrLUhDFmXA=;
 b=Vs2+uAm+uxMir2Ow+EN/9qRxkK5XwsH9fAbV0zHkfWmKaSDj9wfSo8xi4WrjeMTnYt
 DcFMVWVzxjn369hGdFmQtMMrl2fYVitPtHSqEdW7j52AOvd0lSqw/eYkIoZJgFBfIPhU
 7dOxzVA8ueNdngNpLmChSDNZu9YkbqoUYUPkzloSo8BSEibKn9eYKaHQbo/lFqJRDEvA
 hOBu1LKL0R4FPs4lN+pD2JrC2LtWXqnRk2RyTGw1Ubbs16mMYn17ZeYsVEzOaOYxrCKs
 4dK4H3oyQY235QAi0QQ1EeqwIo0X7gd14zZNVMOM6ii9aIGI1AU929XRSLKebiF2fyXs
 R9VA==
X-Gm-Message-State: ANhLgQ1x0VZOI8LDPk785GwfxWAXbiIgb9rku1qS/pq9TYIK+i5FwfP1
 lP1f8jclaGiP8lh74HZAWKExeA==
X-Google-Smtp-Source: ADFU+vv/k/sLcr5Tyhr8JUG2Ty25MeyzImC89QBOsiqE8u6hhBIFLVdfdL3XZrToBgUbETDslMnrJw==
X-Received: by 2002:a0c:fd6b:: with SMTP id k11mr5890909qvs.99.1585193076738; 
 Wed, 25 Mar 2020 20:24:36 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id u4sm620034qka.35.2020.03.25.20.24.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 20:24:36 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org, maz@kernel.org,
 james.morse@arm.com, vladimir.murzin@arm.com, matthias.bgg@gmail.com,
 bhsharma@redhat.com, linux-mm@kvack.org, mark.rutland@arm.com,
 steve.capper@arm.com, rfontana@redhat.com, tglx@linutronix.de,
 selindag@gmail.com
Subject: [PATCH v9 09/18] arm64: kexec: call kexec_image_info only once
Date: Wed, 25 Mar 2020 23:24:11 -0400
Message-Id: <20200326032420.27220-10-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200326032420.27220-1-pasha.tatashin@soleen.com>
References: <20200326032420.27220-1-pasha.tatashin@soleen.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_202438_537743_3DFF26E0 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f41 listed in]
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

Currently, kexec_image_info() is called during load time, and
right before kernel is being kexec'ed. There is no need to do both.
So, call it only once when segments are loaded and the physical
location of page with copy of arm64_relocate_new_kernel is known.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/kernel/machine_kexec.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/arch/arm64/kernel/machine_kexec.c b/arch/arm64/kernel/machine_kexec.c
index ec71a153cc2d..cee3be586384 100644
--- a/arch/arm64/kernel/machine_kexec.c
+++ b/arch/arm64/kernel/machine_kexec.c
@@ -66,6 +66,7 @@ int machine_kexec_post_load(struct kimage *kimage)
 	memcpy(reloc_code, arm64_relocate_new_kernel,
 	       arm64_relocate_new_kernel_size);
 	kimage->arch.kern_reloc = __pa(reloc_code);
+	kexec_image_info(kimage);
 
 	return 0;
 }
@@ -79,8 +80,6 @@ int machine_kexec_post_load(struct kimage *kimage)
  */
 int machine_kexec_prepare(struct kimage *kimage)
 {
-	kexec_image_info(kimage);
-
 	if (kimage->type != KEXEC_TYPE_CRASH && cpus_are_stuck_in_kernel()) {
 		pr_err("Can't kexec: CPUs are stuck in the kernel.\n");
 		return -EBUSY;
@@ -166,8 +165,6 @@ void machine_kexec(struct kimage *kimage)
 	WARN(in_kexec_crash && (stuck_cpus || smp_crash_stop_failed()),
 		"Some CPUs may be stale, kdump will be unreliable.\n");
 
-	kexec_image_info(kimage);
-
 	/* Flush the reboot_code_buffer in preparation for its execution. */
 	__flush_dcache_area(reboot_code_buffer, arm64_relocate_new_kernel_size);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
