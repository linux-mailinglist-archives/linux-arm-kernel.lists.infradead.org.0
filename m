Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0F82C92E3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 22:31:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=79a1Qf7A/SJoFE4mYnp8Sl3Y4SJXhs84alQBMXq03Gg=; b=k0qLD5go+bra2jqMntY6I3kgH
	STSvgkXLtZaTctUqxDqvKzOGBNSSuji1am1Yz9gChPwypsyqGhIKL4IQtLHc3UvKiQ55ewmuPYrf9
	DUbhw3Q3wSsA1fT5HG40f5GjyNrTf/Q8EDI1Vg4QCat00fDeRTIPGiZawUUYZ1TGwGAigT4VHkcbE
	Yb3H2DyTZgVfqkubrDKi4WijgAH0Qi0Db93Iw+GlkhFTT/29nx1X9sWN0DtXPKvsr1UP0fp/bfceW
	YLypH8azyz3ff82y2EyUNLc2262s7SvlNJAnqaNJodPreNefvXoqTsxU00mZfZx0gqxdIgIQBaCQR
	/jO5RHj6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFlH7-0006fZ-H8; Wed, 02 Oct 2019 20:31:05 +0000
Received: from avon.wwwdotorg.org ([104.237.132.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFlGy-0006er-IT
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 20:30:58 +0000
Received: from [10.20.204.51] (unknown [216.228.112.24])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by avon.wwwdotorg.org (Postfix) with ESMTPSA id 1D3BD1C00ED;
 Wed,  2 Oct 2019 14:30:55 -0600 (MDT)
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.100.3 at avon.wwwdotorg.org
Subject: Re: [PATCH] arm64: tegra: only map accessible sysram
To: Mian Yousaf Kaukab <ykaukab@suse.de>
References: <20190929200851.14228-1-ykaukab@suse.de>
 <5d2e47ec-8304-d648-9c4a-80c7c02050a9@wwwdotorg.org>
 <20190930100212.GA21324@suse.de>
From: Stephen Warren <swarren@wwwdotorg.org>
Message-ID: <c7d64f56-cb44-cb3a-aa7a-ee7b5c01d6db@wwwdotorg.org>
Date: Wed, 2 Oct 2019 14:30:53 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190930100212.GA21324@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_133056_686163_84188CD4 
X-CRM114-Status: GOOD (  24.32  )
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
Cc: linux-tegra@vger.kernel.org, treding@nvidia.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 jonathanh@nvidia.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 9/30/19 4:02 AM, Mian Yousaf Kaukab wrote:
> On Sun, Sep 29, 2019 at 11:28:43PM -0600, Stephen Warren wrote:
>> On 9/29/19 2:08 PM, Mian Yousaf Kaukab wrote:
>>> Most of the SysRAM is secure and only accessible by TF-A.
>>> Don't map this inaccessible memory in kernel. Only map pages
>>> used by bpmp driver.
>>
>> I don't believe this change is correct. The actual patch doesn't
>> implement mapping a subset of the RAM (a software issue), but rather it
>> changes the DT representation of the SYSRAM hardware. The SYSRAM
>> hardware always does start at 0x30000000, even if a subset of the
>> address range is dedicated to a specific purpose. If the kernel must map
>> only part of the RAM, then some additional property should indicate
>> this.[...]
> I agree the hardware description becomes inaccurate with this change.
> 
> In the current setup complete 0x3000_0000 to 0x3005_0000 range is being mapped
> as normal memory (MT_NORMAL_NC). Though only 0x3004_E000 to 0x3005_0000 are
> accessible by the kernel.

Nit: I expect that a much larger region than that is *accessible*, 
although it's quite plausible that only that region is actually 
*accessed*/used right now.

> I am seeing an issue where a read access (which I
> believe is speculative) to inaccessible range causes an SError. Another
> solution for this problem could be to add "no-memory-wc" to SysRAM node so that
> it is mapped as device memory (MT_DEVICE_nGnRE). Would that be acceptable?

Why does the driver blindly map the entire memory at all? Surely it 
should only map the portions of RAM that other drivers request/use? And 
surely the BPMP driver or DT node is already providing that information?

But yes, changing the mapping type to avoid speculation might be an 
acceptable solution for now, although I think we'd want to work things 
out better later. I don't know if there would be any impact to the BPMP 
driver related to the slower SRAM access due to this change. Best 
consult a BPMP expert or Tegra maintainer about that.

>> [...] Also, I believe it's incorrect to hard-code into the kernel's DT
>> the range of addresses used by the secure monitor/OS, since this can
>> vary depending on what the user actually chooses to install as the
>> secure monitor/OS. Any indication of such regions should be filled in at
>> runtime by some boot firmware or the secure monitor/OS itself, or
>> retrieved using some runtime API rather than DT.
> Secure-OS addresses are not of interest here. SysRAM is partitioned
> between secure-OS and BPMP and kernel is only interested in the BPMP
> part. The firmware can update these addresses in the device-tree if it
> wants to. Would you prefer something similar implemented in u-boot so
> that it updates SysRAM node to only expose kernel accessible part of it
> to the kernel?
> 
> Can u-boot dynamically figure out the Secure-OS vs BPMP partition?
> 
> BR,
> Yousaf
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
