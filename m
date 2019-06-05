Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D315366B2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 23:21:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9jpkN3M0310dqeVDD7nkIm7jWN6erqQKzBC6at4BZZM=; b=h2LKrcM97Zrhs5
	71Fb2yUJ9jzBDo+C+dS1ZPmt68i+eB52XXtEpzzBzAEYa2xozE3cchjhwjw5t2eT8p4nH9trY6bW1
	V2XfoGv4lAT3lcY6sBBk8oDrzAUbNMmU6dGjzVglgpAIlRuW7Yi93o++YhBObK1S0MwvW+M2BXJOG
	q0Msm80LShyRtjpDQb7zssU8b2PzIeswGpZN1JLX77d7869dNevS6VWo+FvZmcnh5+h8Zf0m2FUDd
	qUpyhmfIZEvjt00XRAe+5BXY7Ef+3RhybfnJChTeYOb/SIohacjt8P/DlLvik8Ej1gBBaTZyZ954G
	vZOMqglEHugWnBOeeLbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYdLT-00005b-Cv; Wed, 05 Jun 2019 21:21:19 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYdLK-000058-Kw
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 21:21:12 +0000
Received: by mail-ed1-x541.google.com with SMTP id w13so10653eds.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 14:21:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:reply-to:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=DbESKGjaSdEzS+8K4ZZpYJHwCVMJbIIgpVyCBcGmoDA=;
 b=uI2GOFinAV8sZvL+69rPUYkiOvfq/P6RaIvMP/TCLE7Eigu+OsAMxrlQ7M56dpfeaB
 KXnPuGlaLKfjVW4OK022oY9x2O84uuKCnTuTJ2Hy/rU4g60rDzrdLH9+Tx5dD+CSiY7P
 MZd6Gt4WuEMmALvkc+6OxkvqFlyqE8pj0B+RKWqsERmaO6rCiyUFNdAQJaK+bn+j6ZDo
 3+Ozb7/fHxX66bj8rSxIxrArPzuRzb+SpAu32sfxsWnMui2GD+nbp3sZ5ByAMfIb0inB
 TyCDQNWvPlw0yG17KhNWZpYS35pRM3rqQaLlQ7Rzw4ggssD4+ZfqKxNNHceKsI3nMqCT
 +Ubw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=DbESKGjaSdEzS+8K4ZZpYJHwCVMJbIIgpVyCBcGmoDA=;
 b=mSUGlwpSMsHn6xtTSHSrflC5qYjCJwC1P7Xuf+EvOBLvRjpQbtKPZkHL3dsZ66KhHn
 M1UjleAqEIVBQQKM+7EgZ3yxEUALpLq091LPgh2Ju0vxLb7gpBRRON2R8IZh8eN7OwAT
 Puyf5tLpM7VHbqrxK2L/nxwgXQ+1kIv0Zs9cvcXMfDLKFl/tLmD5A/9DmPpnRzkeXxPQ
 RWCMab9nYBrkWIsKFdV9ZJHtHf1bOCHIGlaQppan3Xdbt4208JMEF11Ie8bsem9014qc
 S4Db2ZifN69heysa9Lbxb5yK30XlXZyUiloM1uGyJBSfh6rPSs8hW6m9ocgvf1paQ8p+
 vVkg==
X-Gm-Message-State: APjAAAU33qZ4UkUwPsb0fAFYyyy5lRXyk7CSIOczmPOwbXg5ThbJsGL4
 yyw95yW0OcuvXvsg+BjotvI=
X-Google-Smtp-Source: APXvYqyuNRjvHNzTb2gEE1mIj1supSxm4qc3GPA7ju0Tg73FF069vkjl4Ke6VX7sPJnRrK6BAE1EDw==
X-Received: by 2002:a50:b523:: with SMTP id y32mr38680719edd.209.1559769668613; 
 Wed, 05 Jun 2019 14:21:08 -0700 (PDT)
Received: from localhost ([185.92.221.13])
 by smtp.gmail.com with ESMTPSA id x19sm3180078edq.9.2019.06.05.14.21.07
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 05 Jun 2019 14:21:07 -0700 (PDT)
Date: Wed, 5 Jun 2019 21:21:06 +0000
From: Wei Yang <richard.weiyang@gmail.com>
To: David Hildenbrand <david@redhat.com>
Subject: Re: [PATCH v3 10/11] mm/memory_hotplug: Make
 unregister_memory_block_under_nodes() never fail
Message-ID: <20190605212106.6folqx2zawbvzzmm@master>
References: <20190527111152.16324-1-david@redhat.com>
 <20190527111152.16324-11-david@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190527111152.16324-11-david@redhat.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_142110_711660_C4178075 
