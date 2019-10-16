Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFABFD9AB0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 22:02:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rLKjcLiAT3+Cjq4yNU/J40r1kMm6M0qerDgTP+ucAnk=; b=qx+CkzcqY6E69t
	qF1KXQwu61ETtP4z4fifo6tm5h+jr95yVCjsC4+6Xrtm4E5apmmZ3kgxKIXLKvRd9mSKhFp/LGZW5
	3Jo/qApbyqt/v0K5cqDzkznrhiFF3edM2K4DTm6p+KmK1poykwXBV10KubJZDqF1X0tgRXgnz91oM
	e3blVUy8N7vyC+hYGSXnD452B+LHPwC/onqAeRQvkBX8IOuTqZIap8rNA8IVN+c1bBcotK084Edmz
	rhCa68YILk2chJjhaXagG5l2cD9xvJyTEpcLPuISMJ7MnH8DV/t7amoJ82YF0p1hNFHtp+4AXXJdG
	GQ0Mi0YFicw+RlRfJbpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKpVK-0005TG-Kt; Wed, 16 Oct 2019 20:02:42 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKpTO-00043W-OK
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 20:00:44 +0000
Received: by mail-qk1-x742.google.com with SMTP id q203so23998911qke.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 13:00:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=T4oxSJQXJFiY001HVXtMhV4c1Nyh6Voq/S19Iap3z4U=;
 b=DGre7ope1z/85rJPZ4IFjlhOm3YBsexLNt4OvsWWWOLkWgwpsaJIM1pD6dhXAvTH/R
 SfQobt9L6NpsyIeGpWCeql3qSX/KVIo4W9kEozA8Zi9G5eq4JBzcOExg6eBteqdmzgky
 lEOeY0V8KSCmNj6cq5taZ9NDiiobXDnV2YEFB6EqqlLi2InV8v3IT4yFCcQS2m8MEIjb
 IvEEJWKzBIknz04aeOVYCxcWFTQEZF9ob2eKJ1FWdigupZeVnmgr/C4pTJMF3F34Cxmk
 7MbPPMmEg+vmDYF4We/tyX6V6e4RnPYMNs3H6NXSZ/cscrc6DqxNmz4UwntpX/VVatui
 dMLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=T4oxSJQXJFiY001HVXtMhV4c1Nyh6Voq/S19Iap3z4U=;
 b=AXsTryBo1caeCoK81n5wtrvZVzT2GGhs4Ni3/fICR/Q8lUIVb+lLrafagBhEcbVabw
 8z0YIS1Cg5PIOsYe2WLMbVNVYUVaZpp+AlWtiOhdUQ1qDtc4scnVFUMMc4M25bhyozIN
 H1Ouzi6ziYrNcfs12+dcD3UyZRDb3zsIgCuZh2v5dqf8X3gK57wDDajKP5ZgrUkEUPnI
 5BNAg7QzhTNCqQ2S8Ou1Z/tLXXxyCVXStbfb/OXdpLobIBG/my5Tw6X/OM5xc2iHmFPS
 3iLLe93KcAUbgwoU9L39h4IfsqdzTnpqml2gVFu2WHm3Itc3xNN/7RC2vuy75xJbbOWZ
 RG/A==
X-Gm-Message-State: APjAAAWSylchT6QYxfNEOXiqG2Vu+FdDZtc2NX7G6HyUSj4fVslyNCl1
 j5bARPuGP37YlvERax+IKrX+Qw==
X-Google-Smtp-Source: APXvYqzmh9ZVCm734DDic0+RycCb/gxkGIXhQmNPGS2Audv6J5EXJ/l4r8dVf285F5TVgxAglBRtkQ==
X-Received: by 2002:a37:8183:: with SMTP id
 c125mr29289075qkd.279.1571256041916; 
 Wed, 16 Oct 2019 13:00:41 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id c204sm13342030qkb.90.2019.10.16.13.00.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 13:00:41 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com, steve.capper@arm.com, rfontana@redhat.com,
 tglx@linutronix.de
Subject: [PATCH v7 03/25] arm64: kexec: remove unnecessary debug prints
Date: Wed, 16 Oct 2019 16:00:12 -0400
Message-Id: <20191016200034.1342308-4-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191016200034.1342308-1-pasha.tatashin@soleen.com>
References: <20191016200034.1342308-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_130042_804324_F1887318 
X-CRM114-Status: UNSURE (   7.62  )
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

The kexec_image_info() outputs all the necessary information about the
upcoming kexec. The extra debug printfs in machine_kexec() are not
needed.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/kernel/machine_kexec.c | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/arch/arm64/kernel/machine_kexec.c b/arch/arm64/kernel/machine_kexec.c
index 0df8493624e0..8e9c924423b4 100644
--- a/arch/arm64/kernel/machine_kexec.c
+++ b/arch/arm64/kernel/machine_kexec.c
@@ -160,18 +160,6 @@ void machine_kexec(struct kimage *kimage)
 
 	kexec_image_info(kimage);
 
-	pr_debug("%s:%d: control_code_page:        %p\n", __func__, __LINE__,
-		kimage->control_code_page);
-	pr_debug("%s:%d: reboot_code_buffer_phys:  %pa\n", __func__, __LINE__,
-		&reboot_code_buffer_phys);
-	pr_debug("%s:%d: reboot_code_buffer:       %p\n", __func__, __LINE__,
-		reboot_code_buffer);
-	pr_debug("%s:%d: relocate_new_kernel:      %p\n", __func__, __LINE__,
-		arm64_relocate_new_kernel);
-	pr_debug("%s:%d: relocate_new_kernel_size: 0x%lx(%lu) bytes\n",
-		__func__, __LINE__, arm64_relocate_new_kernel_size,
-		arm64_relocate_new_kernel_size);
-
 	/*
 	 * Copy arm64_relocate_new_kernel to the reboot_code_buffer for use
 	 * after the kernel is shut down.
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
