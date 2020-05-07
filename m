Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7E2A1C8B1E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 14:38:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yHqEN0Buo9z/Hv8c/ZnAfIlwc8XAu8T7WhvL1Nfn71k=; b=b6qJy/y3RXZzVx
	TOzQr70pWjs4M+pJnjOfudIdY/KWr4XhOwZG3F0fZvWqS6PSc+/mgqhG0bOJl8eMOjCrQ1nOE+elg
	B1ZHZ1kRu+dEq8WhFwpIvV3Q6E6dtTK1xwd2X3cHX8iVoprO1g0OdB5g5CkKi9DZ48tAJbNJWohFv
	nGwZQ0m5nZBHFQuR0/5XdLwqRGmJmls5MjvWj7Nx588UAvuV7NJ0rvW1ZThILNJcGyG8ElHRpfmF5
	q1ujRgJMrHvAaFicBmFTz+XSYl3l8D4h9KMvjvOWYglacgg4a1Jp6RMgrQNuDQsILLlYk9EvEP3hy
	vMmxKp3uo9pB+oS09XOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWfmo-0003ND-3g; Thu, 07 May 2020 12:37:58 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWflV-00029a-Hb
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 12:36:39 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id C0507E11C10FEA00DF20;
 Thu,  7 May 2020 20:36:31 +0800 (CST)
Received: from DESKTOP-8RFUVS3.china.huawei.com (10.173.222.27) by
 DGGEMS413-HUB.china.huawei.com (10.3.19.213) with Microsoft SMTP Server id
 14.3.487.0; Thu, 7 May 2020 20:36:22 +0800
From: Zenghui Yu <yuzenghui@huawei.com>
To: <kvmarm@lists.cs.columbia.edu>, <suzuki.poulose@arm.com>
Subject: [PATCH resend 0/2] KVM: arm64: Unify stage2 mapping for THP backed
 memory
Date: Thu, 7 May 2020 20:35:44 +0800
Message-ID: <20200507123546.1875-1-yuzenghui@huawei.com>
X-Mailer: git-send-email 2.23.0.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_053637_761114_417C22CA 
X-CRM114-Status: UNSURE (   6.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [45.249.212.35 listed in wl.mailspike.net]
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
Cc: kvm@vger.kernel.org, maz@kernel.org, christoffer.dall@arm.com,
 linux-kernel@vger.kernel.org, eric.auger@redhat.com, zhengxiang9@huawei.com,
 james.morse@arm.com, julien.thierry.kdev@gmail.com,
 Zenghui Yu <yuzenghui@huawei.com>, wanghaibin.wang@huawei.com,
 linux-arm-kernel@lists.infradead.org, amurray@thegoodpenguin.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series was originally posted by Suzuki K Poulose a year ago [*],
with the aim of cleaning up the handling of the stage2 huge mapping for
THP. I think this still helps to make the current code cleaner, so
rebase it on top of kvmarm/master and repost it for acceptance.

Thanks!

[*] https://lore.kernel.org/kvm/1554909832-7169-1-git-send-email-suzuki.poulose@arm.com/

Suzuki K Poulose (2):
  KVM: arm64: Clean up the checking for huge mapping
  KVM: arm64: Unify handling THP backed host memory

 virt/kvm/arm/mmu.c | 121 ++++++++++++++++++++++++---------------------
 1 file changed, 65 insertions(+), 56 deletions(-)

-- 
2.19.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
