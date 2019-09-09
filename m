Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12223ADE9B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 20:15:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CV/bwcpHGdJqS4XU/WFIFstMTCKCmSpAF0avKu1kRcA=; b=NMRqarB4c/rCmt
	Oo6b2yOiQb82aJxFehHXRDrjLAHSiQ5fPm/IbXj0/zqxOdj/srOp69YOqPM+bH2s+dj5TNVN/f+28
	+mOyPc6my7iGZWM1cAPL+NuQZLKjOwg/jrQJBkqFxcXMFopiLSI1RizSKKwW5+BQq8K8d6KrvtCj7
	FyfAHrtz4nPkbVeYP6ijCvDgZyTQEMi+R7e3mIiCgYDRLih5Ab21eYpxGp89Ay7HKT34MjYmpSWtN
	wVJ0zaMf6ZOJhAUGThhigk3cykFQqStvjF41htyU2z+bUs8XeoYlQXn0ix5lp/oqy9Gj/ij9epGsd
	hRi21N+IKbqoLZeugUUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7OBi-0002IX-7J; Mon, 09 Sep 2019 18:14:54 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7O9S-0008QS-Sz
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 18:12:37 +0000
Received: by mail-qt1-x841.google.com with SMTP id j1so4536414qth.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 11:12:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=9qwJvK7duEPa5cSydJwLuayx187fiYj4pOWC7XOD35U=;
 b=hJiNQQMhPzUeNhjSqA+wl+M2Yw4VzmLAzetQQIh1yJcVnbibJdozQMUJIPTj7G1fZ5
 uIcSVRVD7sQv4/zb3vvoXmG7nEkgaDTeuvoEu2B5hEQ4HKyKvqCdxkrMNxnLQvbnC5Sp
 GXJFdIB9Aa+WwqYBwe5OAvMNEHi0mE0MDeX0ZPZjHb8snLd1akNp9JPJJYPCGkMalc8q
 KUixyhfh6ehZRO08DryaR+QFPF2S0018x6Gv5fzx8kXs+kuCJp2nCeGP2cJBD0372qDa
 S1kzC6KQRbcG17aW6isKu0YCKQmeUiKgxNFdBtuyymq/m8jbblhdUBGwoKmff1pBx6J7
 /Y0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9qwJvK7duEPa5cSydJwLuayx187fiYj4pOWC7XOD35U=;
 b=T4YNdLk6wNg+jjAr5TRE51k0KZJtXgLT2ztIWMi826Qg37NmZ43YJ1kkWy3rLY0yhM
 J3Y4ppZvDBTeLkw4N9sr4VNrDdzJZDmkDZgr3aswzXztLV/IqQcvYCo4SwztS01QPMTT
 dyuVEjF19XrNoSLdYDxVasXyUwKTvqtgHv5eyqQY9U+s1uVCOuK00ic01DP0Zm4eeFdg
 D/0xh/i/zCuhUpuKsHBYq/v+G3zvoM9XSoYo+RYARfMD/Q3urZZf9L3VM8vLKno+QZ93
 heVLesyx64X+CgFJgljmo4TWOmQQC1jhVJldX+eV3F1+mOHoVXRbwF8up2QAcKa0OUDm
 CqSA==
X-Gm-Message-State: APjAAAUQ/Zg5F4akL/6F2GUbIKJin4tEJtNKzPoFaS6CdsSGzhupBGk+
 Sy+dVpvdx/iJjkggFSVXF/ITuA==
X-Google-Smtp-Source: APXvYqz8CjF5wzOFrAWFe3y7s/Lo+3E4+zqXPfUNMu+qW08GhYxza7uSUBke5A6jwxTbDkv2QIy0jg==
X-Received: by 2002:a0c:9665:: with SMTP id 34mr15164929qvy.223.1568052754025; 
 Mon, 09 Sep 2019 11:12:34 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id q8sm5611310qtj.76.2019.09.09.11.12.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Sep 2019 11:12:33 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com
Subject: [PATCH v4 07/17] arm64: hibernate: add PUD_SECT_RDONLY
Date: Mon,  9 Sep 2019 14:12:11 -0400
Message-Id: <20190909181221.309510-8-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190909181221.309510-1-pasha.tatashin@soleen.com>
References: <20190909181221.309510-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_111235_143500_8EDB346D 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is PMD_SECT_RDONLY that is used in pud_* function which is confusing.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
Acked-by: James Morse <james.morse@arm.com>
---
 arch/arm64/include/asm/pgtable-hwdef.h | 1 +
 arch/arm64/kernel/hibernate.c          | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/pgtable-hwdef.h b/arch/arm64/include/asm/pgtable-hwdef.h
index db92950bb1a0..dcb4f13c7888 100644
--- a/arch/arm64/include/asm/pgtable-hwdef.h
+++ b/arch/arm64/include/asm/pgtable-hwdef.h
@@ -110,6 +110,7 @@
 #define PUD_TABLE_BIT		(_AT(pudval_t, 1) << 1)
 #define PUD_TYPE_MASK		(_AT(pudval_t, 3) << 0)
 #define PUD_TYPE_SECT		(_AT(pudval_t, 1) << 0)
+#define PUD_SECT_RDONLY		(_AT(pudval_t, 1) << 7)		/* AP[2] */
 
 /*
  * Level 2 descriptor (PMD).
diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
index 750ecc7f2cbe..da2b3c5e94cb 100644
--- a/arch/arm64/kernel/hibernate.c
+++ b/arch/arm64/kernel/hibernate.c
@@ -436,7 +436,7 @@ static int copy_pud(pgd_t *dst_pgdp, pgd_t *src_pgdp, unsigned long start,
 				return -ENOMEM;
 		} else {
 			set_pud(dst_pudp,
-				__pud(pud_val(pud) & ~PMD_SECT_RDONLY));
+				__pud(pud_val(pud) & ~PUD_SECT_RDONLY));
 		}
 	} while (dst_pudp++, src_pudp++, addr = next, addr != end);
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
