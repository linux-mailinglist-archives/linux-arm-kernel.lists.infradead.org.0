Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 712E3B90DB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 15:43:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aiEEuRkTF6fBcaXkAE20nv1GEZUJBmgfhNaed5Aci94=; b=PVkrvmvbHfAc/umJLgddMHqkt
	QmMsiZrf0NgkG0tjbqEroPRwGcgk2myWIUvXtUq9a/EfpMwwQif7jGDSN5spT8MKRdynI4PvxoRiR
	WJM2xxBWCxSki2fCLOlHrM6218h0jDYeHxyZWpO28Tk/mkuxoHppcens3aQCSFxcLY53ZbM+FVOTU
	fzJTYAUs5YvDHu2JLOfik0gmTHoo2DI8nAUdpomLIPNiTW5e+VpsRVVXPcIHZJ5cioFc4nyZf8h+7
	AZi+EYroaQBFTto+YM3TznjHy9gf8Qs1nLzCATDriElB8gJKtPrfMVvde2POqepZiwJh1jGwd2Wv6
	BX0D2slPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBJBX-0004WY-PM; Fri, 20 Sep 2019 13:42:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBJBQ-0004W5-Dy
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 13:42:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 63A791570;
 Fri, 20 Sep 2019 06:42:47 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 43D923F67D;
 Fri, 20 Sep 2019 06:42:46 -0700 (PDT)
Subject: Re: "arm64: use asm-generic/dma-mapping.h" introduced a kbuild warning
To: Qian Cai <cai@lca.pw>, Masahiro Yamada <yamada.masahiro@socionext.com>
References: <1568898377.5576.186.camel@lca.pw>
 <CAK7LNATa=rzCZkBCDaUCcyo4_1JxsrGQrdUFxPh0Pw3KEu6exA@mail.gmail.com>
 <1568985515.5576.195.camel@lca.pw>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <32e53c34-6cc5-6231-6069-3b782f5d2cf0@arm.com>
Date: Fri, 20 Sep 2019 14:42:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1568985515.5576.195.camel@lca.pw>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_064248_516014_1DA58906 
X-CRM114-Status: GOOD (  17.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Michal Marek <michal.lkml@markovi.net>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stefano Stabellini <sstabellini@kernel.org>, Will Deacon <will@kernel.org>,
 Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20/09/2019 14:18, Qian Cai wrote:
> On Fri, 2019-09-20 at 19:24 +0900, Masahiro Yamada wrote:
>> Hi Qian,
>>
>> On Thu, Sep 19, 2019 at 10:06 PM Qian Cai <cai@lca.pw> wrote:
>>>
>>> The commit 5489c8e0cf03 ("arm64: use asm-generic/dma-mapping.h") introduced a
>>> kbuild warning,
>>>
>>> scripts/Makefile.asm-generic:25: redundant generic-y found in
>>> arch/arm64/include/asm/Kbuild: dma-mapping.h
>>>
>>>
>>
>> Which tree did you test?
> 
> It was yesterday's linux-next (next-20190918) with this config [1], but it seems
> gone in today's linux-next.

There was a conflict in dma-mapping.h between the arm64 tree and the 
dma-mapping tree (where that commit deleted it) - looks like -next must 
have just resolved it the wrong way that day.

Robin.

> [1] https://raw.githubusercontent.com/cailca/linux-mm/master/arm64.config
> 
>>
>> I tried the latest Linus tree (, which contains 5489c8e0cf03),
>> but I did not see this warning.
>>
>>
>>
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
