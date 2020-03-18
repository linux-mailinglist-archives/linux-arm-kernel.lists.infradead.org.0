Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A278A189DE7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 15:33:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4LN1l07PcBfXX41aK27vlyJSYWnNDwDzMCFAkC3EwdE=; b=VarqCQcuJk+Q5a
	NnExNDqr71qwoitbIa0MRfzkelyQdxctm1cN7SnvQGUBZeeDAEefP9idmsYSbVAQetjVIL5UQH/Nw
	hFewkLO2v7CIoNW9qk8t5MV4tJVUEyxbau+3fPpEG5CbnCXqSaxUql+HZMGzcnD1Z2D3yGKahgQuf
	/F0w/Mh+4XfmUIeGPQFucSoEq6V5hLxHPmxiWP1EWXHrNrP7zbHd8Cyd6fUadodzKg6EKEVCNlc04
	SCJYpxCVgJA1gaDOoRfpamW7xzINVl6QKsOYW4TMlU19+jfCExj5mzUR4M8zvLnwj2n2U6ONyJdTk
	qJc5h9oFua48HSZKiAKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEZkg-0003Xx-0a; Wed, 18 Mar 2020 14:32:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEZkX-0003XG-Pi
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 14:32:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 99B1031B;
 Wed, 18 Mar 2020 07:32:48 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 EDDA13F52E; Wed, 18 Mar 2020 07:32:46 -0700 (PDT)
Date: Wed, 18 Mar 2020 14:32:44 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Amit Daniel Kachhap <amit.kachhap@arm.com>
Subject: Re: [PATCH v7 00/17] arm64: return address signing
Message-ID: <20200318143244.GC94111@arrakis.emea.arm.com>
References: <1584090304-18043-1-git-send-email-amit.kachhap@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1584090304-18043-1-git-send-email-amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_073249_879573_5E863E3A 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, Mark Brown <broonie@kernel.org>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 13, 2020 at 02:34:47PM +0530, Amit Daniel Kachhap wrote:
> Amit Daniel Kachhap (8):
>   arm64: cpufeature: Fix meta-capability cpufeature check
>   arm64: ptrauth: Add bootup/runtime flags for __cpu_setup
>   arm64: cpufeature: Move cpu capability helpers inside C file
>   arm64: initialize ptrauth keys for kernel booting task
>   arm64: mask PAC bits of __builtin_return_address
>   arm64: __show_regs: strip PAC from lr in printk
>   arm64: suspend: restore the kernel ptrauth keys
>   lkdtm: arm64: test kernel pointer authentication
> 
> Kristina Martsenko (7):
>   arm64: cpufeature: add pointer auth meta-capabilities
>   arm64: rename ptrauth key structures to be user-specific
>   arm64: install user ptrauth keys at kernel exit time
>   arm64: cpufeature: handle conflicts based on capability
>   arm64: enable ptrauth earlier
>   arm64: initialize and switch ptrauth kernel keys
>   arm64: compile the kernel with ptrauth return address signing
> 
> Mark Rutland (1):
>   arm64: unwind: strip PAC from kernel addresses
> 
> Vincenzo Frascino (1):
>   kconfig: Add support for 'as-option'

Queued for 5.7. Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