X-CRM114-Status: GOOD (  15.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weiyang[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-s390@vger.kernel.org, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mark Brown <broonie@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>,
 linux-kernel@vger.kernel.org, Wei Yang <richard.weiyang@gmail.com>,
 linux-mm@kvack.org, "David S. Miller" <davem@davemloft.net>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Alex Deucher <alexander.deucher@amd.com>, Igor Mammedov <imammedo@redhat.com>,
 akpm@linux-foundation.org, Chris Wilson <chris@chris-wilson.co.uk>,
 linuxppc-dev@lists.ozlabs.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org, Oscar Salvador <osalvador@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 01:11:51PM +0200, David Hildenbrand wrote:
>We really don't want anything during memory hotunplug to fail.
>We always pass a valid memory block device, that check can go. Avoid
>allocating memory and eventually failing. As we are always called under
>lock, we can use a static piece of memory. This avoids having to put
>the structure onto the stack, having to guess about the stack size
>of callers.
>
>Patch inspired by a patch from Oscar Salvador.
>
>In the future, there might be no need to iterate over nodes at all.
>mem->nid should tell us exactly what to remove. Memory block devices
>with mixed nodes (added during boot) should properly fenced off and never
>removed.
>
>Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>Cc: "Rafael J. Wysocki" <rafael@kernel.org>
>Cc: Alex Deucher <alexander.deucher@amd.com>
>Cc: "David S. Miller" <davem@davemloft.net>
>Cc: Mark Brown <broonie@kernel.org>
>Cc: Chris Wilson <chris@chris-wilson.co.uk>
>Cc: David Hildenbrand <david@redhat.com>
>Cc: Oscar Salvador <osalvador@suse.de>
>Cc: Andrew Morton <akpm@linux-foundation.org>
>Cc: Jonathan Cameron <Jonathan.Cameron@huawei.com>
>Signed-off-by: David Hildenbrand <david@redhat.com>

Reviewed-by: Wei Yang <richardw.yang@linux.intel.com>

>---
> drivers/base/node.c  | 18 +++++-------------
> include/linux/node.h |  5 ++---
> 2 files changed, 7 insertions(+), 16 deletions(-)
>
>diff --git a/drivers/base/node.c b/drivers/base/node.c
>index 04fdfa99b8bc..9be88fd05147 100644
>--- a/drivers/base/node.c
>+++ b/drivers/base/node.c
>@@ -803,20 +803,14 @@ int register_mem_sect_under_node(struct memory_block *mem_blk, void *arg)
> 
> /*
>  * Unregister memory block device under all nodes that it spans.
>+ * Has to be called with mem_sysfs_mutex held (due to unlinked_nodes).
>  */
>-int unregister_memory_block_under_nodes(struct memory_block *mem_blk)
>+void unregister_memory_block_under_nodes(struct memory_block *mem_blk)
> {
>-	NODEMASK_ALLOC(nodemask_t, unlinked_nodes, GFP_KERNEL);
> 	unsigned long pfn, sect_start_pfn, sect_end_pfn;
>+	static nodemask_t unlinked_nodes;
> 
>-	if (!mem_blk) {
>-		NODEMASK_FREE(unlinked_nodes);
>-		return -EFAULT;
>-	}
>-	if (!unlinked_nodes)
>-		return -ENOMEM;
>-	nodes_clear(*unlinked_nodes);
>-
>+	nodes_clear(unlinked_nodes);
> 	sect_start_pfn = section_nr_to_pfn(mem_blk->start_section_nr);
> 	sect_end_pfn = section_nr_to_pfn(mem_blk->end_section_nr);
> 	for (pfn = sect_start_pfn; pfn <= sect_end_pfn; pfn++) {
>@@ -827,15 +821,13 @@ int unregister_memory_block_under_nodes(struct memory_block *mem_blk)
> 			continue;
> 		if (!node_online(nid))
> 			continue;
>-		if (node_test_and_set(nid, *unlinked_nodes))
>+		if (node_test_and_set(nid, unlinked_nodes))
> 			continue;
> 		sysfs_remove_link(&node_devices[nid]->dev.kobj,
> 			 kobject_name(&mem_blk->dev.kobj));
> 		sysfs_remove_link(&mem_blk->dev.kobj,
> 			 kobject_name(&node_devices[nid]->dev.kobj));
> 	}
>-	NODEMASK_FREE(unlinked_nodes);
>-	return 0;
> }
> 
> int link_mem_sections(int nid, unsigned long start_pfn, unsigned long end_pfn)
>diff --git a/include/linux/node.h b/include/linux/node.h
>index 02a29e71b175..548c226966a2 100644
>--- a/include/linux/node.h
>+++ b/include/linux/node.h
>@@ -139,7 +139,7 @@ extern int register_cpu_under_node(unsigned int cpu, unsigned int nid);
> extern int unregister_cpu_under_node(unsigned int cpu, unsigned int nid);
> extern int register_mem_sect_under_node(struct memory_block *mem_blk,
> 						void *arg);
>-extern int unregister_memory_block_under_nodes(struct memory_block *mem_blk);
>+extern void unregister_memory_block_under_nodes(struct memory_block *mem_blk);
> 
> extern int register_memory_node_under_compute_node(unsigned int mem_nid,
> 						   unsigned int cpu_nid,
>@@ -175,9 +175,8 @@ static inline int register_mem_sect_under_node(struct memory_block *mem_blk,
> {
> 	return 0;
> }
>-static inline int unregister_memory_block_under_nodes(struct memory_block *mem_blk)
>+static inline void unregister_memory_block_under_nodes(struct memory_block *mem_blk)
> {
>-	return 0;
> }
> 
> static inline void register_hugetlbfs_with_node(node_registration_func_t reg,
>-- 
>2.20.1

-- 
Wei Yang
Help you, Help me

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
