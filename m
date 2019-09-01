Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53730A4C3A
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Sep 2019 23:13:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Y9H7W0zVxRqWHO4CC/3cufcp/f678cFYlGpnJ8wc7/Y=; b=AUHRmfSzBpTS9r
	tjmoYA6L3Dzx/SAD5Rmc7PVjeW6OSoVakCMDtkwD1ZnqUYK4CP8uhYSLDKWRuy0tS9BKh4YH62/WN
	FO0Is4QA9yCDGclK9CZWixUoYzRn75XYazidRIYG07jQ1QNgaLVo586PSTP1b+rY0SKh/TqspHDJS
	w+ICppKFjlVyp1196C0CLPtcCxRenjLWW+W0nhaMTttdykssfLYqjlJBqmvDRz6UnwF/LoYsl6HcQ
	TX1QmtUGlohtfjII03O5wdz+CJwRAo+9z80Ma+yKSSuTDWTjSUw9eR/e7cQBLS+iylxALh6hkTpHS
	wraRDqT49VvV02YdnvCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4X9r-0006EO-UV; Sun, 01 Sep 2019 21:13:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i4X9h-0006CN-FF
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Sep 2019 21:13:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 552DE28;
 Sun,  1 Sep 2019 14:12:56 -0700 (PDT)
Received: from why.lan (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 180C73F718;
 Sun,  1 Sep 2019 14:12:54 -0700 (PDT)
From: Marc Zyngier <maz@kernel.org>
To: kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 kvm@vger.kernel.org
Subject: [PATCH 0/3] arm64: KVM: Kiss hyp_alternate_select() goodbye
Date: Sun,  1 Sep 2019 22:12:34 +0100
Message-Id: <20190901211237.11673-1-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_141301_556613_31DB3AB9 
X-CRM114-Status: UNSURE (   8.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

hyp_alternate_select() is a leftover from the my second attempt at
supporting VHE (the first one was never merged, thankfully), and is
now an irrelevant relic. It was a way to patch function pointers
without having to dereference memory, a bit like static keys for
function calls.

Lovely idea, but since Christoffer mostly separated the VHE and !VHE
hypervisor paths, most of the uses of hyp_alternate_select() are
gone. What is left is two instances that are better replaced by
already existing static keys. One of the instances becomes
cpus_have_const_cap(), and the rest is a light sprinkling of
has_vhe().

So off it goes.

Marc Zyngier (3):
  arm64: KVM: Drop hyp_alternate_select for checking for
    ARM64_WORKAROUND_834220
  arm64: KVM: Replace hyp_alternate_select with has_vhe()
  arm64: KVM: Kill hyp_alternate_select()

 arch/arm64/include/asm/kvm_hyp.h | 24 ---------------------
 arch/arm64/kvm/hyp/switch.c      | 17 ++-------------
 arch/arm64/kvm/hyp/tlb.c         | 36 +++++++++++++++++++-------------
 3 files changed, 24 insertions(+), 53 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
