Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD67379EDC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 04:44:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1z1ROnQT0rs1AH06RyHyWVTcXz/5HAHRlzJhZBhFItE=; b=P7kB5uiUB43dCd
	g2hFADypuy0i6Jco4CNDcNHkNGPLkUSKOxoz2JX08a7oQ2ZpcIi1qBMp7U5+9/CUzNDciSfbP+H0A
	sR1oL8ZCCY7N+BUKYCysdK1mN36K8ruVn1Ts7yNGbO210Kh1o29XEaflweA7Xw+JTMIjtVlLcaxfq
	8bzrsx1VhudUrUqMLilG79MX0xmgyEBW4yTfuPdVzyAumDyj/AF6uaYxckgAIpqZsSOq9z1i4gHUY
	LfNQNghvl4UCuLJXE4M3fuTHACpgLMD/IzOFgmh5mEFhpmEyDGzEl5XWbB8MxxdCYfaffbyGvBJ3+
	GZ91gxSvIi84yBZlCqfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsI7r-0007Ty-Ks; Tue, 30 Jul 2019 02:44:31 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsI7h-0007TD-6e
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 02:44:22 +0000
Received: by mail-pf1-x443.google.com with SMTP id m30so29020189pff.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 19:44:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fqzdvLOjix3ylHr5YHUpqrsLpQJqoNPYugVAgDYHQRg=;
 b=ZNprjwcR8ZPESMHDjtZDx+jmV7BfMNzyfP5AuIEBjQQNiwzYumvw39qKO0AfReG5pc
 tWF5SUtKe0NQS1Ori1DBwFwbPgzLUYr3bxWs+fz2g773fV+CK1Jn8QeIHhQJEFUifdoT
 ju3MiewN6uO0p4nmyXDp05H9OBiHJy25hOxcl9AyUiXXL273Bwh9n6HhF/XXFnoQQES9
 G345LDTWvIuje/K2sBGV9Jqj0VVDHhAusnVKWCX9lutmtv26e2+h62e9/xt+X5kFBI73
 jpMJ3JlqHPo6qdHrv63H94VT6yNqWnsfYIeoBqqOf3dny+/6uYWq9qyabxRlKsCy4q9J
 nNlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fqzdvLOjix3ylHr5YHUpqrsLpQJqoNPYugVAgDYHQRg=;
 b=XDoo+wjTC0C/Ro+SBCeYRscD6K+RL5gUbYCExKjhBtFfsAs9Y/+hpzHZMxQdDI0YLD
 1wKXh5YtNrN8+9jUfQ9OCGCI889XmtQCSEZvP3ImtVsG9t5DuCcGjG4lotkXvqGQkfVq
 JbgSVu6T4j+OKwwVXyfSlHC09GM/CdIaDQdUu7iGLWDfsDUVd7pqRwv7PeyDRK3Aa+L+
 yS7PHnzAEnjUyzxV4DPN/x8noD5cSUx89zDEmWueZGoWWfIZzRr1IISLyXN/uJOqeBFE
 XLaYsV0iS/gChfxfdS08FJw1xXvxndPxcXG2EUKmxCmxfDjn0FoBAz/lBWmogrrB7MMW
 gxKg==
X-Gm-Message-State: APjAAAUzqAcbVM69sXKem/WfRAsEWIpj6NjAUH7jeuMKyhTne0xbMxqi
 JymTUXZvkWOUVSkN9jdlOUY90QKB6wU=
X-Google-Smtp-Source: APXvYqyzFnJ4gujcomwVjsA1MDd6VuJvq1Tdkw8bgWN1Me4lcTvXF0T33qN6dYwKCvSUwv1GPeoEtw==
X-Received: by 2002:a17:90a:9f0b:: with SMTP id
 n11mr75786394pjp.98.1564454659910; 
 Mon, 29 Jul 2019 19:44:19 -0700 (PDT)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([89.31.126.54])
 by smtp.gmail.com with ESMTPSA id n140sm65331184pfd.132.2019.07.29.19.44.17
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 29 Jul 2019 19:44:19 -0700 (PDT)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH] arm64: Replace strncmp with str_has_prefix
Date: Tue, 30 Jul 2019 10:44:15 +0800
Message-Id: <20190730024415.17208-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_194421_248067_AE44D2C0 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hslester96[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (hslester96[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Chuhong Yuan <hslester96@gmail.com>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In commit b6b2735514bc
("tracing: Use str_has_prefix() instead of using fixed sizes")
the newly introduced str_has_prefix() was used
to replace error-prone strncmp(str, const, len).
Here fix codes with the same pattern.

Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
 arch/arm64/kernel/module-plts.c | 2 +-
 arch/arm64/mm/numa.c            | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kernel/module-plts.c b/arch/arm64/kernel/module-plts.c
index 044c0ae4d6c8..b182442b87a3 100644
--- a/arch/arm64/kernel/module-plts.c
+++ b/arch/arm64/kernel/module-plts.c
@@ -302,7 +302,7 @@ int module_frob_arch_sections(Elf_Ehdr *ehdr, Elf_Shdr *sechdrs,
 		/* sort by type, symbol index and addend */
 		sort(rels, numrels, sizeof(Elf64_Rela), cmp_rela, NULL);
 
-		if (strncmp(secstrings + dstsec->sh_name, ".init", 5) != 0)
+		if (!str_has_prefix(secstrings + dstsec->sh_name, ".init"))
 			core_plts += count_plts(syms, rels, numrels,
 						sechdrs[i].sh_info, dstsec);
 		else
diff --git a/arch/arm64/mm/numa.c b/arch/arm64/mm/numa.c
index 4f241cc7cc3b..4decf1659700 100644
--- a/arch/arm64/mm/numa.c
+++ b/arch/arm64/mm/numa.c
@@ -29,7 +29,7 @@ static __init int numa_parse_early_param(char *opt)
 {
 	if (!opt)
 		return -EINVAL;
-	if (!strncmp(opt, "off", 3))
+	if (str_has_prefix(opt, "off"))
 		numa_off = true;
 
 	return 0;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
