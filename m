Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98FE61BEEE6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 06:05:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=RITRjhM52z9DyuIfWW4vlw85AoSw98RfY9IhYo2RsIY=; b=AlX
	DteEK8yfCda6/ZlRtCkaUhOenHZ9h7yf7dXA5Hn+BJTLzo5xvcChx4EPULv0xIw4Q+ysLdJTMJw1P
	SRbyF/AWHNaslCc8NMRTEVkC/bK9J4ZM/idQeLWT+5C0jOB0SYb9K2S8tD06yPPCvI86sgk1ZK/xN
	vMF4sv2ppoHO3lQPLitaA8X71ppC/Ufqa1j3OqanuodN03B0F+WzH4HKo6KpiUkbB27hMzLoDP5xp
	xnvGaxNHVFrAFaNvkb7XvWwLohgkEPuYuIzJT3Gk97OYz3wh/QbDEE4VCdX+vpuCRaTucirFHVnDx
	scr7xV1RmQgBB1P2usP6761d4dZ1ekw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU0Rs-0001om-DM; Thu, 30 Apr 2020 04:05:20 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU0Rj-0001fM-Lr
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 04:05:13 +0000
Received: by mail-pg1-x542.google.com with SMTP id s8so2149701pgq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 21:05:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=nL5VdHGdHlO2IhatVlz8X2CvG6piY9r4GDUrKsxm6ic=;
 b=cznpSpEiKH0hWKnAx7uiNiDeEwX7JlHVKlluiqHNX33+HHWfFn62Kn29274rvc+uVz
 rOUdG86CoRen4CZvqcq7OquI9A+E8ZRXuOVo4wISjUibG2vYtwHg9jsZRr+K+CdptyTK
 iKgFksouKlj3d3tKpgTMh79uoJdEyvWRBi0nYwP+4HxbWZMs+nlTO8KNFzlf6hvExW8+
 JRwRL4u5q6M/bkLb472L+0o/NQP04ijfzV32DZB2FEY75+NH0dyFclfXnJAE6WT3/GGt
 A+pUe4z4jsbl4btUNziBt6+091qGMRA95ardgp/E9w3NVA+cFH4llUfRrwJ1fq37qdEs
 JiJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=nL5VdHGdHlO2IhatVlz8X2CvG6piY9r4GDUrKsxm6ic=;
 b=OlNa9jnp2y9k5zV8tsbdnGV1Z4aCRW3KHHk0vDsYAE0MqyZwX6W+SojEbGn3yaUeTr
 SlxQR1q3ErBB/knwz0FCq95ipoTGPqnoYMoUQ8x0C9kp3XkGd6Ux7YvJAh2gk1YK50zt
 lRqprmq58S6LoA/yyAuWKBHHXkFQx2TAtXy8Y/X8UkC0FGv/NOb2yjOaBr0QRdCQK6OU
 E428KghoMjMVVYG2k9fT0t367RHFp7sNAKCjQBT46DRwnu6nL/RJMh5JT9q8rqJ2KEyV
 sIw4ozneinGrcXdqcYN77nu1rQD03j+zEcSnDIf+ccEPJmb5OuGs+vQ2w/HMZC0woCE9
 4EUA==
X-Gm-Message-State: AGi0PubM02XUjmZfyjG1m3pqdYZXuKPyR6tMuFdT/OOwIgzjjjiRhJVX
 rEVtWyMjmVSp8m9/RoX4KNU=
X-Google-Smtp-Source: APiQypLLwNEhk4G5v1VTt7A03T6ulKhnelKdVSLFjdGL9WidJAeO6lU/Q524Qb58XKgf+UuQhNy3iA==
X-Received: by 2002:a62:3c5:: with SMTP id 188mr1524979pfd.41.1588219510852;
 Wed, 29 Apr 2020 21:05:10 -0700 (PDT)
Received: from ubuntu.localdomain ([223.104.63.3])
 by smtp.gmail.com with ESMTPSA id 185sm2358836pfv.9.2020.04.29.21.05.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 21:05:10 -0700 (PDT)
From: Guixiong Wei <guixiongwei@gmail.com>
To: catalin.marinas@arm.com,
	will@kernel.org
Subject: [PATCH] arm: mm: use __pfn_to_section() to get mem_section
Date: Thu, 30 Apr 2020 18:04:37 +1400
Message-Id: <20200430040437.119591-1-guixiongwei@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_210511_720229_D329903E 
X-CRM114-Status: GOOD (  10.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [guixiongwei[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: steve.capper@arm.com, linux-kernel@vger.kernel.org, rppt@linux.ibm.com,
 linux-arm-kernel@lists.infradead.org, guro@fb.com, akpm@linux-foundation.org,
 Guixiong Wei <guixiongwei@gmail.com>, tglx@linutronix.de,
 nsaenzjulienne@suse.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use __pfn_to_section() to get mem_section, instead of open-coding it.
No semantic changes.

Signed-off-by: Guixiong Wei <guixiongwei@gmail.com>
---
 arch/arm64/mm/init.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
index e42727e3568e..d2df416b840e 100644
--- a/arch/arm64/mm/init.c
+++ b/arch/arm64/mm/init.c
@@ -272,7 +272,7 @@ int pfn_valid(unsigned long pfn)
 	if (pfn_to_section_nr(pfn) >= NR_MEM_SECTIONS)
 		return 0;
 
-	if (!valid_section(__nr_to_section(pfn_to_section_nr(pfn))))
+	if (!valid_section(__pfn_to_section(pfn)))
 		return 0;
 #endif
 	return memblock_is_map_memory(addr);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
