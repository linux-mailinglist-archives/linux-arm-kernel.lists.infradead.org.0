Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAE5718D6CA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 19:24:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dUEZnlZAhhyOEopZPtdecgafj5xYBxk1HNOGgwVDT+Q=; b=ZDBmzCtRNQ8D1Y
	B611pJVeJgw2sxWO6T5BhctmCdoVVRS/R+d6VCk+3QfaO0vVE+oklOMfp84M9qgAncgCrWtWCU/Ta
	d6CaYz9/ORhkWtTlHDORhw5xAjqN84t+ywX7fa3DFGvjNS8TB4owqq+Wie1+mTz625we4aYnFQVGx
	LfNPBxapkKaVCMaoktUv/mhj9esHvJanuIIrTzdVbP+LkP5pm9fG6pPO68aIeOiVmzzHuTjfctOUQ
	ey5cE8PN9HtwTrTCNeCe13Pw99HyW7QPAIotjGXKuqaZ2qoj+nUCMsx4hafxa3LGNSH+M8mfznrNH
	gAckO4bRVUdeP8wOj3FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFMJt-00072o-GL; Fri, 20 Mar 2020 18:24:33 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFMJl-00072N-BA
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 18:24:26 +0000
Received: by mail-pg1-x541.google.com with SMTP id z72so3510521pgz.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Mar 2020 11:24:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=2xWVMcAkfq5ne45p4xyMZVZzHfwNqETngAro5lkreP4=;
 b=egxARSlFh+gl8BSoKEBkPxmioi72UPPDmz+ssHOs8UemiCka73hYdGEersNQgdrjqn
 c9iW1spOQ7Y1EaKd8/93ca30yRGiOpdG1LxIk06m6fckNrb3yNGJ1b0zsz3OwKkRoNSS
 x85gCSRaoiqfjdrokwJmmZlkj+6L0Y12RifNA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=2xWVMcAkfq5ne45p4xyMZVZzHfwNqETngAro5lkreP4=;
 b=UuYRtVs6DgL6c3G6tlH5kFwGAJ5eLTow7wceZi8ZmOppb3YGL31sl2bpBf6kCFflBL
 0o0Mc0/PEmfGHkhqcNsd8iZP4BzkV436xuYYGl8o1Gk8hgqBuRh6fyAU1bQ374RfQy7d
 8qf0+rdaz87ZmSlHJf81lLdOGCwfF8cOZ0wIp4EbEtDAPMuX+HNcT/8bjr/pQwielxJ8
 yy9jsqrEUavROSGyg2Q60C+UEZjoQsdop2aVQJ/kYcvKo1yS3Iaj138mdeVlnE6/hiQd
 BssBQoaEekl29o2qbScKUQKEfsrzF9vUrNydkRCs1DG43xNYrjeRKxC/CeEiF1u6XrPq
 c5EA==
X-Gm-Message-State: ANhLgQ0ikebHkEoLF8Vgyw04GCG/5shal03ZpbHfQbnAXZEjmd4u8AqD
 75geO2KZMK+oC0vO1nrVb0Jd0A==
X-Google-Smtp-Source: ADFU+vvJ86QsFIReD0LB05B1a0McdUNTvZoxWG49MXWb/we6ziLuZVXT1lHzITCce8/XQ3hfd6rn8g==
X-Received: by 2002:a63:b706:: with SMTP id t6mr9859014pgf.329.1584728664667; 
 Fri, 20 Mar 2020 11:24:24 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id w205sm6244774pfc.75.2020.03.20.11.24.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Mar 2020 11:24:23 -0700 (PDT)
Date: Fri, 20 Mar 2020 11:24:22 -0700
From: Kees Cook <keescook@chromium.org>
To: Nicholas Piggin <npiggin@gmail.com>
Subject: Re: [PATCH 1/9] scripts/link-vmlinux.sh: Delay orphan handling
 warnings until final link
Message-ID: <202003201121.8CBD96451B@keescook>
References: <20200228002244.15240-1-keescook@chromium.org>
 <20200228002244.15240-2-keescook@chromium.org>
 <1584672297.mudnpz3ir9.astroid@bobo.none>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1584672297.mudnpz3ir9.astroid@bobo.none>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_112425_389397_6DBD6305 
X-CRM114-Status: GOOD (  15.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arch@vger.kernel.org, "H.J. Lu" <hjl.tools@gmail.com>,
 Arnd Bergmann <arnd@arndb.de>, linux-kbuild@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 Masahiro Yamada <masahiroy@kernel.org>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Will Deacon <will@kernel.org>,
 James Morse <james.morse@arm.com>, Mark Rutland <mark.rutland@arm.com>,
 Borislav Petkov <bp@suse.de>, Peter Collingbourne <pcc@google.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 20, 2020 at 12:47:54PM +1000, Nicholas Piggin wrote:
> Kees Cook's on February 28, 2020 10:22 am:
> > Right now, powerpc adds "--orphan-handling=warn" to LD_FLAGS_vmlinux
> > to detect when there are unexpected sections getting added to the kernel
> > image. There is no need to report these warnings more than once, so it
> > can be removed until the final link stage.
> > 
> > This helps pave the way for other architectures to enable this, with the
> > end goal of enabling this warning by default for vmlinux for all
> > architectures.
> > 
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > ---
> >  scripts/link-vmlinux.sh | 6 ++++++
> >  1 file changed, 6 insertions(+)
> > 
> > diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
> > index 1919c311c149..416968fea685 100755
> > --- a/scripts/link-vmlinux.sh
> > +++ b/scripts/link-vmlinux.sh
> > @@ -255,6 +255,11 @@ info GEN modules.builtin
> >  tr '\0' '\n' < modules.builtin.modinfo | sed -n 's/^[[:alnum:]:_]*\.file=//p' |
> >  	tr ' ' '\n' | uniq | sed -e 's:^:kernel/:' -e 's/$/.ko/' > modules.builtin
> >  
> > +
> > +# Do not warn about orphan sections until the final link stage.
> > +saved_LDFLAGS_vmlinux="${LDFLAGS_vmlinux}"
> > +LDFLAGS_vmlinux="$(echo "${LDFLAGS_vmlinux}" | sed -E 's/ --orphan-handling=warn( |$)/ /g')"
> > +
> >  btf_vmlinux_bin_o=""
> >  if [ -n "${CONFIG_DEBUG_INFO_BTF}" ]; then
> >  	if gen_btf .tmp_vmlinux.btf .btf.vmlinux.bin.o ; then
> > @@ -306,6 +311,7 @@ if [ -n "${CONFIG_KALLSYMS}" ]; then
> >  	fi
> >  fi
> >  
> > +LDFLAGS_vmlinux="${saved_LDFLAGS_vmlinux}"
> >  vmlinux_link vmlinux "${kallsymso}" ${btf_vmlinux_bin_o}
> >  
> >  if [ -n "${CONFIG_BUILDTIME_TABLE_SORT}" ]; then
> 
> That's ugly. Why not just enable it for all archs?

It is ugly; I agree.

I can try to do this for all architectures, but I worry there are a
bunch I can't test. But I guess it would stand out. ;)

-Kees

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
