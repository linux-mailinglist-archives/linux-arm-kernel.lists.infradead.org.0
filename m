Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0DC415FE44
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Feb 2020 12:56:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h1Zi7uqrrZncn9I1z5dRI/cP4Q0HFbgR+GNoAcTC9oQ=; b=ntx+YkjcktNpD9
	PNdQBIa8r+z9kHJSJmEHLCkLoc2jZaNeuLM/X3koqj/T09eRSNeVB9PMKaUEuvaQoimPZBge8PZQc
	VuO2yaaehQA2EdKxcz08CpwDzPgqaKgLwgeD3u0dYPyLmvXBU8UtS4kU7njefYUUuyXRjJuJfvzOJ
	mpiHwrc4XscgplKS+cCJyNcY/A7cJ5/KX9tMU9+zPc5rI7t6ZrtOKzgPa9L7phU8HaYLMGSvkJL0r
	sdwRYtV71mzKw+beqZ3oBt0CMe39E3kspo4LZCnZZdDBrvO9f2e81zE372riDopgIJCfKw5606tWF
	ticzIsggW6kWbdhQ4pIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2w3t-0004eR-PZ; Sat, 15 Feb 2020 11:56:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2w3j-0004e2-7d
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Feb 2020 11:56:32 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F105E2072D;
 Sat, 15 Feb 2020 11:56:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581767788;
 bh=NaAHvFuU+ylYPII07/Q0dVeLaamkxwl2owLhdZmF30s=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=c/I4lBS0EkFioir+ydtfPPjtntwsQIPJ7gsuAA3lo46+qwOcC4aMnOKMd0Z3INdXb
 +XXx9hsOBFemgKcDam3c13z6zdZPka+UYQI4oclDwsHzdHpDY/hsKWrKryaYlalWJW
 y8S7mdF0AnUzkD5yhE5BODnxSJSI/dNdTVzG8774=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j2w3e-005RK7-1L; Sat, 15 Feb 2020 11:56:26 +0000
Date: Sat, 15 Feb 2020 11:56:24 +0000
From: Marc Zyngier <maz@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v6 10/11] KVM: arm64: BTI: Reset BTYPE when skipping
 emulated instructions
Message-ID: <20200215115624.2afbf55c@why>
In-Reply-To: <20200212192906.53366-11-broonie@kernel.org>
References: <20200212192906.53366-1-broonie@kernel.org>
 <20200212192906.53366-11-broonie@kernel.org>
Organization: Approximate
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: broonie@kernel.org, catalin.marinas@arm.com, will@kernel.org,
 viro@zeniv.linux.org.uk, paul.elliott@arm.com, peterz@infradead.org,
 yu-cheng.yu@intel.com, amit.kachhap@arm.com, vincenzo.frascino@arm.com,
 esyr@redhat.com, szabolcs.nagy@arm.com, hjl.tools@gmail.com,
 drjones@redhat.com, keescook@chromium.org, arnd@arndb.de, jannh@google.com,
 richard.henderson@linaro.org, kristina.martsenko@arm.com, tglx@linutronix.de,
 fweimer@redhat.com, sudi.das@arm.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Dave.Martin@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200215_035631_298095_2FE9F307 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Paul Elliott <paul.elliott@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Andrew Jones <drjones@redhat.com>,
 Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, Eugene Syromiatnikov <esyr@redhat.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 "H . J . Lu " <hjl.tools@gmail.com>, Yu-cheng Yu <yu-cheng.yu@intel.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>, Richard Henderson <richard.henderson@linaro.org>,
 Kristina =?UTF-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Florian Weimer <fweimer@redhat.com>,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Sudakshina Das <sudi.das@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 12 Feb 2020 19:29:05 +0000
Mark Brown <broonie@kernel.org> wrote:

> From: Dave Martin <Dave.Martin@arm.com>
> 
> Since normal execution of any non-branch instruction resets the
> PSTATE BTYPE field to 0, so do the same thing when emulating a
> trapped instruction.
> 
> Branches don't trap directly, so we should never need to assign a
> non-zero value to BTYPE here.
> 
> Signed-off-by: Dave Martin <Dave.Martin@arm.com>
> Signed-off-by: Mark Brown <broonie@kernel.org>

Acked-by: Marc Zyngier <maz@kernel.org>

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
