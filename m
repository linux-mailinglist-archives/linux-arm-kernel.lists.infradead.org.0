Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D0BB1349C4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 18:49:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oCh0nnRmUcucmb6dj0BKiQzgWglJAlFW4JRjgIOu2C0=; b=JSm5+PadebBsyV
	CHWtHZ3f+4Ljom7a8vCkXNUvDwgURKINc1EcapS5rSRopcxiDawWdTBNHZ0dMaJJtLn5WBn9wMLUv
	tAIUoIA8VQmagtQuTPvuW258qjEJ0SrpebwY6ux021DrBBpYVDA6xCn/JJGRSWbBBql052/WdaBXT
	LIAFaexe8vzDUL1LUngvBojDvCBdtwQGe6gihI8VtTt0wxIxdfrCyPbkhXJPlXzRzg62Jngc1SISe
	O7MyUvDMV/bU/UNvHBRm7vSR55pRIxWby9jytFk4EXM2Z2SUjpBPh5cHpk+9WcmsEt10ewsLxp4o/
	5ia5rNU222XoWDb1FC4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipFS0-0008UI-Ro; Wed, 08 Jan 2020 17:49:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipFRq-0008Sq-Jz; Wed, 08 Jan 2020 17:48:52 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F00E920692;
 Wed,  8 Jan 2020 17:48:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578505729;
 bh=DQI/BkNpa8zJ1+g1hyWRHV8tS4MMtyayFbWxc2vgiyw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=h3yBxc/hA4bjF3KvLqRSYfytL3Up7Y+v8A9JJKzEHJYjVPObRZWSc3q39pJffsUBA
 5LDXlu5EaJrlbSkaclji1p+Y/IqUoHRs0UrSuL6+WR5M7vse0Adw0xVbxeL0aP3z4W
 LengscAomIVlEEBl1lKGo81DzhKZSnNzIoCKjNEE=
Date: Wed, 8 Jan 2020 17:48:39 +0000
From: Will Deacon <will@kernel.org>
To: AKASHI Takahiro <takahiro.akashi@linaro.org>, pasha.tatashin@soleen.com
Subject: Re: [PATCH v4 2/2] arm64: kexec_file: add crash dump support
Message-ID: <20200108174839.GB21242@willie-the-truck>
References: <20191216021247.24950-1-takahiro.akashi@linaro.org>
 <20191216021247.24950-3-takahiro.akashi@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191216021247.24950-3-takahiro.akashi@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_094850_676035_64B9D5B2 
X-CRM114-Status: GOOD (  14.48  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: catalin.marinas@arm.com, bhsharma@redhat.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, james.morse@arm.com,
 frowand.list@gmail.com, kexec@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 16, 2019 at 11:12:47AM +0900, AKASHI Takahiro wrote:
> Enabling crash dump (kdump) includes
> * prepare contents of ELF header of a core dump file, /proc/vmcore,
>   using crash_prepare_elf64_headers(), and
> * add two device tree properties, "linux,usable-memory-range" and
>   "linux,elfcorehdr", which represent respectively a memory range
>   to be used by crash dump kernel and the header's location
> 
> Signed-off-by: AKASHI Takahiro <takahiro.akashi@linaro.org>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will.deacon@arm.com>
> Reviewed-by: James Morse <james.morse@arm.com>
> Tested-and-reviewed-by: Bhupesh Sharma <bhsharma@redhat.com>
> ---
>  arch/arm64/include/asm/kexec.h         |   4 +
>  arch/arm64/kernel/kexec_image.c        |   4 -
>  arch/arm64/kernel/machine_kexec_file.c | 106 ++++++++++++++++++++++++-
>  3 files changed, 106 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/kexec.h b/arch/arm64/include/asm/kexec.h
> index 12a561a54128..d24b527e8c00 100644
> --- a/arch/arm64/include/asm/kexec.h
> +++ b/arch/arm64/include/asm/kexec.h
> @@ -96,6 +96,10 @@ static inline void crash_post_resume(void) {}
>  struct kimage_arch {
>  	void *dtb;
>  	unsigned long dtb_mem;
> +	/* Core ELF header buffer */
> +	void *elf_headers;
> +	unsigned long elf_headers_mem;
> +	unsigned long elf_headers_sz;
>  };

This conflicts with the cleanup work from Pavel. Please can you check my
resolution? [1]

Will

[1] https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/diff/?h=for-kernelci&id=aef73191765a88cadc0a627cdc070e5a0086b015


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
