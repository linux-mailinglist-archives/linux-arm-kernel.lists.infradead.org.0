Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B29A418E9F3
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Mar 2020 17:00:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=33HZuUEZtaBP/mao/DIhrOwfzrR5oJlS5+apQ3vZKsc=; b=tda8iQvBsIXCIZ
	vZnhcT+Wf/AIBQ+Sr/Psd6RgsalVFefkj1Huy5cyYUjLR3JCioG117a+x/2hs35jhe3kb8hh+FA9d
	zuX0Mw1geHI/fmnAKxOp4U2wDoHwRuIN3XuzSITP1+nTy6MoNth6i+bQEDVc0or4m8W+bdfyE7AqZ
	NTBAyRYsDYScWmRzZGTQgmH7Q2QdEBG7BfXaPu8rYWTC4TDIbYOCmUqBYt4sB41xxCmzC2kVMkZ74
	e8pTL6M5geMuHgUwTRLz5EG9zJNv1YgvnfH7X0AmZjfyA1P2qA2VO1azA/Si5rPvtevebZGsiRYOi
	//9CVXaV4RAZN5dAk+9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jG31f-00077M-0V; Sun, 22 Mar 2020 16:00:35 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jG31U-00076h-QT
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Mar 2020 16:00:27 +0000
Received: by mail-pf1-x444.google.com with SMTP id h72so3982886pfe.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 22 Mar 2020 09:00:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=MZnunFMXbRiY6HhjSua+SYJfQ+tuSHBnq9fjrfedNSU=;
 b=UiseloQi7Q50zpFXi5Sj0YO9rKXAWYBKycPFxzwvcjG+fSbAEz8JpjkczACNYpw6y8
 i43J4zt0Bu+J+WnbtpFAh1BdbvLy2cqLus59mgkM8/XjySQ2RuPeFya5b/pyiEZ74Bw2
 kzB/pjprqBnITJPTNa9esWoz6cPqUebmBsckA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=MZnunFMXbRiY6HhjSua+SYJfQ+tuSHBnq9fjrfedNSU=;
 b=KpJKVDA/uJaA7E/iLZqlIjqo2mAM2Vb/o2zrUMyLN9Q0sTpwhD50BtINiEBNB8rDZQ
 agRwkSSCxeeqn9LY6a+G/inXLiYtUPW3AgeixNXEMz+o2MQhWCVoPyGoBPj5S5nqvSv1
 0NnIsj5bC3qqgXJoVVxpIBaOI5M2/I8NtwfhyJpNy9wxmy1/HT7coem3WRewL8ys0mgT
 qOcghRKDrOQKhggXI8E+lM3G6h/6xc9kGr9LbSa1L5hyPYTVrM29mD4Q2GFnLufMtXEg
 3nGGfcSY/LZCUteTI/n7qDJS990N6ZaBtwHWYeeZyb3NfU3tVyykAfTvockqKLOl4I25
 MUnw==
X-Gm-Message-State: ANhLgQ0SMcaTMLGQiwx/Jflb0xfx/bAUQTbJdYrQ0buOv3h5/e29MyCb
 0ME3vTnP+4kZX8szW00KMu88uw==
X-Google-Smtp-Source: ADFU+vvsIHJRgFm4AMsl8mZy4RcjRPdpt/Bxks2m7kQfkj84k1duCai32eKXFRMuQMfF7FOK2pobZA==
X-Received: by 2002:a63:7159:: with SMTP id b25mr8811601pgn.72.1584892824203; 
 Sun, 22 Mar 2020 09:00:24 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id 15sm10831504pfu.186.2020.03.22.09.00.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Mar 2020 09:00:23 -0700 (PDT)
Date: Sun, 22 Mar 2020 09:00:22 -0700
From: Kees Cook <keescook@chromium.org>
To: Nicholas Piggin <npiggin@gmail.com>
Subject: Re: [PATCH 1/9] scripts/link-vmlinux.sh: Delay orphan handling
 warnings until final link
