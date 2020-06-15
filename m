Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9983B1F9140
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 10:20:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KT8lKJJX8bnbvm/iZ+Mc0SC4i0Z5F2ajmBcuEE4jH8Y=; b=Ku2npM8Y5av6iH
	EeOuLNxPMSimOm0vk7Bp08lYWssv8EWvHDdJMIdodTNZa9DLqCw6yVWHW2p9wAdoOj3BmSZzpVUw8
	JdrDpyQe2NjCyr9xw2g0WJx73N+6yLtg6kSnPV7s2g0y+t4HAJutb3EUt55GdWh16+cplZB+Y5Zie
	HsrdMW1jEQ2xkP0Oq9V1Nrc/6ARzsK/LwpFMxKSFOXbVW3eDiAK069x4xmnxREGHbnEX343Zr8WpS
	sU01hWJcq9JPB5zUoBrrIpvqLyAGjxkzKnic21d2yp6eeNxlZ1yCAD1vDwC2344ydhxpV2FT3M50J
	rLOID50IjP3uPF7uz0+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkkLz-0003hu-KQ; Mon, 15 Jun 2020 08:20:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkkLd-0002sS-Kf
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 08:20:06 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 81D2B2053B;
 Mon, 15 Jun 2020 08:20:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592209204;
 bh=rn6yKK06LpzRw/3dsq0h1xocnLbW3SUFTAd2Sa8+1Js=;
 h=From:To:Cc:Subject:Date:From;
 b=YWtLZGQyd7nbuuYsMvmTnST0IZDFzzhO9C/apw+MIVjPu8F//TT/q/odf8KcBnu/g
 kQRjs69i3amQsA177aT9+pF5TTUI85VSEjMlFL679jKIVBEIn9BlrjaJ1Qvbun4oL/
 UOZwW4WuBQ5zAmwPQLaPAf3q1FKAxQMcQCjeiQ4A=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=wait-a-minute.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jkkLb-0031ew-1k; Mon, 15 Jun 2020 09:20:03 +0100
From: Marc Zyngier <maz@kernel.org>
To: kvm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu
Subject: [PATCH 0/4] KVM/arm64: Enable PtrAuth on non-VHE KVM
Date: Mon, 15 Jun 2020 09:19:50 +0100
Message-Id: <20200615081954.6233-1-maz@kernel.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: kvm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com, kernel-team@android.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_012005_706707_016AC26B 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kernel-team@android.com, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Not having PtrAuth on non-VHE KVM (for whatever reason VHE is not
enabled on a v8.3 system) has always looked like an oddity. This
trivial series remedies it, and allows a non-VHE KVM to offer PtrAuth
to its guests.

In the tradition of not having separate security between host-EL1 and
EL2, EL2 reuses the keys set up by host-EL1. It is likely that, should
we switch to a mode where EL2 is more distrusting of EL1, we'd have
private keys there.

The last patch is just an optimisation which I've lobbed with the rest
of the series in order not to forget it.

Marc Zyngier (4):
  KVM: arm64: Enable Pointer Authentication at EL2 if available
  KVM: arm64: Allow ARM64_PTR_AUTH when ARM64_VHE=n
  KVM: arm64: Allow PtrAuth to be enabled from userspace on non-VHE
    systems
  KVM: arm64: Check HCR_EL2 instead of shadow copy to swap PtrAuth
    registers

 arch/arm64/Kconfig                   |  4 +---
 arch/arm64/include/asm/kvm_ptrauth.h |  4 ++--
 arch/arm64/kvm/hyp-init.S            | 11 +++++++++++
 arch/arm64/kvm/reset.c               | 21 ++++++++++-----------
 4 files changed, 24 insertions(+), 16 deletions(-)

-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
