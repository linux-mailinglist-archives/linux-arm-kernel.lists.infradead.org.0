Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56B811D46B4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 09:07:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ejPSLSg9MQ1eu8RT0Oa2c/fpnKVboJe45oMfZgKtKOE=; b=r2F4n6YYr0/SDQ
	KtAg47XhsVAToybUBu8+JtGaaDM148ZDlEjczrlFoW7KqGj74oi7eW8F4uSmG+Se8yre94x1CEpod
	pt9s60P3ZtfyOw/nTN5Ted7k+hj6GORBGXc5HhIfKNahNqfyk4u47D9tQ7qYcDoz3k3Z/5G0BGl03
	Mqj3WnOSIIDLap0mwoqwJvWEuYQZyx/IeD6C1xv7SJzV4xUl7TZbY/4SpjTNzVWm7uHyhcSHoFkz1
	MjPsUeodMKBEpR44GVRtiClR/DAp81x2GUBNACmPS5lE6hFFyEqlG2SggEr+ee42GDNGz3UlHNVGl
	hKj+CJSweUanGAmWlrzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZURX-0005O3-6Y; Fri, 15 May 2020 07:07:39 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZURO-0005N7-BX
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 07:07:31 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 6610CA908959FDAF50FF;
 Fri, 15 May 2020 15:07:25 +0800 (CST)
Received: from [10.57.101.250] (10.57.101.250) by
 DGGEMS412-HUB.china.huawei.com (10.3.19.212) with Microsoft SMTP Server id
 14.3.487.0; Fri, 15 May 2020 15:07:16 +0800
Subject: Re: [PATCH v2 0/3] io.h, logic_pio: Allow barriers for inX() and
 outX() be overridden
To: John Garry <john.garry@huawei.com>, <xuwei5@huawei.com>, <arnd@arndb.de>
References: <1585325174-195915-1-git-send-email-john.garry@huawei.com>
From: Wei Xu <xuwei5@hisilicon.com>
Message-ID: <5EBE3FA3.2060703@hisilicon.com>
Date: Fri, 15 May 2020 15:07:15 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <1585325174-195915-1-git-send-email-john.garry@huawei.com>
X-Originating-IP: [10.57.101.250]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_000730_562852_9A416198 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-arch@vger.kernel.org, okaya@kernel.org, linux-kernel@vger.kernel.org,
 jiaxun.yang@flygoat.com, linuxarm@huawei.com, olof@lixom.net,
 bhelgaas@google.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi John,

On 2020/3/28 0:06, John Garry wrote:
> Since commits a7851aa54c0c ("io: change outX() to have their own IO
> barrier overrides") and 87fe2d543f81 ("io: change inX() to have their own
> IO barrier overrides"), the outX() and inX() functions have memory
> barriers which can be overridden per-arch.
> 
> However, under CONFIG_INDIRECT_PIO, logic_pio defines its own version of
> inX() and outX(), which still use readb et al. For these, the barrier
> after a raw read is weaker than it otherwise would be. 
> 
> This series generates consistent behaviour for logic_pio, by defining
> generic _inX() and _outX() in asm-generic/io.h, and using those in
> logic_pio. Generic _inX() and _outX() have per-arch overrideable
> barriers.
> 
> The topic was discussed there originally:
> https://lore.kernel.org/lkml/2e80d7bc-32a0-cc40-00a9-8a383a1966c2@huawei.com/
> 
> A small tidy-up patch is included.
> 
> I hope that series can go through the arm-soc tree, as with other recent
> logic_pio changes.
> 
> Hi Arnd,
> 
> I added your tag, but please let me know if you have any issue with the
> updated change in patch #1.
> 
> cheers
> 
> - Differences to v1
> 	- fix x86 clang build by adding extra build swicth for _{in,out}X
> 	- added Arnd's RB tag
> 
> John Garry (3):
>   io: Provide _inX() and _outX()
>   logic_pio: Improve macro argument name
>   logic_pio: Use _inX() and _outX()
> 
>  include/asm-generic/io.h | 64 +++++++++++++++++++++++++++++++++---------------
>  lib/logic_pio.c          | 22 ++++++++---------
>  2 files changed, 55 insertions(+), 31 deletions(-)
> 

Thanks!
Series applied to the hisilicon SoC tree.

Best Regards,
Wei

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
