Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EAFF1C94C7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 17:19:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VEdBZUKYvGyhnbbgLXar6ls/DFNKOt62nx7Cz5Q6P0M=; b=nDmxuqDPZLZu+5
	AI2Gyy0Vmx7r5x/mBGMGpDwSqxXE8dqPZrQ/PPYl4+sZLnaidXFOj6R9gRR7QtSHKBk/u3URA9Jyy
	OpBiuB+QMV9qxDbKj8xNqDKPi1fON446pKp/Fg5ykdWVHd7D/g7GmRXAvRpYJODAhT+7d+19hUmY6
	aa+CcKPf/N32Ed3tg0FVtnHoLm0aYuUGZL8ZydtRkXywH+sFJ1kKU6wwPv4vC+PjyVP3lxIULBQsc
	5N4gkm05haS8EFhNz3gn2Y3nZXZhr33B/ewchJALW4FB2aQ5AOCuHkmWC/lzTfJmwLdoUw982nVrP
	6K1/vFnsgJF9d342FDrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWiIk-0006tb-HM; Thu, 07 May 2020 15:19:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWiIX-0006tC-Pl
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 15:18:55 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DA089207DD;
 Thu,  7 May 2020 15:18:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588864733;
 bh=1ChmjIGH8KqrYEI1nJSGZ8yDFNZU2pLFR6c+BMLqQ6s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gxWoViQtZsqEi96tkEpEyhhWvfZ+dwVbAapC7FhlD/8rbvLdfH05QSrFRK5TpGqP/
 khyp9o6N3CEE9/uaM7PpHlxLRVfpGO3pm+IlS163CjN4bJyNIgIG3RIF/S0wS7mU6x
 5MHM4mEg2jn3P8DmwPJpyYF3sJ5hHiYwd/n3ZfUs=
Date: Thu, 7 May 2020 16:18:48 +0100
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v3 00/11] arm64: BTI kernel and vDSO support
Message-ID: <20200507151848.GA2294@willie-the-truck>
References: <20200506195138.22086-1-broonie@kernel.org>
 <20200507143332.GB1422@willie-the-truck>
 <20200507143547.GC1422@willie-the-truck>
 <20200507145901.GA1938@willie-the-truck>
 <20200507150905.GB6183@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200507150905.GB6183@sirena.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_081853_865209_9CAAB928 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kees Cook <keescook@chromium.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jean-Philippe Brucker <jean-philippe.brucker@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 07, 2020 at 04:09:06PM +0100, Mark Brown wrote:
> On Thu, May 07, 2020 at 03:59:01PM +0100, Will Deacon wrote:
> 
> > Sorry, my parallel build threw me off, so I don't think it's HDRTEST after
> > all. One of the problems appears to be tracing:
> > 
> >     CC      kernel/trace/trace_clock.o
> >   warning: some functions compiled with BTI and some compiled without BTI
> >   warning: not setting BTI in feature flags
> 
> Can you share a .config?

allmodconfig

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
