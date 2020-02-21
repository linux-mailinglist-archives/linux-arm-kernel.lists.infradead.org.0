Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FE7E1683A5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 17:35:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3G8IfKcU9/hR+IRsJ6PA3BnRlIirqClUVMGjZUkXdp4=; b=ArPoycE2wdYXM2
	+5VTyL3Q4g1ctKk4AKM5VFxrY1VMAvPvxPCymuK8EuGWlil2egiIv/3m+cds6DHR9kjOXClP4lPHL
	usplVs3CRNVUo8ATr3VmD07cEaGpOkKnTXQ18pMjnITQoBRwUHIDY7XF+7VP44fcESsYT2ceQRDR6
	Hj/T7mzmyAMhG4GNY/ZIEzx0xFU+pLnbnIW1tiO7vd2Z9UfpR3KfROK8SXC8uhIoqjRyetgudXYVB
	hXZLpSyvF4Uf3O9QtRQlFLoDKIS6YzMrsxrPlDNfRYpzLcD1YrbE+tBXdthjrgykS9xETgevPgiS1
	rI9wSTaOHFoMAIIx4mKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5BH8-0008N6-1b; Fri, 21 Feb 2020 16:35:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5BGr-0008M8-RD
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 16:35:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 379A430E;
 Fri, 21 Feb 2020 08:35:21 -0800 (PST)
Received: from eglon.cambridge.arm.com (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6D1F23F68F;
 Fri, 21 Feb 2020 08:35:20 -0800 (PST)
From: James Morse <james.morse@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/4] firmware: arm_sdei: cleanup locking issues
Date: Fri, 21 Feb 2020 16:35:05 +0000
Message-Id: <20200221163509.47254-1-james.morse@arm.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_083521_923943_F7A711A5 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Liguang Zhang <zhangliguang@linux.alibaba.com>, Will Deacon <will@kernel.org>,
 James Morse <james.morse@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

Liguang Zhang spotted the SDEI driver would try to take the same
lock twice on its resume from hibernate path. Testing this uncovered
that the re-enable flags are updated in the wrong place, meaning the
driver never tries to re-register shared events on resume from
hibernate. Oops.

The first two patches fix these two issues. As the bug was found
by inspection, and its always been broken, I think this can wait for
v5.7.

The last two patches cleanup some unnecessary work, and close
another cpuhp race by grabbing cpus_read_lock().

Any chance this can go via arm64, which is the route all the patches
to this file have taken so far? The SOC tree is the obvious alternative.
If its easier, I can send a pull request.

Bugs welcome,

Thanks,

James Morse (2):
  firmware: arm_sdei: fix double-lock on hibernate with shared events
  firmware: arm_sdei: Use cpus_read_lock() to avoid races with cpuhp

Liguang Zhang (2):
  firmware: arm_sdei: fix possible double-lock on hibernate error path
  firmware: arm_sdei: clean up sdei_event_create()

 drivers/firmware/arm_sdei.c | 71 +++++++++++++++++++------------------
 1 file changed, 36 insertions(+), 35 deletions(-)

-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
