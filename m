Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D36A3528A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 00:07:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K2dqUUTDWxfaLUGr6gnIda4JPKCsw0eNbu4wOtay9nY=; b=CRqe2KGFjWh252
	KHkqxS/8m8ZEKtPXrS2fEdIp9nd8rhgPCFjPoSqtRA2KX530+vC5+YD3ophVajfRGyqF+wdnWVRjK
	+ttYayNlLrml/VM4F5BEVArOLmFYHLNSRwO9xT1Yxfs1h2fyb5LrHETx4T+ebigd7oYxsm6bMoJWn
	fv8ceEefturJj2RVOjzGiT0DUiCZ6DUqrhVh6JYGXlrW3xbjkEeC+9mn9NDTCNRvT0qEExCHx+J1c
	MSyV/S0i05g6Zdv2UVmHlgQznlQwtANdQHNGk4PAT4jfdo7uqS5eZU8xedlVh3PdBBdOsJT62U0af
	L6Lf8PQ6+JHx1XlvxVjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYHaZ-0003tx-Fm; Tue, 04 Jun 2019 22:07:27 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYHaQ-0003tX-QK
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 22:07:20 +0000
Received: by mail-ed1-x544.google.com with SMTP id h9so1259134edr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 15:07:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:reply-to:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=PpKRuZzE7T8mOmzox/3fZWCQGJE/CKE/yKMFRhJ3Gf8=;
 b=r8eh4EReBOdbIPu4A1NNDGdXjFzs0/kcbitZHKKZAYaKNhXocwZblb/UDa/qHzpM4n
 H2elaGGk/e0gnNHPNwXKeHcAQnQ8whjG7luxPB1MehVQyRYd3L+0WhuLTmYgNONF0vQW
 /gT+d74vRjcqjUKUEja8QETsFhVds03K5SF2Vi+Gp28hsN/co8yAmDLlQo3XBDCsBx2t
 f10hoB3oefeCwKc/mwr3FNtMVXdQwW6jVfZhmt0IMWacdGBiHQOhNJfFHpgBzQfAMbQK
 Rzmp33l1qbOkzsE3obd4pS9v0hxJDLo8arS3ayyMB+ypJKFinJf8JyWlCou/md606BC2
 cf8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=PpKRuZzE7T8mOmzox/3fZWCQGJE/CKE/yKMFRhJ3Gf8=;
 b=Zn+FHCE1QjaJfCFZ8obxAH5hcY6aDxCYgmXX4fBJZb3sAYKPiUt90a0jluERuKxUMb
 RlUYUVjX0c+TJQG3jDkoVihtKBtytMpcVFA9PHs0gBC1O3fv+XgvrxGBtmJUwEpMzD/u
 4wdD0ZkVcyIStJONBqphaNt+CPFYmeEu5CX2IcZu8ctCEw95rKAQvv5H791vRUcM0jq0
 AR7bhF3IcSVqQMEru3gAWbKo59Wjm1jNx/eA9MJlynG6hyNfX0Sorcx4cVVu80Iq7OWH
 R7SWUiIQnUSITmbgQLREH7EN0UQzhDpNLoQn0J967lehFq5Xd+owApmD4P7wu3NGr1AB
 Fuiw==
X-Gm-Message-State: APjAAAWNntO4mskJZddmdPp4Aw/bA7u06uaQQ9DqNxPcigaW0MhI4plA
 4GjO/B8JQH6VzgD1mUv0Uis=
X-Google-Smtp-Source: APXvYqylJIv8N/2T6SjJp9NjY4VYtrcjtyg9w7oKoH7rUr1NCX7/8z5VGMCfO72kUy5fqWBqTC3/4A==
X-Received: by 2002:aa7:c3c9:: with SMTP id l9mr30726945edr.23.1559686037033; 
 Tue, 04 Jun 2019 15:07:17 -0700 (PDT)
Received: from localhost ([185.92.221.13])
 by smtp.gmail.com with ESMTPSA id g18sm5036344edh.13.2019.06.04.15.07.16
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 04 Jun 2019 15:07:16 -0700 (PDT)
Date: Tue, 4 Jun 2019 22:07:15 +0000
From: Wei Yang <richard.weiyang@gmail.com>
To: David Hildenbrand <david@redhat.com>
Subject: Re: [PATCH v3 09/11] mm/memory_hotplug: Remove memory block devices
 before arch_remove_memory()
Message-ID: <20190604220715.d4d2ctwjk25vd5sq@master>
References: <20190527111152.16324-1-david@redhat.com>
 <20190527111152.16324-10-david@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190527111152.16324-10-david@redhat.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_150718_857500_3238D517 
