Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA9F7192027
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 05:27:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=syz/4Uj9qIy8uOSqF2jVgYiJob1cUk8yPd075Bljlpw=; b=TeC+qFUBrEBHfJ
	mcrb0zkA5bNWmHhVKBHjqxrOmblTtirqA6vrW4IpVBLLPA5LmSIqbkalRCHR9MlC8EWDvsxLi74Mq
	LVEel4LWsCv2vFAKPF7nfkmofTsAIUjddqIPGLsn7bKOYVTgZItC7PpU6j/QviqcqDwrZJG7nztEZ
	22+oEJSKygpzeYLbIgVMgqRHto2LDM4KEICbG3+VyRStCS2KuxC5aovP6YII88mepVpuK+eowBk2J
	xjfOA1+ykAbzpegBnqhjH7oUzGX4PLyxetiEdOpdpuOYxcana+18M/T5O1kMMqSkpVafVkBg+fHWF
	/7MBR10j1KRJERn0GJ8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGxdW-0001cb-Pc; Wed, 25 Mar 2020 04:27:26 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGxd2-0001SK-MH
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 04:26:58 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id EBDB983B08E26A5DEBB8;
 Wed, 25 Mar 2020 12:26:38 +0800 (CST)
Received: from linux-kDCJWP.huawei.com (10.175.104.212) by
 DGGEMS408-HUB.china.huawei.com (10.3.19.208) with Microsoft SMTP Server id
 14.3.487.0; Wed, 25 Mar 2020 12:26:28 +0800
From: Keqian Zhu <zhukeqian1@huawei.com>
To: <kvm@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <kvmarm@lists.cs.columbia.edu>
Subject: [PATCH 0/3] KVM: arm64: Some optimizations about enabling dirty log
Date: Wed, 25 Mar 2020 12:24:20 +0800
Message-ID: <20200325042423.12181-1-zhukeqian1@huawei.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-Originating-IP: [10.175.104.212]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_212656_880018_718AC3C2 
X-CRM114-Status: UNSURE (   6.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 Keqian Zhu <zhukeqian1@huawei.com>,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 James Morse <james.morse@arm.com>, wanghaibin.wang@huawei.com,
 Jay Zhou <jianjay.zhou@huawei.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Will Deacon <will@kernel.org>, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series is for "queue" branch of [1] and based on patches[2].
It brings obvious time decreasement for migration with different page
size.

The QEMU counterpart will be sent out later, thanks.

[1] git://git.kernel.org/pub/scm/virt/kvm/kvm.git
[2] https://lore.kernel.org/kvm/20200227013227.1401-1-jianjay.zhou@huawei.com/

Keqian Zhu (3):
  KVM/memslot: Move the initial set of dirty bitmap to arch
  KVM/arm64: Support enabling dirty log graually in small chunks
  KVM/arm64: Only set bits of dirty bitmap with valid translation
    entries

 Documentation/virt/kvm/api.rst    |   2 +-
 arch/arm/include/asm/kvm_host.h   |   2 -
 arch/arm64/include/asm/kvm_host.h |   5 +-
 arch/x86/kvm/x86.c                |   3 +
 virt/kvm/arm/mmu.c                | 175 +++++++++++++++++++++++++-----
 virt/kvm/kvm_main.c               |   3 -
 6 files changed, 157 insertions(+), 33 deletions(-)

-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
