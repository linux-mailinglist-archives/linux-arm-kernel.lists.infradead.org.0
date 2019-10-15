Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D40C3D6C4C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 02:00:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZOBJz7inW0LP0/AWGh3dsRqTC5OfOd1OPpBTN+1U3i0=; b=UvAF4OUlC8ZvPr
	4RCYS6TbZsTOlyPyqOrrj+jBN/FoQfqWd1uDHtNL3xRIgBuVM/6poBOIqQcJBgWfAq+1TxUqYt7Sx
	ChgeQkiD1/guCJjojRdlqMXdRcQjlgo8Ad7ylHOJr7+ZSeCxTNIhKoxB2quMJMBVlaYfRuSiSKyuE
	wwIB4RfJgEGgx7yqGXZIMjSnprXqGbwzrJRawqS6PWJyz4KqMJ0SHTv7FXBsebalrIvI4ZEUKMlEy
	QX9I+gR3Tm9c74fTPWkH8p3OHWEWixxTxqR5ZjFpKbiy6BlYwd3lEScJPKTNmyuNTT5vW7arlEMbd
	4hMuWMvhaZ8GCYfV0J8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKAGP-0002x0-7Z; Tue, 15 Oct 2019 00:00:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKAGE-0002wK-T7
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 00:00:24 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0933521835;
 Tue, 15 Oct 2019 00:00:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571097622;
 bh=DqA41CguxbXMV9awK6tImOFQJT85+9r1Kb3WvHxqd84=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=clgcAkA/EKPtDiFNzhpAY5Dbm8alSy5d6K2Y1DMDdop6nHBSmaYYi0jta8bcPTRX+
 LPW5G0BI8/Fd8cqdKrzUEgsUqRap1GFEnMaPfENdulBDHyw44kClvDp7q7awGDjG26
 FtxVdRULIuYQAe17+8MUBed4VynI87EO3VkY1oJQ=
Date: Tue, 15 Oct 2019 01:00:18 +0100
From: Will Deacon <will@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH] arm64: fix alternatives with LLVM's integrated assembler
Message-ID: <20191015000017.66jkcya6zzbi7qqc@willie-the-truck>
References: <20191007211418.30321-1-samitolvanen@google.com>
 <CAKwvOdnX6O0Grth11R8JLoD9bp-BECheucZKHbiHt4=XpQferA@mail.gmail.com>
 <CABCJKudGtvVazLpZFdbhe9z-4mx_t16zxzkcwYbdAJriakrWqw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABCJKudGtvVazLpZFdbhe9z-4mx_t16zxzkcwYbdAJriakrWqw@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_170022_963604_036F43CB 
X-CRM114-Status: GOOD (  14.85  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kees Cook <keescook@chromium.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Marc Zyngier <maz@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 07, 2019 at 04:47:20PM -0700, Sami Tolvanen wrote:
> On Mon, Oct 7, 2019 at 2:34 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> > Should the definition of the ALTERNATIVE macro
> > (arch/arm64/include/asm/alternative.h#L295) also be updated in this
> > patch to not pass `1` as the final parameter?
> 
> No, that's the default value for cfg in case the caller omits the
> parameter, and it's still needed.
> 
> > I get one error on linux-next that looks related:
> > $ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang AS=clang
> > -j71 arch/arm64/kvm/
> > ...
> 
> This patch only touches the inline assembly version (i.e. when
> compiling without -no-integrated-as), while with AS=clang you are
> using clang also for stand-alone assembly code. I believe some
> additional work is needed before we can do that.

Is there any benefit from supporting '-no-integrated-as' but not 'AS=clang'?
afaict, you have to hack the top-level Makefile for that.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
