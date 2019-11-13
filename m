Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C35CDFB1F0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 14:57:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6pAUaRNaxbsnDpz3u03h3U4xOp0p6DXd3E5ZNGnQEcg=; b=AirCzH5XTC+I7lqBrw00kzkGr
	gooURWGgdCdcEXQ/yTGYMFVxDfMIhZN+TRR7luhxaJImZQorT04JbeBdR+2xsUGrsfwwX8SkM+5bw
	DAgQXZGFy6G+xxn9uRU9xm9v3n0ujA109Ny/Y0SubLY4uuHJz//NgoRs0g3bfdbf6bcXtzUpPxv8B
	Pi/DYQLgYztx9oTZpamMRqT67dbc7gTg5vwbjdg3Rh35l2AeJfQ5Y4C+mEDvx6CXtfzGOGd/1q4Mj
	L+y1wJdiWM++RWRVCt1lx/1Bv9Wx7t/jAW3U+F8pkuMBOUm2qRuoBmLKd6zG5TEGNAQs3vfBUOQGV
	9uNe3KLVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUt9a-0000tY-BD; Wed, 13 Nov 2019 13:57:50 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUt9F-0000ow-O9
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 13:57:33 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Nov 2019 05:57:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,300,1569308400"; d="scan'208";a="194675312"
Received: from rcao-mobl3.ccr.corp.intel.com (HELO [10.249.174.53])
 ([10.249.174.53])
 by orsmga007.jf.intel.com with ESMTP; 13 Nov 2019 05:57:25 -0800
Subject: Re: [PATCH V5 1/4] ACPI: Support Generic Initiator only domains
To: Jonathan Cameron <jonathan.cameron@huawei.com>,
 Dan Williams <dan.j.williams@intel.com>
References: <20191004114330.104746-1-Jonathan.Cameron@huawei.com>
 <20191004114330.104746-2-Jonathan.Cameron@huawei.com>
 <CAPcyv4jZG-5s6NsS-_-oNG45y0Qb1mVD_s8cCGqLYtzvHqEo+Q@mail.gmail.com>
 <20191113094742.00000dc4@huawei.com>
From: Tao Xu <tao3.xu@intel.com>
Message-ID: <77b6a6e8-9d44-1e1c-3bf0-a8d04833598d@intel.com>
Date: Wed, 13 Nov 2019 21:57:24 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <20191113094742.00000dc4@huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_055729_801803_86203EA9 
X-CRM114-Status: GOOD (  25.15  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
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
Cc: Linux ACPI <linux-acpi@vger.kernel.org>, X86 ML <x86@kernel.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linuxarm <linuxarm@huawei.com>, Keith Busch <keith.busch@intel.com>,
 Linux MM <linux-mm@kvack.org>,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/13/2019 5:47 PM, Jonathan Cameron wrote:
> On Tue, 12 Nov 2019 09:55:17 -0800
> Dan Williams <dan.j.williams@intel.com> wrote:
> 
>> [ add Tao Xu ]
>>
>> On Fri, Oct 4, 2019 at 4:45 AM Jonathan Cameron
>> <Jonathan.Cameron@huawei.com> wrote:
>>>
>>> Generic Initiators are a new ACPI concept that allows for the
>>> description of proximity domains that contain a device which
>>> performs memory access (such as a network card) but neither
>>> host CPU nor Memory.
>>>
>>> This patch has the parsing code and provides the infrastructure
>>> for an architecture to associate these new domains with their
>>> nearest memory processing node.
>>
>> Thanks for this Jonathan. May I ask how this was tested? Tao has been
>> working on qemu support for HMAT [1]. I have not checked if it already
>> supports generic initiator entries, but it would be helpful to include
>> an example of how the kernel sees these configurations in practice.
>>
>> [1]: http://patchwork.ozlabs.org/cover/1096737/
> 
> Tested against qemu with SRAT and SLIT table overrides from an
> initrd to actually create the node and give it distances
> (those all turn up correctly in the normal places).  DSDT override
> used to move an emulated network card into the GI numa node.  That
> currently requires the PCI patch referred to in the cover letter.
> On arm64 tested both on qemu and real hardware (overrides on tables
> even for real hardware as I can't persuade our BIOS team to implement
> Generic Initiators until an OS is actually using them.)
> 
> Main real requirement is memory allocations then occur from one of
> the nodes at the minimal distance when you are do a devm_ allocation
> from a device assigned. Also need to be able to query the distances
> to allow load balancing etc.  All that works as expected.
> 
> It only has a fairly tangential connection to HMAT in that HMAT
> can provide information on GI nodes.  Given HMAT code is quite happy
> with memoryless nodes anyway it should work.  QEMU doesn't currently
> have support to create GI SRAT entries let alone HMAT using them.
> 
> Whilst I could look at adding such support to QEMU, it's not
> exactly high priority to emulate something we can test easily
> by overriding the tables before the kernel reads them.
> 
> I'll look at how hard it is to build an HMAT tables for my test
> configs based on the ones I used to test your HMAT patches a while
> back.  Should be easy if tedious.
> 
> Jonathan
> 
Indeed, HMAT can support Generic Initiator, but as far as I know, QEMU 
only can emulate a node with cpu and memory, or memory-only. Even if we 
assign a node with cpu only, qemu will raise error. Considering 
compatibility, there are lots of work to do for QEMU if we change NUMA 
or SRAT table.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
