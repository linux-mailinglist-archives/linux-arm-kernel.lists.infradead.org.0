Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7AF615AC0A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 16:36:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PCt8UmYBOzXKf2N7QWsN9ASgWMCK2gtHm3iJfZryq7c=; b=fZQzmI6XnkTOqN
	jjDTzLDZyVlV4l+auEhwwHQckdIw63F1GNtqZxLmsE7q3psNrsg+p8NyGTG5SAvtUwtqNFWuSlRAh
	bn1Y7d2H59hbf/voRbWh04O2l4csioNA0c+00StFwFu9q4SOXv83WIULCjVlHMLOqetseOAGrcu76
	JETqaCwACP0rYN01acy54AAd0GIwiYgcp80eEd94AI0L9hfA4iwAcVD/wts92YnXVyaN2Kde0ARgr
	ZQzQi+n0FaHZrUNaSmSwNTJ9fJvSVSA5wQR9QraMnUCZIqG/q5vQWVd/s2mxx8KXl1j6vO+O3mwGe
	YWmwfECudomBFz2Xe3KQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1u49-0002iZ-65; Wed, 12 Feb 2020 15:36:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1u3v-0002fk-Do
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 15:36:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D9B54328;
 Wed, 12 Feb 2020 07:36:26 -0800 (PST)
Received: from [10.1.194.46] (e113632-lin.cambridge.arm.com [10.1.194.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 909A13F68F;
 Wed, 12 Feb 2020 07:36:24 -0800 (PST)
Subject: Re: [PATCH v3 3/7] arm64/kvm: disable access to AMU registers from
 kvm guests
To: Ionela Voinescu <ionela.voinescu@arm.com>, catalin.marinas@arm.com,
 will@kernel.org, mark.rutland@arm.com, maz@kernel.org,
 suzuki.poulose@arm.com, sudeep.holla@arm.com, lukasz.luba@arm.com,
 rjw@rjwysocki.net
References: <20200211184542.29585-1-ionela.voinescu@arm.com>
 <20200211184542.29585-4-ionela.voinescu@arm.com>
From: Valentin Schneider <valentin.schneider@arm.com>
Message-ID: <a4d66284-a0fc-4bbb-3a98-ea4093bcf389@arm.com>
Date: Wed, 12 Feb 2020 15:36:23 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200211184542.29585-4-ionela.voinescu@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_073627_519301_BA34CD14 
X-CRM114-Status: GOOD (  10.49  )
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
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/02/2020 18:45, Ionela Voinescu wrote:
> Access to the AMU counters should be disabled by default in kvm guests,
> as information from the counters might reveal activity in other guests
> or activity on the host.
> 
> Therefore, disable access to AMU registers from EL0 and EL1 in kvm
> guests by:
>  - Hiding the presence of the extension in the feature register
>    (SYS_ID_AA64PFR0_EL1) on the VCPU.
>  - Disabling access to the AMU registers before switching to the guest.
>  - Trapping accesses and injecting an undefined instruction into the
>    guest.
> 
> Signed-off-by: Ionela Voinescu <ionela.voinescu@arm.com>
> Cc: Marc Zyngier <maz@kernel.org>
> Cc: James Morse <james.morse@arm.com>
> Cc: Julien Thierry <julien.thierry.kdev@gmail.com>
> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>

Reviewed-by: Valentin Schneider <valentin.schneider@arm.com> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
