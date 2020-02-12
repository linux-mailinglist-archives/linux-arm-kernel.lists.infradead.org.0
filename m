Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86FD515AC09
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 16:36:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xnO0Qee6pUt8De3id0eGtO/hWoHGQGNIi0BpIpIo35E=; b=strM09bnJRQ6KT
	zXGHDcwhgPD3hqb9bJSae/aLYt64dJy8SZVvHIVZZ9JoWUH4h9dy/8wZx56oPiR04G7mMbheKiZx7
	BIR0yOeYpYANv/JcQjSHBnT/bc+hisYiFiZX0NveBugkpCKEpOeoMFGhD+I0q3J7WmK78UxbERrEP
	E9bJusmQe6uDEYZUyiFEYresaB1CupUwlqWLEtmcvdvsPd7pgAS8N8WK5AWeH7k4qiccj01fjg37y
	cbATr3u1ifTFUADAl2NdjkV7x2jyVETfsVuGGfya0m3nDdhWqUHWXVF9135ryjhHojjD5XySQ0rrB
	IIhdJr42YaPLEftx/HjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1u3t-0002XQ-IU; Wed, 12 Feb 2020 15:36:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1u3l-0002Wj-1O
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 15:36:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1FBF5328;
 Wed, 12 Feb 2020 07:36:16 -0800 (PST)
Received: from [10.1.194.46] (e113632-lin.cambridge.arm.com [10.1.194.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B7A873F68F;
 Wed, 12 Feb 2020 07:36:13 -0800 (PST)
Subject: Re: [PATCH v3 2/7] arm64: trap to EL1 accesses to AMU counters from
 EL0
To: Ionela Voinescu <ionela.voinescu@arm.com>, catalin.marinas@arm.com,
 will@kernel.org, mark.rutland@arm.com, maz@kernel.org,
 suzuki.poulose@arm.com, sudeep.holla@arm.com, lukasz.luba@arm.com,
 rjw@rjwysocki.net
References: <20200211184542.29585-1-ionela.voinescu@arm.com>
 <20200211184542.29585-3-ionela.voinescu@arm.com>
From: Valentin Schneider <valentin.schneider@arm.com>
Message-ID: <17a791d0-89ec-9b1e-ff36-502cbf51ab17@arm.com>
Date: Wed, 12 Feb 2020 15:36:12 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200211184542.29585-3-ionela.voinescu@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_073617_128390_03D44880 
X-CRM114-Status: GOOD (  12.83  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-doc@vger.kernel.org, peterz@infradead.org, viresh.kumar@linaro.org,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, mingo@redhat.com,
 linux-arm-kernel@lists.infradead.org, Steve Capper <steve.capper@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/02/2020 18:45, Ionela Voinescu wrote:
> The activity monitors extension is an optional extension introduced
> by the ARMv8.4 CPU architecture. In order to access the activity
> monitors counters safely, if desired, the kernel should detect the
> presence of the extension through the feature register, and mediate
> the access.
> 
> Therefore, disable direct accesses to activity monitors counters
> from EL0 (userspace) and trap them to EL1 (kernel).
> 
> To be noted that the ARM64_AMU_EXTN kernel config and the disable_amu
> kernel parameter do not have an effect on this code. Given that the
> amuserenr_el0 resets to an UNKNOWN value, setting the trap of EL0
> accesses to EL1 is always attempted for safety and security
> considerations. Therefore firmware should still ensure accesses to
> AMU registers are not trapped in EL2/EL3 as this code cannot be
> bypassed if the CPU implements the Activity Monitors Unit.
> 
> Signed-off-by: Ionela Voinescu <ionela.voinescu@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Steve Capper <steve.capper@arm.com>

Reviewed-by: Valentin Schneider <valentin.schneider@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
