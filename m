Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0DA211B95C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 17:57:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=n07Bse3YmJd+qcs/EYeCrXE87ONUltaLnasSJBKQy+g=; b=gpjlpJOoDHAG0H
	ssEmsIDy1WEoP0a2OFNbUXtWjjZp1vB9tOwVhK9o0BRd5WSHOtAyGDrrsysEgTcmoUTJjfGsopjyk
	ySyh1uqAUM2SNCMmtT/juUNpEOG7ZshYTrBKLml0bq93kC1wlhGwaP/bYy1RoJIvGWke6Ak7o5CJt
	4tp9fO/XGwS0MPLl05ibr0qGxJKeVFMZN9sMP+yteNoQ9Kqcx5uVVw1Xn+6awDJJ7ochKXQW+3JUf
	W8gU+Pr1cLiqD9fJbkEc7n8VFgwKIPxnWm/M6gDspoprlPcD7OmPYKDYM5JkTjUDbhDaeXvQGYnZ0
	385MgdnWDy3twktrHxkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if5Id-0003f3-L6; Wed, 11 Dec 2019 16:57:19 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if5IS-0003dj-8S
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 16:57:09 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by cheepnis.misterjones.org with esmtpsa
 (TLSv1.2:DHE-RSA-AES128-GCM-SHA256:128) (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1if5IN-00076q-Pr; Wed, 11 Dec 2019 17:57:04 +0100
From: Marc Zyngier <maz@kernel.org>
To: kvm@vger.kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/3] KVM: arm/arm64: user_mem_abort() assorted fixes
Date: Wed, 11 Dec 2019 16:56:47 +0000
Message-Id: <20191211165651.7889-1-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: kvm@vger.kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com,
 Christoffer.Dall@arm.com, alexandru.elisei@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_085708_445120_A850C818 
X-CRM114-Status: UNSURE (   7.85  )
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
Cc: Alexandru Elisei <alexandru.elisei@arm.com>,
 James Morse <james.morse@arm.com>, Christoffer Dall <Christoffer.Dall@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Alexandru recently reported an interesting issue with our handling
of device mapping in user_mem_abort(), which is sligtly less than
correct. The first patch of the series address this issue, and
is a stable candidate.

While I was looking at this code, I spotted what I think is a potential
issue when handling a poisoned page, where we can race with a VMA
being removed. This second patch is mostly a RFC, as this is not
my area of expertise.

Finally, the last patch is a cleanup removing an unnecessary console
output.

Marc Zyngier (3):
  KVM: arm/arm64: Properly handle faulting of device mappings
  KVM: arm/arm64: Re-check VMA on detecting a poisoned page
  KVM: arm/arm64: Drop spurious message when faulting on a non-existent
    mapping

 virt/kvm/arm/mmu.c | 47 +++++++++++++++++++++++++++++++++++++++-------
 1 file changed, 40 insertions(+), 7 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
