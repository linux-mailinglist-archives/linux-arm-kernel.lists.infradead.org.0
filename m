Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42072135B82
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 15:36:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CXP8ZF2GYjADUZ6ONDT88FikOH49CFmWuyIYBKAKLRg=; b=F0TKQDAecd2SGwz/EAThjW0Ha
	a+n2uoPzqPV+jbf7C9Q37StaWmM3e37j6oXmHYJ9iTfsb4YQnN3C+RkRi9g0YJm7hD3Kuq8yZhwGP
	7UkFhIw2nLx0tu5Iu7gOU4vLNPRXkDMR/xEFWD718/YVG+GUNM2adKbMC7dOD/nYXGIW5ON6FM7mf
	hviOuZkLQhvoVE85SFw8RhpGuZkj94h/nHeDhI9pyPyk+AAC9CM63Pgcp68zNWlMnqSW/JcXFTBeO
	nNVTJoBUV2A0UbtKXaP3sWldnqM1en0tropF09Xn6RR2jxoxG0mNvdBhjlDD84MG5/bwlFl4tipqb
	ivXpBzlfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipYvF-0004Pl-Ia; Thu, 09 Jan 2020 14:36:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipYv7-0004Oq-Fy
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 14:36:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0F6E8328;
 Thu,  9 Jan 2020 06:36:19 -0800 (PST)
Received: from [10.1.197.1] (ewhatever.cambridge.arm.com [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4253F3F534;
 Thu,  9 Jan 2020 06:36:18 -0800 (PST)
Subject: Re: [stable] [PATCH 1/2] coresight: etb10: Do not call
 smp_processor_id from preemptible
To: Sasha Levin <sashal@kernel.org>
References: <20200108110541.318672-1-suzuki.poulose@arm.com>
 <20200109143537.GE1706@sasha-vm>
From: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
Message-ID: <a183da32-b933-6ed0-f8b8-703e27d3f15e@arm.com>
Date: Thu, 9 Jan 2020 14:36:17 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200109143537.GE1706@sasha-vm>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_063621_573169_03DFD21B 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mathieu.poirier@linaro.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, stable@vger.kernel.org,
 gregkh@linuxfoundation.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09/01/2020 14:35, Sasha Levin wrote:
> On Wed, Jan 08, 2020 at 11:05:40AM +0000, Suzuki K Poulose wrote:
>> [ Upstream commit 730766bae3280a25d40ea76a53dc6342e84e6513 ]
>>
>> During a perf session we try to allocate buffers on the "node" associated
>> with the CPU the event is bound to. If it is not bound to a CPU, we
>> use the current CPU node, using smp_processor_id(). However this is 
>> unsafe
>> in a pre-emptible context and could generate the splats as below :
>>
>> BUG: using smp_processor_id() in preemptible [00000000] code: perf/2544
>>
>> Use NUMA_NO_NODE hint instead of using the current node for events
>> not bound to CPUs.
>>
>> Fixes: 2997aa4063d97fdb39 ("coresight: etb10: implementing AUX API")
>> Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
>> Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
>> Cc: stable <stable@vger.kernel.org> # v4.9 to v4.19
>> Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
>> Link: 
>> https://lore.kernel.org/r/20190620221237.3536-5-mathieu.poirier@linaro.org 
>>
> 
> I've queued this for 4.9-4.19. There was a simple conflict on 4.9 which
> also had to be resolved.
> 


Thanks Sasha !

Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
