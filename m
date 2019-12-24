Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6114D12A1E8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 15:04:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=G9bHUwoMTFS5Fk8IXOBRsXbrGnjzaNlLhSIcbl0fJuk=; b=BOkueDrGEvEsb3
	fhKaFSfgkyZzw2EnoP/F8yw7vMIkLcPcpqZdxvxdwvM5hxDXl++iKfmjglSVEmC2qtox+Aj1NMNlh
	C4OFsB9T9sZ7jx4lvDCSzXXdQaPMwzn/92y7fXFRHY6XX8hkfixeGvFljk/2eqc/A84mublVAmFLU
	zGaam7OlM7zBmZ3P4U268Ja4fzpijPytKcvmunFb2gzoKakzFl/wQgVJoaeeEbBZYsN1XawhKt9gf
	rZfsuUFC+k0Hv7JhRRidkqfpUyoBbCZcD0CtgTH3iiY9lieN17fYFqw7faIj2po19XOAKNtHDIl/n
	e6WLzDD0oO24IJ9MZLpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijkmy-0007Kt-6Y; Tue, 24 Dec 2019 14:03:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijkmp-0007Ji-71
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 14:03:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 489DB1FB;
 Tue, 24 Dec 2019 06:03:44 -0800 (PST)
Received: from [10.0.2.15] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0488F3F534;
 Tue, 24 Dec 2019 06:03:42 -0800 (PST)
To: linux-kernel <linux-kernel@vger.kernel.org>,
 LAK <linux-arm-kernel@lists.infradead.org>, tee-dev@lists.linaro.org,
 netdev@vger.kernel.org
From: Valentin Schneider <valentin.schneider@arm.com>
Subject: 5.5-rc1 regression with BNXT firmware driver
Message-ID: <86d05f68-e644-8b05-3154-4658813e986e@arm.com>
Date: Tue, 24 Dec 2019 14:03:35 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_060347_300098_4FD8B50F 
X-CRM114-Status: UNSURE (   8.34  )
X-CRM114-Notice: Please train this message.
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
Cc: sheetal.tigadoli@broadcom.com, jakub.kicinski@netronome.com,
 vikas.gupta@broadcom.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

I've been hunting down some hackbench regression between 5.4-rc8 and 5.5-rc1
on my Juno r0, one of the offenders seems to be:

  246880958ac9 ("firmware: broadcom: add OP-TEE based BNXT f/w manager")

This is tested on a kernel built with defconfig (TEE_BNXT_FW gets selected)
and with:

  echo performance > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
  echo performance > /sys/devices/system/cpu/cpu1/cpufreq/scaling_governor
  ./perf stat --null --sync --repeat 200 ./hackbench

The regression is easily reproducible on my end, this is 3 runs of the above
comparing the patch and its parent:

  -PATCH:
  0.71062 +- 0.00150 seconds time elapsed  ( +-  0.21% )                                                                                                                                                      
  0.71121 +- 0.00181 seconds time elapsed  ( +-  0.25% )                                                                                                                                                      
  0.71277 +- 0.00181 seconds time elapsed  ( +-  0.25% )  

  +PATCH:
  0.72556 +- 0.00174 seconds time elapsed  ( +-  0.24% )                                                                                                                                                      
  0.72695 +- 0.00192 seconds time elapsed  ( +-  0.26% )                                                                                                                                                      
  0.72559 +- 0.00178 seconds time elapsed  ( +-  0.25% ) 


AIUI Vincent found something different while hunting down a similar
regression:

  df323337e507 ("apparmor: Use a memory pool instead per-CPU caches")

but it seems this one is another cause. Seeing as this involves security
stuff the overhead may be acceptable, nevertheless now that I have some
reproducer I figured I'd send this out.

Cheers,
Valentin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
