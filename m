Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38BAC153217
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 14:44:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=beTyW25ZqGxDFRvMzrfpzuuN6Ekkb3ePOh51XjlchPs=; b=gCAfy2M8NKRFGJ
	mlpCnB0LK4yO9QgIV9olgCei+neWlM4DLmngnuowU7K4wnXX3xkgl6I55CVimzG/VmUm4C71UnHr8
	BlmsXqZOW+GUBjmns/DF+7O6CwzNUs0wcxxo3HsbTIaiCeN6HsKSptjkfJ5H7+mk2Yt9otsDbe4CI
	qblxjzCYOPCtp3enFkcceCVjScsw6ook5DfZhBe/3E2129yDdqkk8yHxDwgt16+bN4ks5zhuo6IjK
	pj7si45MY5OftzLuynpJN9lPmg4Kj/fsvEoFhatox9l7clJtx/cnoQE+nRG3z0cOuVMqXjCCHOIjL
	1/N5Cco2ZQfjEwamOpUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izKyT-0006QT-F8; Wed, 05 Feb 2020 13:44:13 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izKyL-0006PP-BP
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 13:44:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580910242;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=2fNNJhELYa0usfT/vmjSSmqCwrduDZp8i5id/kXZ0c4=;
 b=cSR/+L+5hnf7UoxUJA7YuPxGNRRVvTdAaHE4jYJUAkzlmKjut/gkRQvIHiD4YsuYmlrEt5
 Bkoq5Yb+iiGsppFjhK7hvbchGZsnfgGguLIV+TuUFOiP7f2gj8fRGhD1Gr/0P2a4015O2t
 V/zEOaFZ0EmQv/FjdeWaTZ72LUWOPSs=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-378-0a6kUsHqOOOOjKD-PvvkYQ-1; Wed, 05 Feb 2020 08:42:05 -0500
Received: by mail-qk1-f198.google.com with SMTP id p3so1288748qkd.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Feb 2020 05:42:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=63RqOoE/SUxs1bxyPTKTBeyS1B1iUtNQLL9J9vLKYh8=;
 b=XzuIGBAvCMljaUOq5BvsScKIaeV2VEITsUp6y8BkeiSJohfln0aVEhtuX9YeX59GoK
 N9fpPpXkbFOTCtDVdnuUr8Jx7LHL8KPlamglvIvYHfG4XOzDUuhU2UJHvOO/BJxYYisW
 r73zD0kMpepoETyC8aImX1p+QH0yqztuhsdGug2FO/4sv0fTvW8HhiymUeRvazXgX8FB
 rKTSMJXO72b8n1xIpTxviEDJEakUPmlwxdSoedhqo/UL8arO8ptcoG0QIsTQAlDFPkue
 AMucPLeP4j7E/wXSXEOSavL1NPGZkXSdVTWlV2IwDTx6bKVacOz8i1WDFYEj/YMuEdZr
 Cr9g==
X-Gm-Message-State: APjAAAVeyyXxAqGqfN2W3vyTcN0GxoExThc0NrMEKJrfVKSEl0BvDrBS
 LBg0lWhCvlLV8RqoQdflNU/RaFSLwFkm4qdEo5jDou2NSNQSFGVtR07X9YeojcRxnZiFw4bj/io
 8HlQnltZIuJVXf75aC+ZRW/kdYR8rWD4ProU=
X-Received: by 2002:a37:d0c:: with SMTP id 12mr33423426qkn.464.1580910124623; 
 Wed, 05 Feb 2020 05:42:04 -0800 (PST)
X-Google-Smtp-Source: APXvYqwZ/1/Sty6fHl96Q69KjRb0mE9NhGj48HPjM78jNDpEMNN3g2vmML86vdJ+YqD/niUHe9OAuw==
X-Received: by 2002:a37:d0c:: with SMTP id 12mr33423403qkn.464.1580910124353; 
 Wed, 05 Feb 2020 05:42:04 -0800 (PST)
Received: from dev.jcline.org ([136.56.87.133])
 by smtp.gmail.com with ESMTPSA id g62sm12797091qkd.25.2020.02.05.05.42.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Feb 2020 05:42:03 -0800 (PST)
From: Jeremy Cline <jcline@redhat.com>
To: Marc Zyngier <maz@kernel.org>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: [PATCH] KVM: arm/arm64: Fix up includes for trace.h
Date: Wed,  5 Feb 2020 08:41:46 -0500
Message-Id: <20200205134146.82678-1-jcline@redhat.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-MC-Unique: 0a6kUsHqOOOOjKD-PvvkYQ-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_054405_467851_8900BDD2 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jeremy Cline <jcline@redhat.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fedora kernel builds on armv7hl began failing recently because
kvm_arm_exception_type and kvm_arm_exception_class were undeclared in
trace.h. Add the missing include.

Signed-off-by: Jeremy Cline <jcline@redhat.com>
---

I've not dug very deeply into what exactly changed between commit
b3a608222336 (the last build that succeeded) and commit 14cd0bd04907,
but my guess was commit 0e20f5e25556 ("KVM: arm/arm64: Cleanup MMIO
handling").

Fedora's build config is available at
https://src.fedoraproject.org/rpms/kernel/blob/master/f/kernel-armv7hl-fedora.config

 virt/kvm/arm/trace.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/virt/kvm/arm/trace.h b/virt/kvm/arm/trace.h
index 204d210d01c2..cc94ccc68821 100644
--- a/virt/kvm/arm/trace.h
+++ b/virt/kvm/arm/trace.h
@@ -4,6 +4,7 @@
 
 #include <kvm/arm_arch_timer.h>
 #include <linux/tracepoint.h>
+#include <asm/kvm_arm.h>
 
 #undef TRACE_SYSTEM
 #define TRACE_SYSTEM kvm
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
