Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75C74190B32
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 11:36:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iehhXEL47gV1KSMrmMXB6TLHsXBWE4HmbBUc99EPYzc=; b=UZ1vTYCNL0Orsn
	F9xRiUiJBTOU7JZzfHrxRVrGSeSePRMYqeUiDpdXG118hDX7yuXMVKOefPYI5ZA2Nx93DeK3DfZx2
	U9Prm5PZ0Y/busi7R8+aRSyNG0EKyrHiLf7f1LNBNhcAGvTFF8Td4/7Jym4Wwb7+Z4PgpOAgaGnB0
	x4czyW0UrvODVe2R+IX+2JHgMacVHt0LkQjCtRCFEYIcjYpCm3xM/4OznCfjkK6umW/QyK6g1Qrwp
	kmrQitZ10m/f38onOGaAJDfsKPJw47kQuqFNjd5Im28AcyIq5u/HbT77hrfhOyvOWQcQ1o6XWvayh
	/SYlDWtV/DBjMS3SL/gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGgv6-00045A-WA; Tue, 24 Mar 2020 10:36:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGgsq-00013C-Cq
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 10:34:09 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BE739208E0;
 Tue, 24 Mar 2020 10:34:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585046047;
 bh=/G1FsF/xAq6LA4+vlGRopU41c40Jo/k3MSVldBBWBqk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Bnr9kZinhh4mzggrkfbK8sOy0GxJGoXxquBcLG/7WT6JS6rJalSAArFkXB0HonX1g
 HofQJHJ1fPiuzd0kx50tF9kCoM/+e2ybg/7zuoDzOTEgBjGw7b5QN0e4NzoEuyzqmM
 HxjGPzdwmQVvJWurUoXzKQ6vdOLxzmReTrjXHUFM=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jGgso-00FE8V-4v; Tue, 24 Mar 2020 10:34:06 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH v2 7/7] MAINTAINERS: RIP KVM/arm
Date: Tue, 24 Mar 2020 10:33:50 +0000
Message-Id: <20200324103350.138077-8-maz@kernel.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200324103350.138077-1-maz@kernel.org>
References: <20200324103350.138077-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, olof@lixom.net,
 arnd@arndb.de, will@kernel.org, vladimir.murzin@arm.com,
 catalin.marinas@arm.com, linus.walleij@linaro.org, christoffer.dall@arm.com,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com,
 pbonzini@redhat.com, qperret@google.com, linux@arm.linux.org.uk,
 stefan@agner.ch, jan.kiszka@siemens.com, krzk@kernel.org,
 b.zolnierkie@samsung.com, m.szyprowski@samsung.com, takashi@yoshi.email,
 daniel@makrotopia.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_033408_492809_7DC15F07 
X-CRM114-Status: GOOD (  12.03  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Takashi Yoshi <takashi@yoshi.email>,
 Vladimir Murzin <vladimir.murzin@arm.com>,
 Russell King <linux@arm.linux.org.uk>, Arnd Bergmann <arnd@arndb.de>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Quentin Perret <qperret@google.com>,
 Christoffer Dall <christoffer.dall@arm.com>, Stefan Agner <stefan@agner.ch>,
 Daniel Golle <daniel@makrotopia.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 James Morse <james.morse@arm.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jan Kiszka <jan.kiszka@siemens.com>, Olof Johansson <olof@lixom.net>,
 Paolo Bonzini <pbonzini@redhat.com>, Will Deacon <will@kernel.org>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Drop the KVM/arm entries from the MAINTAINERS file.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 MAINTAINERS | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 6158a143a13e..e84a94e5a336 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -9164,7 +9164,7 @@ F:	virt/kvm/*
 F:	tools/kvm/
 F:	tools/testing/selftests/kvm/
 
-KERNEL VIRTUAL MACHINE FOR ARM/ARM64 (KVM/arm, KVM/arm64)
+KERNEL VIRTUAL MACHINE FOR ARM64 (KVM/arm64)
 M:	Marc Zyngier <maz@kernel.org>
 R:	James Morse <james.morse@arm.com>
 R:	Julien Thierry <julien.thierry.kdev@gmail.com>
@@ -9173,9 +9173,6 @@ L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 L:	kvmarm@lists.cs.columbia.edu
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/kvmarm/kvmarm.git
 S:	Maintained
-F:	arch/arm/include/uapi/asm/kvm*
-F:	arch/arm/include/asm/kvm*
-F:	arch/arm/kvm/
 F:	arch/arm64/include/uapi/asm/kvm*
 F:	arch/arm64/include/asm/kvm*
 F:	arch/arm64/kvm/
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
