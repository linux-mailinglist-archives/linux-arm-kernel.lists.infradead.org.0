Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A821445246
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 05:00:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=xq5qIABvcbLdxS2wmY7A4m6BxRMxZHNUd9hUPjcCX4w=; b=BEq
	J8SwQEpB/7SMvTiks0B7PvS6lBNliHwr3/7tgJz1nL+XTS1f3IqmPBOxn9hBoe9qCUTduLTQKcX6s
	EcGV3lp182NkrTKczG7+69SQ8hbsiHj/muoGtW7MKC6vxY013rQS7qrruYFnew+9PxXuFZHmsRM6W
	y3tf1BTQgo5eOfzt3MK8BCTPf9ZAIZzNGm8yMa291ZMjr70pOKcwLsTLI/+M77y1jYkVabRB+4kEr
	vbRVDmOPEhmOelqXBDigYMtMdKghB0faUfxUm6h/r0o6UtS7nnG5ifkdaC0lGcek93bjG84PKS0ya
	z/8JOE/x2UX4AJUdVH/1Jk4qzk19+9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbcRa-0003Bm-9Y; Fri, 14 Jun 2019 02:59:58 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbcRQ-0002tR-2k
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 02:59:49 +0000
Received: by mail-pg1-x543.google.com with SMTP id s27so667337pgl.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 19:59:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=DyBxcguYr0pwpEA8xS0kQBgyqMMk8fvfBxMPOX56hn4=;
 b=DSTLds/txoUxikicIxk+jfatAZ00LsbrrYlHf84ZuDRVrDCmIpKEfeqvv86Q1AIdsq
 lqvNt9+50ZRdjJdo71qYg/DMVOXQ/BFWWOpNsiXs3oTh6JpnzeGs+0lAafUT2td/x0/N
 SpKEZiwmZLt2pJBl0DKRRXo8SJBeCKRHsrN6PYf/lZjqWHosb4ca1+HDIPTT1Bz2wKfL
 5jqgut1Ai65s9HvDwVHdE/xODUiQCSBfWQXlvf37w+oiy85av3c8VyOJeGE/aZN0ppay
 DHHiYsbdlAZeudIBec1hVdNaL5sgCkJZb0KqSNdAvQQIH/U6rAHztznpVA8z5OmaZV9x
 CxKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=DyBxcguYr0pwpEA8xS0kQBgyqMMk8fvfBxMPOX56hn4=;
 b=chYIHAOthwIUSGXHxVRIzUQ1cdI83wYn9N8RGdSVnLB9JTbXT0nu5o45CB+BivZ9i9
 6iJQsd6i7YR50JNrfPMOGEXogmjHqZyq6Nh6Z+GoNfbzgwTGae7mWKDYYSFuurQppT5R
 8WurLdNUe41yE+sWxnddSmY2ekAavCRba+QKn15AQT9UNTB6lKwQy/3BHK+6+5nvmHgH
 6+fi2aiiiL2OYqCBn6ry3zjJBD6n62qkQj5ZU9AD0tIPBAfILz3N0s32+G8aggRn5PiK
 D9u5CItwgdHkfp2sGbeZNEfSEia95pB1uyOvP5z55XCEJghXYyRpZb5OfyrYxQntozk4
 rvIw==
X-Gm-Message-State: APjAAAWomyGTQSeF9l0c9CEN0rwYhF4gwjBoaaZrWHhpxJgE9rE66Vtw
 TwJ6WDhYGvWIh4UORTW7kK8=
X-Google-Smtp-Source: APXvYqxrzBOrrex6Zoyo5EefrUU1+d4fKYIriMstlsBiwbRJ/sVc+YWrkgnxy6eAX9OWatQGJLeMHw==
X-Received: by 2002:a63:8449:: with SMTP id k70mr34549119pgd.208.1560481182361; 
 Thu, 13 Jun 2019 19:59:42 -0700 (PDT)
Received: from localhost.localdomain ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id l21sm1051079pff.40.2019.06.13.19.59.40
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 13 Jun 2019 19:59:41 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@vger.kernel.org
Subject: [PATCH] arm64: Allow user selection of ARM64_MODULE_PLTS
Date: Thu, 13 Jun 2019 19:59:32 -0700
Message-Id: <20190614025932.533-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_195948_129572_72EDD9D4 
X-CRM114-Status: GOOD (  12.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, ard.biesheuvel@linaro.org,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 open list <linux-kernel@vger.kernel.org>,
 bcm-kernel-feedback-list@Broadcom.com,
 "moderated list:ARM64 PORT AARCH64 ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Make ARM64_MODULE_PLTS a selectable Kconfig symbol, since some people
might have very big modules spilling out of the dedicated module area
into vmalloc. Help text is copied from the ARM 32-bit counterpart.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 arch/arm64/Kconfig | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 697ea0510729..36befe987b73 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1418,8 +1418,20 @@ config ARM64_SVE
 	  KVM in the same kernel image.
 
 config ARM64_MODULE_PLTS
-	bool
+	bool "Use PLTs to allow module memory to spill over into vmalloc area"
 	select HAVE_MOD_ARCH_SPECIFIC
+	help
+	  Allocate PLTs when loading modules so that jumps and calls whose
+	  targets are too far away for their relative offsets to be encoded
+	  in the instructions themselves can be bounced via veneers in the
+	  module's PLT. This allows modules to be allocated in the generic
+	  vmalloc area after the dedicated module memory area has been
+	  exhausted. The modules will use slightly more memory, but after
+	  rounding up to page size, the actual memory footprint is usually
+	  the same.
+
+	  Disabling this is usually safe for small single-platform
+	  configurations. If unsure, say y.
 
 config ARM64_PSEUDO_NMI
 	bool "Support for NMI-like interrupts"
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
