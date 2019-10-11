Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C635FD391E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 08:07:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ExjGFdXRPvtWUGyedEWGIlDzuh8UH5+7MImXpTH3OYM=; b=KLcn3W/Souzkjn
	a4eABt2HG6cQlMsiqzQ4C7Ph2RlfxGQZG364M4JkKnUxV4qJz4EywH673VO6ziM3yxsfCDI6eFITV
	MYn7DidzudSspqjWu1wRBIzuVQN5djcUwea7AmrISSKIGS3o2qEz4g7uL44r1dAKL6XAB/NoYtBYM
	I7zC8f3owJar1CLUZ10cdtNqQXp7bXe9JZVuXQ5yxDxwYjSOP0R8B8goAMSusKpqZkHNkx0aVhSWG
	/2p7ygbznyKVr1fFVHgHIpoaItWl8lRFZBkjfPrBbvrG0TpXyVOewB2NADpukyncNqN3YxX/uLwC8
	HfnC+woGoR+7SFGVjRgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIo5R-00035F-4n; Fri, 11 Oct 2019 06:07:37 +0000
Received: from ozlabs.org ([2401:3900:2:1::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIo5H-00032f-Qb
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 06:07:29 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 46qHY63Gpnz9sP6;
 Fri, 11 Oct 2019 17:07:22 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ellerman.id.au;
 s=201909; t=1570774042;
 bh=CGrv8OfatmaqzsbsLV1xNnERqaf4o4GrCu4bs7978qQ=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=HvKltrRDVPfIZYBNIbi2OENm8rIjOadC6OLZVdTVAIOYyWtY4TdaUin0uGs+pZl5r
 bRbKF615iL7xUyUHVWntmfr5ql+6BsRm8oNkAYoF9eKnQOntCXEWoMARco+DSWMMnP
 T3olJDWP1OcNRTHcAb2Rcz+X9liJrKJYx3yMHKglhFV5gpwDSMOzBo+eRrlE0PU67R
 f8iFuspmJmAE0aTpt49euDl+i1TNcuIBfTeEUlVgnv8OXzwIF2rHrdvLMnUcffApvc
 CdQ+ymgRSY/Oe3lPsYB7axn1ixf9Mtb6qe7vp9wm3VqMIOmr/MHXf5knAHnS1fAwv/
 QpCcwU5b9SxGQ==
From: Michael Ellerman <mpe@ellerman.id.au>
To: Kees Cook <keescook@chromium.org>, Borislav Petkov <bp@alien8.de>
Subject: Re: [PATCH v2 03/29] powerpc: Rename PT_LOAD identifier "kernel" to
 "text"
In-Reply-To: <20191011000609.29728-4-keescook@chromium.org>
References: <20191011000609.29728-1-keescook@chromium.org>
 <20191011000609.29728-4-keescook@chromium.org>
Date: Fri, 11 Oct 2019 17:07:21 +1100
Message-ID: <875zkvx1ba.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_230728_099562_56DC4CFD 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2401:3900:2:1:0:0:0:2 listed in] [list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Michal Simek <monstr@monstr.eu>, x86@kernel.org, linux-ia64@vger.kernel.org,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-xtensa@linux-xtensa.org, linuxppc-dev@lists.ozlabs.org,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-kernel@vger.kernel.org,
 Yoshinori Sato <ysato@users.sourceforge.jp>, linux-parisc@vger.kernel.org,
 Andy Lutomirski <luto@kernel.org>, linux-alpha@vger.kernel.org,
 Rick Edgecombe <rick.p.edgecombe@intel.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-c6x-dev@linux-c6x.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Kees Cook <keescook@chromium.org> writes:
> In preparation for moving NOTES into RO_DATA, rename the linker script
> internal identifier for the PT_LOAD Program Header from "kernel" to
> "text" to match other architectures.
>
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  arch/powerpc/kernel/vmlinux.lds.S | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)

Acked-by: Michael Ellerman <mpe@ellerman.id.au>

cheers

> diff --git a/arch/powerpc/kernel/vmlinux.lds.S b/arch/powerpc/kernel/vmlinux.lds.S
> index a3c8492b2b19..e184a63aa5b0 100644
> --- a/arch/powerpc/kernel/vmlinux.lds.S
> +++ b/arch/powerpc/kernel/vmlinux.lds.S
> @@ -18,7 +18,7 @@
>  ENTRY(_stext)
>  
>  PHDRS {
> -	kernel PT_LOAD FLAGS(7); /* RWX */
> +	text PT_LOAD FLAGS(7); /* RWX */
>  	note PT_NOTE FLAGS(0);
>  }
>  
> @@ -63,7 +63,7 @@ SECTIONS
>  #else /* !CONFIG_PPC64 */
>  		HEAD_TEXT
>  #endif
> -	} :kernel
> +	} :text
>  
>  	__head_end = .;
>  
> @@ -112,7 +112,7 @@ SECTIONS
>  		__got2_end = .;
>  #endif /* CONFIG_PPC32 */
>  
> -	} :kernel
> +	} :text
>  
>  	. = ALIGN(ETEXT_ALIGN_SIZE);
>  	_etext = .;
> @@ -163,9 +163,9 @@ SECTIONS
>  #endif
>  	EXCEPTION_TABLE(0)
>  
> -	NOTES :kernel :note
> +	NOTES :text :note
>  	/* Restore program header away from PT_NOTE. */
> -	.dummy : { *(.dummy) } :kernel
> +	.dummy : { *(.dummy) } :text
>  
>  /*
>   * Init sections discarded at runtime
> @@ -180,7 +180,7 @@ SECTIONS
>  #ifdef CONFIG_PPC64
>  		*(.tramp.ftrace.init);
>  #endif
> -	} :kernel
> +	} :text
>  
>  	/* .exit.text is discarded at runtime, not link time,
>  	 * to deal with references from __bug_table
> -- 
> 2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
