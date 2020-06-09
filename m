Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B8C71F3FB4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 17:44:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=apg+n8wgqAgWJLu7EMac8KHQgdvX9LL6KNyACEeLGmU=; b=Ue+blZd34VFKD6
	cC1y7Vo4B/RMM3b96L8DskVkBXjeO+yR5aVdYmcPz8L62gMHmSflXl2SMPt6kUSzBEMGZMfQYAkuW
	vT5UcOirgMrwlbAYhnfg6a/jOwhwvOLOLLbluUFfDgHfGsZlu7kH3SqLrUEl+w03CoGzBVRSxs9Fy
	9BFrGmc4JAUsW9t0S2HLcg/Sh4TByE1JasXzdHD/g4OC3J2KNUhrUmah+oZ4+arb5693AYt9QIktD
	b37KMXioK4KGcWFzqJUTD0nypKaPHNLCqtsiiP/wttZCcTpg3rX39O0Mx1nswZUX01qvL6r8ckN58
	R8DneFcEn21EGZDgdobw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jigQ8-0005iA-Pb; Tue, 09 Jun 2020 15:44:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jigPw-0005hg-Oz
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 15:44:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E60621FB;
 Tue,  9 Jun 2020 08:43:58 -0700 (PDT)
Received: from [10.57.49.155] (unknown [10.57.49.155])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2950B3F66F;
 Tue,  9 Jun 2020 08:43:55 -0700 (PDT)
Subject: Re: [PATCH 2/2] arm-nommu: Add use_reserved_mem() to check if device
 support reserved memory
To: Christoph Hellwig <hch@lst.de>, dillon min <dillon.minfei@gmail.com>
References: <1591605038-8682-1-git-send-email-dillon.minfei@gmail.com>
 <1591605038-8682-3-git-send-email-dillon.minfei@gmail.com>
 <90df5646-e0c4-fcac-d934-4cc922230dd2@arm.com>
 <CAL9mu0+__0Z3R3TcSrj9-kPxsyQHKS9WqK1u58P0dEZ+Jd-wbQ@mail.gmail.com>
 <20200609153646.GA17969@lst.de>
From: Vladimir Murzin <vladimir.murzin@arm.com>
Message-ID: <031034fb-b109-7410-3ff8-e78cd12a5552@arm.com>
Date: Tue, 9 Jun 2020 16:43:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20200609153646.GA17969@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_084400_871502_AF15F26A 
X-CRM114-Status: GOOD (  15.61  )
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

On 6/9/20 4:36 PM, Christoph Hellwig wrote:
> On Tue, Jun 09, 2020 at 11:22:24PM +0800, dillon min wrote:
>> Hi Vladimir,
>>
>> Thanks for reviewing.
>>
>> Hi Christoph Hellwig,
>>
>> I just want to know if kernel dma mapping/direct is focused on
>> platforms with MMU.
>> leave arch code to handle dma coherent memory management themself for
>> no-MMU platform.
> 
> No, I'd really like to consolidate everything that isn't overly
> arch specific eventually.
> 
>>
>> so, you just return error code in kernel/dma/mapping.c,direct.c
>> without CONFIG_MMU defined ?
>> which means dma-direct mapping doesn't support !CONFIG_MMU is not a
>> bug, but design as it's.
>> or, just return error code currently, will add dma direct mapping
>> support for !CONFIG_MMU in the
>> future?
>>
>> As Vladimir Murzin's suggestion has changes in kernel code, I need
>> your input to get
>> the design goal about dma-direct mapping, thanks.
> 
> Can someone repost the whole patch?
> 

Happy to repost as separate patch once dillon confirms it actually works.

Meanwhile, I'm trying to understand at which point we lost this 
functionality for NOMMU... maybe it will become different patch :)

Cheers
Vladimir

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
