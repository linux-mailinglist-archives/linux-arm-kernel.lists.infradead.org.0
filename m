Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 408872633B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 13:51:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cytiK6qRMTRYEFC4f5bJDJrBmRH+zd2lNViUII4HQp8=; b=SHg9jJKhscqv5zVmAtb6Ey3WB
	sMRZD9kmveLA0R6Mj8m8XG1y430l9+QjhPS+zPF4B2vkFPFUmmixKj8zaDGsJTFpffauoftVmpAP5
	Z2h8iZYDBrNNCLcvOdLqBnanp+4X3oQLe8GY8F6FsacDuMnyYyBAklicmMUbaJlMS+09PM0dZCN+2
	qOS17mdtMNI9YbqIxfngvy75nwYYUyMzUlSRfzvj7po/KLywFUamxiadhwB91TxVqL3YMkXHJsey7
	ECW98MHn4/bkSBHKYscIUKkupx9FwToqdx6OlSUBfRzT+GijJDIeaenf4OFSPwg3MvydbGfcsFpw2
	KxVKNZEsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTPmA-0004Kd-6M; Wed, 22 May 2019 11:51:18 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTPly-0004EV-R9
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 11:51:08 +0000
Received: by mail-lf1-x144.google.com with SMTP id y19so1461998lfy.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 04:51:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language;
 bh=0ynUYONVcMiVbkrkcaIw584jgiD0pTwFWZg9Gin77bo=;
 b=pCIXG2apP2eP17dxL3Fcc9s1Po4HcUjSyZOLarAaiah2CRKo092uOOzwoS8W+89Yoq
 91OoZsgbqvKnGDCfmKFV150MeQygCfkDdxUH8Cti/NmOUmJwLO+zWIZTzZ2azXlcKUkw
 yUwbmGmQkb5/YooUExPckSyPQG1+05oBe4i5+wfRTO584laJEGpbOy224XB+cxOqpxuz
 ytlY1hevwI1YzM+s9v+C9I3e/zs1gvAj5dF0e1fYZ9+lrddjjPvIq1oQHnI6cYTp+7nI
 aLmR45Is1Rt9j2qEz2hVcZIPKuKVrGDHn8Ap3EeOWK49nBg9kTmNDMmKCsqCNf5FB9pU
 RL7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language;
 bh=0ynUYONVcMiVbkrkcaIw584jgiD0pTwFWZg9Gin77bo=;
 b=XschOs/3HQfBBl1MNZP7wVd6oedq5hMz0arvcItvLimwk88V9d3MdWdhuJzz/VpKOB
 EWGEi/PS08I7Hy4ch3O8HuFuTa79fW1atypt0PQ3D/kVcVHuSl9iXnD51uq8bfgOInOW
 DXQyYB8HRZVvIaMgEWQBY30m/Fou/EEUjzKKAA71jPSfSgmmDqyEVcl/mNQQ4QO1Y59c
 Sy0w5G973vPRNai7obqIDwPkS3jPeQ7UBHEw4DFO5wueMDzYhcEKeZZVKaCdt/+nq9HA
 Pcj+PYy3MthRtuxPq4uPJie5PbUZ/cuSJ83bHanMMk37FTZWpivQ5jBrhUNiCYuKOD/T
 qZbA==
X-Gm-Message-State: APjAAAX2fnwXztSo9XrHPxRncb6SFeD/nPtdr7nGWAiuKqHF73Ww2+a5
 DvoBYZDYj9f7BYaOjkTM4Ks=
X-Google-Smtp-Source: APXvYqy2S4Tw15COferEzBGg+gYLtPOE26SWc436EPB7s/SfCOmOTSDqz+ruUjxlnOAUBK2I43Jfnw==
X-Received: by 2002:a19:7d05:: with SMTP id y5mr9179157lfc.40.1558525864270;
 Wed, 22 May 2019 04:51:04 -0700 (PDT)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.googlemail.com with ESMTPSA id h10sm6193902ljm.9.2019.05.22.04.51.02
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 May 2019 04:51:03 -0700 (PDT)
Subject: Re: ARM router NAT performance affected by random/unrelated commits
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <9a9ba4c9-3cb7-eb64-4aac-d43b59224442@gmail.com>
 <20190521104512.2r67fydrgniwqaja@shell.armlinux.org.uk>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Message-ID: <de262f71-748f-d242-f1d4-ea10188a0438@gmail.com>
