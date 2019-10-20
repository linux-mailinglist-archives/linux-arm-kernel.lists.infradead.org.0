Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57972DDE07
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 20 Oct 2019 12:13:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hkr+gWPBZm8s3MzyFgflgXK/SfEhNSDjHstm+bKfrGQ=; b=n8pdBgxYiKNZvZ
	VQas0wMYj12ClxQ1CuaP5GizrIbPq/BSDAZfM4KdeCpptgLk2vp1sN2wqWXEhHY2wAkHTSZwOMUu1
	72UPZmU8Uk/bot083YuiSciF+eIUY4tz7VEW6Kd6yzinZ05kPKdNl/1lrd1ArYCTtNlP1vlgqmd+e
	eXRqT/1aUHwSIPg/7RV7B2E0GuN/EC6fA5y7mJlspdDpJzULuqkr3RjWKR4IBRtn/pGMDU4VXZt4h
	sDIAWQP6utkMSQIe1kV1LQ60u+XQB7ecLRrxidfh/cLJQpMd+Y3BO5GexSUeXFgitcikzNaB7xbE4
	6cErvLJmH98NXVV65A9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iM8Be-0004ID-W9; Sun, 20 Oct 2019 10:11:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iM8BT-0004H9-HH
 for linux-arm-kernel@lists.infradead.org; Sun, 20 Oct 2019 10:11:36 +0000
Received: from big-swifty.lan (78.163-31-62.static.virginmediabusiness.co.uk
 [62.31.163.78])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 89A342190F;
 Sun, 20 Oct 2019 10:11:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571566294;
 bh=R9nxM6A3Yhddcl9A7C/26LLhq+KqjO+NyOwb1yqAA94=;
 h=From:To:Cc:Subject:Date:From;
 b=wZl1P5TR+YzkoKz8Z0Krfdf4skT5kHoKhxSmiYkJoZu/u3uDDGVRFMn0t4GTos/u9
 +masS9rK4tdB5WNUk7ko/gKMJTmaJTpuqTCTETNz91MjZ+XPLk1mF3T/760PDMMKB5
 cAFy5HjwCjjvImUIHXutqDnA9xTObx4YpNbz5uQk=
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [GIT PULL] KVM/arm fixes for 5.4-rc5
Date: Sun, 20 Oct 2019 11:11:25 +0100
Message-Id: <20191020101129.2612-1-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_031135_599962_8A188E0B 
X-CRM114-Status: UNSURE (   9.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Andrew Murray <andrew.murray@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Paolo, Radim,

Here's the latest (and hopefully last) set of KVM/arm fixes for
5.4. 4 patches exclusively covering our PMU emulation, which exhibited
several different flavours of brokenness.

Please pull,

	M.

The following changes since commit da0c9ea146cbe92b832f1b0f694840ea8eb33cce:

  Linux 5.4-rc2 (2019-10-06 14:27:30 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/kvmarm/kvmarm.git tags/kvmarm-fixes-5.4-2

for you to fetch changes up to 8c3252c06516eac22c4f8e2506122171abedcc09:

  KVM: arm64: pmu: Reset sample period on overflow handling (2019-10-20 10:47:07 +0100)

----------------------------------------------------------------
KVM/arm fixes for 5.4, take #2

Special PMU edition:

- Fix cycle counter truncation
- Fix cycle counter overflow limit on pure 64bit system
- Allow chained events to be actually functional
- Correct sample period after overflow

----------------------------------------------------------------
Marc Zyngier (4):
      KVM: arm64: pmu: Fix cycle counter truncation
      arm64: KVM: Handle PMCR_EL0.LC as RES1 on pure AArch64 systems
      KVM: arm64: pmu: Set the CHAINED attribute before creating the in-kernel event
      KVM: arm64: pmu: Reset sample period on overflow handling

 arch/arm64/kvm/sys_regs.c |  4 ++++
 virt/kvm/arm/pmu.c        | 48 ++++++++++++++++++++++++++++++++++-------------
 2 files changed, 39 insertions(+), 13 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
