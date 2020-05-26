Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A444E1ADA3A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 11:40:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=porjFZXBv+6EXzCkt3lgYPGECAIDbOkwqZerM7pSn5E=; b=e6hnlBjkPUJIq9EL71Dy2C7do
	GXmAq/YCUdOw+zin9g7sCYUvgyCLhkQOLQZ1aYcjwWGVUam+s2bE+ekCqHNuWD2BSaSoFzPfx3kpz
	s+ifKeo/HNEkzetgLBIxTLp0p20PYIF7hRYoMZgx6kyKWGxs4WoLNsn55SYQ4eMEmJTh+PoIXJhX2
	jjbnnggp1U8Q3oflaaimvvoPIAJNNbOnTH8lOqhaBgYvaTfB4lz+ExDbziLlxWd4TQDkU/W2z+1bH
	vuNvW0aBsQAAyhuVhoToTLOPxaJ6ZNXHM4K/QUXWlo+OTlP8xf6YpDoJOGbfE9V8chSQkGNpRZttB
	C1wZDgohA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPNTu-0005HZ-EG; Fri, 17 Apr 2020 09:40:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPNT7-0004so-Vt
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 09:39:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 60F2F30E;
 Fri, 17 Apr 2020 02:39:28 -0700 (PDT)
Received: from [10.37.12.128] (unknown [10.37.12.128])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7D2C23F73D;
 Fri, 17 Apr 2020 02:39:26 -0700 (PDT)
Subject: Re: [PATCH 3/8] arm64: cpufeature: Add CPU capability for AArch32 EL1
 support
To: maz@kernel.org
References: <20200414213114.2378-1-will@kernel.org>
 <20200414213114.2378-4-will@kernel.org>
 <a83a19eb-9051-0a43-0bac-353f67d93d79@arm.com>
 <20200415101444.GC12621@willie-the-truck>
 <7978a5a9-463e-5e96-7ea9-d8472b7b051c@arm.com> <20200415142237.651114f7@why>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <1ffdf91a-e418-61ec-1056-756e1a81f4a6@arm.com>
Date: Fri, 17 Apr 2020 10:44:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <20200415142237.651114f7@why>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_023930_112135_ECC98A6B 
X-CRM114-Status: GOOD (  16.16  )
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
Cc: mark.rutland@arm.com, saiprakash.ranjan@codeaurora.org,
 kernel-team@android.com, anshuman.khandual@arm.com, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, dianders@chromium.org, will@kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/15/2020 02:22 PM, Marc Zyngier wrote:
> On Wed, 15 Apr 2020 14:15:51 +0100
> Suzuki K Poulose <suzuki.poulose@arm.com> wrote:
> 
>> On 04/15/2020 11:14 AM, Will Deacon wrote:
>>> On Wed, Apr 15, 2020 at 11:13:54AM +0100, Suzuki K Poulose wrote:
>>>> On 04/14/2020 10:31 PM, Will Deacon wrote:
>>>>> Although we emit a "SANITY CHECK" warning and taint the kernel if we
>>>>> detect a CPU mismatch for AArch32 support at EL1, we still online the
>>>>> CPU with disastrous consequences for any running 32-bit VMs.
>>>>>
>>>>> Introduce a capability for AArch32 support at EL1 so that late onlining
>>>>> of incompatible CPUs is forbidden.
>>>>>
>>>>> Signed-off-by: Will Deacon <will@kernel.org>
>>>>
>>>> One of the other important missing sanity check for KVM is the VMID width
>>>> check. I will code something up.
>>>
>>> Cheers! Do we handle things like the IPA size already?
>>
>> Good point. No, we don't. I will include this too.
> 
> There is also the question of the ARMv8.5-GTG extension. I have a patch
> that treats it as non-strict, but that approach would fail with KVM if
> we online a late CPU without support for the right page size at S2.

Good point. Again this can be added to the list of checks performed on
the hot-plugged CPUs along with IPA, VMID width.

Cheers
Suzuki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
