Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D6B71ACC6E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 18:02:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VDddGa71wTyMDn37rt/8QjjyuB2Wy8g3zvrKJvQgQkQ=; b=u+obUPmRIFPtBM
	FPwU3cPKTbmesxbD8XNdVG3e4HrpOlPr4NnmdabWFDxRQpm/WSN+wqKJEp+JxAw2vBd64jP8frCsu
	R9csnSu/VIzzL8FrM7oiyklLRqp18nV/hw7ZHlitWEJpiOxj/GCIeEa4idzczUTzk5pRLdmzxi8P1
	tTbTP+/97QwcN8T48KzAZbFciRzKyc+7UHC+CgfUswbOPwCrXjbi8KzzULrj9oULyG5nTXmjBNJTX
	6QL5os+aBk4E1QUs/Pwc7nX3cLoCl2Easr22Tmyqc3P0YaJOyhE6MJXNcQ5tPdRZJrTz1WF++p1OC
	sM5/ByFYQ/w723nqYQwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP6xb-0003fa-Jb; Thu, 16 Apr 2020 16:01:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP6xQ-0003eo-Pt
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 16:01:42 +0000
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com
 [209.85.166.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E345E22245
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 16:01:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587052900;
 bh=GRMBxBlJT/dO0QD5MNbcBQeYW30XVAvGkRBTy11zOTs=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=GZd0CfEtKhcpog/9YFs0857y2IvmNg9pH6CpJ4WCsP+CwJWjshiP1U4Cpik9G2wS2
 H5VylomlS220nw+g0zPCE1c8NGPOM4ifmwDDAca59mwBgbA3WzFOrpRYBq5QN6vzjr
 RAaRgjEMkO4qVypUjxztxFw7nLye9vQUexGN/70Q=
Received: by mail-io1-f48.google.com with SMTP id b12so21524847ion.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 09:01:39 -0700 (PDT)
X-Gm-Message-State: AGi0Pub/Jn+m6NotW3za2CdqiWN7r6D6GXRFE0JPJsD4mCHFNGGykIbI
 MPQ5/TCHKD42bft3bxR6wPU6zoR99QPM7PLAZYg=
X-Google-Smtp-Source: APiQypI5m+VVAEjBcHIER11Qc+zAjLHrN9hHgnqG6Tf5SDyVH6demyr0ouoviqm1aacN4anUNnkTfBIHcMcqYhD8J2o=
X-Received: by 2002:a02:3341:: with SMTP id k1mr22768776jak.74.1587052899328; 
 Thu, 16 Apr 2020 09:01:39 -0700 (PDT)
MIME-Version: 1.0
References: <20200415221520.2692512-1-nivedita@alum.mit.edu>
 <20200416151227.3360778-1-nivedita@alum.mit.edu>
In-Reply-To: <20200416151227.3360778-1-nivedita@alum.mit.edu>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 16 Apr 2020 18:01:27 +0200
X-Gmail-Original-Message-ID: <CAMj1kXFD7JYRLrn0D-pGG2thGdjsvQ1QDdRpXKdG9DqfW7vc4g@mail.gmail.com>
Message-ID: <CAMj1kXFD7JYRLrn0D-pGG2thGdjsvQ1QDdRpXKdG9DqfW7vc4g@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] efi: Remove __efistub_global annotation
To: Arvind Sankar <nivedita@alum.mit.edu>, Atish Patra <atish.patra@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_090140_855430_D1BFD2D0 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-efi <linux-efi@vger.kernel.org>, X86 ML <x86@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 16 Apr 2020 at 17:12, Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> This patch series removes the need for annotating global data in the EFI
> stub with __efistub_global for ARM32 and X86.
>
> This is done by renaming the .data and .bss sections in the object files
> linked into the EFI stub to .data.efistub and .bss.efistub respectively,
> and including those sections into the compressed kernel's .data section
> using its linker script.
>
> Changes from v1:
> - drop patch 2 and squash patches 3 and 5 for x86
> - fix R_X86 -> R_386
> - only check native relocation size (32-bit for R386 and 64-bit for
>   RX86_64)
>

Thanks Arvind. I have queued these up now.

Atish, I have queued up the first 2 patches of your RISC-V EFI stbu
series as well. Please base your next version on

https://git.kernel.org/pub/scm/linux/kernel/git/efi/efi.git/log/?h=next

Thanks,
Ard.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
