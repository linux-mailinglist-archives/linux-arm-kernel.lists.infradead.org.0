Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA6802C74C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 15:05:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JAY6OvxdTxGpSuiLHirG4L1DN2mfyQ/e70zzUc8H5jc=; b=T8upyTyNeyyVQh
	Tyvx5CtXGj48Lz3+45qGmsoAzk6oXnBt4remCJ4vmKOiREglx97qRmJFesrWFBPI5tNN7fDAtygoF
	N6SGG1IZ/X+FLle5cu1Z8uQBizW3jYP5pbZd7SxagVtFEsL+BGKXA1nTuBbpNhCLEOU3Jc4mUmaP+
	KchFXfxSN8aoXoOjK4vqb5nTrSQkm4GpCz9wVrWPzc1aFV1QQTTRXsijdUolk18XFmIxul0t/TWln
	eV948GZGlTLA4kme6l7a81jWKeylKdjOw8ajVN3LwXEbHZFZgycw6toMFCJKEq24waFT8wiltuyQ5
	5nnXpqkFkhcuGx+Z4moQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVbnK-0002xl-Bf; Tue, 28 May 2019 13:05:34 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVbnD-0002xF-IP
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 13:05:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D01EC80D;
 Tue, 28 May 2019 06:05:26 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 479923F5AF; Tue, 28 May 2019 06:05:21 -0700 (PDT)
Date: Tue, 28 May 2019 14:05:18 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Andrey Konovalov <andreyknvl@google.com>
Subject: Re: [PATCH v15 05/17] arms64: untag user pointers passed to memory
 syscalls
Message-ID: <20190528130518.GB32006@arrakis.emea.arm.com>
References: <cover.1557160186.git.andreyknvl@google.com>
 <00eb4c63fefc054e2c8d626e8fedfca11d7c2600.1557160186.git.andreyknvl@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <00eb4c63fefc054e2c8d626e8fedfca11d7c2600.1557160186.git.andreyknvl@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_060527_620852_AC8BEBBF 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 linux-kselftest@vger.kernel.org, Felix Kuehling <Felix.Kuehling@amd.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Dmitry Vyukov <dvyukov@google.com>, Dave Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>, linux-media@vger.kernel.org,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>, linux-kernel@vger.kernel.org,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 06, 2019 at 06:30:51PM +0200, Andrey Konovalov wrote:
>  /*
>   * Wrappers to pass the pt_regs argument.
>   */
>  #define sys_personality		sys_arm64_personality
> +#define sys_mmap_pgoff		sys_arm64_mmap_pgoff
> +#define sys_mremap		sys_arm64_mremap
> +#define sys_munmap		sys_arm64_munmap
> +#define sys_brk			sys_arm64_brk
> +#define sys_get_mempolicy	sys_arm64_get_mempolicy
> +#define sys_madvise		sys_arm64_madvise
> +#define sys_mbind		sys_arm64_mbind
> +#define sys_mlock		sys_arm64_mlock
> +#define sys_mlock2		sys_arm64_mlock2
> +#define sys_munlock		sys_arm64_munlock
> +#define sys_mprotect		sys_arm64_mprotect
> +#define sys_msync		sys_arm64_msync
> +#define sys_mincore		sys_arm64_mincore
> +#define sys_remap_file_pages	sys_arm64_remap_file_pages
> +#define sys_shmat		sys_arm64_shmat
> +#define sys_shmdt		sys_arm64_shmdt

This hunk should be (I sent a separate patch for sys_personality):

@@ -160,23 +163,23 @@ SYSCALL_DEFINE1(arm64_shmdt, char __user *, shmaddr)
 /*
  * Wrappers to pass the pt_regs argument.
  */
-#define sys_personality		sys_arm64_personality
-#define sys_mmap_pgoff		sys_arm64_mmap_pgoff
-#define sys_mremap		sys_arm64_mremap
-#define sys_munmap		sys_arm64_munmap
-#define sys_brk			sys_arm64_brk
-#define sys_get_mempolicy	sys_arm64_get_mempolicy
-#define sys_madvise		sys_arm64_madvise
-#define sys_mbind		sys_arm64_mbind
-#define sys_mlock		sys_arm64_mlock
-#define sys_mlock2		sys_arm64_mlock2
-#define sys_munlock		sys_arm64_munlock
-#define sys_mprotect		sys_arm64_mprotect
-#define sys_msync		sys_arm64_msync
-#define sys_mincore		sys_arm64_mincore
-#define sys_remap_file_pages	sys_arm64_remap_file_pages
-#define sys_shmat		sys_arm64_shmat
-#define sys_shmdt		sys_arm64_shmdt
+#define __arm64_sys_personality		__arm64_sys_arm64_personality
+#define __arm64_sys_mmap_pgoff		__arm64_sys_arm64_mmap_pgoff
+#define __arm64_sys_mremap		__arm64_sys_arm64_mremap
+#define __arm64_sys_munmap		__arm64_sys_arm64_munmap
+#define __arm64_sys_brk			__arm64_sys_arm64_brk
+#define __arm64_sys_get_mempolicy	__arm64_sys_arm64_get_mempolicy
+#define __arm64_sys_madvise		__arm64_sys_arm64_madvise
+#define __arm64_sys_mbind		__arm64_sys_arm64_mbind
+#define __arm64_sys_mlock		__arm64_sys_arm64_mlock
+#define __arm64_sys_mlock2		__arm64_sys_arm64_mlock2
+#define __arm64_sys_munlock		__arm64_sys_arm64_munlock
+#define __arm64_sys_mprotect		__arm64_sys_arm64_mprotect
+#define __arm64_sys_msync		__arm64_sys_arm64_msync
+#define __arm64_sys_mincore		__arm64_sys_arm64_mincore
+#define __arm64_sys_remap_file_pages	__arm64_sys_arm64_remap_file_pages
+#define __arm64_sys_shmat		__arm64_sys_arm64_shmat
+#define __arm64_sys_shmdt		__arm64_sys_arm64_shmdt
 
 asmlinkage long sys_ni_syscall(const struct pt_regs *);
 #define __arm64_sys_ni_syscall	sys_ni_syscall

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
