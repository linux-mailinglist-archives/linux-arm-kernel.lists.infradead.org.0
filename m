Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A4842B2E8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 13:13:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8O8qYNh1fJ9h3oCHGUPV0cmDU3T2yzwJHbYUVbbvgkA=; b=QcAGuBhlKqf7B6
	qyPrWl+6dH6asSnNBvzOrug6+cOrR+MqwOylkP5YKCrPv5VtFS2OIKLJhjVdwHPxTlZEnKDjn4ZGy
	U3X/pOwfzclv0ZESl512pTGmToaRwfOPLfje59M2A+9jLUkiV+L4283wf8kGn2KAllCKI62qEEGPB
	C+bKoBGtJaXy3y5oWDjszwJUAKzzk6+gd59iae9mncFtfDy/M90Q0emG9BgMOg8uCXdRBYShNdV+H
	tYkP/vQttkrIYYGuIvArC/vrMjLqzP75L7zZQGemqr/JLv6ogq0viqs9qDyS999IHh2ytBlVOuPk4
	6YJd+xoRFFVZCcwmhTJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVDZI-0000PE-MS; Mon, 27 May 2019 11:13:28 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVDYN-0007vP-43
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 11:12:48 +0000
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B17DE88319;
 Mon, 27 May 2019 11:12:30 +0000 (UTC)
Received: from t460s.redhat.com (ovpn-117-89.ams2.redhat.com [10.36.117.89])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0FD3919C7F;
 Mon, 27 May 2019 11:12:27 +0000 (UTC)
From: David Hildenbrand <david@redhat.com>
To: linux-mm@kvack.org
Subject: [PATCH v3 05/11] drivers/base/memory: Pass a block_id to
 init_memory_block()
Date: Mon, 27 May 2019 13:11:46 +0200
Message-Id: <20190527111152.16324-6-david@redhat.com>
In-Reply-To: <20190527111152.16324-1-david@redhat.com>
References: <20190527111152.16324-1-david@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Mon, 27 May 2019 11:12:30 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_041231_614405_48609325 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-s390@vger.kernel.org, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 David Hildenbrand <david@redhat.com>, linux-kernel@vger.kernel.org,
 Wei Yang <richard.weiyang@gmail.com>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Igor Mammedov <imammedo@redhat.com>, akpm@linux-foundation.org,
 linuxppc-dev@lists.ozlabs.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We'll rework hotplug_memory_register() shortly, so it no longer consumes
pass a section.

Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>
Signed-off-by: David Hildenbrand <david@redhat.com>
---
 drivers/base/memory.c | 15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

diff --git a/drivers/base/memory.c b/drivers/base/memory.c
index f180427e48f4..f914fa6fe350 100644
--- a/drivers/base/memory.c
+++ b/drivers/base/memory.c
@@ -651,21 +651,18 @@ int register_memory(struct memory_block *memory)
 	return ret;
 }
 
-static int init_memory_block(struct memory_block **memory,
-			     struct mem_section *section, unsigned long state)
+static int init_memory_block(struct memory_block **memory, int block_id,
+			     unsigned long state)
 {
 	struct memory_block *mem;
 	unsigned long start_pfn;
-	int scn_nr;
 	int ret = 0;
 
 	mem = kzalloc(sizeof(*mem), GFP_KERNEL);
 	if (!mem)
 		return -ENOMEM;
 
-	scn_nr = __section_nr(section);
-	mem->start_section_nr =
-			base_memory_block_id(scn_nr) * sections_per_block;
+	mem->start_section_nr = block_id * sections_per_block;
 	mem->end_section_nr = mem->start_section_nr + sections_per_block - 1;
 	mem->state = state;
 	start_pfn = section_nr_to_pfn(mem->start_section_nr);
@@ -694,7 +691,8 @@ static int add_memory_block(int base_section_nr)
 
 	if (section_count == 0)
 		return 0;
-	ret = init_memory_block(&mem, __nr_to_section(section_nr), MEM_ONLINE);
+	ret = init_memory_block(&mem, base_memory_block_id(base_section_nr),
+				MEM_ONLINE);
 	if (ret)
 		return ret;
 	mem->section_count = section_count;
@@ -707,6 +705,7 @@ static int add_memory_block(int base_section_nr)
  */
 int hotplug_memory_register(int nid, struct mem_section *section)
 {
+	int block_id = base_memory_block_id(__section_nr(section));
 	int ret = 0;
 	struct memory_block *mem;
 
@@ -717,7 +716,7 @@ int hotplug_memory_register(int nid, struct mem_section *section)
 		mem->section_count++;
 		put_device(&mem->dev);
 	} else {
-		ret = init_memory_block(&mem, section, MEM_OFFLINE);
+		ret = init_memory_block(&mem, block_id, MEM_OFFLINE);
 		if (ret)
 			goto out;
 		mem->section_count++;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
