Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1F65189727
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 09:29:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SiYtZmxcqSf1TeJhuZy4ATr9rqVoXa10HeHyVzScvlw=; b=cH6mGa+mIJz2zK
	Cq3t8uOaSYFU6y5RLDgexaLD+XERnJ9Wi3sryPEvpBQNlBXv3A3PUat+Ogj7TcAk4bKvWH5YKzmzx
	N26l6HSehnRNI/8dh4nYI0AethmDhM0te6a7YB38VwB68zjeLacFAeVl45RBiM1aDA9oUAWnofCMY
	J6fpNLGtCgOHBjEMunn3Nbz5/DJGIYMCCf8U89m+fzPwNNsRnjf+nAZzknzkKyBAq2jRwxJ9JkRji
	Ypk29+qu3W8Ha585fpdGYVHXjF8G1sflUNiqLPsq1kOsTLGcSbKHQylX5kj9bLE4Nysy5JKN14hPp
	aWpEQhyVDfdNfxUnk42A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEU52-0005dt-J0; Wed, 18 Mar 2020 08:29:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEU44-0004sX-Tr
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 08:28:40 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C225A2076E;
 Wed, 18 Mar 2020 08:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584520115;
 bh=qW9OSoZD0tlHpJQld7rMEP4xIvNVkWvCnKt+38BpdO4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Skg4xjw/tkl4AmorChGaLDMKMQfvgME3qtyM7EdTp9yArvwFVuQ0QqsZXqNuIeEW6
 avYgvUZQiJRw1uXYkH1A2lvEjTr8B4TjeQllVNQdSixEttnHLNSgVtoEeB4YQPI0eU
 1RVxwqvfetEwwdFQvZ+d5KUxMmRFp7vij7iH5tvI=
Date: Wed, 18 Mar 2020 08:28:31 +0000
From: Will Deacon <will@kernel.org>
To: "kernelci.org bot" <bot@kernelci.org>
Subject: Re: arm64/for-kernelci build: 3 builds: 1 failed, 2 passed, 1 error
 (v5.6-rc6-67-gcf89e8c383a6)
Message-ID: <20200318082830.GA31312@willie-the-truck>
References: <5e715a20.1c69fb81.d52f4.2251@mx.google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5e715a20.1c69fb81.d52f4.2251@mx.google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_012837_028702_60C27636 
X-CRM114-Status: UNSURE (   8.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: catalin.marinas@arm.com, linux-arm-kernel@lists.infradead.org,
 kernel-build-reports@lists.linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 17, 2020 at 04:15:44PM -0700, kernelci.org bot wrote:
> arm64/for-kernelci build: 3 builds: 1 failed, 2 passed, 1 error (v5.6-rc6-67-gcf89e8c383a6)
> 
> Full Build Summary: https://kernelci.org/build/arm64/branch/for-kernelci/kernel/v5.6-rc6-67-gcf89e8c383a6/
> 
> Tree: arm64
> Branch: for-kernelci
> Git Describe: v5.6-rc6-67-gcf89e8c383a6
> Git Commit: cf89e8c383a6447a635400f669d0cd97e89770d9
> Git URL: https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
> Built: 1 unique architecture
> 
> Build Failure Detected:
> 
> arm64:
>     allnoconfig: (gcc-8) FAIL
> 
> Errors Detected:
> 
> arm64:
>     allnoconfig (gcc-8): 1 error

Looks like this is easily fixed as per below.

Will

--->8

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index d65d226a77ec..53c77711f752 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -64,7 +64,7 @@ config ARM64
 	select ARCH_INLINE_SPIN_UNLOCK_IRQRESTORE if !PREEMPTION
 	select ARCH_KEEP_MEMBLOCK
 	select ARCH_USE_CMPXCHG_LOCKREF
-	select ARCH_USE_GNU_PROPERTY if BINFMT_ELF
+	select ARCH_USE_GNU_PROPERTY
 	select ARCH_USE_QUEUED_RWLOCKS
 	select ARCH_USE_QUEUED_SPINLOCKS
 	select ARCH_SUPPORTS_MEMORY_FAILURE

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
