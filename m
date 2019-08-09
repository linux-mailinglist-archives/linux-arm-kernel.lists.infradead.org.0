Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DCB387EF9
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 18:08:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MAuuc9q/31AyWSSYw7aAeA2KWKW32pD6fGFT8C7DPQs=; b=quCoc7HfvRhXvq
	/c6NtjFKh3Azzt4EoAcae9GOUbqJj7YCL7bifjG0a1D0bWEkCurqh9Yy82GVadZGcczDWIyEBjzCo
	ag5DSPI1dah763ullGUGYF0AhXLdVxexkPdlxKg50QmSHiWO6RgJF3uq7CrytaMuMIQ2kIXDLVXvq
	AiMj5QJ4sz6iVCl7YugZyX5vQYCGz1U4/wZk6UZNKQGu9EDkEZZWdsHQ1q11CBKStba1/jQNSwOul
	85PsiK7fFbFaPB6msvyRnZoS+q7bRPwsLn3kJfwnQdEAxIyxzJy3njni+YSgEgTzJF7ILQtAqktGu
	GWppsQrGX4/PYPmjQ94A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw7RD-0000PB-P6; Fri, 09 Aug 2019 16:08:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hw7R2-0000Oj-0Q
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 16:08:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 37BC415AB;
 Fri,  9 Aug 2019 09:08:07 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 6D88D3F575; Fri,  9 Aug 2019 09:08:02 -0700 (PDT)
Date: Fri, 9 Aug 2019 17:08:00 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Andrey Konovalov <andreyknvl@google.com>, Will Deacon <will.deacon@arm.com>
Subject: Re: [PATCH v19 02/15] arm64: Introduce prctl() options to control
 the tagged user addresses ABI
Message-ID: <20190809160800.GC23083@arrakis.emea.arm.com>
References: <cover.1563904656.git.andreyknvl@google.com>
 <1c05651c53f90d07e98ee4973c2786ccf315db12.1563904656.git.andreyknvl@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1c05651c53f90d07e98ee4973c2786ccf315db12.1563904656.git.andreyknvl@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_090808_142698_DEAF1D6D 
X-CRM114-Status: GOOD (  23.42  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>, dri-devel@lists.freedesktop.org,
 linux-mm@kvack.org, Khalid Aziz <khalid.aziz@oracle.com>,
 linux-kselftest@vger.kernel.org, Felix Kuehling <Felix.Kuehling@amd.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Dmitry Vyukov <dvyukov@google.com>, Dave Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>, linux-media@vger.kernel.org,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>, Dave Hansen <dave.hansen@intel.com>,
 linux-kernel@vger.kernel.org, Jens Wiklander <jens.wiklander@linaro.org>,
 Lee Smith <Lee.Smith@arm.com>, Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, enh <enh@google.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 23, 2019 at 07:58:39PM +0200, Andrey Konovalov wrote:
> From: Catalin Marinas <catalin.marinas@arm.com>
> 
> It is not desirable to relax the ABI to allow tagged user addresses into
> the kernel indiscriminately. This patch introduces a prctl() interface
> for enabling or disabling the tagged ABI with a global sysctl control
> for preventing applications from enabling the relaxed ABI (meant for
> testing user-space prctl() return error checking without reconfiguring
> the kernel). The ABI properties are inherited by threads of the same
> application and fork()'ed children but cleared on execve(). A Kconfig
> option allows the overall disabling of the relaxed ABI.
> 
> The PR_SET_TAGGED_ADDR_CTRL will be expanded in the future to handle
> MTE-specific settings like imprecise vs precise exceptions.
> 
> Reviewed-by: Kees Cook <keescook@chromium.org>
> Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> Signed-off-by: Andrey Konovalov <andreyknvl@google.com>

Following several discussions on the list and in private, I'm proposing
the update below. I can send it as a patch on top of the current series
since Will has already queued this.

---------------8<-------------------------------------
From 1b3f57ab0c2c51f8b31c19fb34d270e1f3ee57fe Mon Sep 17 00:00:00 2001
From: Catalin Marinas <catalin.marinas@arm.com>
Date: Fri, 9 Aug 2019 15:09:15 +0100
Subject: [PATCH] fixup! arm64: Introduce prctl() options to control the
 tagged user addresses ABI

Rename abi.tagged_addr sysctl control to abi.tagged_addr_disabled,
defaulting to 0. Only prevent prctl(PR_TAGGED_ADDR_ENABLE)from being
called when abi.tagged_addr_disabled==1.

Force unused arg* of the new prctl() to 0.

Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
---
 arch/arm64/kernel/process.c | 17 ++++++++++-------
 kernel/sys.c                |  4 ++++
 2 files changed, 14 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
index 76b7c55026aa..03689c0beb34 100644
--- a/arch/arm64/kernel/process.c
+++ b/arch/arm64/kernel/process.c
@@ -579,17 +579,22 @@ void arch_setup_new_exec(void)
 /*
  * Control the relaxed ABI allowing tagged user addresses into the kernel.
  */
-static unsigned int tagged_addr_prctl_allowed = 1;
+static unsigned int tagged_addr_disabled;
 
 long set_tagged_addr_ctrl(unsigned long arg)
 {
-	if (!tagged_addr_prctl_allowed)
-		return -EINVAL;
 	if (is_compat_task())
 		return -EINVAL;
 	if (arg & ~PR_TAGGED_ADDR_ENABLE)
 		return -EINVAL;
 
+	/*
+	 * Do not allow the enabling of the tagged address ABI if globally
+	 * disabled via sysctl abi.tagged_addr_disabled.
+	 */
+	if (arg & PR_TAGGED_ADDR_ENABLE && tagged_addr_disabled)
+		return -EINVAL;
+
 	update_thread_flag(TIF_TAGGED_ADDR, arg & PR_TAGGED_ADDR_ENABLE);
 
 	return 0;
@@ -597,8 +602,6 @@ long set_tagged_addr_ctrl(unsigned long arg)
 
 long get_tagged_addr_ctrl(void)
 {
-	if (!tagged_addr_prctl_allowed)
-		return -EINVAL;
 	if (is_compat_task())
 		return -EINVAL;
 
@@ -618,9 +621,9 @@ static int one = 1;
 
 static struct ctl_table tagged_addr_sysctl_table[] = {
 	{
-		.procname	= "tagged_addr",
+		.procname	= "tagged_addr_disabled",
 		.mode		= 0644,
-		.data		= &tagged_addr_prctl_allowed,
+		.data		= &tagged_addr_disabled,
 		.maxlen		= sizeof(int),
 		.proc_handler	= proc_dointvec_minmax,
 		.extra1		= &zero,
diff --git a/kernel/sys.c b/kernel/sys.c
index c6c4d5358bd3..ec48396b4943 100644
--- a/kernel/sys.c
+++ b/kernel/sys.c
@@ -2499,9 +2499,13 @@ SYSCALL_DEFINE5(prctl, int, option, unsigned long, arg2, unsigned long, arg3,
 		error = PAC_RESET_KEYS(me, arg2);
 		break;
 	case PR_SET_TAGGED_ADDR_CTRL:
+		if (arg3 || arg4 || arg5)
+			return -EINVAL;
 		error = SET_TAGGED_ADDR_CTRL(arg2);
 		break;
 	case PR_GET_TAGGED_ADDR_CTRL:
+		if (arg2 || arg3 || arg4 || arg5)
+			return -EINVAL;
 		error = GET_TAGGED_ADDR_CTRL();
 		break;
 	default:

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