Date: Wed, 22 May 2019 13:51:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.2
MIME-Version: 1.0
In-Reply-To: <20190521104512.2r67fydrgniwqaja@shell.armlinux.org.uk>
Content-Type: multipart/mixed; boundary="------------1DD6FAD97BC7F1875FD92211"
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_045106_942668_862937E5 
X-CRM114-Status: GOOD (  17.34  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: Jo-Philipp Wich <jo@mein.io>, Network Development <netdev@vger.kernel.org>,
 John Crispin <john@phrozen.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-block@vger.kernel.org, Jonas Gorski <jonas.gorski@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Felix Fietkau <nbd@nbd.name>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is a multi-part message in MIME format.
--------------1DD6FAD97BC7F1875FD92211
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 21.05.2019 12:45, Russell King - ARM Linux admin wrote:> On Tue, May 21, 2019 at 12:28:48PM +0200, Rafał Miłecki wrote:
 >> I work on home routers based on Broadcom's Northstar SoCs. Those devices
 >> have ARM Cortex-A9 and most of them are dual-core.
 >>
 >> As for home routers, my main concern is network performance. That CPU
 >> isn't powerful enough to handle gigabit traffic so all kind of
 >> optimizations do matter. I noticed some unexpected changes in NAT
 >> performance when switching between kernels.
 >>
 >> My hardware is BCM47094 SoC (dual core ARM) with integrated network
 >> controller and external BCM53012 switch.
 >
 > Guessing, I'd say it's to do with the placement of code wrt cachelines.
 > You could try aligning some of the cache flushing code to a cache line
 > and see what effect that has.

Is System.map a good place to check for functions code alignment?

With Linux 4.19 + OpenWrt mtd patches I have:
(...)
c010ea94 t v7_dma_inv_range
c010eae0 t v7_dma_clean_range
(...)
c02ca3d0 T blk_mq_update_nr_hw_queues
c02ca69c T blk_mq_alloc_tag_set
c02ca94c T blk_mq_release
c02ca9b4 T blk_mq_free_queue
c02caa88 T blk_mq_update_nr_requests
c02cab50 T blk_mq_unique_tag
(...)

After cherry-picking 9316a9ed6895 ("blk-mq: provide helper for setting
up an SQ queue and tag set"):
(...)
c010ea94 t v7_dma_inv_range
c010eae0 t v7_dma_clean_range
(...)
c02ca3d0 T blk_mq_update_nr_hw_queues
c02ca69c T blk_mq_alloc_tag_set
c02ca94c T blk_mq_init_sq_queue <-- NEW
c02ca9c0 T blk_mq_release <-- Different address of this & all below
c02caa28 T blk_mq_free_queue
c02caafc T blk_mq_update_nr_requests
c02cabc4 T blk_mq_unique_tag
(...)

As you can see blk_mq_init_sq_queue has appeared in the System.map and
it affected addresses of ~30000 symbols. I can believe some frequently
used symbols got luckily aligned and that improved overall performance.

Interestingly v7_dma_inv_range() and v7_dma_clean_range() were not
relocated.

*****

I followed Russell's suggestion and added .align 5 to cache-v7.S (see
two attached diffs).

1) v4.19 + OpenWrt mtd patches
 > egrep -B 1 -A 1 "v7_dma_(inv|clean)_range" System.map
c010ea58 T v7_flush_kern_dcache_area
c010ea94 t v7_dma_inv_range
c010eae0 t v7_dma_clean_range
c010eb18 T b15_dma_flush_range

2) v4.19 + OpenWrt mtd patches + two .align 5 in cache-v7.S
c010ea6c T v7_flush_kern_dcache_area
c010eac0 t v7_dma_inv_range
c010eb20 t v7_dma_clean_range
c010eb58 T b15_dma_flush_range
(actually 15 symbols above v7_dma_inv_range were replaced)

This method seems to be somehow working (at least affects addresses in
System.map).

*****

I run 2 tests for each combination of changes. Each test consisted of
10 sequences of: 30 seconds iperf session + reboot.


 > git reset --hard v4.19
 > git am OpenWrt-mtd-chages.patch
Test #1: 738 Mb/s
Test #2: 737 Mb/s

 > git reset --hard v4.19
 > git am OpenWrt-mtd-chages.patch
patch -p1 < v7_dma_clean_range-align.diff
Test #1: 746 Mb/s
Test #2: 747 Mb/s

 > git reset --hard v4.19
 > git am OpenWrt-mtd-chages.patch
 > patch -p1 < v7_dma_inv_range-align.diff
Test #1: 745 Mb/s
Test #2: 746 Mb/s

 > git reset --hard v4.19
 > git am OpenWrt-mtd-chages.patch
 > patch -p1 < v7_dma_clean_range-align.diff
 > patch -p1 < v7_dma_inv_range-align.diff
