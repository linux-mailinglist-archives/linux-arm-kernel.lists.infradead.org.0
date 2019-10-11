Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 291DFD391D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 08:07:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=phqt9QFnvbAl8Wygd+qxBh7QOEdxqryd1al1hAKM2Iw=; b=icwmQRvwh+4qTN
	ghbMwPpaZ6CDS72SnjmNWXVVoQCi/wYm1zb9m3UbtwOSI5CzASLA0pdCfHjMsjMXkWLLz4NzqVmQt
	jFSMRyOIxOEePMWrp6Xz0tvcEsEl2dxvngnGjj/9p4rT5Bthh4/cM2wF3taU73fJnKV80x9Vw9QoQ
	rlNX7J9B7ha/zOzJVWv87+DryQziczl887ZY0HIGPNU05xYYtSW64hojhYiId24mVNk5pGfipz9YA
	vk8ZdINwzNLf3L1PzzaZpA98wG12WItdoVyq0ZlrdjvbCRCQEHgP4HyXplSt5ZXRbhwCfDVHsN91Z
	RIpifkv2xC0sau5kLd2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIo57-0002qU-Br; Fri, 11 Oct 2019 06:07:17 +0000
Received: from bilbo.ozlabs.org ([203.11.71.1] helo=ozlabs.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIo4y-0002pp-Uv
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 06:07:10 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 46qHXn5rSDz9sNx;
 Fri, 11 Oct 2019 17:07:05 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ellerman.id.au;
 s=201909; t=1570774027;
 bh=AJrLeG6G9D8YUo7VDIU/jBSRhH8l/uKAxqlBUz1bi84=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=dJGgqoI+58ENDSNA0Me5eZnopdP/yD4mODpp5k3HE+c/wOPskcBr1ocDmTL7v4ekU
 qjpHBvYLd4OnsEYrUyo3+CrUrK6UrJQlf/73ilPLERyQb2ZKVsa3Vbj8yDLn8t5QwR
 KPMr4dG//WxDYq8YUXXc/we22B51riMsIi4n1yiTtnV2tv23x5ROvBQXoYwEWQcb9v
 athHfQX1DHgA/DvDMnQCT7h/mUmWgqly/W1MF+6MYlmVdd8DoSuzFTqO2XC+DgfWz8
 z+MmLdL0VASvJOdHd+7UjOrkIAhgbUBfEZAwteAWvEXsHOdUsxtJgtEUJ/+F3yOuf0
 PLDabEaYhHJNw==
From: Michael Ellerman <mpe@ellerman.id.au>
To: Kees Cook <keescook@chromium.org>, Borislav Petkov <bp@alien8.de>
Subject: Re: [PATCH v2 02/29] powerpc: Remove PT_NOTE workaround
In-Reply-To: <20191011000609.29728-3-keescook@chromium.org>
References: <20191011000609.29728-1-keescook@chromium.org>
 <20191011000609.29728-3-keescook@chromium.org>
Date: Fri, 11 Oct 2019 17:07:04 +1100
Message-ID: <878sprx1br.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_230709_182646_1294408E 
X-CRM114-Status: GOOD (  15.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [203.11.71.1 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-ia64@vger.kernel.org, Dave Hansen <dave.hansen@linux.intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Segher Boessenkool <segher@kernel.crashing.org>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, x86@kernel.org,
 Joel Stanley <joel@jms.id.au>, linux-xtensa@linux-xtensa.org,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Andy Lutomirski <luto@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-c6x-dev@linux-c6x.org, Michal Simek <monstr@monstr.eu>,
 linux-parisc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-alpha@vger.kernel.org, Rick Edgecombe <rick.p.edgecombe@intel.com>,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Kees Cook <keescook@chromium.org> writes:
> In preparation for moving NOTES into RO_DATA, remove the PT_NOTE
> workaround since the kernel requires at least gcc 4.6 now.
>
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  arch/powerpc/kernel/vmlinux.lds.S | 24 ++----------------------
>  1 file changed, 2 insertions(+), 22 deletions(-)

Acked-by: Michael Ellerman <mpe@ellerman.id.au>

For the archives, Joel tried a similar patch a while back which caused
some problems, see:

  https://lore.kernel.org/linuxppc-dev/20190321003253.22100-1-joel@jms.id.au/

and a v2:

  https://lore.kernel.org/linuxppc-dev/20190329064453.12761-1-joel@jms.id.au/

This is similar to his v2. The only outstanding comment on his v2 was
from Segher:
  (And I do not know if there are any tools that expect the notes in a phdr,
  or even specifically the second phdr).

But this patch solves that by not changing the note.

cheers

> diff --git a/arch/powerpc/kernel/vmlinux.lds.S b/arch/powerpc/kernel/vmlinux.lds.S
> index 81e672654789..a3c8492b2b19 100644
> --- a/arch/powerpc/kernel/vmlinux.lds.S
> +++ b/arch/powerpc/kernel/vmlinux.lds.S
> @@ -20,20 +20,6 @@ ENTRY(_stext)
>  PHDRS {
>  	kernel PT_LOAD FLAGS(7); /* RWX */
>  	note PT_NOTE FLAGS(0);
> -	dummy PT_NOTE FLAGS(0);
> -
> -	/* binutils < 2.18 has a bug that makes it misbehave when taking an
> -	   ELF file with all segments at load address 0 as input.  This
> -	   happens when running "strip" on vmlinux, because of the AT() magic
> -	   in this linker script.  People using GCC >= 4.2 won't run into
> -	   this problem, because the "build-id" support will put some data
> -	   into the "notes" segment (at a non-zero load address).
> -
> -	   To work around this, we force some data into both the "dummy"
> -	   segment and the kernel segment, so the dummy segment will get a
> -	   non-zero load address.  It's not enough to always create the
> -	   "notes" segment, since if nothing gets assigned to it, its load
> -	   address will be zero.  */
>  }
>  
>  #ifdef CONFIG_PPC64
> @@ -178,14 +164,8 @@ SECTIONS
>  	EXCEPTION_TABLE(0)
>  
>  	NOTES :kernel :note
> -
> -	/* The dummy segment contents for the bug workaround mentioned above
> -	   near PHDRS.  */
> -	.dummy : AT(ADDR(.dummy) - LOAD_OFFSET) {
> -		LONG(0)
> -		LONG(0)
> -		LONG(0)
> -	} :kernel :dummy
> +	/* Restore program header away from PT_NOTE. */
> +	.dummy : { *(.dummy) } :kernel
>  
>  /*
>   * Init sections discarded at runtime
> -- 
> 2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
