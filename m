Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA814146F21
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 18:04:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d+QMGpAfyh+aC+fGbr1OryI7rutdLeXZaKUGLq++XoU=; b=oGm47jo++uG/7r
	vcxTY7x83upCeKUpLQp1uFqtCTQapwGUQYoi+XlmjssYeUHpFtZ4I3bM0jdKamRCDV/JiSmWvR0rK
	l2V9eMVPU5WvmNHj/CCTWAnL/zUCBaO1a0NoYZA94ntFrx0Aa7Enf8plYXnF6w6vF8pwTINdkomre
	qyHRNwgEq8WDO7LLAe5W0ZXdB1zS2oiKruSjlnTKFLJ56ByvvAVNnFyjmQpzWTLfKRoWQnh0PkqIk
	ZSnp3/cFQjBPUNZ3EOe2lfv3//5gOG/K7Bk1cM/9LR4dr2+743VTD01WBFLWE/YVbcwocIhLjAAQp
	AnUBbWewXrJDPB/GyXWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iufuT-0003bi-Fu; Thu, 23 Jan 2020 17:04:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iufuF-0003b5-SG
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 17:04:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 29D911FB;
 Thu, 23 Jan 2020 09:04:35 -0800 (PST)
Received: from [10.1.194.46] (e113632-lin.cambridge.arm.com [10.1.194.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3B73E3F6C4;
 Thu, 23 Jan 2020 09:04:33 -0800 (PST)
Subject: Re: [PATCH v2 2/6] arm64: trap to EL1 accesses to AMU counters from
 EL0
To: Ionela Voinescu <ionela.voinescu@arm.com>, catalin.marinas@arm.com,
 will@kernel.org, mark.rutland@arm.com, maz@kernel.org,
 suzuki.poulose@arm.com, sudeep.holla@arm.com, dietmar.eggemann@arm.com
References: <20191218182607.21607-1-ionela.voinescu@arm.com>
 <20191218182607.21607-3-ionela.voinescu@arm.com>
From: Valentin Schneider <valentin.schneider@arm.com>
Message-ID: <dcecb179-02f1-0608-6a84-5b2dd0bbcdb3@arm.com>
Date: Thu, 23 Jan 2020 17:04:32 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191218182607.21607-3-ionela.voinescu@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_090435_958452_DFE51361 
X-CRM114-Status: UNSURE (   8.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-doc@vger.kernel.org, peterz@infradead.org,
 Steve Capper <steve.capper@arm.com>, linux-kernel@vger.kernel.org,
 mingo@redhat.com, ggherdovich@suse.cz, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18/12/2019 18:26, Ionela Voinescu wrote:
> +/*
> + * reset_amuserenr_el0 - reset AMUSERENR_EL0 if AMUv1 present
> + */
> +	.macro	reset_amuserenr_el0, tmpreg
> +	mrs	\tmpreg, id_aa64pfr0_el1	// Check ID_AA64PFR0_EL1
> +	ubfx	\tmpreg, \tmpreg, #ID_AA64PFR0_AMU_SHIFT, #4
> +	cbz	\tmpreg, 9000f			// Skip if no AMU present
> +	msr_s	SYS_AMUSERENR_EL0, xzr		// Disable AMU access from EL0
> +9000:

AIUI you can steer away from the obscure numbering scheme and define the
label using the macro counter:

	cbz \tmpreg, .Lskip_\@
	[...]
.Lskip_\@:
	.endm


> +	.endm

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
