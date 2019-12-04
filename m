Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26302112F54
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 17:01:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eIxGx0KSMrkQ+9GKm48j4IhlvKjMNkqrVyUNuaiq34o=; b=gNiV0oD0UZvxVo
	nE85Aop9/4GJC05ARhfvUlFtkPV+LeLLQZpfR0y0IKKerd9NaDggsJgghCQWKcEJjodok394NrAu8
	sfi1TuYW00R1T4N3A/rolu7I1KYzFqZJIQNdvWMm415am1DDMw3F2Sm/F9Ivg1mRsL6jtmnAy6rLS
	asi8QOkhw8goYivrqRSpa9k/jxymipzhfB3Oxll1lYEGSA1HkRIiRc+pep3eew1LgxOMcCTL+b6t7
	5ydrnqaCCHyEuT49TMCK2Qgyb1mdB6kM0FKPFtynmYM+nCUmOqUmeBNQJucBiWJYRnmt0RmvIYFsn
	KcoQ0mHJxlHW74N/ZAGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icX5t-0001Nj-Qh; Wed, 04 Dec 2019 16:01:37 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icX46-0007Hn-3m
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 15:59:49 +0000
Received: by mail-qk1-x744.google.com with SMTP id f5so298511qkm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 07:59:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=O1/Snxb5riMEM2rJi1KMG7s6/Tztu9n9IW8tHLsuHwY=;
 b=VtXAM4U7F7l2niWs2bjUA1/FCfevZyxkmFcPuFpFGUqREEmkRI3IPJjFp/9sWZ4P9u
 34P5r/HciRoHPUgQ2zh1WhfBQ9dc+I9oLLrYVFxPfMSm5eSXfqAPsS25DRtrkU4qMfCV
 JVFGC9KseajBUqOruNg/NZ83Q44tZwVme4EI3Pja3lk4UB6zPf1enKsubGZs2zAZkd0w
 zFjnBvC4MnF7DMg65bT++dNi7nJy1b0S2Szx2B3XbhBdFh69wkxvEaNLmYfxSD0WYG+x
 BKX5FJ2uiYbnPo22WYYeynb4LanTaDONnrGZItg/BIAaFidFw2MowkE73FNI6Xz0B2eO
 Sgvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=O1/Snxb5riMEM2rJi1KMG7s6/Tztu9n9IW8tHLsuHwY=;
 b=Mrrq9cvdLvojYvWEdC9q1xJrqPKdQXc5MYqSkGzz9Z+pQlc3dD2mU9Cgc3leU0YN/l
 ihRMdCmY4hx49MfmWWPwpqjiOLu6HbzH4xTHJydP4Ywb5XQmHMHMCTQ5LS2RA7+P9sqe
 2/5TKXsQUXuTZDtjut4vCG64LFRLGPo38aEPPafP/HcN2Au/V1e3w0sljJmsAgk54bJx
 JjjcUoNtq+DXnvLtxcK93AqDx62Du/LSbugFKm6U2/xmg6QQRNLjv0r98CC7XCqHix1E
 X/MMgIgIwIPoxPxm7P1AEQRFzhIa/dOSM7HsFFX7vEL7VPM3eC3WG1BPt5079SxBxqYD
 TvmA==
X-Gm-Message-State: APjAAAXigfPJElOVeh2XSmGaYcVNqYatehaXEYVKU2Hi6k5JdfFuephf
 bd5bvCoJYz9o6Z0BQcXeup0MaA==
X-Google-Smtp-Source: APXvYqwnoYhlsay18cGYdgO8tha/3l6PdDeLuAJb0cJ+NbXd/YkMJZLdic0YIGKGxuueYGo1dLyIrg==
X-Received: by 2002:a05:620a:844:: with SMTP id
 u4mr3825309qku.368.1575475185340; 
 Wed, 04 Dec 2019 07:59:45 -0800 (PST)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id w21sm4177585qth.17.2019.12.04.07.59.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 07:59:44 -0800 (PST)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com, steve.capper@arm.com, rfontana@redhat.com,
 tglx@linutronix.de
Subject: [PATCH v8 03/25] arm64: kexec: remove unnecessary debug prints
Date: Wed,  4 Dec 2019 10:59:16 -0500
Message-Id: <20191204155938.2279686-4-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191204155938.2279686-1-pasha.tatashin@soleen.com>
References: <20191204155938.2279686-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_075946_152570_E0C2DDCB 
X-CRM114-Status: UNSURE (   7.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
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
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
