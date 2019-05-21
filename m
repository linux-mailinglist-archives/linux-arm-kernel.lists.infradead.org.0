Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DF512501E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 15:25:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=k+qp14+Xq3flU5ltGsrZh+K1fVLmYQ4Cf0tda/jO3zc=; b=J5E
	6gX4jRr2xXyvLNE11V3Eh2F5VZ0X9cg5O46D0NAwphZTr5DZrx/Y5fcw0vJ1eodWF/g00HVMicrV8
	8vDqoJu36fu3ucFt0vcPSSV89lcIJE1DARmQssMSCgjuo8e8q6CLi2cfsG3NuMqCMVRaN3OhuJm62
	MUGp7Qdfw/UwCpocGvaINFOqIdOur93il+qMcesrYKFmQbWXN07z5XPkzOsLR7SiEsCqwqzidOdEZ
	S8q9ZZcZ7syZXtNsIT+4yXzZm4S3R3pwJshG9CLdxuC8eVLNTawNnORhIrC7cviVgP0RZwznWQXlj
	nRkSGsPT0sAukqO//11U/XKIHdXR2tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT4m9-0005pj-VU; Tue, 21 May 2019 13:25:53 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT4m2-0005p6-Ou
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 13:25:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3D7FA80D;
 Tue, 21 May 2019 06:25:44 -0700 (PDT)
Received: from localhost (e113682-lin.copenhagen.arm.com [10.32.144.41])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8C75D3F5AF;
 Tue, 21 May 2019 06:25:43 -0700 (PDT)
From: Christoffer Dall <christoffer.dall@arm.com>
To: kvmarm@lists.cs.columbia.edu,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH] MAINTAINERS: KVM: arm/arm64: Remove myself as maintainer
Date: Tue, 21 May 2019 15:25:40 +0200
Message-Id: <20190521132540.12729-1-christoffer.dall@arm.com>
X-Mailer: git-send-email 2.18.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_062546_814917_435656A6 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: kvm@vger.kernel.org, suzuki.poulose@arm.com,
 Marc Zyngier <marc.zyngier@arm.com>, julien.thierry@arm.com,
 Christoffer Dall <christoffer.dall@arm.com>, james.morse@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I no longer have time to actively review patches and manage the tree and
it's time to make that official.

Huge thanks to the incredible Linux community and all the contributors
who have put up with me over the past years.

I also take this opportunity to remove the website link to the Columbia
web page, as that information is no longer up to date and I don't know
who manages that anymore.

Signed-off-by: Christoffer Dall <christoffer.dall@arm.com>
---
 MAINTAINERS | 2 --
 1 file changed, 2 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 5cfbea4ce575..4ba271a8e0ef 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -8611,14 +8611,12 @@ F:	arch/x86/include/asm/svm.h
 F:	arch/x86/kvm/svm.c
 
 KERNEL VIRTUAL MACHINE FOR ARM/ARM64 (KVM/arm, KVM/arm64)
-M:	Christoffer Dall <christoffer.dall@arm.com>
 M:	Marc Zyngier <marc.zyngier@arm.com>
 R:	James Morse <james.morse@arm.com>
 R:	Julien Thierry <julien.thierry@arm.com>
 R:	Suzuki K Pouloze <suzuki.poulose@arm.com>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 L:	kvmarm@lists.cs.columbia.edu
-W:	http://systems.cs.columbia.edu/projects/kvm-arm
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/kvmarm/kvmarm.git
 S:	Maintained
 F:	arch/arm/include/uapi/asm/kvm*
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
