Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7BB41435D9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 04:10:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P9ZixChh254emqI8qxQzvCorQSfXVkkNW9IaXfnlO0Q=; b=Vz/GbbGL9i289V
	aa+PullEBnEBwrJ+yLZq1COU/tRM4+gueztmR2ZNhCwWZ3R784xjMWYMOzPGuujvSaWKaVcbUtz2S
	GfTHU3eLZzOXbvBIhzSuzr6OdxLfKqXgu9/o6MTvKOA+9tSYsdKKjosZ26+d7LFhorNAFswrE0ZgQ
	Upc1zK++ShZaz7dJXMJjNybYifts269RbzmHB80ngisx52tX45qX/NyphtEBqtsqZ8W6l6LTglbW6
	r6RyDR06Ww7TNKG2txvljOuEIP6MHwQ5Yr35GS0+b3omE/GEflNkfvl/s+UPoME2HU1mfsyzxkSt6
	VDPKZNez4wTXAtw1ePRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itjvs-0001pk-3G; Tue, 21 Jan 2020 03:10:24 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itjvm-0001pJ-Hl
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 03:10:20 +0000
Received: by mail-ot1-x343.google.com with SMTP id 66so1644699otd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Jan 2020 19:10:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7MzOR4y/pXguWn5IQ89Q0tDjVovjCl/+UcDac9xvay4=;
 b=obSsmlOZyGgl53mldrUHp5ESb6XMeWgbX60wlkoH+RUO531i7SPFp9ijCtUKMjl/Iq
 YKyD9NE3Mvt1wXPOBNlJe9asmirSV96DwsfoW/0xFi0bu2S65zjZS+BhMAkUOs1tVLBp
 sOU1mOBOLUwWQZ5VZs1DxiMk+umcN6Zx7kJmgtPZAu0FO9v8LnNRwUokKU2n2LONTHDv
 XqP2x5Rnwi0hTdPPZ5cJRqnEgHEmLlZ475J69CcBATxfS4YSr6ECun6reH8QUBznLwYf
 f2UUH+C2nKX02AAmTNrrqepSlhNk62FuzSnxh96PIqBt4rMfDV86VXDz292u6MBV1pFC
 e+VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7MzOR4y/pXguWn5IQ89Q0tDjVovjCl/+UcDac9xvay4=;
 b=gfnSrnIW52cljy/TCa23eH95Oa3wMDZ18kI8EBa+jJ+GUsLwCbyhPepvXMCr0z8AsX
 t8cLMnEzWhPE5li3HxFVjpBii20dNrWCoKT6YNDoECi4ERDDFit7tcsA3Q4SLrxyuUmp
 EySwdsE60vliKSEvzJ8adjy+/uIcof28Lt3IpxH6X7yCPVTZbOZDrM/ZnE7eAgiXQjqe
 1J/HcEywqy290ELlmVaKruLH3OhfVWI73riY8r9Od+wrdXed2gCoIOQAyv09XkREG7Im
 NhwNrF/mOSj8OwWHienMrNlJ7buFTjYzy5ePfz60F8+01ZskUayeYzPfCC8ZyC+Hghc1
 xwXw==
X-Gm-Message-State: APjAAAUGekqtxNGR8WuCurjIqJG89XE1/UrPPQVrdANyTV0HGo/eav7m
 iocwCZI1EYNSXOGqGWQkf+bLjw==
X-Google-Smtp-Source: APXvYqyvaV2rCEBgvI10MHLlZ0aSdyhfnWyYXTCOVnmWZxuLw1UwCgWSEWAlb8sQ0KkG2J7R9RkY2w==
X-Received: by 2002:a9d:7315:: with SMTP id e21mr2079400otk.255.1579576215363; 
 Mon, 20 Jan 2020 19:10:15 -0800 (PST)
Received: from rip.lixom.net (99-152-116-91.lightspeed.sntcca.sbcglobal.net.
 [99.152.116.91])
 by smtp.gmail.com with ESMTPSA id l17sm13384612ota.27.2020.01.20.19.10.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Jan 2020 19:10:14 -0800 (PST)
From: Olof Johansson <olof@lixom.net>
To: maz@kernel.org
Subject: [PATCH] KVM: arm: Fix build after MMIO cleanup
Date: Mon, 20 Jan 2020 19:10:07 -0800
Message-Id: <20200121031007.106259-1-olof@lixom.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200119181116.374-1-maz@kernel.org>
References: <20200119181116.374-1-maz@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_191018_613368_3478C434 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Christoffer Dall <Christoffer.Dall@arm.com>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Olof Johansson <olof@lixom.net>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Looks like the mmio_decode field was accidentally left in on 32-bit:

In file included from /build/include/linux/kvm_host.h:36,
                 from /build/arch/arm/kernel/asm-offsets.c:15:
arch/arm/include/asm/kvm_host.h:205:20: error: field 'mmio_decode' has incomplete type

Fixes: 480bfa6478c8 ("KVM: arm/arm64: Cleanup MMIO handling")
Cc: Marc Zyngier <maz@kernel.org>
Signed-off-by: Olof Johansson <olof@lixom.net>
---
 arch/arm/include/asm/kvm_host.h | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm/include/asm/kvm_host.h b/arch/arm/include/asm/kvm_host.h
index acf4c87e8321a..bd2233805d995 100644
--- a/arch/arm/include/asm/kvm_host.h
+++ b/arch/arm/include/asm/kvm_host.h
@@ -201,9 +201,6 @@ struct kvm_vcpu_arch {
 	 /* Don't run the guest (internal implementation need) */
 	bool pause;
 
-	/* IO related fields */
-	struct kvm_decode mmio_decode;
-
 	/* Cache some mmu pages needed inside spinlock regions */
 	struct kvm_mmu_memory_cache mmu_page_cache;
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
