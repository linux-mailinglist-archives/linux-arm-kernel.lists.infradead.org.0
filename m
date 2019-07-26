Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F18375C36
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 02:55:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5NNrgtAai4VH0ic3iVQXLMGMF4NFEUqRwR08fBa+7QA=; b=qIVpCCjfQscXxA
	QHZVbPD15gV+c0HecbdLnHRxLHrYHxkIPXzQEwMxN/Qu9wxhepaJTE0dHuPuvXwnRhkDj5nG8AAQg
	DW9rf2JZz4t62hXy/E8i0TuOjJwk4wj7iF5+Peq7evkE9hII/kkkc96abVWRTjOXV9ovQUadp5ok7
	dMnuMq9yUJWZumdl7cTOmZJIgCVFer3ttfEKyWjihrBxpCx1jP6mB2LaNcp1/E8nujEGiYnEOjStd
	TM0HQTKNf1hyJBXG5KoaeS/JTA8FTslAHl5wL9LRtTy/C5ZZJvuDVrBE/i1v2pgLgwDNN0eJQ4JS2
	O0Yj9Frz2DbPxPz5cu/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqoWT-0001WY-8R; Fri, 26 Jul 2019 00:55:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqoWG-0001W8-4V; Fri, 26 Jul 2019 00:55:37 +0000
Received: from localhost.localdomain (c-73-223-200-170.hsd1.ca.comcast.net
 [73.223.200.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DC8ED2238C;
 Fri, 26 Jul 2019 00:55:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564102535;
 bh=o4hVED1DnXPhi52FO0wtBGwbvoqHLkWraSNdRFbEhmA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=L5uUd3GhpWzXG8NZ5VAfPLAogGQnqmrSDtJ2WoGzo4kODsjexGjl2plEX8UF4CwuW
 oU0gaoBumTXP+a5Fx+/RYg+bzmTeV7Qn9p0BT20Auw6fp70moUvLzgdHDbXgB4eoWy
 x3mw2X6mVGMx2Db5jEYPWqqxyerg3w7sEzNMLtn4=
Date: Thu, 25 Jul 2019 17:55:33 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH REBASE v4 11/14] mips: Adjust brk randomization offset
 to fit generic version
Message-Id: <20190725175533.f9fcc5139a9575560be7f679@linux-foundation.org>
In-Reply-To: <201907251259.09E0101@keescook>
References: <20190724055850.6232-1-alex@ghiti.fr>
 <20190724055850.6232-12-alex@ghiti.fr>
 <1ba4061a-c026-3b9e-cd91-3ed3a26fce1b@ghiti.fr>
 <201907251259.09E0101@keescook>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_175536_198641_0508B145 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
 Catalin Marinas <catalin.marinas@arm.com>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, Russell King <linux@armlinux.org.uk>,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Paul Burton <paul.burton@mips.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, James Hogan <jhogan@kernel.org>,
 linux-fsdevel@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-mips@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org, Luis Chamberlain <mcgrof@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 25 Jul 2019 13:00:33 -0700 Kees Cook <keescook@chromium.org> wrote:

> > I have just noticed that this patch is wrong, do you want me to send
> > another version of the entire series or is the following diff enough ?
> > This mistake gets fixed anyway in patch 13/14 when it gets merged with the
> > generic version.
> 
> While I can't speak for Andrew, I'd say, since you've got Paul and
> Luis's Acks to add now, I'd say go ahead and respin with the fix and the
> Acks added.

Yes please.   After attending to Paul's questions on [14/14].

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