X-CRM114-Status: GOOD (  16.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weiyang[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Reply-To: Wei Yang <richard.weiyang@gmail.com>
Cc: Michal Hocko <mhocko@suse.com>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Wei Yang <richard.weiyang@gmail.com>,
 linux-mm@kvack.org, Arun KS <arunks@codeaurora.org>,
 Ingo Molnar <mingo@kernel.org>, linux-s390@vger.kernel.org,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Pavel Tatashin <pavel.tatashin@microsoft.com>,
 "mike.travis@hpe.com" <mike.travis@hpe.com>, Mark Brown <broonie@kernel.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Dan Williams <dan.j.williams@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>, linux-arm-kernel@lists.infradead.org,
 Oscar Salvador <osalvador@suse.de>, Andrew Banman <andrew.banman@hpe.com>,
 Mathieu Malaterre <malat@debian.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Alex Deucher <alexander.deucher@amd.com>, Igor Mammedov <imammedo@redhat.com>,
 akpm@linux-foundation.org, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 01:11:50PM +0200, David Hildenbrand wrote:
>Let's factor out removing of memory block devices, which is only
>necessary for memory added via add_memory() and friends that created
>memory block devices. Remove the devices before calling
>arch_remove_memory().
>
>This finishes factoring out memory block device handling from
>arch_add_memory() and arch_remove_memory().
>
>Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>Cc: "Rafael J. Wysocki" <rafael@kernel.org>
>Cc: David Hildenbrand <david@redhat.com>
>Cc: "mike.travis@hpe.com" <mike.travis@hpe.com>
>Cc: Andrew Morton <akpm@linux-foundation.org>
>Cc: Andrew Banman <andrew.banman@hpe.com>
>Cc: Ingo Molnar <mingo@kernel.org>
>Cc: Alex Deucher <alexander.deucher@amd.com>
>Cc: "David S. Miller" <davem@davemloft.net>
>Cc: Mark Brown <broonie@kernel.org>
>Cc: Chris Wilson <chris@chris-wilson.co.uk>
>Cc: Oscar Salvador <osalvador@suse.de>
>Cc: Jonathan Cameron <Jonathan.Cameron@huawei.com>
>Cc: Michal Hocko <mhocko@suse.com>
>Cc: Pavel Tatashin <pavel.tatashin@microsoft.com>
>Cc: Arun KS <arunks@codeaurora.org>
>Cc: Mathieu Malaterre <malat@debian.org>
>Reviewed-by: Dan Williams <dan.j.williams@intel.com>
>Signed-off-by: David Hildenbrand <david@redhat.com>
>---
> drivers/base/memory.c  | 37 ++++++++++++++++++-------------------
> drivers/base/node.c    | 11 ++++++-----
> include/linux/memory.h |  2 +-
> include/linux/node.h   |  6 ++----
> mm/memory_hotplug.c    |  5 +++--
> 5 files changed, 30 insertions(+), 31 deletions(-)
>
>diff --git a/drivers/base/memory.c b/drivers/base/memory.c
>index 5a0370f0c506..f28efb0bf5c7 100644
>--- a/drivers/base/memory.c
>+++ b/drivers/base/memory.c
>@@ -763,32 +763,31 @@ int create_memory_block_devices(unsigned long start, unsigned long size)
> 	return ret;
> }
> 
>-void unregister_memory_section(struct mem_section *section)
>+/*
>+ * Remove memory block devices for the given memory area. Start and size
>+ * have to be aligned to memory block granularity. Memory block devices
>+ * have to be offline.
>+ */
>+void remove_memory_block_devices(unsigned long start, unsigned long size)
> {
>+	const int start_block_id = pfn_to_block_id(PFN_DOWN(start));
>+	const int end_block_id = pfn_to_block_id(PFN_DOWN(start + size));
> 	struct memory_block *mem;
>+	int block_id;
> 
>-	if (WARN_ON_ONCE(!present_section(section)))
>+	if (WARN_ON_ONCE(!IS_ALIGNED(start, memory_block_size_bytes()) ||
>+			 !IS_ALIGNED(size, memory_block_size_bytes())))
> 		return;
> 
> 	mutex_lock(&mem_sysfs_mutex);
>-
>-	/*
>-	 * Some users of the memory hotplug do not want/need memblock to
>-	 * track all sections. Skip over those.
>-	 */
>-	mem = find_memory_block(section);
>-	if (!mem)
>-		goto out_unlock;
>-
>-	unregister_mem_sect_under_nodes(mem, __section_nr(section));
>-
>-	mem->section_count--;
>-	if (mem->section_count == 0)
>+	for (block_id = start_block_id; block_id != end_block_id; block_id++) {
>+		mem = find_memory_block_by_id(block_id, NULL);
>+		if (WARN_ON_ONCE(!mem))
>+			continue;
>+		mem->section_count = 0;

Is this step necessary?

>+		unregister_memory_block_under_nodes(mem);
> 		unregister_memory(mem);
>-	else
>-		put_device(&mem->dev);
>-
>-out_unlock:
>+	}
> 	mutex_unlock(&mem_sysfs_mutex);
> }
> 
>diff --git a/drivers/base/node.c b/drivers/base/node.c
>index 8598fcbd2a17..04fdfa99b8bc 100644
>--- a/drivers/base/node.c
>+++ b/drivers/base/node.c
>@@ -801,9 +801,10 @@ int register_mem_sect_under_node(struct memory_block *mem_blk, void *arg)
> 	return 0;
> }
> 
>-/* unregister memory section under all nodes that it spans */
>-int unregister_mem_sect_under_nodes(struct memory_block *mem_blk,
>-				    unsigned long phys_index)
>+/*
>+ * Unregister memory block device under all nodes that it spans.
>+ */
>+int unregister_memory_block_under_nodes(struct memory_block *mem_blk)
> {
> 	NODEMASK_ALLOC(nodemask_t, unlinked_nodes, GFP_KERNEL);
> 	unsigned long pfn, sect_start_pfn, sect_end_pfn;
>@@ -816,8 +817,8 @@ int unregister_mem_sect_under_nodes(struct memory_block *mem_blk,
> 		return -ENOMEM;
> 	nodes_clear(*unlinked_nodes);
> 
>-	sect_start_pfn = section_nr_to_pfn(phys_index);
>-	sect_end_pfn = sect_start_pfn + PAGES_PER_SECTION - 1;
>+	sect_start_pfn = section_nr_to_pfn(mem_blk->start_section_nr);
>+	sect_end_pfn = section_nr_to_pfn(mem_blk->end_section_nr);
> 	for (pfn = sect_start_pfn; pfn <= sect_end_pfn; pfn++) {
> 		int nid;
> 
>diff --git a/include/linux/memory.h b/include/linux/memory.h
>index db3e8567f900..f26a5417ec5d 100644
>--- a/include/linux/memory.h
>+++ b/include/linux/memory.h
>@@ -112,7 +112,7 @@ extern void unregister_memory_notifier(struct notifier_block *nb);
> extern int register_memory_isolate_notifier(struct notifier_block *nb);
> extern void unregister_memory_isolate_notifier(struct notifier_block *nb);
> int create_memory_block_devices(unsigned long start, unsigned long size);
>-extern void unregister_memory_section(struct mem_section *);
>+void remove_memory_block_devices(unsigned long start, unsigned long size);
> extern int memory_dev_init(void);
> extern int memory_notify(unsigned long val, void *v);
> extern int memory_isolate_notify(unsigned long val, void *v);
>diff --git a/include/linux/node.h b/include/linux/node.h
>index 1a557c589ecb..02a29e71b175 100644
>--- a/include/linux/node.h
>+++ b/include/linux/node.h
>@@ -139,8 +139,7 @@ extern int register_cpu_under_node(unsigned int cpu, unsigned int nid);
> extern int unregister_cpu_under_node(unsigned int cpu, unsigned int nid);
> extern int register_mem_sect_under_node(struct memory_block *mem_blk,
> 						void *arg);
>-extern int unregister_mem_sect_under_nodes(struct memory_block *mem_blk,
>-					   unsigned long phys_index);
>+extern int unregister_memory_block_under_nodes(struct memory_block *mem_blk);
> 
> extern int register_memory_node_under_compute_node(unsigned int mem_nid,
> 						   unsigned int cpu_nid,
>@@ -176,8 +175,7 @@ static inline int register_mem_sect_under_node(struct memory_block *mem_blk,
> {
> 	return 0;
> }
>-static inline int unregister_mem_sect_under_nodes(struct memory_block *mem_blk,
>-						  unsigned long phys_index)
>+static inline int unregister_memory_block_under_nodes(struct memory_block *mem_blk)
> {
> 	return 0;
> }
>diff --git a/mm/memory_hotplug.c b/mm/memory_hotplug.c
>index 9a92549ef23b..82136c5b4c5f 100644
>--- a/mm/memory_hotplug.c
>+++ b/mm/memory_hotplug.c
>@@ -520,8 +520,6 @@ static void __remove_section(struct zone *zone, struct mem_section *ms,
> 	if (WARN_ON_ONCE(!valid_section(ms)))
> 		return;
> 
>-	unregister_memory_section(ms);
>-
> 	scn_nr = __section_nr(ms);
> 	start_pfn = section_nr_to_pfn((unsigned long)scn_nr);
> 	__remove_zone(zone, start_pfn);
>@@ -1845,6 +1843,9 @@ void __ref __remove_memory(int nid, u64 start, u64 size)
> 	memblock_free(start, size);
> 	memblock_remove(start, size);
> 
>+	/* remove memory block devices before removing memory */
>+	remove_memory_block_devices(start, size);
>+
> 	arch_remove_memory(nid, start, size, NULL);
> 	__release_memory_resource(start, size);
> 
>-- 
>2.20.1

-- 
Wei Yang
Help you, Help me

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
