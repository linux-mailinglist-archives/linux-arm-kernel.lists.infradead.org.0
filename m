Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37675190453
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 05:17:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CBzBzoEE8MJx0phzAOShDdtjm2kHs2svAv4JbsKvJ/s=; b=AtdIY25BkUJUz7
	by250d4r16mmWgrAARwhHxngkLJRkbaw25Mj4pczJXUgqqvJt3y4bVc3tJImM4HluJMW6tbt/kC98
	HO5tvuoU+sM0RYZfQBVyLSUWv5/bHU+VJREycsz3zgvf/39Nt5M7q/xZ6gN5CxkA09SGZBp/5DKps
	fbA2Ko4wbpBjflpDYAbIlQWKsWg0clKGyn/2w+TRwEZ5K2kDVoWucgp5cyTlEGYRbmkJs0FtGL/fz
	konS/mT8C8seGSglKRvzorRpaIh9ubE3ryYTBAgOoqKMSRYN6exQdOqi9Bj2N+XbqVh4SJytM/SSl
	76HSlWwI82z5ssPUK4pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGb0L-0005n2-4E; Tue, 24 Mar 2020 04:17:29 +0000
Received: from us-smtp-delivery-74.mimecast.com ([216.205.24.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGb0B-0005m6-Us
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 04:17:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585023436;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=n4RxvffG/7IgthqLXT54eLe3yEn0o9kSt/husDShtPU=;
 b=dn8HrI+nwmr4AsiE1GIoctCaekb1x08iF6MXnljAj1pYRtbDsx1VZJLYvPnJlF0m1MT4qC
 WPpLimZH0EZh67vNkyRr6g1+/koiWNreVIM9pdr0Md63gIZJBqmbrJn33i1B5Gtpyangtr
 NaK9ZAWgj/KwwjLWyj0ub7yK3HNUvc8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-288-V0B4BEPsNgCU0Ga8yp8c_Q-1; Tue, 24 Mar 2020 00:15:23 -0400
X-MC-Unique: V0B4BEPsNgCU0Ga8yp8c_Q-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7A1C813F5;
 Tue, 24 Mar 2020 04:15:22 +0000 (UTC)
Received: from asgard.redhat.com (unknown [10.36.110.53])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 3C9135C1B5;
 Tue, 24 Mar 2020 04:15:20 +0000 (UTC)
Date: Tue, 24 Mar 2020 05:15:26 +0100
From: Eugene Syromiatnikov <esyr@redhat.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Ulf Hansson <ulf.hansson@linaro.org>, Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH] drivers: firmware: psci: avoid BIT() macro usage in
 PSCI_1_0_OS_INITIATED
Message-ID: <20200324041526.GA1978@asgard.redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_211720_244936_982CDF78 
X-CRM114-Status: GOOD (  11.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.205.24.74 listed in list.dnswl.org]
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
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 "Dmitry V. Levin" <ldv@altlinux.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The BIT() macro is not available in UAPI headers, so let's replace
it with similarly defined _BITUL() macro provided by <linux/const.h>.

Fixes: 60dd1ead65e8 ("drivers: firmware: psci: Announce support for OS initiated suspend mode")
Signed-off-by: Eugene Syromiatnikov <esyr@redhat.com>
---
 include/uapi/linux/psci.h | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/include/uapi/linux/psci.h b/include/uapi/linux/psci.h
index 2fcad1d..87afdeb 100644
--- a/include/uapi/linux/psci.h
+++ b/include/uapi/linux/psci.h
@@ -12,6 +12,8 @@
 #ifndef _UAPI_LINUX_PSCI_H
 #define _UAPI_LINUX_PSCI_H
 
+#include <linux/const.h>
+
 /*
  * PSCI v0.1 interface
  *
@@ -100,7 +102,7 @@
 #define PSCI_1_0_FEATURES_CPU_SUSPEND_PF_MASK	\
 			(0x1 << PSCI_1_0_FEATURES_CPU_SUSPEND_PF_SHIFT)
 
-#define PSCI_1_0_OS_INITIATED			BIT(0)
+#define PSCI_1_0_OS_INITIATED			_BITUL(0)
 #define PSCI_1_0_SUSPEND_MODE_PC		0
 #define PSCI_1_0_SUSPEND_MODE_OSI		1
 
-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
