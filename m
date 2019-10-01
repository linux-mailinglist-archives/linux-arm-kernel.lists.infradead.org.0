Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38899C3EBC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 19:38:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VtL/n0ZDx2inCIAUJxd1f65LxdbSL44H6+5JbimQ/eU=; b=buhf7KfR0KsYEg
	ZJ/pqlFmaMuGmb6BL7pQJI5tQhvP5y7wZ+Rv+aq46pA5icQ/4z1wEcSrmm209Tarjl63Ym9KBAnB7
	2CYVzrViR5QeqWU10F4SbK2LEX8Ylnc3KsDxHcAqQp+elSoF1hL8M2xxMhupJRbgYglk80+lWN/rG
	chhgOec95SnxvE4KeFse0WvfIiSf0mlty4IS9YRd22jlCfTAFFU71wHmBA/5jZghHDsuFr37T8YYi
	uuR9sk+g1BAEQeOXeyCLLmM11l2zW8n2mB0WIU5WRg7R/Bcnzp3efRPm9RQiHWVZoWbDXIdA5tFj8
	+W6FF7IB8gC1+yyG5OlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFM6M-0007nw-8P; Tue, 01 Oct 2019 17:38:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFM6E-0007mT-Sr
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 17:38:12 +0000
Received: from localhost (c-67-164-102-47.hsd1.ca.comcast.net [67.164.102.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B7CEE2053B;
 Tue,  1 Oct 2019 17:38:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569951490;
 bh=MMmGvGL9mMISD7665FS8n/2elHIASz6KuyJpSch+Vzc=;
 h=Date:From:To:cc:Subject:In-Reply-To:References:From;
 b=PGyzGHOi8DLY9Ntkwu1xLIIjou96erVvR41GoRYE63/OEUdplRKDX/U+LkKD1XiPD
 4RC1VBOtqVJPdE3vzE0V0JTmVjnNOFDFOOfnH/zLIYFmxWmDIhAvlM0PHZnLoSvOgQ
 7wnlKe7hxq0JZ33qeMO21zV/luBcFtqS9qbtj/18=
Date: Tue, 1 Oct 2019 10:38:03 -0700 (PDT)
From: Stefano Stabellini <sstabellini@kernel.org>
X-X-Sender: sstabellini@sstabellini-ThinkPad-T480s
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] ARM: xen: unexport HYPERVISOR_platform_op function
In-Reply-To: <20190906153948.2160342-1-arnd@arndb.de>
Message-ID: <alpine.DEB.2.21.1910011032500.20899@sstabellini-ThinkPad-T480s>
References: <20190906153948.2160342-1-arnd@arndb.de>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_103810_975058_F7D934AB 
X-CRM114-Status: GOOD (  17.01  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, Stefano Stabellini <sstabellini@kernel.org>,
 Emil Velikov <emil.l.velikov@gmail.com>, Russell King <linux@armlinux.org.uk>,
 Denis Efremov <efremov@linux.com>, linux-kernel@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 xen-devel@lists.xenproject.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 6 Sep 2019, Arnd Bergmann wrote:
> HYPERVISOR_platform_op() is an inline function and should not
> be exported. Since commit 15bfc2348d54 ("modpost: check for
> static EXPORT_SYMBOL* functions"), this causes a warning:
> 
> WARNING: "HYPERVISOR_platform_op" [vmlinux] is a static EXPORT_SYMBOL_GPL
> 
> Remove the extraneous export.
> 
> Fixes: 15bfc2348d54 ("modpost: check for static EXPORT_SYMBOL* functions")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  arch/arm/xen/enlighten.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm/xen/enlighten.c b/arch/arm/xen/enlighten.c
> index 1e57692552d9..845c528acf24 100644
> --- a/arch/arm/xen/enlighten.c
> +++ b/arch/arm/xen/enlighten.c
> @@ -437,7 +437,6 @@ EXPORT_SYMBOL_GPL(HYPERVISOR_memory_op);
>  EXPORT_SYMBOL_GPL(HYPERVISOR_physdev_op);
>  EXPORT_SYMBOL_GPL(HYPERVISOR_vcpu_op);
>  EXPORT_SYMBOL_GPL(HYPERVISOR_tmem_op);
> -EXPORT_SYMBOL_GPL(HYPERVISOR_platform_op);
>  EXPORT_SYMBOL_GPL(HYPERVISOR_multicall);
>  EXPORT_SYMBOL_GPL(HYPERVISOR_vm_assist);
>  EXPORT_SYMBOL_GPL(HYPERVISOR_dm_op);

Hi Arnd, 

Thank you for the patch. HYPERVISOR_platform_op() is an inline function,
the underlying function that should be exported is
HYPERVISOR_platform_op_raw. So, instead of removing
HYPERVISOR_platform_op, we should change it to
HYPERVISOR_platform_op_raw.

For convenience, and for testing I cooked up a patch. Arnd, if you are
happy with it (in the sense that it solves your problem) we'll check it
in the xentip tree, unless you would like to get it in your tree?

Cheers,

Stefano

---

From: Stefano Stabellini <stefano.stabellini@xilinx.com>

HYPERVISOR_platform_op() is an inline function and should not
be exported. Since commit 15bfc2348d54 ("modpost: check for
static EXPORT_SYMBOL* functions"), this causes a warning:

WARNING: "HYPERVISOR_platform_op" [vmlinux] is a static EXPORT_SYMBOL_GPL

Instead, export the underlying function called by the static inline:
HYPERVISOR_platform_op_raw.

Fixes: 15bfc2348d54 ("modpost: check for static EXPORT_SYMBOL* functions")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Stefano Stabellini <stefano.stabellini@xilinx.com>

diff --git a/arch/arm/xen/enlighten.c b/arch/arm/xen/enlighten.c
index 1e57692552d9..522c97d43ef8 100644
--- a/arch/arm/xen/enlighten.c
+++ b/arch/arm/xen/enlighten.c
@@ -437,7 +437,7 @@ EXPORT_SYMBOL_GPL(HYPERVISOR_memory_op);
 EXPORT_SYMBOL_GPL(HYPERVISOR_physdev_op);
 EXPORT_SYMBOL_GPL(HYPERVISOR_vcpu_op);
 EXPORT_SYMBOL_GPL(HYPERVISOR_tmem_op);
-EXPORT_SYMBOL_GPL(HYPERVISOR_platform_op);
+EXPORT_SYMBOL_GPL(HYPERVISOR_platform_op_raw);
 EXPORT_SYMBOL_GPL(HYPERVISOR_multicall);
 EXPORT_SYMBOL_GPL(HYPERVISOR_vm_assist);
 EXPORT_SYMBOL_GPL(HYPERVISOR_dm_op);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
