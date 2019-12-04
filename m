Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62784112F7D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 17:05:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7aM8gPDFdxB+Zzc08G2QJ2l1vysODehwtchYa2cE3lE=; b=kqOdvTwTWpELsP
	1m4xPBAOrAyLA359l+dwQnXzcwxjIcqyupLJjzLQEyBK/cG/aDRYCZ9FeGNhreCHuUK9lR78bjEr3
	w/QYW8kGVLm/ektwGGQncEQ1oMGOJbk0tObXy8lKwaWcfN9TY8o4e6BC9MROvZggltCUPYWqzqULJ
	c2RfAX3T1O+SXuLa+6i4ujAy0j/EK35ixNRuFVQE8HiSfqE6YOcdklYwlfbNJuYLXHXgHxCjM/fp6
	pUwX/AygjfVP3TbhPWcTuRCwz+ZYOcrUfRZQIie1p2wgcXLBimxjOrCvXsy8lgCfmI+W2Z5bvJ9n7
	oi/p+I0nKLr2r6gGYo0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icX9O-0004Vk-Tg; Wed, 04 Dec 2019 16:05:14 +0000
Received: from casper.infradead.org ([85.118.1.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icX4W-0008IT-Ht
 for linux-arm-kernel@bombadil.infradead.org; Wed, 04 Dec 2019 16:00:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BVZcqc2Z6644/Az5ve2InTrOD+vzGwRmsPVnGeCmQZQ=; b=SIBf4bljsmtbFraDomRLlQPVib
 iOy3Um1q/+VX6xOJ/O0PLBqnEpQnKRN6n+fVQ/eBAhL+KhSvdegYpe9mrgwxXCy9ms2kzpzHZNE26
 5iqs6X61RCe7aFYvQDpC+/AMn8ZCCELILP0hHHnq2nhuisj18REdExBGFGC7VoCarOGn1BfzASCig
 yVhrJ/KFWnRfS1QitnaMurASKWqleQfCRzd+VZlA/+44gIS6McAMaKw/L2ZpchECmlxGGD4LEIW53
 Lya4GNbbIzmBump1dUqzEkxFM5xmFf5F27YPu5WemYaFAjSLme/QqBER5jhBFDDYKZ8U2zuzSBtBa
 R3iZHnuQ==;
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icX4u-0003Ca-EM
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 16:00:38 +0000
Received: by mail-qt1-x841.google.com with SMTP id j5so202525qtq.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 08:00:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=BVZcqc2Z6644/Az5ve2InTrOD+vzGwRmsPVnGeCmQZQ=;
 b=Fj3acjtI0vF/2X6yAmVOkmQPOiJyiV9R1DOf9Hh1yWS9xj0L6CWNj0ZtAnLVKoPhIs
 kr5rHc9BhzZ/NPjlNQXew0gPTqMzLA/+7Xhdea9q5VvzWwMNYEDlYxrk9aM8uMZJEzrG
 BW7fWabMXHQvQ1jTAKW0/oblb2GGkJ0omqgeJHeTMISryzpinMo8Z3RE2Hv5fpm5r2er
 OATbxcGcHrWxiXL+/9WEAcpxZ0/hNy+RgRLEPvSDsU6SU/8VfjRdcKjJodiit2Z48uj5
 X77AQQG5YgY7qWKZ3E49twAsmXWIVCUJibwk3iVT++AMRf8Eu7VGPuWmf3AuSJdsZkmD
 QpLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BVZcqc2Z6644/Az5ve2InTrOD+vzGwRmsPVnGeCmQZQ=;
 b=GSev+tVhzta242ie6WS1Lror/8jU7UHyt4CGi4WcYPWZSVke5xs/VerUzwdbVdCqOU
 7RO7t1qR2XiNduRI9VC5ELgeSaRTDwZGexCIAOf/Fnci47IlffJYeNndqdLh8/4jyUqC
 Yl9owc4Wu7K8YGyJOp/8JmKxxSevrJd/Ta57oTedrN55IIJm3sVfPISctscis43bIFKb
 ippSSuvyU8jZagTuf8ttb2O0vbpOSSKYIOi8odyptM+zLXleZB3OW6re9wNoz0C+oLKY
 ScEDqlYfDkZmTcxQL2H1R1SvndPs2mGAactxkrDaIMyp6ByqQDKMrvFdbuBm3XxNXfio
 Fm4w==
X-Gm-Message-State: APjAAAVWid774PX/mk4rOtSOq4utOEFMRyd3PgeUzsjHbRH4HPJGTVte
 UAgOHQilPOUnjsW90Mx3fmmV+g==
X-Google-Smtp-Source: APXvYqzB+ZcjsuLUod5A2CrdZ5P4hqO77xakVo3euDVIPD3hBa71g2vCu7CIOGElQwxDhATyXOXEjA==
X-Received: by 2002:ac8:7443:: with SMTP id h3mr3298187qtr.202.1575475206050; 
 Wed, 04 Dec 2019 08:00:06 -0800 (PST)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id w21sm4177585qth.17.2019.12.04.08.00.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 08:00:05 -0800 (PST)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com, steve.capper@arm.com, rfontana@redhat.com,
 tglx@linutronix.de
Subject: [PATCH v8 17/25] arm64: kexec: cpu_soft_restart change argument types
Date: Wed,  4 Dec 2019 10:59:30 -0500
Message-Id: <20191204155938.2279686-18-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191204155938.2279686-1-pasha.tatashin@soleen.com>
References: <20191204155938.2279686-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_160036_503118_B5E98128 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Change argument types from unsigned long to a more descriptive
phys_addr_t.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/kernel/cpu-reset.h | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/kernel/cpu-reset.h b/arch/arm64/kernel/cpu-reset.h
index ed50e9587ad8..3a54c4d987f3 100644
--- a/arch/arm64/kernel/cpu-reset.h
+++ b/arch/arm64/kernel/cpu-reset.h
@@ -10,17 +10,17 @@
 
 #include <asm/virt.h>
 
-void __cpu_soft_restart(unsigned long el2_switch, unsigned long entry,
-	unsigned long arg0, unsigned long arg1, unsigned long arg2);
+void __cpu_soft_restart(phys_addr_t el2_switch, phys_addr_t entry,
+	phys_addr_t arg0, phys_addr_t arg1, phys_addr_t arg2);
 
-static inline void __noreturn cpu_soft_restart(unsigned long entry,
-					       unsigned long arg0,
-					       unsigned long arg1,
-					       unsigned long arg2)
+static inline void __noreturn cpu_soft_restart(phys_addr_t entry,
+					       phys_addr_t arg0,
+					       phys_addr_t arg1,
+					       phys_addr_t arg2)
 {
 	typeof(__cpu_soft_restart) *restart;
 
-	unsigned long el2_switch = !is_kernel_in_hyp_mode() &&
+	phys_addr_t el2_switch = !is_kernel_in_hyp_mode() &&
 		is_hyp_mode_available();
 	restart = (void *)__pa_symbol(__cpu_soft_restart);
 
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
