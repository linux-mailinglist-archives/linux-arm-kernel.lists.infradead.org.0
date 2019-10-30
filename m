Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D556E9ED5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 16:25:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DbI5s+3VmVbZbcfZKa89QEvIFGQ4FjNJ4pJwjS22Xao=; b=bIxqkfKvi9NziL
	xssxFPWe9c1oP0CiHgyxbEVpm65e1CGDQBkKvyggrl7nHp856QBEnkubBDMX51ugvOq1EEjQK6R3O
	LfyeS0yPCGJKQyaS24w9VWouCoycOvj6Y8HeRF3CTOoelE9Ypcw32EPlvg/yNYALQGjKsno/k4Qvm
	9umXDoyeHLYdb7hdePDIDimFwvtiEqtEC0ko9TvWktmbN6JbYyXLiL4e23gzn08YK1TBdywEx7mzj
	CONIOm2Pi3PQOz7a6y/DxaojHgcDhMvBkbDF2yFKuKMvKoa+9qy5ZgBwu58VXdRfJqVzffPh9+2s4
	Cpn8ot2IXnrmiqy7+5xA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPpqm-00057B-3o; Wed, 30 Oct 2019 15:25:32 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPpqa-00056K-Kj
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 15:25:22 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 2F6B7B1AE;
 Wed, 30 Oct 2019 15:25:19 +0000 (UTC)
Date: Wed, 30 Oct 2019 16:25:17 +0100 (CET)
From: Miroslav Benes <mbenes@suse.cz>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCHv2 3/8] arm64: module: rework special section handling
In-Reply-To: <20191029165832.33606-4-mark.rutland@arm.com>
Message-ID: <alpine.LSU.2.21.1910301614330.18400@pobox.suse.cz>
References: <20191029165832.33606-1-mark.rutland@arm.com>
 <20191029165832.33606-4-mark.rutland@arm.com>
User-Agent: Alpine 2.21 (LSU 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_082520_821813_627026E3 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: jthierry@redhat.com, linux-parisc@vger.kernel.org, peterz@infradead.org,
 catalin.marinas@arm.com, deller@gmx.de, jpoimboe@redhat.com,
 linux-kernel@vger.kernel.org, rostedt@goodmis.org,
 James.Bottomley@HansenPartnership.com, takahiro.akashi@linaro.org,
 will@kernel.org, mingo@redhat.com, james.morse@arm.com, jeyu@kernel.org,
 amit.kachhap@arm.com, svens@stackframe.org, duwe@suse.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 29 Oct 2019, Mark Rutland wrote:

> When we load a module, we have to perform some special work for a couple
> of named sections. To do this, we iterate over all of the module's
> sections, and perform work for each section we recognize.
> 
> To make it easier to handle the unexpected absence of a section, and to
> make the section-specific logic easer to read, let's factor the section

s/easer/easier/

> search into a helper. Similar is already done in the core module loader,
> and other architectures (and ideally we'd unify these in future).
> 
> If we expect a module to have an ftrace trampoline section, but it
> doesn't have one, we'll now reject loading the module. When
> ARM64_MODULE_PLTS is selected, any correctly built module should have
> one (and this is assumed by arm64's ftrace PLT code) and the absence of
> such a section implies something has gone wrong at build time.
> 
> Subsequent patches will make use of the new helper.
> 
> Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> Reviewed-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: James Morse <james.morse@arm.com>
> Cc: Will Deacon <will@kernel.org>

Reviewed-by: Miroslav Benes <mbenes@suse.cz>

M

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
