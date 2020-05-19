Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A8B1D9F2C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 20:22:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C5kfH04nbPFyWGXgUicUelglhvaEfQeW7yFn9jILZyI=; b=DqNEGpsrNlugjF
	IWK8UgSUKMhhWLNNlIAqS7rNyTxuzVrVeqNWsWB2UagGjaWdPTTZFfUNJJFO0QGYopOaCuHzMP74Y
	FvCQfUzltFj6+p5Ocv3NSk9kvThbDJj1CPJBG9lp3lyD/84dMFgHdvPagYi6S4FClE7jDCzQ58Yrc
	p+Ss0eyK5wLlQA/QAvvW9j68CEWnIn02o3JabJKCADcZVUrWxaPeGYdAHZSwatZaxNUvQBZS+aoQu
	bmGpxYeol4aVdoFbZCgra6wI45MYxFnJLMi2vo7Si2rYHv5mzqX++l6JaJs2RgY6FHA8IjCcENYvz
	T2xAomM+4Z7Xpmq8/U1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb6sV-0000Rf-RT; Tue, 19 May 2020 18:22:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb6rj-0008QN-FQ
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 18:21:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 64C2F55D;
 Tue, 19 May 2020 11:21:22 -0700 (PDT)
Received: from melchizedek.cambridge.arm.com (melchizedek.cambridge.arm.com
 [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7F3603F305;
 Tue, 19 May 2020 11:21:21 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/3] firmware: arm_sdei: Put the SDEI table after using it
Date: Tue, 19 May 2020 19:21:06 +0100
Message-Id: <20200519182108.13693-2-james.morse@arm.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20200519182108.13693-1-james.morse@arm.com>
References: <20200519182108.13693-1-james.morse@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_112123_580387_ABBC1D2B 
X-CRM114-Status: GOOD (  10.63  )
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

From: Hanjun Guo <guohanjun@huawei.com>

The acpi_get_table() should be coupled with acpi_put_table() if
the mapped table is not used for runtime after the initialization
to release the table mapping, put the SDEI table after using it.

Signed-off-by: Hanjun Guo <guohanjun@huawei.com>
Link: https://lore.kernel.org/linux-arm-kernel/1589021566-46373-1-git-send-email-guohanjun@huawei.com/
Signed-off-by: James Morse <james.morse@arm.com>
---
 drivers/firmware/arm_sdei.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/firmware/arm_sdei.c b/drivers/firmware/arm_sdei.c
index 5afd7409e6fa..a33b701ab2b0 100644
--- a/drivers/firmware/arm_sdei.c
+++ b/drivers/firmware/arm_sdei.c
@@ -1096,6 +1096,8 @@ static bool __init sdei_present_acpi(void)
 	if (ACPI_FAILURE(status))
 		return false;
 
+	acpi_put_table(sdei_table_header);
+
 	return true;
 }
 
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
