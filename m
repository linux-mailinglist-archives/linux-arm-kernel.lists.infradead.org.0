Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE94A1D9F1B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 20:21:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TtpVXiNj0wtdycjkv2q58qJLaGz/W/UiiUcjDMv+UGw=; b=KdCW99dsx2DmZF
	aP48aofCvln3N9Td1qZXvcgZmpQBcHAZ18d1UzoWQbqeSsL/XI+X81fN23NsInIubdoBCB3KOv9I/
	LfKibYqMxhVmqNyMNOzpcQM2mC9jQ3cORDOWlLlnUc1pQ0bjAKyjbfxs2QmmeewVTa+EZkdVIRwBY
	0Z5M4rEPXWYAh/kXiCE4ne9ypsYAYIaFj4w1R2i4MpVaI48fE1PfRi2Ayj43rAg1VodxXWdZVkPUH
	J7mkmJ9up8tBURrzjItBK1Tv0FUMfGhxOIix1iaOFaUi4DHh5rpzcW0GBf2NgH//3Q/UnuYipSKjv
	Q6Xpy2NFewQQETk6WIXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb6s9-00006n-2v; Tue, 19 May 2020 18:21:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb6rh-0008O9-Qy
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 18:21:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5EBBE31B;
 Tue, 19 May 2020 11:21:20 -0700 (PDT)
Received: from melchizedek.cambridge.arm.com (melchizedek.cambridge.arm.com
 [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7A2D23F305;
 Tue, 19 May 2020 11:21:19 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/3] firmare: arm_sdei: Extras for v5.8
Date: Tue, 19 May 2020 19:21:05 +0100
Message-Id: <20200519182108.13693-1-james.morse@arm.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_112121_934967_0466F144 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
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

Hi Will, Catalin,

Some extra patches for SDEI if you're still willing to add to your tree.

Hanjun's patch to cleanup some ACPI table handling conflicts with
Sudeep's patch that you already have queued.

Based on arm64's for-next/sdei branch: v5.7-rc3-1-gcaf2cd610dbb

For the tag, I'd describe all four patches as:
---
Cleanup the driver probing, remove some unused module exports and document
the reason behind a set_fs() call.
---


Thanks,

James


Christoph Hellwig (1):
  firmware: arm_sdei: remove unused interfaces

Hanjun Guo (1):
  firmware: arm_sdei: Put the SDEI table after using it

James Morse (1):
  firmware: arm_sdei: Document the motivation behind these set_fs()
    calls

 drivers/firmware/arm_sdei.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
