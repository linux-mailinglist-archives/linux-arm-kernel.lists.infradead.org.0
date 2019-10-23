Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71D55E11FE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 08:19:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YdE0QiGQday4/cU/WCTS14os174DHgoXihScIpt7Zpw=; b=NaBn8pplOOwh6l
	ACFHJvtfbifnniu15KCJX49llsc8s7Q6YeAILYNiADkXItwI9+6IyWb3moJdhW2+wUm2+jdRha8ZH
	mZQJfs36ZpcvHlvyMHTx4UcT8Rkv8sekqtBGzWysCW2mI2cdirGUvzv/wy5rqqrreuOld8nkwE/3C
	wRPfD5g8h3iaPjfV0PlvOxdDlgJ6DvIAG2EqeixcI1nE63btAbLWWXUae6bqZuoS9RKpwMTD8bT1H
	hIVpjktkRXHxvrAuzKRk7ZUDr9BLAd/U1IL5aQW073DwdF9meezzqw6hfGCw2zywW/uV9jkyY68AL
	6/Oaar9FtS9NTav6atLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN9z9-0004O1-2o; Wed, 23 Oct 2019 06:19:07 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN9yy-0004MW-6p
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 06:18:58 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 7DE2C461283CA9B745CD;
 Wed, 23 Oct 2019 14:18:40 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS414-HUB.china.huawei.com (10.3.19.214) with Microsoft SMTP Server id
 14.3.439.0; Wed, 23 Oct 2019 14:18:31 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: Marc Zyngier <maz@kernel.org>, James Morse <james.morse@arm.com>, "Julien
 Thierry" <julien.thierry.kdev@gmail.com>, Suzuki K Poulose
 <suzuki.poulose@arm.com>
Subject: [PATCH -next] KVM: arm/arm64: Remove duplicated include from arm.c
Date: Wed, 23 Oct 2019 06:18:31 +0000
Message-ID: <20191023061831.196298-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_231856_422334_1792F100 
X-CRM114-Status: UNSURE (   6.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: kernel-janitors@vger.kernel.org, YueHaibing <yuehaibing@huawei.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove duplicated include.

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 virt/kvm/arm/arm.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
index c11d6613f4ee..db508786ad6b 100644
--- a/virt/kvm/arm/arm.c
+++ b/virt/kvm/arm/arm.c
@@ -41,8 +41,6 @@
 #include <asm/sections.h>
 
 #include <kvm/arm_hypercalls.h>
-#include <kvm/arm_pmu.h>
-#include <kvm/arm_psci.h>
 
 #ifdef REQUIRES_VIRT
 __asm__(".arch_extension	virt");






_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
