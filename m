Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB24D33A26
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 23:49:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q3CEg7PFGSn5wMs8sY2imu4ELWHt2ZgOlkkcKDBmhOQ=; b=YM6x9hp1L2F+aj
	3F08V9ur4R0Kyb4yryDP6k+Ca3cnOFROSYaN1dps5PRVEGfPeTWOfBRhvZxE9YaTF575QARNSrIDh
	W3CWzm+t21NqVy/Xae0Agxtqg878zQMgpTygDYIVC4viwjk5Kz2twNu3i5Pf/0SGG/sxVFW8aZk7U
	UD+t2xlKH2geq4532nDieEZL5yd0/Gssgcy+NDSjKpC1hvuyGFkcQypi3Q3v3jJk5lCMxdDzbmIIY
	j37pHSJQweMU2V1RO1LmAiPyXhR5uJuyIO76NhAKK5aNLGh+n8QFfUJb6CMtXyL6sI5KSuZO4rYDe
	hsIES6Ig3ll0r6S69Y1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXups-0005f6-F5; Mon, 03 Jun 2019 21:49:44 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXupl-0005eQ-FG
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 21:49:39 +0000
Received: by mail-ed1-x541.google.com with SMTP id y17so10854602edr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 14:49:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:reply-to:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=jSb30N0jvHoftFPeqnRT0DDU5guICPUBTZ+cum9JlR4=;
 b=mgXqHJD2asQbJ2oQs51g/wKDUPSvM+cdNOzAPTyJufLHFAJ19jz11IiehaMBP9Q8ik
 U7cGojJDSlIkY3XlU1wbDp/ZvfgCPH2xtvqbe8RTcqyW4RgEYqKYfvzgUXPExUHfWphX
 l6AEhObQDHlSi21ygsz20Rc+h9b47N32S+aUh7dW5enm+vZUggpdxoXVUyuZMF5MtWwu
 HvQgRVJ2g/tV3CdwcqyDzfDmGbDOJgMVhPQtiAPMWcP+2I1nYtbVep68GhMqaZszwkMu
 ZoMyIv97BEMZtXBzKLTZmelReybdKtsgdltfFU51nMZzyYEnx+zhis0dtU/Ii/M4+PfR
 vrDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=jSb30N0jvHoftFPeqnRT0DDU5guICPUBTZ+cum9JlR4=;
 b=ZUOBprNBQFCa3mj4nI8BtKbvVUVFjqZmtDH4PIeuGSeM/mrLipURGEiCETTkCwDG8O
 ZxPwguw1TmIjy4ORAz0tnOPE95IShdBqFjjb8AT4De3VD91ivCt8msh0ZJP69GCLxPRV
 i1dCFTmpUh50MInOQtWeAGDkVZM95GMd4jwxjNkpvU6CT17gVU9EsleZomoR/Raow0YC
 A+GZlYZNVfgjZPDq3srPp8HkUorjCjuADugFocIoGoTryj7jZbTp59EMCznZgSgAhgQm
 iEzZqMDMnR3X/1XCSB93LK6hVQls0INdoduSmOnxXEtk+JoVG+0Wzhion7YlJOK3rT25
 ipGw==
X-Gm-Message-State: APjAAAVb6ZRNhKKfjMLtgVw1Q2sRZfgxpCMXjJg902XQ8yBXS3m7OXBJ
 clDXVVxp5WE585L8nfTV/Vc=
X-Google-Smtp-Source: APXvYqy1VbSFtSybN1lKgHKlPjNOgnekacgTTpaBFyeruT/9MIRoRmfvBRLBg5v3bxan4Gxq56A6XA==
X-Received: by 2002:aa7:c645:: with SMTP id z5mr31432297edr.43.1559598573674; 
 Mon, 03 Jun 2019 14:49:33 -0700 (PDT)
