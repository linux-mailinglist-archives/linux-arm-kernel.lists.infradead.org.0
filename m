Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 560E8BBD0F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 22:37:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yapr/S/olcdG+Kni9GUSsHck4YU1JdAw8EA3NJRQD7k=; b=J4x6oEphI9x1j5
	jk6S8G1sJ9tFB0d8UxZ76iMP/Hme0VJKi5NohO5GIwGjQlX0zJwGO11xOokBjLx8L9BldVC7NEC81
	tEbnFii8n0jXCLAgmHOAqgxmMMfY6WaEv42/bl5LnewruEy7wnGuIdfhPwYbwq2yESJS6f6SK2K5R
	VWHiz/0iFrdhdg+tfdf70gVgWy8UCG/MaEf2JJ9AWHRpjU7D6CelzssVQljjSyl6gdF50ZeZpPCfT
	emUeKWxGiW8b3mY1xYWJpJZcTZzCxA4T0+pN3t4CgDNa8NSRlDpsg9N7i/3ghaQ0HmXb4AUQVLwq5
	zvStOFZZRE4mxltnSYbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCV5F-0005oe-31; Mon, 23 Sep 2019 20:37:21 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCV2u-0002Sz-0j
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 20:34:57 +0000
Received: by mail-pg1-x541.google.com with SMTP id s1so7528524pgv.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 13:34:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=nna15T41FBOo8C0ScgrwWvHxD4xBB4A7rtr2LOcD0mg=;
 b=LwEAxQjMu7W1QVZ23k/g1S4Eyx/tFZWSFOlnPakoYnP0ZAU2dmXFAKO2Oxrbqk1VaX
 AfgCnMNHzL9+qHkNVurT7ZHFnvl4gqQXCtMOx1UyGRVHrhSxv9+npn68KE8GC7IT+RRe
 SmLG9/jB22QvYfRuUHH82/bA6S9fNOUiYGPTxCFxiHwjEU4rXZsEjXnLQsfgv+gclC7b
 BD1+Q3J8Jry4/pY7Bz4mzVK5LteVKPXJkGwjkNv08PKILtB+xRyQ1C9cCMUZZroxQmy5
 0cFI7Ks3jDLpcpzUqeRn7R7xXfc84q8H5qJoaryaJ8zt4fmCPEkoTA40UJ1vjXj2y2et
 d8Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nna15T41FBOo8C0ScgrwWvHxD4xBB4A7rtr2LOcD0mg=;
 b=cFiyPyrZw968t0inNJTM9L9/EK3JDerXAUMMPC2zEEKIpM/lJIkmy9c4tMgy7SsGLx
 RvdeJ02o2fFEA2d+nFM4TS5om5wT4cIA3ytXZQjZ0e4YNkyN6/nVcyvZvCtXBn3ZXkR9
 uNrEmn0Wi4D1nmGMb/wbZ6ScCFMxKSrH3Sx7LsARZcTD04bSGXSPACIeK47XSUwIsjEw
 6CMrisSuLtUWgDW7CadiYk7AktHyTogWej/raihuRjqWYtNruJ7Fk1Mht4+gcuCo5Pqy
 spJXMFuR6O6kM1Q8JbuMI9BA99KPLYYi8kZMs2JTts3bN4gLAcpxseMK/3jFkO9I4O5N
 +LmA==
X-Gm-Message-State: APjAAAWLWWflj5+PlfyvFPf7O5bQfa2JiY+rJTd29NGwN6Mw9QHuOpL4
 l4EbX7pSaN0tb7ur6xhYr33mww==
X-Google-Smtp-Source: APXvYqwnL0GEjIshKzO5kl0urcaVAH5d910rW/z2mm7V4txKhm3HL8CIVxbIbYZBpIjpI74fhCfRHw==
X-Received: by 2002:a65:5543:: with SMTP id t3mr1763983pgr.242.1569270895507; 
 Mon, 23 Sep 2019 13:34:55 -0700 (PDT)
Received: from xakep.corp.microsoft.com (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id n29sm12798676pgm.4.2019.09.23.13.34.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Sep 2019 13:34:54 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com
Subject: [PATCH v5 07/17] arm64: hibernate: add PUD_SECT_RDONLY
Date: Mon, 23 Sep 2019 16:34:17 -0400
Message-Id: <20190923203427.294286-8-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190923203427.294286-1-pasha.tatashin@soleen.com>
References: <20190923203427.294286-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_133456_146409_F7EB1725 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

There is PMD_SECT_RDONLY that is used in pud_* function which is confusing.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
Acked-by: James Morse <james.morse@arm.com>
---
 arch/arm64/include/asm/pgtable-hwdef.h | 1 +
 arch/arm64/kernel/hibernate.c          | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/pgtable-hwdef.h b/arch/arm64/include/asm/pgtable-hwdef.h
index 3df60f97da1f..756a1dfb4f55 100644
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
index 1ca8af685e96..ce60bceed357 100644
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
