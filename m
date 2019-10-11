Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0844ED450D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 18:09:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9F51Juy8ghgzkM/xQYEKxihxx7BJH6w+Tu4W9fBtaFQ=; b=ol6cRjdT5DVqgj
	boSOuU2/Rgb6QOD0MWu0mFWfozJkLIorgcNWQjr76CUlDcGxysD3YF8A7qO2Sn6RLB/G0us5SFiRZ
	SU9yyOjwzGczonI+eVPwE03mptZtPgDMQeHu6/7vH5tmVk16Q2VKV5mZZIF9buLVdhaF6tvXq/Fx+
	XIPT9mpn+eW48/AROzEHMi2UqaXEZ5c7D1kPc/p7T0+JhDo9E9BXwTwu+svqNMzfF8jEQaFWuKMLF
	xOUZONvbWPQo5IP3h27UcWe6Ij+yOWR1j1VBlCQ5pApcZY3eSQwqvAjXqBRu8qtfVUJXwI+TfqR/F
	WOtNCxQY1biu14OSMLxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIxU0-00009p-7h; Fri, 11 Oct 2019 16:09:36 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIxTs-00007f-32
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 16:09:29 +0000
Received: by mail-pf1-x443.google.com with SMTP id q12so6353182pff.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 09:09:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=rz208JH/bAYgb34feMbXc7rOAmJSapYVvu3TBVmWgf0=;
 b=k3VEdnK1XLODdhPbFCe/vXjRUrVGk8LtbhfzFlecnP8Kmv9f4bYkCsfO3n/TqN0AdN
 qBPqcub0N0dKdLHi1OxIweb3/6eczWoee7LuePEuJPxxCrmCNRf0LI9uLqFq5rTIaXHw
 uP6X5tVwyIUzUKipWUOB9mLE9R+uA81t/qC+c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=rz208JH/bAYgb34feMbXc7rOAmJSapYVvu3TBVmWgf0=;
 b=fXg8vUQzuyPZSOk01QZuwr9hl0ICz7AKFdqhNdxqYBJpTz0/SjXcRkTodcXuSuQ5mK
 j9tuyYAYzSRymgzpq2S8rvEU83vux+VqlL3/3D2evIdR+kfaz8CAfjV0bEwKeaEwI6Ie
 J+W8P97xt/3ay1klQ6I4HKCYLGIDwnGR8OVBZ3SzqPi9ea+6dxPCKSU1wisXgk6Y1SuS
 kj/KcHYufGeLngCum3UznML3mFBJ26uqt/qsRBLAC850+t8m/r7x4bS13PWsZDRV2+R9
 tj0vmgB0lrXn8gBAcxUlQ4EmqJZ2sQFp8/HnUkMAqrtm9f/A81gVvplgsAcQkwFiyBt5
 Ll5Q==
X-Gm-Message-State: APjAAAU/LNhrFt/+fdwH03RFSGI+NquEu8iu+06MLKtkSFfOujeS+ciC
 rJuWTbxIxoMdkSZKxokh8QKwmQ==
X-Google-Smtp-Source: APXvYqzRI04wjSOtKB/baIR7njDLMah96e9dDVUlsW+Ic2nxptL0dLB9zZ6sMSyGO7t7MBKia+2VpQ==
X-Received: by 2002:a63:b5b:: with SMTP id a27mr18354873pgl.262.1570810165767; 
 Fri, 11 Oct 2019 09:09:25 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id d3sm8459551pgb.3.2019.10.11.09.09.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Oct 2019 09:09:24 -0700 (PDT)
Date: Fri, 11 Oct 2019 09:09:22 -0700
From: Kees Cook <keescook@chromium.org>
To: Michael Ellerman <mpe@ellerman.id.au>
Subject: Re: [PATCH v2 02/29] powerpc: Remove PT_NOTE workaround
Message-ID: <201910110908.040009F27@keescook>
References: <20191011000609.29728-1-keescook@chromium.org>
 <20191011000609.29728-3-keescook@chromium.org>
 <878sprx1br.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <878sprx1br.fsf@mpe.ellerman.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_090928_155013_1F33A90A 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
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
Cc: linux-ia64@vger.kernel.org, Dave Hansen <dave.hansen@linux.intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-c6x-dev@linux-c6x.org, Yoshinori Sato <ysato@users.sourceforge.jp>,
 x86@kernel.org, Joel Stanley <joel@jms.id.au>, linux-xtensa@linux-xtensa.org,
 Arnd Bergmann <arnd@arndb.de>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Michal Simek <monstr@monstr.eu>, linux-parisc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Segher Boessenkool <segher@kernel.crashing.org>,
 linux-alpha@vger.kernel.org, Rick Edgecombe <rick.p.edgecombe@intel.com>,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 11, 2019 at 05:07:04PM +1100, Michael Ellerman wrote:
> Kees Cook <keescook@chromium.org> writes:
> > In preparation for moving NOTES into RO_DATA, remove the PT_NOTE
> > workaround since the kernel requires at least gcc 4.6 now.
> >
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > ---
> >  arch/powerpc/kernel/vmlinux.lds.S | 24 ++----------------------
> >  1 file changed, 2 insertions(+), 22 deletions(-)
> 
> Acked-by: Michael Ellerman <mpe@ellerman.id.au>

Thanks!

> For the archives, Joel tried a similar patch a while back which caused
> some problems, see:
> 
>   https://lore.kernel.org/linuxppc-dev/20190321003253.22100-1-joel@jms.id.au/
> 
> and a v2:
> 
>   https://lore.kernel.org/linuxppc-dev/20190329064453.12761-1-joel@jms.id.au/
> 
> This is similar to his v2. The only outstanding comment on his v2 was
> from Segher:
>   (And I do not know if there are any tools that expect the notes in a phdr,
>   or even specifically the second phdr).
> 
> But this patch solves that by not changing the note.

Ah yes. Agreed: I'm retaining the note and dropping the workarounds.
FWIW, this builds happily for me in my tests.

-Kees

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
