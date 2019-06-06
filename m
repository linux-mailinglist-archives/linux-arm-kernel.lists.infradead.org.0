Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10CDB381F3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 01:49:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=y6f7OoCf/pT1Hdyv/X6n4Ikk1OWFeN7ZgneBnek21fY=; b=MkbpWK0bI00xTr
	33avoSK2VFY/hFsBMeEdNXrMG6JnebOBX5VUZ02/JeRzXFBdNfm/I4smr7PbLFJ5Zec4gnwA8IOCK
	HQhck/PIeEibq1HNWIJhH4gilu4zvVbUPodX56wMfxiKxP75KTjSBaVpuqkBHhkgKNgHxX+UR7tTV
	UxjBcLOVLZNIwyjNbjuqwDP1bm2aAHicP8B3DW3d/gMtY1or8IPT8EleAjDSzvdi1lbYuIAwio+0a
	ohE6QlPR0GcwfjaEZ6po+I1UzCBWEoAi9r5Z0T8SHRkhWMdCrpB0LDvth3kdTwvJFAh/m/SyuW5Da
	Urb86HxefJMA6LQy+hOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZ28a-0002h8-6h; Thu, 06 Jun 2019 23:49:40 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ28K-0002gZ-ID
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 23:49:25 +0000
Received: by mail-lf1-x143.google.com with SMTP id a9so214521lff.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Jun 2019 16:49:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ugedal.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=psKBDCizYo2t7/L7gqLXGelpLnD+jY7p3GiTQEkg51c=;
 b=OaJv0V6b6IDJBnzlRTnjZxRoKBpyER4juyhuiHD8QjSh3ONORhri6pyAVgGfm+lvFH
 2qfPF+m4sNNcfbK9/LcxaWACu617vKaGbGaV/iL4+3OH7uJL7Ogzg+ogMdJ136755LTD
 7nGBWGf7JB9Gi/OlIVPvAlQfaHRoWhVSPW/xuHeLW2JNjmKKsH/Ai6QNfphjrAO2PAwA
 IJDZK9wiFmrs+Jy6h0ly6Hf1DI1urDHme+SnKTxngHwY19cZ1r0kHlY4FmL8dBfRyxNh
 dL8DAZOinCAVrNXepOOFuqRpsi6LyMX2Um0kuS7rdqHifeYhxGx0vN0PUUpv8JzwvIQ2
 ri1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=psKBDCizYo2t7/L7gqLXGelpLnD+jY7p3GiTQEkg51c=;
 b=opbAr2Urg8mZmje23OI+gWtGJrGuZEZqftKbTmUIIAPqB0Vy7DEIH3xOj4oP+dZ6fD
 OMGhk2dDl8kZXQN2e/jFAvAMDVV+FzUuE31zYZadtY1K/Iz9FI4iY0HsurRo5TbrmLno
 mctNXp+HpJBxYdqMAwY3wAdFOQAjy09Id0ezrnnYTYQaA78yCZSU3n2zJUvzvErsR+ya
 VrH1EeG27pOJGk12hNd6YS0AZCZV+F0cMr+xIGAp9HEHOcwyyunFzS9dy3jo6zpjRuJD
 YthUxv8ZjFFjopwCv8tnS7ZddSf80qVpXACFqxREZAeUG8D3AnX2whL54jNOvDZNp3XX
 tadQ==
X-Gm-Message-State: APjAAAVvgZCw+GMowLPD6387j7GYvnn9wO92izKS/lHgVlWh2et97UDX
 X/SJth+yqAwg/ieSVbxS7JKNuw==
X-Google-Smtp-Source: APXvYqxoCjjaR+6HjDMMj+pHkS3CVVqzBuK/wczyL2Yq/bA7WYgkdEy8UfUVdJlRK1hWsTJXYrlp3Q==
X-Received: by 2002:ac2:53a5:: with SMTP id j5mr24957110lfh.172.1559864961884; 
 Thu, 06 Jun 2019 16:49:21 -0700 (PDT)
Received: from xps13.ZyXEL-USG (84-52-227.5.3p.ntebredband.no. [84.52.227.5])
 by smtp.gmail.com with ESMTPSA id
 i188sm92813lji.4.2019.06.06.16.49.20
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 06 Jun 2019 16:49:21 -0700 (PDT)
From: Odin Ugedal <odin@ugedal.com>
To: odin@uged.al
Subject: [PATCH] arm64: Fix comment after #endif
Date: Fri,  7 Jun 2019 01:49:10 +0200
Message-Id: <20190606234912.18746-1-odin@ugedal.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_164924_610055_0F795DA1 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Yu Zhao <yuzhao@google.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Odin Ugedal <odin@ugedal.com>,
 Will Deacon <will.deacon@arm.com>, open list <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Jun Yao <yaojun8558363@gmail.com>,
 James Morse <james.morse@arm.com>, Chintan Pandya <cpandya@codeaurora.org>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 "moderated list:ARM64 PORT AARCH64 ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The config value used in the if was changed in
b433dce056d3814dc4b33e5a8a533d6401ffcfb0, but the comment on the
corresponding end was not changed.

Signed-off-by: Odin Ugedal <odin@ugedal.com>
---
 arch/arm64/mm/mmu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
index a1bfc4413982..7babf9728e9e 100644
--- a/arch/arm64/mm/mmu.c
+++ b/arch/arm64/mm/mmu.c
@@ -776,7 +776,7 @@ int __meminit vmemmap_populate(unsigned long start, unsigned long end, int node,
 
 	return 0;
 }
-#endif	/* CONFIG_ARM64_64K_PAGES */
+#endif	/* !ARM64_SWAPPER_USES_SECTION_MAPS */
 void vmemmap_free(unsigned long start, unsigned long end,
 		struct vmem_altmap *altmap)
 {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
