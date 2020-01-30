Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE3E614E520
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 22:52:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VNggnboGRgdAcE9QSsl2cemniYt4WiHOL1ZVQiTysEc=; b=BFI9BgqenryLWi
	gZH2c2hfv+MKXj3XLmSWs5NdecGchqwu4PLc0f+Ni9BEov7W1sSZCvGgu9X3oTnvmlmmlmpcxRGT6
	iCzAi+1V0BvkitC/lAea5odkskINaKdnTdVsnggU5k/7JxEHOQDcQ6WOjXHdbotuAklC87qz9Tjy+
	4hrsWKp1vTaUu3uWZUK5vHjzN8uC+B5bbUnnmsC/kFWeEssHmHZEAePCrzLaG3va+ht+dMo3ZgHAp
	2HvacxCUejwuI6GKOq04kNQre9lVUtHNQ46z+r7DlCcuiiks1gtMr8e0X8up5tm1Pcjypb3p/Reye
	/w5DD0i3PhwMwxtWUMqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixHjj-0002ik-1Y; Thu, 30 Jan 2020 21:52:31 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixHjY-0002hw-Ud
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 21:52:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580421139;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=jKnwouo10/5pJ1shGoN2uml3rqX1MRvDsajux/zzymU=;
 b=QXxcML8KGMWflt1i9OwDq0yHvR/Sgu0reoZaG8U+4TaogynjlCMmt5q0LGcgcVkSWBzkql
 1Rf/OsHIIIQlqf3KSqmImtIkm93PX5JTEm14bR8cCa3y/8ZsAaBQPGvxzpfTg1gBasS62y
 OB+Dwy7SgD8/jqpck6CmLIqdL/qQnus=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-304-kmGyk4EaPTeyd1Eo9Ek_3g-1; Thu, 30 Jan 2020 16:52:15 -0500
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D168C8010C2;
 Thu, 30 Jan 2020 21:52:14 +0000 (UTC)
Received: from localhost.localdomain.com (vpn2-54-25.bne.redhat.com
 [10.64.54.25])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 161755C1B2;
 Thu, 30 Jan 2020 21:52:12 +0000 (UTC)
From: Gavin Shan <gshan@redhat.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] drivers/firmware/psci: Fix memory leakage in
 alloc_init_cpu_groups()
Date: Fri, 31 Jan 2020 08:51:48 +1100
Message-Id: <20200130215148.191953-1-gshan@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MC-Unique: kmGyk4EaPTeyd1Eo9Ek_3g-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_135221_062303_1C0FF32F 
X-CRM114-Status: UNSURE (   9.52  )
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, sudeep.holla@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The CPU mask (@tmp) should be free'd on failing to allocate @cpu_groups
or any of its elements. Otherwise, it leads to memory leakage because the
CPU mask variable is dynamically allocated with CONFIG_CPUMASK_OFFSTACK.

Signed-off-by: Gavin Shan <gshan@redhat.com>
---
v2: Free @tmp on failing to allocate @cpu_groups
---
 drivers/firmware/psci/psci_checker.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/firmware/psci/psci_checker.c b/drivers/firmware/psci/psci_checker.c
index 6a445397771c..03eb798ad3ed 100644
--- a/drivers/firmware/psci/psci_checker.c
+++ b/drivers/firmware/psci/psci_checker.c
@@ -157,8 +157,10 @@ static int alloc_init_cpu_groups(cpumask_var_t **pcpu_groups)
 
 	cpu_groups = kcalloc(nb_available_cpus, sizeof(cpu_groups),
 			     GFP_KERNEL);
-	if (!cpu_groups)
+	if (!cpu_groups) {
+		free_cpumask_var(tmp);
 		return -ENOMEM;
+	}
 
 	cpumask_copy(tmp, cpu_online_mask);
 
@@ -167,6 +169,7 @@ static int alloc_init_cpu_groups(cpumask_var_t **pcpu_groups)
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
