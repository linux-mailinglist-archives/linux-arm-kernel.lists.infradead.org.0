Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ED3BC4A75
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 11:20:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x1juaOBbORkjFVj7Xy2lQLuZym3C6p8DeF8AklMa+Ik=; b=DdgQJKvo5fxX/s
	aytpt59zTKcNrIf5v9cx0zLAAW3H7l4juH/H77l1NvdGZ21U3cjwaTTWr7XbtjEWJ642VbxZqJGty
	XRK60uJKOf9AiVLZoWHZc1uz1WgaEEtWMaf67NcphYZJAf4bewR9AgGeuo64CJCfxeN0c92ORkeWk
	u1hwQx+iEYosgd5kFmBmmpyDrDPkKqnCVNeFja3pSZ9T73oew3oaAK6N5m1AFrxZWPCVOZiyWXnXP
	ngkdRxQjUaM/vfp5ozQCh2kH2chtZp+QqYTZDC2mJOdKE/yDeyW/3FdMo7OtE1xmKf3kFlukPUIC3
	j86K2QPFNxY170h43/Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFaoI-0000al-CG; Wed, 02 Oct 2019 09:20:39 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFabg-0007m7-Iz
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 09:14:32 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by cheepnis.misterjones.org with esmtpsa
 (TLSv1.2:DHE-RSA-AES128-GCM-SHA256:128) (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iFaat-00057p-JN; Wed, 02 Oct 2019 11:06:47 +0200
From: Marc Zyngier <maz@kernel.org>
To: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH v3 2/2] arm64: Document ICC_CTLR_EL3.PMHE setting requirements
Date: Wed,  2 Oct 2019 10:06:13 +0100
Message-Id: <20191002090613.14236-3-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191002090613.14236-1-maz@kernel.org>
References: <20191002090613.14236-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: will@kernel.org, catalin.marinas@arm.com,
 suzuki.poulose@arm.com, james.morse@arm.com, julien.thierry.kdev@gmail.com,
 huawei.libin@huawei.com, uohanjun@huawei.com, liwei391@huawei.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-Spam-Note: CRM114 invocation failed
X-Spam-Note: SpamAssassin invocation failed
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
Cc: linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, uohanjun@huawei.com,
 huawei.libin@huawei.com, liwei391@huawei.com,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It goes without saying, but better saying it: the kernel expects
ICC_CTLR_EL3.PMHE to have the same value across all CPUs, and
for that setting not to change during the lifetime of the kernel.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 Documentation/arm64/booting.rst | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/arm64/booting.rst b/Documentation/arm64/booting.rst
index d3f3a60fbf25..5d78a6f5b0ae 100644
--- a/Documentation/arm64/booting.rst
+++ b/Documentation/arm64/booting.rst
@@ -213,6 +213,9 @@ Before jumping into the kernel, the following conditions must be met:
 
       - ICC_SRE_EL3.Enable (bit 3) must be initialiased to 0b1.
       - ICC_SRE_EL3.SRE (bit 0) must be initialised to 0b1.
+      - ICC_CTLR_EL3.PMHE (bit 6) must be set to the same value across
+        all CPUs the kernel is executing on, and must stay constant
+        for the lifetime of the kernel.
 
   - If the kernel is entered at EL1:
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
