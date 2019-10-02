Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64027C4A6C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 11:20:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ljfYRkmS222tqw/Ye0qu4Ce16l+Glf5s2/w9/Q7/fwc=; b=ZqWIdaKSvAe93r
	HRZmd5PI7dAB5dMErCZ2Mn/TtjLaa6jAdGOhFDBJZnjeHQFNDFiBtRprcyPa+FARJHmP5JxwA05Zn
	tIlaRQV4AEj5gh8uTAq5R+49dK2YSzFy8GbQKN1vLhTSnNIxZlM0zoZkGqytjQm9Vibj77T5046r8
	WCkhjwcDpgPwn03LdgxUDUl05UueXDIFUlCPUjiauZQcyjPu94A76rwNRMWzC691mvLN11U9u+zYS
	Rd70ZMJO+OEdYxU+DM1W6dpdcZ0joHmV2/M4K0gAq+HoLyiDYX6JUQqHQOlIcPiByxxUORKihPIkR
	wjcNj2a0Ubx5Ndx81RGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFanm-0000I3-IY; Wed, 02 Oct 2019 09:20:06 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFabg-0007mA-Iy
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 09:14:34 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by cheepnis.misterjones.org with esmtpsa
 (TLSv1.2:DHE-RSA-AES128-GCM-SHA256:128) (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iFaas-00057p-BF; Wed, 02 Oct 2019 11:06:46 +0200
From: Marc Zyngier <maz@kernel.org>
To: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH v3 0/2] arm64: Relax ICC_PMR_EL1 synchronisation when possible
Date: Wed,  2 Oct 2019 10:06:11 +0100
Message-Id: <20191002090613.14236-1-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
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

This is a very late update on [1], fixing the 32bit compilation issue that
was present in v2, and adding an extra message in the kernel log to find out
what is going on.

[1] http://lore.kernel.org/r/20190802125208.73162-1-maz@kernel.org

Marc Zyngier (2):
  arm64: Relax ICC_PMR_EL1 accesses when ICC_CTLR_EL1.PMHE is clear
  arm64: Document ICC_CTLR_EL3.PMHE setting requirements

 Documentation/arm64/booting.rst    |  3 +++
 arch/arm64/include/asm/barrier.h   | 12 ++++++++++++
 arch/arm64/include/asm/daifflags.h |  3 ++-
 arch/arm64/include/asm/irqflags.h  | 19 ++++++++++---------
 arch/arm64/include/asm/kvm_host.h  |  3 +--
 arch/arm64/kernel/entry.S          |  6 ++++--
 arch/arm64/kvm/hyp/switch.c        |  4 ++--
 drivers/irqchip/irq-gic-v3.c       | 20 ++++++++++++++++++++
 include/linux/irqchip/arm-gic-v3.h |  2 ++
 9 files changed, 56 insertions(+), 16 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
