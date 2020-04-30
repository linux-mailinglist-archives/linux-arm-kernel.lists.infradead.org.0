Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A68481C0217
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 18:19:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=wT/lpOMI7w5YZ0mONl/V8YyXPZM4DQY9bVbOXFlkWEA=; b=l5+
	NljxlX2vrAkwu7VOe86sjc6RcRSUIaQiQ+4ijqowMMC3Mp/ptt9CK9mIRW0vE2+4d2wblgp1Jy0l1
	iCwQ/44CIaG9dNrfs9rWgkifVQKkjhV7C2z/ZlwhLLYHnj3+bFO1vi7sq+YKCLR8jPnVfVaoFPclV
	zXb4roEp6TgGFnZNts7xGj+pU77yGBxWE+EEnyfQ7FQfH3Gt0uhoOfezMKcIVPKuFbrptaX93YqUw
	ObuHRXN3/uaUf5pUlJ4mIJI8QsV2aK9hdN1c7d/rw9FJrP1nseBNSkpgwILuZ37iy7DKJiw9RNj2Z
	1YvAZTB/QInzV65SzV8fZqXgweERf+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUBuS-0004Pe-N1; Thu, 30 Apr 2020 16:19:36 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUBuG-0004Mm-Bj
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 16:19:26 +0000
Received: by mail-pg1-x542.google.com with SMTP id l20so2956016pgb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 09:19:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Bd0ayqDMLRPuvdluOrNP0SAnf99YHwhV63n8Qm6Evr0=;
 b=Fgzh7czcWgcRnFx83H2M0ciY+zcYmlZjgOaa/jX0pueO8zT/VXnQcYKFXymMIW+NYk
 wvpmT2rEtn3eIDt+TDbkiByRU3ApYZWSMeEzzQwbL0v2FKgIgFmhiTgB8DOcW0hZVeH6
 +F76m7aRqb1Dl3CvOFye96AshPssh/Uxga3SKkBAUvkDlrml68jtvBow05X1YKw3h0Hc
 UrbxFNEIpB3Wtcy403d6EPU1O6bp2X3Hwr80xEypABKG+6hDC/T07I4K56VpJcrP2gTo
 /kkyNBaNOYq9+AJtQj1JNe3EktdIsWvAMm4RuObBgRhiyrMG6SptZAvBFW7TYLGxfyNj
 jG8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Bd0ayqDMLRPuvdluOrNP0SAnf99YHwhV63n8Qm6Evr0=;
 b=tBODHzUqzTOccY6XBgl8HIs8hOVp3amnI/nKO3+OomzzsZsySBl2fzXqgcEBwMCzz8
 oAKQKq2ZvuJeVWu0MV+FFQnQZUr82kgET8umnTFqLd9ichcsKQ1KgsaVRwrTykpUYHa7
 uX1jHrcpKef2IJAoDru8f3teLiIxgsrxiY2E4T4UozZ3AGOa4Qz76NFcT7RpDACzVmyq
 5uKbIlDghhIC3WfF6pPvCGRz+BbOdBglOfEWuCO2GEZGwofFR3jGAN15ctZB1jsj92OJ
 tqWmBCZHK6f/udlPfqCQ7c/ugGKVoYa0wQk4qUAk/wFS8WbzQ2l3avHYZvU2zwJwQRBw
 9MOg==
X-Gm-Message-State: AGi0PuaByMlADPb8wlaMTGOhE7zz7poK9Ue0BE4daRTC9mkDWcMV9ShZ
 E+oRue1n3+gyoy+dNoeyyXM=
X-Google-Smtp-Source: APiQypLb8VOAJ6P7mOQi3+hTbQ5C4u0mf4dY18qk3+afjrMk7rIhrwPGInAU6SxK7+e70O0J3rHVlQ==
X-Received: by 2002:a63:756:: with SMTP id 83mr3994025pgh.293.1588263563657;
 Thu, 30 Apr 2020 09:19:23 -0700 (PDT)
Received: from ubuntu.localdomain ([117.136.40.215])
 by smtp.gmail.com with ESMTPSA id w12sm223727pfq.133.2020.04.30.09.19.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 09:19:23 -0700 (PDT)
From: Guixiong Wei <guixiongwei@gmail.com>
To: catalin.marinas@arm.com,
	will@kernel.org
Subject: [PATCH v2] arm: mm: use __pfn_to_section() to get mem_section
Date: Fri,  1 May 2020 06:18:58 +1400
Message-Id: <20200430161858.11379-1-guixiongwei@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_091924_460839_E306BE89 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [guixiongwei[at]gmail.com]
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
Cc: steve.capper@arm.com, linux-kernel@vger.kernel.org, rppt@linux.ibm.com,
 linux-arm-kernel@lists.infradead.org, guro@fb.com, akpm@linux-foundation.org,
 Guixiong Wei <guixiongwei@gmail.com>, tglx@linutronix.de,
 nsaenzjulienne@suse.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

__pfn_to_section() helper which already wraps around
__nr_to_section(pfn_to_section_nr(pfn)), should be used
directly instead.

Signed-off-by: Guixiong Wei <guixiongwei@gmail.com>
---

v1 -> v2
- reword the commit message.

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
