Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7615E1D7770
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 13:39:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l36ba+vCUvk0LDEd3mHVLvqOx6VlavDVJCahiKCrcoc=; b=lJXvCyg8IDU4y6
	6GUMXEjWxEaw8FEw/2AFNzzCIXNBjER+W3H2SzeegqTDw1eIizwSVkD9H6GsKShJjNw36ijFswwd2
	DGoVgumey1JJUOP7QIFnGPAMk8t4aIsKla5XmUU1V8tmTERpH8osdTt58MKhDL57ODIhGBxmE3d3l
	0k0slo5SAfBYGaFZF3/QNi4OlbK4bbp3ze6fT75qUHsTJfBDiTg8CYgJNazSCI7TrL5b4oes8vaYn
	Gug3gurGcFLzC3LN1NpI/gNTAxaSai9ZZrMNro037a47kQCr1KuGMa9S2sQ0+jzY98NBDjows153a
	z5hJHdvC3Q3OAZ+xPAdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jae6z-0005lX-OD; Mon, 18 May 2020 11:39:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jae6q-0005kl-Tp
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 11:39:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D38C9106F;
 Mon, 18 May 2020 04:39:03 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 73FB53F52E;
 Mon, 18 May 2020 04:39:01 -0700 (PDT)
Date: Mon, 18 May 2020 12:38:58 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 2/6] scs: Move accounting into alloc/free functions
Message-ID: <20200518113858.GB1957@C02TD0UTHF1T.local>
References: <20200515172756.27185-1-will@kernel.org>
 <20200515172756.27185-3-will@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200515172756.27185-3-will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_043905_004130_6B42E047 
X-CRM114-Status: GOOD (  15.14  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Mark Rutland <mark.rutland@am.com>, Sami Tolvanen <samitolvanen@google.com>,
 kernel-team@android.com, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 15, 2020 at 06:27:52PM +0100, Will Deacon wrote:
> There's no need to perform the shadow stack page accounting independently
> of the lifetime of the underlying allocation, so call the accounting code
> from the {alloc,free}() functions and simplify the code in the process.
> 
> Signed-off-by: Will Deacon <will@kernel.org>
> ---
>  kernel/scs.c | 45 +++++++++++++++++++++------------------------
>  1 file changed, 21 insertions(+), 24 deletions(-)

One (super trivial) nit below, but regardless this looks like a sound
and sensible cleanup, so:

Reviewed-by: Mark Rutland <mark.rutland@arm.com>

> diff --git a/kernel/scs.c b/kernel/scs.c
> index 5ff8663e4a67..aea841cd7586 100644
> --- a/kernel/scs.c
> +++ b/kernel/scs.c
> @@ -14,25 +14,35 @@

>  static void *scs_alloc(int node)
>  {

> +	void *s = kmem_cache_alloc_node(scs_cache, GFP_SCS, node);
> +
> +	if (!s)
> +		return NULL;

Super trivial nit, but could we omit the line space between these two,
to fit with usual style?

Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
