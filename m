Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 953E21D9F35
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 20:22:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4TtytQFePmTgShstjtmtZMJPSaGWSP8LT+4M9EVDuxA=; b=WapBdYlwAyGoUt
	Vkf/0Oi6HxDaLnpOmdwuwmIzP0ZM6eMsZgnLE3mEuHgqkGoniM2Ym6o73HNi5pKUKpmiYXzdbag69
	0+EDj9pj4uPVskOhmALcVyTpCjGDJWJ5RDn0DZBLLglEU1K/6qEc4U8Y9z2xhsaoXawWLSBTecC8W
	weU+2MQdEbQOaoX4zvRiEhtYrG0MWwqBBhLvC9zsVHX5KwO/un2tX6HX4ctgXxDOt38btslAPhuvW
	NPLQEXxj3TpgRzGS9kNYJ2jYWHTsNJm0zhP9EpbLMAuPex72ZJK310esp4s6Y47T+DaablNRjkPsA
	iIIdYDQTG/5+wd6ggPRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb6t0-0000uV-2l; Tue, 19 May 2020 18:22:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb6rm-0008T2-HH
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 18:21:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7DE6B31B;
 Tue, 19 May 2020 11:21:25 -0700 (PDT)
Received: from melchizedek.cambridge.arm.com (melchizedek.cambridge.arm.com
 [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 988E83F305;
 Tue, 19 May 2020 11:21:24 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/3] firmware: arm_sdei: Document the motivation behind these
 set_fs() calls
Date: Tue, 19 May 2020 19:21:08 +0100
Message-Id: <20200519182108.13693-4-james.morse@arm.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20200519182108.13693-1-james.morse@arm.com>
References: <20200519182108.13693-1-james.morse@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_112126_726983_BA451629 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 James Morse <james.morse@arm.com>, Will Deacon <will@kernel.org>,
 Christoph Hellwig <hch@lst.de>, Hanjun Guo <guohanjun@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The SDEI handler save/restores the addr_limit using set_fs(). It isn't
very clear why. The reason is to mirror the arch code's entry assembly.
The arch code does this because perf may access user-space, and
inheriting the addr_limit may be a problem.

Add a comment explaining why this is here.

Link: https://bugs.chromium.org/p/project-zero/issues/detail?id=822
Suggested-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: James Morse <james.morse@arm.com>
---
 drivers/firmware/arm_sdei.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/firmware/arm_sdei.c b/drivers/firmware/arm_sdei.c
index b12b99a19f66..e7e36aab2386 100644
--- a/drivers/firmware/arm_sdei.c
+++ b/drivers/firmware/arm_sdei.c
@@ -1128,6 +1128,14 @@ int sdei_event_handler(struct pt_regs *regs,
 	mm_segment_t orig_addr_limit;
 	u32 event_num = arg->event_num;
 
+	/*
+	 * Save restore 'fs'.
+	 * The architecture's entry code save/restores 'fs' when taking an
+	 * exception from the kernel. This ensures addr_limit isn't inherited
+	 * if you interrupted something that allowed the uaccess routines to
+	 * access kernel memory.
+	 * Do the same here because this doesn't come via the same entry code.
+	*/
 	orig_addr_limit = get_fs();
 	set_fs(USER_DS);
 
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
