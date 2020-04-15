Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A3E81A9725
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 10:44:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=z2ERCYK+mpHSD1I72cPgzX6sOXMhZe1FzPTkQlJi5Ds=; b=iI0
	tXaVn4Po3bLKVgHD83J1YuQeOKTJ7+wW96I1x+JfpAF9PRVuoJ+KWHAzHijxKcIdagyEJ17AQ6a02
	Mixh5zquaw61Lk6iwPEtNmyvzy5gRkaQva6Bxy1RAj8nG+fLOWk8n777uJjMyVN/QHoN6xObB5ALE
	et6PZUoAcyHQ1Ud2+CH3FjEH7PpeQqkowJMvwYiYmfXsAvqikQhgD97F58zTKlcPPeIX3Geyx/7nu
	KNcW8Bz/0TICSGx820C8Wp6HNB/xqnN40GlYOhdXtaI9NWOhZiw74Q4VK/s4EfzNKMPS2qAHxszjO
	8P7crvKyvRv3UJePwiV4AYreGqoZAcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOdeL-00004v-Ln; Wed, 15 Apr 2020 08:44:01 +0000
Received: from smtp-fw-9102.amazon.com ([207.171.184.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOdeA-0008VQ-1G
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 08:43:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1586940230; x=1618476230;
 h=from:to:cc:subject:date:message-id;
 bh=EMYtFdH844Gy8q0zDObO0i3soKGeCT1N6ZnKHQH7qjI=;
 b=g82SJsRwZxGGJESlb0aSBYNPNMM/KKzjPSE3dMd+KK8yL0RJjJZSPlF8
 SRRguTJVrP/hDsfZOtR2mJaOpjTQtGlzLyMQLTyvYqJIQCBFAsVF6trFN
 yJHS9OuvrO1hdO3JdfjQEM+/QswdoQN4Wv4pUI6PcSJsHi8nGTJX6rRcO k=;
IronPort-SDR: sh/mYkNm0w7U8qD8vmxXEf50rvhX5vgl8boba5UFNT+Gie7eTRc2Nu1whcyXfttLtiJVNkb6Bf
 2HJbI0RIxMHQ==
X-IronPort-AV: E=Sophos;i="5.72,386,1580774400"; d="scan'208";a="37157160"
Received: from sea32-co-svc-lb4-vlan3.sea.corp.amazon.com (HELO
 email-inbound-relay-1d-98acfc19.us-east-1.amazon.com) ([10.47.23.38])
 by smtp-border-fw-out-9102.sea19.amazon.com with ESMTP;
 15 Apr 2020 08:43:42 +0000
Received: from u8ac3f2494b6e5c.ant.amazon.com
 (iad7-ws-svc-lb50-vlan2.amazon.com [10.0.93.210])
 by email-inbound-relay-1d-98acfc19.us-east-1.amazon.com (Postfix) with ESMTPS
 id F023DA218E; Wed, 15 Apr 2020 08:43:37 +0000 (UTC)
Received: from u8ac3f2494b6e5c.ant.amazon.com (localhost [127.0.0.1])
 by u8ac3f2494b6e5c.ant.amazon.com (8.15.2/8.15.2/Debian-3) with ESMTPS id
 03F8hZjA007973
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
 Wed, 15 Apr 2020 10:43:35 +0200
Received: (from giangyi@localhost)
 by u8ac3f2494b6e5c.ant.amazon.com (8.15.2/8.15.2/Submit) id 03F8hYvM007966;
 Wed, 15 Apr 2020 10:43:34 +0200
From: Jiang Yi <giangyi@amazon.com>
To: Marc Zyngier <maz@kernel.org>
Subject: [PATCH] KVM: arm/arm64: release kvm->mmu_lock in loop to prevent
 starvation
Date: Wed, 15 Apr 2020 10:42:29 +0200
Message-Id: <20200415084229.29992-1-giangyi@amazon.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_014350_814746_F3B9ADCE 
X-CRM114-Status: UNSURE (   8.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [207.171.184.29 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, Jiang Yi <giangyi@amazon.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Do cond_resched_lock() in stage2_flush_memslot() like what is done in
unmap_stage2_range() and other places holding mmu_lock while processing
a possibly large range of memory.

Signed-off-by: Jiang Yi <giangyi@amazon.com>
---
 virt/kvm/arm/mmu.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
index e3b9ee268823..7315af2c52f8 100644
--- a/virt/kvm/arm/mmu.c
+++ b/virt/kvm/arm/mmu.c
@@ -417,16 +417,19 @@ static void stage2_flush_memslot(struct kvm *kvm,
 	phys_addr_t next;
 	pgd_t *pgd;
 
 	pgd = kvm->arch.pgd + stage2_pgd_index(kvm, addr);
 	do {
 		next = stage2_pgd_addr_end(kvm, addr, end);
 		if (!stage2_pgd_none(kvm, *pgd))
 			stage2_flush_puds(kvm, pgd, addr, next);
+
+		if (next != end)
+			cond_resched_lock(&kvm->mmu_lock);
 	} while (pgd++, addr = next, addr != end);
 }
 
 /**
  * stage2_flush_vm - Invalidate cache for pages mapped in stage 2
  * @kvm: The struct kvm pointer
  *
  * Go through the stage 2 page tables and invalidate any cache lines
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