Test #1: 762 Mb/s
Test #2: 761 Mb/s

As you can see I got a quite nice performance improvement after aligning
both: v7_dma_clean_range() and v7_dma_inv_range().

It still wasn't as good as with 9316a9ed6895 cherry-picked but pretty
close.


 > git reset --hard v4.19
 > git am OpenWrt-mtd-chages.patch
 > git cherry-pick -x 9316a9ed6895
Test #1: 770 Mb/s
Test #2: 766 Mb/s

 > git reset --hard v4.19
 > git am OpenWrt-mtd-chages.patch
 > git cherry-pick -x 9316a9ed6895
 > patch -p1 < v7_dma_clean_range-align.diff
Test #1: 756 Mb/s
Test #2: 759 Mb/s

 > git reset --hard v4.19
 > git am OpenWrt-mtd-chages.patch
 > git cherry-pick -x 9316a9ed6895
 > patch -p1 < v7_dma_inv_range-align.diff
Test #1: 758 Mb/s
Test #2: 759 Mb/s

 > git reset --hard v4.19
 > git am OpenWrt-mtd-chages.patch
 > git cherry-pick -x 9316a9ed6895
 > patch -p1 < v7_dma_clean_range-align.diff
 > patch -p1 < v7_dma_inv_range-align.diff
Test #1: 767 Mb/s
Test #2: 763 Mb/s

Now you can see how unpredictable it is. If I cherry-pick 9316a9ed6895
and do an extra alignment of v7_dma_clean_range() and v7_dma_inv_range()
that extra alignment can actually *hurt* NAT performance.

My guess is that:
1) 9316a9ed6895 provides alignment of some very important function(s)
2) DMA alignments on top ^^ provide some gain but also break some align

*****

SUMMARY

It seems that for Linux 4.19 + my .config I can get a very lucky &
optimal alignment of functions by cherry-picking 9316a9ed6895.

I thought of checking functions reported by the "perf" tool with CPU
usage of 2%+.

All following functions keep their original address with 9316a9ed6895:
__irqentry_text_end
arch_cpu_idle
l2c210_clean_range
l2c210_inv_range
v7_dma_clean_range
v7_dma_inv_range

Remaining 3 functions got reallocated:
-c03e5038 t __netif_receive_skb_core
+c03e50b0 t __netif_receive_skb_core
-c03c8b1c t bcma_host_soc_read32
+c03c8b94 t bcma_host_soc_read32
-c0475620 T fib_table_lookup
+c0475698 T fib_table_lookup

I tried aligning all 3 above functions using:
__attribute__((aligned(32)))
and got 756 Mb/s. It's better but still not ~770 Mb/s.

Is there any easy way of identifying which of function alignments got
such a big impact on NAT performance? I'd like to get those functions
explicitly aligned using assembler/__attribute__/something.

What I'm also afraid are false positives. I may end up aligning some
unrelated function that just happens to align other ones. Just like
cherry-picking 9316a9ed6895 having side-effects and not really fixing
anything explicitly.

--------------1DD6FAD97BC7F1875FD92211
Content-Type: text/x-patch;
 name="v7_dma_clean_range-align.diff"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="v7_dma_clean_range-align.diff"

diff --git a/arch/arm/mm/cache-v7.S b/arch/arm/mm/cache-v7.S
index 215df435bfb9..c60046cd34aa 100644
--- a/arch/arm/mm/cache-v7.S
+++ b/arch/arm/mm/cache-v7.S
@@ -373,6 +373,8 @@ v7_dma_inv_range:
 	ret	lr
 ENDPROC(v7_dma_inv_range)
 
+	.align	5
+
 /*
  *	v7_dma_clean_range(start,end)
  *	- start   - virtual start address of region

--------------1DD6FAD97BC7F1875FD92211
Content-Type: text/x-patch;
 name="v7_dma_inv_range-align.diff"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="v7_dma_inv_range-align.diff"

diff --git a/arch/arm/mm/cache-v7.S b/arch/arm/mm/cache-v7.S
index 215df435bfb9..0c3999f219ab 100644
--- a/arch/arm/mm/cache-v7.S
+++ b/arch/arm/mm/cache-v7.S
@@ -340,6 +340,8 @@ ENTRY(v7_flush_kern_dcache_area)
 	ret	lr
 ENDPROC(v7_flush_kern_dcache_area)
 
+	.align	5
+
 /*
  *	v7_dma_inv_range(start,end)
  *

--------------1DD6FAD97BC7F1875FD92211
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--------------1DD6FAD97BC7F1875FD92211--

