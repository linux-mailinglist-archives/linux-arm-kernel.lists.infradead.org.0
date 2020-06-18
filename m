Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9C121FF1CB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 14:30:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hEFVUjYqKuoQMW5+8XYfZDdvcGB34WH2DQP6WIBTLFc=; b=SSK78KURGX9HEe
	DorS5ng+92JqzSRlcRI560mphXbfdlKDAfOtmuxlAJLBswqfVBqL9CrWMznkIkhggrUWewpTjjMYN
	RrqOimDubGW1FcgPGhjDDlC3FiWb1aC0FPgMhhp61OjAW9jtj/QjCDTNX6Abk+pWl6eANkV0EWZQN
	aPhcL1qlKl6Uuvuhgbyde26L1ErGHSWP4LJYwqo34liRI2MAziPBcnP/bMP1fgVqnLxZpTahFiD+f
	HcRi8wOJ9Ea0VZbY8BvqsJfSO5zUCnJDOuKJP9QtLy37qWDq+nXdFpzlu4PUSV+2q5sNK3CfQ84Ey
	CJyZPK6ZWLoevjYPtGfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jltg0-0007jK-Qt; Thu, 18 Jun 2020 12:29:52 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jltcX-0004kK-1X
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 12:26:18 +0000
Received: by mail-wr1-x443.google.com with SMTP id x6so5824595wrm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 05:26:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eoJNhGWephHh2kHxeUxYOokymywaEEsB1soK0bgoMag=;
 b=TEXYXyhlg3yz0B8UIHkZXn6oAo3avJRrYkTyA9xaGkqdf5nonfGKN+VqZuKiArfpyg
 C4p/meD1W8zwxsQnM57O6GwJ4OdMceJ9XCYBBSHM7mMozUWAEhbCA6F0qm/dj2K9xK/e
 k/mK2fqb1vNFuJxs07bips/lRohz68SPOfmnqdd/TRIFyt5B/5+ceGinZ5PANTif+PWr
 EsACQ5qWGE413ytIYmfBVWTRRrjBhtqAGsGUFtYXw/Qx7SCxH8auMx0siwVhfPpoacYz
 Z4e+upQ9X957zGzIo//NEh3QnseeF0MDGnex47/HvPWSesAyd77vTORe6vQxrdY/0Gsg
 YedA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eoJNhGWephHh2kHxeUxYOokymywaEEsB1soK0bgoMag=;
 b=cU8MGV9L+CJK3LaNwTpa1KmwH3GFURZlRt1li9KNMPnv3w0BtLUCSufzRSnj9eKugB
 rP/aL9GXrzYdx0QspxE9Bp+Yb1COz4GTEVDTeQ2zMaKbBJC7l5EvAKu5/sbY5tSJxpoE
 wxAKhPcPU98vPA+A8katkwPxtUjn59zpPD7lpm7bK0T8IKsFwiITAKgIeNVtwC/zI0wc
 gT5iHZ8USWFt6HUGf+9fktZlNEcP+exlA+Al5cL3m0GyXyjSEA517/6APK+xtbAsPHm5
 sowHP7CldcxaQL1YXggU6pUAN67L6963YcbVwjrsrz0xUpd3nr+i5jNm9fXFUUGBR/vA
 FZvg==
X-Gm-Message-State: AOAM53282Dm8PE9mVa+g2TyVPWIni2Ae3aa/fp8pglHWvDarnoKIBEDE
 0Vd6RvFDOiMQBoe0o7O3XwjejQ==
X-Google-Smtp-Source: ABdhPJxWu2jWVCT4QdDVDT6jQzuNA/gmHgg6owA60mBPTRcDkKwon5A4vNDF90GMtDZwYVwwGKyFJQ==
X-Received: by 2002:adf:97cb:: with SMTP id t11mr4371001wrb.314.1592483175166; 
 Thu, 18 Jun 2020 05:26:15 -0700 (PDT)
Received: from localhost ([2a01:4b00:8523:2d03:c1af:c724:158a:e200])
 by smtp.gmail.com with ESMTPSA id t188sm3491013wmt.27.2020.06.18.05.26.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 18 Jun 2020 05:26:14 -0700 (PDT)
From: David Brazdil <dbrazdil@google.com>
To: Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: [PATCH v3 15/15] arm64: kvm: Lift instrumentation restrictions on VHE
Date: Thu, 18 Jun 2020 13:25:37 +0100
Message-Id: <20200618122537.9625-16-dbrazdil@google.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200618122537.9625-1-dbrazdil@google.com>
References: <20200618122537.9625-1-dbrazdil@google.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_052617_288982_16B23815 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: android-kvm@google.com, linux-kernel@vger.kernel.org,
 David Brazdil <dbrazdil@google.com>, kernel-team@android.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With VHE and nVHE executable code completely separated, remove build config
that disabled GCOV/KASAN/UBSAN/KCOV instrumentation for VHE as these now
execute under the same memory mappings as the rest of the kernel.

No violations are currently being reported by either KASAN or UBSAN.

Signed-off-by: David Brazdil <dbrazdil@google.com>
---
 arch/arm64/kvm/hyp/Makefile | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/arch/arm64/kvm/hyp/Makefile b/arch/arm64/kvm/hyp/Makefile
index 5f4f217532e0..cd0c3936d266 100644
--- a/arch/arm64/kvm/hyp/Makefile
+++ b/arch/arm64/kvm/hyp/Makefile
@@ -11,11 +11,3 @@ obj-$(CONFIG_KVM_INDIRECT_VECTORS) += smccc_wa.o
 
 hyp-y := vgic-v3-sr.o timer-sr.o aarch32.o vgic-v2-cpuif-proxy.o sysreg-sr.o \
 	 debug-sr.o entry.o switch.o fpsimd.o tlb.o hyp-entry.o
-
-# KVM code is run at a different exception code with a different map, so
-# compiler instrumentation that inserts callbacks or checks into the code may
-# cause crashes. Just disable it.
-GCOV_PROFILE	:= n
-KASAN_SANITIZE	:= n
-UBSAN_SANITIZE	:= n
-KCOV_INSTRUMENT	:= n
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
