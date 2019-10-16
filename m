Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B1FD9343
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 16:02:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8K6uyeiiWDTSCBCYMUKX5i3672LS+tmaggfDEEd4aTY=; b=r05jG8/2pzu4sWIH1s6cob6d/
	2w49YzgAJcRHbS5maNGA4dBBgrfhSH05CQGDD/HNOYLfxiRHREu9Luw6CPZ2JaJTvUSdf5lRfT5Jk
	8at9jnwkN3zmz1iE516JQZN0yJOgA9KftH0kseGszb4xOKcn4Ms2kWYloqn+13kmKxeT3PDhdN4FW
	mER8Q59wHObNS7JbtGbhvOh6WPxX+fkMDM1AYcAqUXf2TZaE6QI+NtZMiWJiLjNlgH0tqjFQWXcBi
	Mx6d5gZO802JhfFJ4lvTbiWtN5Qcbs9dddX5jbuGpIVq4/QxxZea+jASOHgkQ4bgtUZFsoppMm9yo
	bO9XGNS0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKjsE-00028s-Dq; Wed, 16 Oct 2019 14:01:58 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKjs5-00027f-FG
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 14:01:51 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 477112A09B1;
 Wed, 16 Oct 2019 14:01:48 +0000 (UTC)
Received: from [10.36.116.19] (ovpn-116-19.ams2.redhat.com [10.36.116.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B60E160605;
 Wed, 16 Oct 2019 14:01:45 +0000 (UTC)
Subject: Re: [PATCH v6 06/10] mm/memory_hotplug: Poison memmap in
 remove_pfn_range_from_zone()
To: linux-kernel@vger.kernel.org
References: <20191006085646.5768-1-david@redhat.com>
 <20191006085646.5768-7-david@redhat.com>
From: David Hildenbrand <david@redhat.com>
Organization: Red Hat GmbH
Message-ID: <f5159e91-cef3-de65-af59-7c81e7c84d6d@redhat.com>
Date: Wed, 16 Oct 2019 16:01:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191006085646.5768-7-david@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Wed, 16 Oct 2019 14:01:48 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_070149_535492_5D362A4C 
X-CRM114-Status: GOOD (  14.47  )
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
 linux-sh@vger.kernel.org, x86@kernel.org, linux-mm@kvack.org,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org,
 Oscar Salvador <osalvador@suse.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06.10.19 10:56, David Hildenbrand wrote:
> Let's poison the pages similar to when adding new memory in
> sparse_add_section(). Also call remove_pfn_range_from_zone() from
> memunmap_pages(), so we can poison the memmap from there as well.
> 
> While at it, calculate the pfn in memunmap_pages() only once.

FWIW, this comment is stale and could be dropped :)

-- 

Thanks,

David / dhildenb

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
