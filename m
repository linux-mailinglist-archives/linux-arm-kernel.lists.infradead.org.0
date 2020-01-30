Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED5CD14E5FD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 00:09:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7Io0QL6gbN7RsQYaD8RKWsKf9SlrgFWY5gmOYuoh5o8=; b=C5KZULZSTZMkzc
	c0aWl9mP9ZXlvpHGF0KTABUgZd2QbOpU2HzW0c+2hpRrgSLJzRfTIwPJsg4mOA5AtYWI3xRkmXzc4
	/Xe52xYyzpJLvqSrtY5K2ZaxseCe9yyac8JrFBvnYIaqLZeCYBO3m5NBH/iDoa2zbggPHO+JZztSU
	uD1GXqdbXiE46KefiYXKu87fVTQXwWpMgqdZ3jBT1970IXITeKJLh66bnTN4myI1D0v/i1RcE/KaP
	A/u6VOo5F/tdzfOfzvuyz/65P6ycouerZAsHkDDRmF1b+OfPZgssh0v51I/WJtdSQ6OWOfXnqthv2
	xNKpyTjtH60q6HQbZU0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixIvt-0006Nc-2E; Thu, 30 Jan 2020 23:09:09 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixIvi-0006ML-R7
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 23:09:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580425737;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=APAVnZAgqQsrS7+T441JB4teNPJ0bWhHuFyjZaJrPqg=;
 b=Vl2HHFTd0jMLmjFVGFJ9N2I0xjIiZzKGHC4GIHswzkWeKEZcF5MjKziIpaSx1uPV/YSQlX
 Sbzi8JXC3HVmAU8BQrGXVRtX7Agoz5IYL4SpaD40rOe2lcRSQaItindky2VLLFDhmKcvPq
 QbZbFGfkUtaqAzioIThlVSIJ05JEG6c=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-99-tmpuoMPzMyqk1Zgd8S5XUw-1; Thu, 30 Jan 2020 18:08:53 -0500
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CB6C8108BC1A;
 Thu, 30 Jan 2020 23:08:51 +0000 (UTC)
Received: from localhost.localdomain.com (vpn2-54-25.bne.redhat.com
 [10.64.54.25])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CCAAB77954;
 Thu, 30 Jan 2020 23:08:49 +0000 (UTC)
From: Gavin Shan <gshan@redhat.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] drivers/firmware/psci: Assign @err directly in hotplug_tests()
Date: Fri, 31 Jan 2020 10:08:45 +1100
Message-Id: <20200130230845.203466-1-gshan@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-MC-Unique: tmpuoMPzMyqk1Zgd8S5XUw-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_150858_953206_B18BAC2A 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, sudeep.holla@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The return value of down_and_up_cpus() can be assigned to @err directly.
With that, the useless assignment to @err with zero can be dropped.

Signed-off-by: Gavin Shan <gshan@redhat.com>
---
 drivers/firmware/psci/psci_checker.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/firmware/psci/psci_checker.c b/drivers/firmware/psci/psci_checker.c
index 03eb798ad3ed..0e1c92e2f91a 100644
--- a/drivers/firmware/psci/psci_checker.c
+++ b/drivers/firmware/psci/psci_checker.c
@@ -199,13 +199,12 @@ static int hotplug_tests(void)
 	if (!page_buf)
 		goto out_free_cpu_groups;
 
-	err = 0;
 	/*
 	 * Of course the last CPU cannot be powered down and cpu_down() should
 	 * refuse doing that.
 	 */
 	pr_info("Trying to turn off and on again all CPUs\n");
-	err += down_and_up_cpus(cpu_online_mask, offlined_cpus);
+	err = down_and_up_cpus(cpu_online_mask, offlined_cpus);
 
 	/*
 	 * Take down CPUs by cpu group this time. When the last CPU is turned
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
