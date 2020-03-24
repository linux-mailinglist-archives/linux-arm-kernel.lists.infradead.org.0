Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3DD4191C80
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 23:07:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sguUzaIZ+HtGi6apf3I37+Pd9o7qbn6Ux1aKSKa5mPI=; b=rgy7LzNOps7Ha2
	qPRsLWmBlGJGxV5M9/MDdrE9ITdXzHXOwlo80hq+umKVDkn5PsrfGek7SdRzzwIsEB18+mtOf0vat
	L98Y+0Q6QwbyBFEryeAdYCmiChxLF1+5QWuePmv7I0vRAkVEbR0P4UztEC3L5iRSO2MoPN9S6+0ir
	LdwjWt45dK+uInFvLpNlTwAn0+3Ds3lo8GwQC7BrlZNI0XDGLsx0T8i1OzRbwzROOIAFEMaNarYrC
	GUAeUM1N5WOTpioNb5Bve5zcs8k4lc9qI4PYW7XdskreKWH2k8/HAOHPgge7on+xAw5sOmfOaaH1B
	H9CGLcjFtvd9nh1dgj4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGrhP-0007CC-5k; Tue, 24 Mar 2020 22:07:03 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGrh9-00077B-Nb
 for linux-arm-kernel@bombadil.infradead.org; Tue, 24 Mar 2020 22:06:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=RgOSv5leUzdh9drlvUWI/yMDTMMdqFPXz0ZLHcJ9Qrk=; b=aAS4Q+6sODIaHbIvnMNlQ5KsSS
 WQ6pOZIKF1v1HbpnjpTp0sEEqKotsv7YAX/6keV3jCJi4monNTYQgMJDjQc6zZgSJyWEoAJJxrCn6
 2Wtau+W4MCGQhoG1DYaVOae5ieyPMQantZoA70LPpgA2d92YcmM9Opq94LM+64idGuHIarHnOa+fJ
 8g/FtxwMBiYi5ljyGa6nG/AzrKDh3BPJpxrV/7Nn030GCm7jOEH3LpTrxhyQH2Gl6SJDFbCgh7/Yu
 EHVYqlnS6JEoOjv8O8HKtL1Xt5PUyZ3W+zgHvzKrF2zatGASlP9ApCKZ12nWFczNHgWiHpAVILumF
 lFViESkw==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=worktop.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGrh5-0006JR-2q; Tue, 24 Mar 2020 22:06:43 +0000
Received: by worktop.programming.kicks-ass.net (Postfix, from userid 1000)
 id 42090983502; Tue, 24 Mar 2020 23:06:41 +0100 (CET)
Date: Tue, 24 Mar 2020 23:06:41 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH v2 1/5] jump_label: Provide CONFIG-driven build state
 defaults
Message-ID: <20200324220641.GT2452@worktop.programming.kicks-ass.net>
References: <20200324203231.64324-1-keescook@chromium.org>
 <20200324203231.64324-2-keescook@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200324203231.64324-2-keescook@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jann Horn <jannh@google.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Alexander Potapenko <glider@google.com>, linux-arm-kernel@lists.infradead.org,
 Andy Lutomirski <luto@kernel.org>, kernel-hardening@lists.openwall.com, "Perla,
 Enrico" <enrico.perla@intel.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Elena Reshetova <elena.reshetova@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 24, 2020 at 01:32:27PM -0700, Kees Cook wrote:
> Choosing the initial state of static branches changes the assembly
> layout (if the condition is expected to be likely, inline, or unlikely,
> out of line via a jump). A few places in the kernel use (or could be
> using) a CONFIG to choose the default state, so provide the
> infrastructure to do this and convert the existing cases (init_on_alloc
> and init_on_free) to the new macros.
> 
> Signed-off-by: Kees Cook <keescook@chromium.org>

Cute,

Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
