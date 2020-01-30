Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12D5E14D567
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 04:50:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ec4tDN+UXT2pDB6IZRlqU7cpw0o++u1xNvBB4LiI564=; b=BKKkWvKsU5ooAE
	YR+GfjjCA1C2gMTdWBD4rvRCLmlNdWv56c3vfqgTa69DewcmQSxJXBgGsS2FzDHnFXFkK5adEzsT3
	/UiH9+GViHbqISwpGHPeuKjviFtbtshAf01yfOgd7Hu8YIceaL6VTN5ZlREKmbwqffwC+MJlqIkCh
	VSmHpqfjVHjgyMJY4cASAoBIHy6s6cuy6IoUncfueagZ9qzqcFZ+BpSV07jDAOXrC8EyWUlu5CZoQ
	ed5OF/fp3w7YY/J5po1HY+8/wYoJXa1NPhoOw7fYskCyO7AHDjmZs7uW+ixKywEGVEtTJip4ppfAQ
	excoA2zTXDH2kfsWjLQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ix0qM-0000u6-Oi; Thu, 30 Jan 2020 03:50:14 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ix0q7-0000ij-A7
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 03:50:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580356196;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=S1OcL+usxu0zgMeJ23hE83aS032i6ha02daXtzjD6us=;
 b=AGHjH89LLELI7lm5iUSUlacoLpKOma82pCKHFttkrsMyzUCxGHz+U9KI2to1X266wuF81s
 HJi0oLerhNzny+UkeMlAl5vAcMH20j+QrcYPMH7QRY/alzT2poU5g/GyoQRrn+lttM7Yn6
 1nmriLKXEAcIdB4B+V+gwQl+DkzJmXg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-390-osViARSANxWnUYfPtlpHew-1; Wed, 29 Jan 2020 22:49:47 -0500
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C64AC13E2;
 Thu, 30 Jan 2020 03:49:45 +0000 (UTC)
Received: from localhost.localdomain.com (vpn2-54-25.bne.redhat.com
 [10.64.54.25])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 558F477937;
 Thu, 30 Jan 2020 03:49:44 +0000 (UTC)
From: Gavin Shan <gshan@redhat.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] drivers/firmware/psci: Fix memory leak in
 alloc_init_cpu_groups()
Date: Thu, 30 Jan 2020 14:49:38 +1100
Message-Id: <20200130034938.158504-1-gshan@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-MC-Unique: osViARSANxWnUYfPtlpHew-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_194959_492071_2CEEFB00 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The CPU mask (@tmp) should be free'd on failing to allocating the element
of @cpu_groups[]. Otherwise, it leads to memory leakage because the CPU
mask variable is allocated with CONFIG_CPUMASK_OFFSTACK.

Signed-off-by: Gavin Shan <gshan@redhat.com>
---
 drivers/firmware/psci/psci_checker.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/firmware/psci/psci_checker.c b/drivers/firmware/psci/psci_checker.c
index 6a445397771c..d1d6d1135fed 100644
--- a/drivers/firmware/psci/psci_checker.c
+++ b/drivers/firmware/psci/psci_checker.c
@@ -167,6 +167,7 @@ static int alloc_init_cpu_groups(cpumask_var_t **pcpu_groups)
 			topology_core_cpumask(cpumask_any(tmp));
 
 		if (!alloc_cpumask_var(&cpu_groups[num_groups], GFP_KERNEL)) {
+			free_cpumask_var(tmp);
 			free_cpu_groups(num_groups, &cpu_groups);
 			return -ENOMEM;
 		}
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
