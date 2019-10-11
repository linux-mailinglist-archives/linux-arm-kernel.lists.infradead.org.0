Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F77DD38FC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 08:01:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Awf2l1mflhdhl0y5COpLu/qHunAleS0fw312pachAAU=; b=GUcnCpunXFrkJR
	xY3ygjUuC/y8cdfw+/RtUoBDoLzeRgVKm3L31gAA2pAryLDWdHzG8mqTw2kE/azsac+REh8MWwl+K
	CdFFQNWMMbOJRn8R92bnxqDmL3ZRm1TA5o/zZg2lfMlO3STB8qnXugaSIjh+1nh65E+DCerZ4IXZQ
	C6WWJOcZyyalnRMadxA1XeGajJQV1T9X9QwUzSbkis++I3hN1Ko+0YVholHSdSQHQR5jVGWDu9fwS
	3hKE1isRTWiERAXuDfeUkvnOjluQClJUwq/uwlOaRIHrpHhlx3rqShDbhF3zQ978Zknh7P7jUKn/2
	eMFlKo46AvBWW+pyMhoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iInzN-0000vK-KK; Fri, 11 Oct 2019 06:01:21 +0000
Received: from ozlabs.org ([203.11.71.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iInzF-0000tx-OQ
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 06:01:15 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 46qHPp3F86z9sNx;
 Fri, 11 Oct 2019 17:01:02 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ellerman.id.au;
 s=201909; t=1570773665;
 bh=oTTi247DlGceNhM4MVDGIO6OtOx/XRmfaIEvdVAUqC8=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=YuZLY3Ew0BXM9XFrRRe1AZgVtROgn6ejFBEM7K0ehQpC93RuVYs/k+e5GJP4utQZH
 jHueJ25x/6MWfxYFcvH3KdeC/Q1Ai2aULyAdAKYUrzTAum25QdLH6mELw/QOyL8vMo
 z6tyN4sahqg/E1MMAQtxtjPEnjx21eDq54A/lX8w/OOhMRH7Z4lLdtVk3IKX7D71mq
 2L6BhqGlK7Z4Nz9zIrWRRmyTX5MMpiDhJ7vag0SEbYToUTWiT+g4hcAJsWdV4w6woK
 pv7UiCyfL7wNoDDE7p0rwC0w407xfguxq9940G0tWLyVoKfG/gESuz3YsJ3WgAUSvR
 FkXOKyLxhVzsw==
From: Michael Ellerman <mpe@ellerman.id.au>
To: Kees Cook <keescook@chromium.org>, Borislav Petkov <bp@alien8.de>
Subject: Re: [PATCH v2 01/29] powerpc: Rename "notes" PT_NOTE to "note"
In-Reply-To: <20191011000609.29728-2-keescook@chromium.org>
References: <20191011000609.29728-1-keescook@chromium.org>
 <20191011000609.29728-2-keescook@chromium.org>
Date: Fri, 11 Oct 2019 17:00:59 +1100
Message-ID: <87blunx1lw.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_230113_977076_37940230 
X-CRM114-Status: GOOD (  11.30  )
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
> The Program Header identifiers are internal to the linker scripts. In
> preparation for moving the NOTES segment declaration into RO_DATA,
> standardize the identifier for the PT_NOTE entry to "note" as used by
> all other architectures that emit PT_NOTE.
>
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  arch/powerpc/kernel/vmlinux.lds.S | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Acked-by: Michael Ellerman <mpe@ellerman.id.au>

cheers

> diff --git a/arch/powerpc/kernel/vmlinux.lds.S b/arch/powerpc/kernel/vmlinux.lds.S
> index 060a1acd7c6d..81e672654789 100644
> --- a/arch/powerpc/kernel/vmlinux.lds.S
> +++ b/arch/powerpc/kernel/vmlinux.lds.S
> @@ -19,7 +19,7 @@ ENTRY(_stext)
>  
>  PHDRS {
>  	kernel PT_LOAD FLAGS(7); /* RWX */
> -	notes PT_NOTE FLAGS(0);
> +	note PT_NOTE FLAGS(0);
>  	dummy PT_NOTE FLAGS(0);
>  
>  	/* binutils < 2.18 has a bug that makes it misbehave when taking an
> @@ -177,7 +177,7 @@ SECTIONS
>  #endif
>  	EXCEPTION_TABLE(0)
>  
> -	NOTES :kernel :notes
> +	NOTES :kernel :note
>  
>  	/* The dummy segment contents for the bug workaround mentioned above
>  	   near PHDRS.  */
> -- 
> 2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
