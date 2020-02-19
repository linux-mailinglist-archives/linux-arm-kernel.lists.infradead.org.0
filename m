Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E5AD1652EB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 00:08:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jrz1qwk31m9nw9hQDMAWUniQKGW+2TuzBAUHBTObMC8=; b=I9nKrO/wZxg9asxDh81xfLZu/
	1v5TjHWqBXbEpjtNBIws1maziUrqZWRPDIdJSfYufOBdNI5Ab4mdQqT09mDkv1b3PJlgkhPchIy6U
	buECppuyg2ervo0IOb7rX6C3VkZU60zknc6eJ33aMnp7AsjrIU/z1lnmyDpUG37ntXlK5+WuCta8z
	zkKGkVN40CWH9y58LtUbqUVL9uqjQhL0jr4G8vCiQlhcdLvjbGFq7yESZ5TcFNw4Kt3PZORELZUPb
	cgFL2qvzVJWcVyQ4FAoDqrHtTpEoBOd5pJRupJstK7/g6IN6u0hzUmONXqGHp+fG8zu6GzGWq/pMn
	NuzGj9NnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4YRz-00049X-De; Wed, 19 Feb 2020 23:08:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4YRr-00048e-BL
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 23:08:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AEC5A1FB;
 Wed, 19 Feb 2020 15:08:05 -0800 (PST)
Received: from [192.168.1.123] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4F30D3F703;
 Wed, 19 Feb 2020 15:08:03 -0800 (PST)
Subject: Re: [RFC PATCH] memory_hotplug: disable the functionality for 32b
To: Andrew Morton <akpm@linux-foundation.org>, Michal Hocko <mhocko@kernel.org>
References: <20200218084700.GD21113@dhcp22.suse.cz>
 <200218181900.M0115079@vega.pgw.jp> <20200218100532.GA4151@dhcp22.suse.cz>
 <20200219134645.7430db57e0e59f69e7386f46@linux-foundation.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <8877ad4c-00c0-0e7a-5515-533d85014bdd@arm.com>
Date: Wed, 19 Feb 2020 23:07:54 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200219134645.7430db57e0e59f69e7386f46@linux-foundation.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_150807_433182_9E976560 
X-CRM114-Status: GOOD (  15.92  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arch@vger.kernel.org, bhe@redhat.com, david@redhat.com,
 bugzilla-daemon@bugzilla.kernel.org, linux-mm@kvack.org,
 richardw.yang@linux.intel.com, n-horiguchi@ah.jp.nec.com, kkabe@vega.pgw.jp,
 linux-arm-kernel@lists.infradead.org, osalvador@suse.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-02-19 9:46 pm, Andrew Morton wrote:
> On Tue, 18 Feb 2020 11:05:32 +0100 Michal Hocko <mhocko@kernel.org> wrote:
> 
>> Subject: [PATCH] memory_hotplug: disable the functionality for 32b
>>
>> Memory hotlug is broken for 32b systems at least since c6f03e2903c9
>> ("mm, memory_hotplug: remove zone restrictions") which has considerably
>> reworked how can be memory associated with movable/kernel zones. The
>> same is not really trivial to achieve in 32b where only lowmem is the
>> kernel zone. While we can tweak this immediate problem around there are
>> likely other land mines hidden at other places.
>>
>> It is also quite dubious that there is a real usecase for the memory
>> hotplug on 32b in the first place. Low memory is just too small to be
>> hotplugable (for hot add) and generally unusable for hotremove. Adding
>> more memory to highmem is also dubious because it would increase the
>> low mem or vmalloc space pressure for memmaps.
>>
>> Restrict the functionality to 64b systems. This will help future
>> development to focus on usecases that have real life application.  We
>> can remove this restriction in future in presence of a real life usecase
>> of course but until then make it explicit that hotplug on 32b is broken
>> and requires a non trivial amount of work to fix.
> 
> (cc linux-arch)
> 
> (and linux-arm-kernel, as ARM is a major 32-bit user)
> 
> Does anyone see a problem with disabling memory hotplug on 32-bit builds?

32-bit Arm doesn't support memory hotplug, and as far as I'm aware 
there's little likelihood of it ever wanting to. FWIW it looks like 
SuperH is the only pure-32-bit architecture to have hotplug support at all.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
