Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2096DD5EF1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 11:32:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=91F5i6GMJ1mtbaIZPl2lqTyy0yFQcf3Tk4OtSxStUhg=; b=FuS5GwATusA97jad7bBPKJ5nq
	RHyFzwPxgjjbCe/smVbzf0u11akzOZSn4TNv50xbPhmnxj5v8gl8HS6+4B5EGd5Hf8m/IA0qnB11Y
	fxPapy1S4xS/Ugc4sDrtklwGarp10XMwcXqWpMmxn9FApnUnSlD1Hqwwtllyj1FtEK2eRC6gC/Ham
	S5JgbERU6ZDwh6/seiNWeOPC0faxGJupiHet17x50lrBR56O+DbjQtGBjIIxBoc6v95WsJeauZLwy
	2qiUlsdKd/yEcBtea4GBnlzqG7pjwG7frQXyX2RU7r4pPTkMtQ1av7wt8go7sFddSbETUDGbHUMo4
	JNmw1jf7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJwiK-0007Xm-HS; Mon, 14 Oct 2019 09:32:28 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJwi9-0007Wn-GS
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 09:32:18 +0000
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 13146A3CD7D;
 Mon, 14 Oct 2019 09:32:17 +0000 (UTC)
Received: from [10.36.116.28] (ovpn-116-28.ams2.redhat.com [10.36.116.28])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9106F600CD;
 Mon, 14 Oct 2019 09:32:14 +0000 (UTC)
Subject: Re: [PATCH v6 04/10] mm/memory_hotplug: Don't access uninitialized
 memmaps in shrink_zone_span()
To: linux-kernel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>
References: <20191006085646.5768-1-david@redhat.com>
 <20191006085646.5768-5-david@redhat.com>
From: David Hildenbrand <david@redhat.com>
Organization: Red Hat GmbH
Message-ID: <5a4573de-bd8a-6cd3-55d0-86d503a236fd@redhat.com>
Date: Mon, 14 Oct 2019 11:32:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <20191006085646.5768-5-david@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.68]); Mon, 14 Oct 2019 09:32:17 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_023217_570031_B1FA4C24 
X-CRM114-Status: GOOD (  19.27  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-s390@vger.kernel.org, Michal Hocko <mhocko@suse.com>,
 linux-ia64@vger.kernel.org, Pavel Tatashin <pasha.tatashin@soleen.com>,
 linux-sh@vger.kernel.org, "Aneesh Kumar K . V" <aneesh.kumar@linux.ibm.com>,
 x86@kernel.org, linux-mm@kvack.org, Dan Williams <dan.j.williams@intel.com>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 Oscar Salvador <osalvador@suse.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06.10.19 10:56, David Hildenbrand wrote:
> Let's limit shrinking to !ZONE_DEVICE so we can fix the current code. We
> should never try to touch the memmap of offline sections where we could
> have uninitialized memmaps and could trigger BUGs when calling
> page_to_nid() on poisoned pages.
> 
> There is no reliable way to distinguish an uninitialized memmap from an
> initialized memmap that belongs to ZONE_DEVICE, as we don't have
> anything like SECTION_IS_ONLINE we can use similar to
> pfn_to_online_section() for !ZONE_DEVICE memory. E.g.,
> set_zone_contiguous() similarly relies on pfn_to_online_section() and
> will therefore never set a ZONE_DEVICE zone consecutive. Stopping to
> shrink the ZONE_DEVICE therefore results in no observable changes,
> besides /proc/zoneinfo indicating different boundaries - something we
> can totally live with.
> 
> Before commit d0dc12e86b31 ("mm/memory_hotplug: optimize memory
> hotplug"), the memmap was initialized with 0 and the node with the
> right value. So the zone might be wrong but not garbage. After that
> commit, both the zone and the node will be garbage when touching
> uninitialized memmaps.
> 
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Oscar Salvador <osalvador@suse.de>
> Cc: David Hildenbrand <david@redhat.com>
> Cc: Michal Hocko <mhocko@suse.com>
> Cc: Pavel Tatashin <pasha.tatashin@soleen.com>
> Cc: Dan Williams <dan.j.williams@intel.com>
> Fixes: d0dc12e86b31 ("mm/memory_hotplug: optimize memory hotplug")

@Andrew, can you convert that to

Fixes: f1dd2cd13c4b ("mm, memory_hotplug: do not associate hotadded 
memory to zones until online") # visible after d0dc12e86b319

and add

Cc: stable@vger.kernel.org # v4.13+


-- 

Thanks,

David / dhildenb

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