Message-ID: <202003220859.E54327D98C@keescook>
References: <20200228002244.15240-1-keescook@chromium.org>
 <20200228002244.15240-2-keescook@chromium.org>
 <1584672297.mudnpz3ir9.astroid@bobo.none>
 <202003201121.8CBD96451B@keescook>
 <1584868418.o62lxee8k1.astroid@bobo.none>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1584868418.o62lxee8k1.astroid@bobo.none>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_090025_752562_F7B034E1 
X-CRM114-Status: GOOD (  20.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Sun, Mar 22, 2020 at 07:16:29PM +1000, Nicholas Piggin wrote:
> Kees Cook's on March 21, 2020 4:24 am:
> > On Fri, Mar 20, 2020 at 12:47:54PM +1000, Nicholas Piggin wrote:
> >> Kees Cook's on February 28, 2020 10:22 am:
> >> > Right now, powerpc adds "--orphan-handling=warn" to LD_FLAGS_vmlinux
> >> > to detect when there are unexpected sections getting added to the kernel
> >> > image. There is no need to report these warnings more than once, so it
> >> > can be removed until the final link stage.
> >> > 
> >> > This helps pave the way for other architectures to enable this, with the
> >> > end goal of enabling this warning by default for vmlinux for all
> >> > architectures.
> >> > 
> >> > Signed-off-by: Kees Cook <keescook@chromium.org>
> >> > ---
> >> >  scripts/link-vmlinux.sh | 6 ++++++
> >> >  1 file changed, 6 insertions(+)
> >> > 
> >> > diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
> >> > index 1919c311c149..416968fea685 100755
> >> > --- a/scripts/link-vmlinux.sh
> >> > +++ b/scripts/link-vmlinux.sh
> >> > @@ -255,6 +255,11 @@ info GEN modules.builtin
> >> >  tr '\0' '\n' < modules.builtin.modinfo | sed -n 's/^[[:alnum:]:_]*\.file=//p' |
> >> >  	tr ' ' '\n' | uniq | sed -e 's:^:kernel/:' -e 's/$/.ko/' > modules.builtin
> >> >  
> >> > +
> >> > +# Do not warn about orphan sections until the final link stage.
> >> > +saved_LDFLAGS_vmlinux="${LDFLAGS_vmlinux}"
> >> > +LDFLAGS_vmlinux="$(echo "${LDFLAGS_vmlinux}" | sed -E 's/ --orphan-handling=warn( |$)/ /g')"
> >> > +
> >> >  btf_vmlinux_bin_o=""
> >> >  if [ -n "${CONFIG_DEBUG_INFO_BTF}" ]; then
> >> >  	if gen_btf .tmp_vmlinux.btf .btf.vmlinux.bin.o ; then
> >> > @@ -306,6 +311,7 @@ if [ -n "${CONFIG_KALLSYMS}" ]; then
> >> >  	fi
> >> >  fi
> >> >  
> >> > +LDFLAGS_vmlinux="${saved_LDFLAGS_vmlinux}"
> >> >  vmlinux_link vmlinux "${kallsymso}" ${btf_vmlinux_bin_o}
> >> >  
> >> >  if [ -n "${CONFIG_BUILDTIME_TABLE_SORT}" ]; then
> >> 
> >> That's ugly. Why not just enable it for all archs?
> > 
> > It is ugly; I agree.
> > 
> > I can try to do this for all architectures, but I worry there are a
> > bunch I can't test. But I guess it would stand out. ;)
> 
> It's only warn, so it doesn't break their builds (unless there's a 
> linker error on warn option I don't know about?). We had a powerpc bug 
> that would have been caught with it as well, so it's not a bad idea to
> get everyone using it.

Well, it's bad form to add warnings to a build. I am expected to fix any
warnings before I enable a warning flag.

> I would just do it. Doesn't take much to fix.

I will do my best on the archs I can't test. :)

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
