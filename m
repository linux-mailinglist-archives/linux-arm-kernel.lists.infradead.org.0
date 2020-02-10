Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B54E1158201
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 19:03:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J83xKZoM+l0kfWPIUB7DMvVBQFVD+Q0zJN+nb2Z8rn0=; b=QroFJ3XI0RDWEy
	q7uoD3bVnGC7Hu7lc1ZQpeb9n9onT30Po9XuodWeB2YRqJslk3yIoiqOhRNUyCFJijio9oEfgOZm2
	FwP4tjgEo2azBhRKYPqSt/Hk8B2WqMg7fyT+JY/66ohyPAfLrpeyLN3vtLCElSHE/ipWEc9ZZxslT
	Ifag+2J44gK60ZLOs+1+BfQji6e2IqActTYAexOiAMrXlO4LFDVNLuOWbvxuh6waCDq80Dfk5j24W
	0jq99INcZPYxwZ1JAndYMHtYb1YYXSm3GPShF7XGUNhawp9k8q/usZRlS0SYjGD0y26BALlimNZTD
	gNtaMQJ6ikNvVXLOseQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1DPL-00047G-7B; Mon, 10 Feb 2020 18:03:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1DPB-00046v-MI
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 18:03:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EE7601FB;
 Mon, 10 Feb 2020 10:03:32 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A0C3D3F68F;
 Mon, 10 Feb 2020 10:03:30 -0800 (PST)
Date: Mon, 10 Feb 2020 18:03:28 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v7 09/11] arm64: disable SCS for hypervisor code
Message-ID: <20200210180327.GB20840@lakrids.cambridge.arm.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200128184934.77625-1-samitolvanen@google.com>
 <20200128184934.77625-10-samitolvanen@google.com>
 <6f62b3c0-e796-e91c-f53b-23bd80fcb065@arm.com>
 <20200210175214.GA23318@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200210175214.GA23318@willie-the-truck>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_100333_766850_8C830A85 
X-CRM114-Status: GOOD (  12.05  )
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
Cc: Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 clang-built-linux@googlegroups.com, James Morse <james.morse@arm.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Sami Tolvanen <samitolvanen@google.com>, Marc Zyngier <maz@kernel.org>,
 kernel-hardening@lists.openwall.com, Laura Abbott <labbott@redhat.com>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 10, 2020 at 05:52:15PM +0000, Will Deacon wrote:
> On Mon, Feb 10, 2020 at 05:18:58PM +0000, James Morse wrote:
> > On 28/01/2020 18:49, Sami Tolvanen wrote:
> > > Filter out CC_FLAGS_SCS and -ffixed-x18 for code that runs at a
> > > different exception level.
> > 
> > Hmmm, there are two things being disabled here.
> > 
> > Stashing the lr in memory pointed to by VA won't work transparently at EL2 ... but
> > shouldn't KVM's C code still treat x18 as a fixed register?
> 
> My review of v6 suggested dropping the -ffixed-x18 as well, since it's only
> introduced by SCS (in patch 5) and so isn't required by anything else. Why
> do you think it's needed?

When EL1 code calls up to hyp, it expects x18 to be preserved across the
call, so hyp needs to either preserve it explicitly across a transitions
from/to EL1 or always preserve it.

The latter is easiest since any code used by VHE hyp code will need x18
saved anyway (ans so any common hyp code needs to).

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
