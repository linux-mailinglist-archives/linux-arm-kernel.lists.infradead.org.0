Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B27E97551E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 19:07:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kkFR4IB5CQjsq0YybnCsOvuPq0cUgBYZtUZwZ1BEBfo=; b=QZmbGLwrxwRXYd
	aYIohIqw3U+Y1SVM1yxKFEfvZHTH4hJvCQsSsxH2FiKEVtCWh3wjfLFm35hgLnHtz33Vzjb4lRavG
	x9//pwDXoOT+2lhRcIIau/MZgtKUcodV38bQkRsYdGTzDyJRHw7QgY+qBbSw2/uj20ge0orRQvM6p
	mGYb8U2dT4zXGCWIM8M88ZY/dmp2abXRpXxSZcC/Way9sxmfidnLNSSnpEQepDvzmUH2OVexw+szC
	clvsNl5krn/s7phNvoLisCagzvg0L/IiY7xvy5cZaciTvh3p/sjn7bDY3LdbIfOPLMdduje1CV770
	iicWZ5LtwmS9XMpnqHPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqhDP-0000I5-3N; Thu, 25 Jul 2019 17:07:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqhDC-0000HG-1T
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 17:07:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5C96A174E;
 Thu, 25 Jul 2019 10:07:25 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 3EFD23F71A; Thu, 25 Jul 2019 10:07:23 -0700 (PDT)
Date: Thu, 25 Jul 2019 18:07:21 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [RFC] mm/pgtable/debug: Add test validating architecture page
 table helpers
Message-ID: <20190725170720.GB11545@arrakis.emea.arm.com>
References: <1564037723-26676-1-git-send-email-anshuman.khandual@arm.com>
 <1564037723-26676-2-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1564037723-26676-2-git-send-email-anshuman.khandual@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_100726_136467_9BC93533 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Sri Krishna chowdary <schowdary@nvidia.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>, x86@kernel.org,
 Dave Hansen <dave.hansen@intel.com>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, Michal Hocko <mhocko@kernel.org>,
 linux-mm@kvack.org, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Mark Brown <Mark.Brown@arm.com>, Andrew Morton <akpm@linux-foundation.org>,
 Steven Price <Steven.Price@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 25, 2019 at 12:25:23PM +0530, Anshuman Khandual wrote:
> +#if !defined(__PAGETABLE_PMD_FOLDED) && !defined(__ARCH_HAS_4LEVEL_HACK)
> +static void pud_clear_tests(void)
> +{
> +	pud_t pud;
> +
> +	pud_clear(&pud);
> +	WARN_ON(!pud_none(pud));
> +}

For the clear tests, I think you should initialise the local variable to
something non-zero rather than rely on whatever was on the stack. In
case it fails, you have a more deterministic behaviour.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
