Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B92971F4098
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 18:25:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IfWOrVE1PiuI+Kdv1NYXMf44ZjDAlpnernuE5jLgJFI=; b=PHyWyOEOfrxEmq
	cJQN6XMoxV6UHzXc81TPHycWoLEgJ56OibtV5wKGkc/3oxm8bq+jxWkmrv1I2VtK3/IyWHmDal5Ua
	oTOb3r/Pqp2VkPVlj4EDfji6B/H+yaRNn0sORSPySFE23xNhsSnXE9YSEiZeCC3nN190HWg8RJcah
	ImadWmWWTF91+88a/WJq22/AVkLEKCrppy+x5SqU/BlGpzeZtieNjWxHIpUhFzHLziii6ULq8Md7g
	MiLTQdI6UVDrEaO9UmLbc7AyP+/5o3g6BtmuHyqvit34PPTVb0WLfgIRDZOZPZKktTc/tIkfj4TIp
	ZTc4C53+suHT9j8QJ+kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jih3v-00007x-EU; Tue, 09 Jun 2020 16:25:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jih3m-00085u-Na
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 16:25:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 69E5F1FB;
 Tue,  9 Jun 2020 09:25:09 -0700 (PDT)
Received: from [10.57.49.155] (unknown [10.57.49.155])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1B0BA3F73D;
 Tue,  9 Jun 2020 09:25:05 -0700 (PDT)
Subject: Re: [PATCH 2/2] arm-nommu: Add use_reserved_mem() to check if device
 support reserved memory
From: Vladimir Murzin <vladimir.murzin@arm.com>
To: Christoph Hellwig <hch@lst.de>, dillon min <dillon.minfei@gmail.com>
References: <1591605038-8682-1-git-send-email-dillon.minfei@gmail.com>
 <1591605038-8682-3-git-send-email-dillon.minfei@gmail.com>
 <90df5646-e0c4-fcac-d934-4cc922230dd2@arm.com>
 <CAL9mu0+__0Z3R3TcSrj9-kPxsyQHKS9WqK1u58P0dEZ+Jd-wbQ@mail.gmail.com>
 <20200609153646.GA17969@lst.de>
 <031034fb-b109-7410-3ff8-e78cd12a5552@arm.com>
Message-ID: <b0c85637-4646-614b-d406-49aa72ce52e1@arm.com>
Date: Tue, 9 Jun 2020 17:25:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <031034fb-b109-7410-3ff8-e78cd12a5552@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_092510_831056_850D6D04 
X-CRM114-Status: GOOD (  17.05  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Alexandre Torgue <alexandre.torgue@st.com>,
 linux@armlinux.org.uk,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, tglx@linutronix.de,
 info@metux.net, linux-stm32@st-md-mailman.stormreply.com, allison@lohutok.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/9/20 4:43 PM, Vladimir Murzin wrote:
> On 6/9/20 4:36 PM, Christoph Hellwig wrote:
>> On Tue, Jun 09, 2020 at 11:22:24PM +0800, dillon min wrote:
>>> Hi Vladimir,
>>>
>>> Thanks for reviewing.
>>>
>>> Hi Christoph Hellwig,
>>>
>>> I just want to know if kernel dma mapping/direct is focused on
>>> platforms with MMU.
>>> leave arch code to handle dma coherent memory management themself for
>>> no-MMU platform.
>>
>> No, I'd really like to consolidate everything that isn't overly
>> arch specific eventually.
>>
>>>
>>> so, you just return error code in kernel/dma/mapping.c,direct.c
>>> without CONFIG_MMU defined ?
>>> which means dma-direct mapping doesn't support !CONFIG_MMU is not a
>>> bug, but design as it's.
>>> or, just return error code currently, will add dma direct mapping
>>> support for !CONFIG_MMU in the
>>> future?
>>>
>>> As Vladimir Murzin's suggestion has changes in kernel code, I need
>>> your input to get
>>> the design goal about dma-direct mapping, thanks.
>>
>> Can someone repost the whole patch?
>>
> 
> Happy to repost as separate patch once dillon confirms it actually works.
> 
> Meanwhile, I'm trying to understand at which point we lost this 
> functionality for NOMMU... maybe it will become different patch :)
> 

mmap operation for dma-noop (ancestor of dma-direct) was proposed
in [1]. It was suggested to change dma_common_map() instead which
was implemented in 

07c75d7a6b9e ("drivers: dma-mapping: allow dma_common_mmap() for NOMMU")

that removed CONFIG_MMU drom dma_common_mmap(). Later

62fcee9a3bd7 ("dma-mapping: remove CONFIG_ARCH_NO_COHERENT_DMA_MMAP")

reintroduced CONFIG_MMU in dma_common_mmap().

Even though commit mentions ARM, I do not see how mmap would continue
to work for NOMMU with dma-direct. ARM NOMMU needs it's own DMA operations
only in cases where caches are implemented or active, in other cases it
fully relies on dma-direct.

It looks to me that we either should provide NOMMU variant for mmap in
dma/direct or (carefully) fix dma/mapping.

Thoughts?

[1] http://lists.infradead.org/pipermail/linux-arm-kernel/2017-January/480600.html

Vladimir

> Cheers
> Vladimir
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
