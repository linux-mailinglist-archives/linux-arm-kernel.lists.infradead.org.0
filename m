Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EAC31B6CCB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 06:53:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=djEXlOHzQ7kduvLVo7fGeO6NuUDtydxi41h61DVxpeQ=; b=ZhxsTNmxoet69W
	nXXDZApxiDPqYQWFQbV+gaqcxg8EWRuzcJQ14g3oixKuLE+Wddi4erda6xkwjdmKjOSgqgW3iUEV2
	RV7b8DsSeihzO/+UiAyCzBYyCCk7TRFrpFjnGbvwJOtNgfVVrrDmIbppcaZ9cW8Kc53e3d7pk2wmb
	sWpmynWOAJZL84T6ud3iBgn8NN7mE930dL6qTKnOIKRR0N+4HsaJK2RZ2X1eHKvZ105mDsg6jSU8c
	ilslnOa54QqD/7Bz0pjI9jay8PsatWXlnJYmbyVWbVwqQx/3fZ/YItiEx5ZaMJ2fxsAs2WXwYa3IJ
	W1XPRj2BXDr0Eu4wtzZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRqLH-0001tZ-Vk; Fri, 24 Apr 2020 04:53:35 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRqL9-0001t2-DN
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 04:53:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1587704006;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=SYlgfxgP8xA9b/qpZI8ocxmaMtZMiVXOlBpcw4zbmWY=;
 b=XmtQyiBxREf/SPUL4FmX7j8fMilyzzblYpdlT4EMUsg1jhSiqGaCjiwtQkZZ9w3Rzib9nu
 YdtHzWKc7R40PR9tBY+t7q9/33qpmsigNp+2slhhLV++878RgG6AX8RT9GuWjb9i5QvOQR
 wA6e37KrLAU3+gP0lmooIp6cU1qP4OM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-259-gEHt2BK4PhOOsngnp6_TgQ-1; Fri, 24 Apr 2020 00:53:23 -0400
X-MC-Unique: gEHt2BK4PhOOsngnp6_TgQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3F9EB107BEF5;
 Fri, 24 Apr 2020 04:53:22 +0000 (UTC)
Received: from localhost.localdomain.com (vpn2-54-127.bne.redhat.com
 [10.64.54.127])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D31F0600E8;
 Fri, 24 Apr 2020 04:53:19 +0000 (UTC)
From: Gavin Shan <gshan@redhat.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64/mm: Reject invalid NUMA option
Date: Fri, 24 Apr 2020 14:53:14 +1000
Message-Id: <20200424045314.16017-1-gshan@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_215327_526925_61284B67 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.81 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, will@kernel.org,
 linux-kernel@vger.kernel.org, shan.gavin@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The NUMA option is parsed by str_has_prefix() and the invalid option
like "numa=o" can be regarded as "numa=off" wrongly.

This fixes the issue with sysfs_streq(), which have more sanity checks,
to avoid accepting the invalid options.

Signed-off-by: Gavin Shan <gshan@redhat.com>
---
 arch/arm64/mm/numa.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/mm/numa.c b/arch/arm64/mm/numa.c
index 4decf1659700..bd458b28616a 100644
--- a/arch/arm64/mm/numa.c
+++ b/arch/arm64/mm/numa.c
@@ -29,7 +29,8 @@ static __init int numa_parse_early_param(char *opt)
 {
 	if (!opt)
 		return -EINVAL;
-	if (str_has_prefix(opt, "off"))
+
+	if (sysfs_streq(opt, "off"))
 		numa_off = true;
 
 	return 0;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