Received: from localhost ([185.92.221.13])
 by smtp.gmail.com with ESMTPSA id d5sm1533710edr.8.2019.06.03.14.49.32
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 03 Jun 2019 14:49:32 -0700 (PDT)
Date: Mon, 3 Jun 2019 21:49:32 +0000
From: Wei Yang <richard.weiyang@gmail.com>
To: David Hildenbrand <david@redhat.com>
Subject: Re: [PATCH v3 05/11] drivers/base/memory: Pass a block_id to
 init_memory_block()
Message-ID: <20190603214932.3xsvxwiiutcve4tz@master>
References: <20190527111152.16324-1-david@redhat.com>
 <20190527111152.16324-6-david@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190527111152.16324-6-david@redhat.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_144937_512496_E1CF41E1 
X-CRM114-Status: GOOD (  14.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weiyang[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
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
 "Rafael J. Wysocki" <rafael@kernel.org>, linux-kernel@vger.kernel.org,
 Wei Yang <richard.weiyang@gmail.com>, linux-mm@kvack.org,
 Igor Mammedov <imammedo@redhat.com>, akpm@linux-foundation.org,
 linuxppc-dev@lists.ozlabs.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 01:11:46PM +0200, David Hildenbrand wrote:
>We'll rework hotplug_memory_register() shortly, so it no longer consumes
>pass a section.
>
>Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>Cc: "Rafael J. Wysocki" <rafael@kernel.org>
>Signed-off-by: David Hildenbrand <david@redhat.com>
>---
> drivers/base/memory.c | 15 +++++++--------
> 1 file changed, 7 insertions(+), 8 deletions(-)
>
>diff --git a/drivers/base/memory.c b/drivers/base/memory.c
>index f180427e48f4..f914fa6fe350 100644
>--- a/drivers/base/memory.c
>+++ b/drivers/base/memory.c
>@@ -651,21 +651,18 @@ int register_memory(struct memory_block *memory)
> 	return ret;
> }
> 
>-static int init_memory_block(struct memory_block **memory,
>-			     struct mem_section *section, unsigned long state)
>+static int init_memory_block(struct memory_block **memory, int block_id,
>+			     unsigned long state)
> {
> 	struct memory_block *mem;
> 	unsigned long start_pfn;
>-	int scn_nr;
> 	int ret = 0;
> 
> 	mem = kzalloc(sizeof(*mem), GFP_KERNEL);
> 	if (!mem)
> 		return -ENOMEM;
> 
>-	scn_nr = __section_nr(section);
>-	mem->start_section_nr =
>-			base_memory_block_id(scn_nr) * sections_per_block;
>+	mem->start_section_nr = block_id * sections_per_block;
> 	mem->end_section_nr = mem->start_section_nr + sections_per_block - 1;
> 	mem->state = state;
> 	start_pfn = section_nr_to_pfn(mem->start_section_nr);
>@@ -694,7 +691,8 @@ static int add_memory_block(int base_section_nr)
> 
> 	if (section_count == 0)
> 		return 0;
>-	ret = init_memory_block(&mem, __nr_to_section(section_nr), MEM_ONLINE);
>+	ret = init_memory_block(&mem, base_memory_block_id(base_section_nr),
>+				MEM_ONLINE);

If my understanding is correct, section_nr could be removed too.

> 	if (ret)
> 		return ret;
> 	mem->section_count = section_count;
>@@ -707,6 +705,7 @@ static int add_memory_block(int base_section_nr)
>  */
> int hotplug_memory_register(int nid, struct mem_section *section)
> {
>+	int block_id = base_memory_block_id(__section_nr(section));
> 	int ret = 0;
> 	struct memory_block *mem;
> 
>@@ -717,7 +716,7 @@ int hotplug_memory_register(int nid, struct mem_section *section)
> 		mem->section_count++;
> 		put_device(&mem->dev);
> 	} else {
>-		ret = init_memory_block(&mem, section, MEM_OFFLINE);
>+		ret = init_memory_block(&mem, block_id, MEM_OFFLINE);
> 		if (ret)
> 			goto out;
> 		mem->section_count++;
>-- 
>2.20.1

-- 
Wei Yang
Help you, Help me

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
