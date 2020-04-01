Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C98D019B431
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 18:59:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kBhZFXpLKwJt3bgXJbQ0kYqZSWED+ykN4kKlDUdgn7A=; b=jM64yG4Rq1hd48
	wnX3H0yTum9nPhO4NYe+XFCLnqnKckxgGu6ToXjFNMuJJy7YUZUDXc0ECYHCkz0NEhu7W4affxldA
	c6E1JWUhF2YNQWFZg9tNVyTXPViHvrP+AD55itNHErbb6tzgiJjOfGpzkleOk9kbVRmhMZAb1pDu8
	hk0EEOv05d42IR2AFQZDBFHbLmJf7BL7G3JSy/RgwTIhMP1oIYYt0NZBwvJlsS2kC5D2uSQh79fPd
	BvX+ezThmd5ocrvECl3Mh/X/xZ7FnshqdKCeMuafRdbVesJnd/2SvuKay7QE1yyvwY5JLBq8wz3Yg
	UhppTyYBrmQNXxO0RA3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJghx-0007YR-0E; Wed, 01 Apr 2020 16:59:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJghD-00073M-Js
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 16:58:37 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ADA822063A;
 Wed,  1 Apr 2020 16:58:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585760310;
 bh=CBZKD+m/KX3im6HA1XqrNu2FJtS3v/4jycpmEZoi/q4=;
 h=From:To:Cc:Subject:Date:From;
 b=j1gug4YUthSAfCSHVZmmWwy70QFl6X5tQUOrJ5xDx3OPiLRJpn6FOp3RTBHtjjKwZ
 YQNyuXzfKl14Oq3ixq8UltLEJVl0TulMcTzLckPULcjx3SpoaQySvVZtUrzN+s4Xlb
 G7oTZPpkbKeLfB0hIzIqMNzT4uOhrY7Yn9u5ln6k=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jJghA-00Haev-ND; Wed, 01 Apr 2020 17:58:28 +0100
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH 0/2] KVM: arm64: PSCI fixes
Date: Wed,  1 Apr 2020 17:58:14 +0100
Message-Id: <20200401165816.530281-1-maz@kernel.org>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, Christoffer.Dall@arm.com,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_095835_029818_F7551D73 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: James Morse <james.morse@arm.com>,
 Christoffer Dall <Christoffer.Dall@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Christoffer recently pointed out that we don't narrow the arguments to
SMC32 PSCI functions called by a 64bit guest. This could result in a
guest failing to boot its secondary CPUs if it had junk in the upper
32bits. Yes, this is silly, but the guest is allowed to do that. Duh.

Whist I was looking at this, it became apparent that we allow a 32bit
guest to call 64bit functions, which the spec explicitly forbids. Oh
well, another patch.

This has been lightly tested, but I feel that we could do with a new
set of PSCI corner cases in KVM-unit-tests (hint, nudge... ;-).

Marc Zyngier (2):
  KVM: arm64: PSCI: Narrow input registers when using 32bit functions
  KVM: arm64: PSCI: Forbid 64bit functions for 32bit guests

 virt/kvm/arm/psci.c | 40 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)

-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
