Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D65FC1F907
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 18:59:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4+y3Oc6awkUxROX+BRGgxkfyZpjBLge332YSU3cfqxQ=; b=Uaq+SheWnyiYS4
	VlAbTBcZKLUPmwZbV/onPZXO2O/fqAcQ87IEpZTM2M9lg3RaGJcIdCMlze8gJHgNiQJ33+4eeznzt
	g9+ZR08q06AuJfGW9K7EjMfe0aHT9i8FrnXlayb5TmLU05fyPl8pAXHKkihJ2hWTGlFekOrD0kzjf
	CQwK4ON70FWBSTp5SFjuqrz6nhwoOzTiG6+N7UdQDkbwhyQ5jGXPKTcMpTIDG65pDTSP6PARyrGJP
	/mUdbj49vlK0elK88Dh+iNqT1iaULC0OdCPEen639hiOID8KKHrmxXAh3zF4tRB195rPd21D+r5T5
	DKVc1xuFzJXAmsTNkn1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQxF5-0006Ie-Js; Wed, 15 May 2019 16:58:59 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQxEx-0006Hr-Kp
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 16:58:53 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id CCF40ADAB;
 Wed, 15 May 2019 16:58:48 +0000 (UTC)
Date: Wed, 15 May 2019 18:58:47 +0200
From: Michal Hocko <mhocko@kernel.org>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V3 2/4] arm64/mm: Hold memory hotplug lock while walking
 for kernel page table dump
Message-ID: <20190515165847.GH16651@dhcp22.suse.cz>
References: <1557824407-19092-1-git-send-email-anshuman.khandual@arm.com>
 <1557824407-19092-3-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557824407-19092-3-git-send-email-anshuman.khandual@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_095851_830914_9E751F8F 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: mark.rutland@arm.com, ira.weiny@intel.com, david@redhat.com,
 catalin.marinas@arm.com, cai@lca.pw, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, logang@deltatee.com, james.morse@arm.com,
 cpandya@codeaurora.org, arunks@codeaurora.org, akpm@linux-foundation.org,
 osalvador@suse.de, mgorman@techsingularity.net, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org, robin.murphy@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue 14-05-19 14:30:05, Anshuman Khandual wrote:
> The arm64 pagetable dump code can race with concurrent modification of the
> kernel page tables. When a leaf entries are modified concurrently, the dump
> code may log stale or inconsistent information for a VA range, but this is
> otherwise not harmful.
> 
> When intermediate levels of table are freed, the dump code will continue to
> use memory which has been freed and potentially reallocated for another
> purpose. In such cases, the dump code may dereference bogus addressses,
> leading to a number of potential problems.
> 
> Intermediate levels of table may by freed during memory hot-remove, or when
> installing a huge mapping in the vmalloc region. To avoid racing with these
> cases, take the memory hotplug lock when walking the kernel page table.

Why is this a problem only on arm64 and why do we even care for debugfs?
Does anybody rely on this thing to be reliable? Do we even need it? Who
is using the file?

I am asking because I would really love to make mem hotplug locking less
scattered outside of the core MM than more. Most users simply shouldn't
care. Pfn walkers should rely on pfn_to_online_page.

-- 
Michal Hocko
SUSE Labs

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
