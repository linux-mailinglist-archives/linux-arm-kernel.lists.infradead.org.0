Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03B6813D0E8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 01:11:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xW+aduBF2Pu08iBXGXZ4kwSPI2vTqT9GI0B1dxp3VoU=; b=MFqJAfcL/Tkv/9VxreuMJ3C1m
	XLe/IbkTMFXWCuq+XozAq+de05UBRdEFpm0usfqfrJVLBVu5IusmScJ3v7vl3BNAO9b6AAatfP39n
	0QuQ8Ogr7S0vLKWwJIqUIKdQAn9/lScsqEVVd10TKPOu2Wf0nJwpWYQeVmpgR5nTIcSOOC3nuwbmw
	2rba/bfwvDL5ItZj08/DS8yOucR7u28oq239foh6aKWcb/aXd9aNJ5NWJ4+XpRQtsMivTMd5H+/8s
	803uwRId8b7B/dPzVCN0AGlZd/KAkSrkg9AUrFAp3Kgi1KGeHk/WPY8MmDxRsmXqR+zjwvBcOTaZR
	HAgAugwBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irskT-00017a-AG; Thu, 16 Jan 2020 00:10:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irskI-000179-F4
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 00:10:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D710731B;
 Wed, 15 Jan 2020 16:10:42 -0800 (PST)
Received: from [10.37.12.94] (unknown [10.37.12.94])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E039A3F6C4;
 Wed, 15 Jan 2020 16:10:37 -0800 (PST)
Subject: Re: [PATCH v5] arm64: Implement optimised checksum routine
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org, catalin.marinas@arm.com
References: <44e00660247f8f39354ba8918071d6cff0d90612.1579106209.git.robin.murphy@arm.com>
Message-ID: <31f0a8b8-0bb9-c9d9-f753-f0e2069f7af9@arm.com>
Date: Thu, 16 Jan 2020 00:10:37 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <44e00660247f8f39354ba8918071d6cff0d90612.1579106209.git.robin.murphy@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_161046_548349_79AA29E2 
X-CRM114-Status: GOOD (  19.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: zhangshaokun@hisilicon.com, huanglingyan2@huawei.com, zhaoyuke@huawei.com,
 linux-arm-kernel@lists.infradead.org, ard.biesheuvel@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-01-15 4:42 pm, Robin Murphy wrote:
> Apparently there exist certain workloads which rely heavily on software
> checksumming, for which the generic do_csum() implementation becomes a
> significant bottleneck. Therefore let's give arm64 its own optimised
> version - for ease of maintenance this foregoes assembly or intrisics,
> and is thus not actually arm64-specific, but does rely heavily on C
> idioms that translate well to the A64 ISA and the typical load/store
> capabilities of most ARMv8 CPU cores.
> 
> The resulting increase in checksum throughput scales nicely with buffer
> size, tending towards 4x for a small in-order core (Cortex-A53), and up
> to 6x or more for an aggressive big core (Ampere eMAG).
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>

...and I couldn't stop scratching at the itch. Assuming nothing else 
comes up to warrant respinning a v6, feel free to squash this in when 
applying.

Robin.

----->8-----
 From 35be2df8eb2877f149c8168e171dcbc98c913e2d Mon Sep 17 00:00:00 2001
Message-Id: 
<35be2df8eb2877f149c8168e171dcbc98c913e2d.1579132632.git.robin.murphy@arm.com>
From: Robin Murphy <robin.murphy@arm.com>
Date: Wed, 15 Jan 2020 23:48:44 +0000
Subject: [PATCH] arm64: csum: Tweak branch tuning

Pulling the main loop out-of-line accounts for a small but consistent
performance bonus on shorter buffers - Clang tends to do this by itself,
but GCC benefits from an explicit hint.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
  arch/arm64/lib/csum.c | 2 +-
  1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/lib/csum.c b/arch/arm64/lib/csum.c
index 99cc11999756..847eb725ce09 100644
--- a/arch/arm64/lib/csum.c
+++ b/arch/arm64/lib/csum.c
@@ -52,7 +52,7 @@ unsigned int do_csum(const unsigned char *buff, int len)
  	 * main loop strictly excludes the tail, so the second loop will always
  	 * run at least once.
  	 */
-	while (len > 64) {
+	while (unlikely(len > 64)) {
  		__uint128_t tmp1, tmp2, tmp3, tmp4;

  		tmp1 = READ_ONCE_NOCHECK(*(__uint128_t *)ptr);
-- 
2.23.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
