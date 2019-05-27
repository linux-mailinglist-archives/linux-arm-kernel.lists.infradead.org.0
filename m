Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB2A2B68F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 15:39:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=thhd5q6CJIauctpLk1mw5QOMqhLXvkWUsE/WeeIe9Ws=; b=ZEEk8SQQOWH0Jb
	/kHOjbs5jEdXraXBDQDnH8z2e+69WNNVVPM+u5RGhhfjnxvwzXNG0BhWbImsoLZ6GS70KncfqYpdw
	aVg3BOTYyd3sz/iRwQTqSodWcAnm6neNkHyAWe+FnyJf8NrssS4uJtOgkVGHBzy2HQ+6oA9ANJF8n
	IBMHUKW0Ud98DH1JgQNn+ZoNehK3qPPJFqSUm00ZHrqn1M2b23zlAg9kJoSdl0Jlj8O83Vt9FFe5y
	iuTOCZujynUrdVI9xw7tCyeb3ZYlXgbjqztIE/Z9WiPHt8iArXDM3AljkB03mUu/v7mlCp8JIEFZM
	bIpFtQPPNzREyxhHdj6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVFqF-0002Ck-1t; Mon, 27 May 2019 13:39:07 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVFq5-0002BS-UB
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 13:38:59 +0000
Received: by mail-ot1-x341.google.com with SMTP id l17so14855773otq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 06:38:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KMFxRGlKUpvBvlbQG58xrVAgA23tAIXMetii0uOnwLo=;
 b=bKSDOlnNh1cedFkO7cgRQsvU+SSGTdbdaXYpVewl+/Qr5s/W5HZ2p5wW6xe3KU6Dzp
 za2OilPy0X4hy44OStoNDLirumw6BRgEWfvN7eTX6EcFekxvNjeyHo3toAls/KbqezUG
 fqX/moYkcTQhCJ3LZ3TgpxBoJY/MqcGKfOD9LpcvMbJZQ2pKcNbw8qSgEgBRVJ2l8RpI
 dPp+7S9+RrItjw3Ncld7Bru6Z5gs6prjOlX4rudOG3cEZx8XIfFfgzvPgpryIf77yuks
 PYg/QVt/TmD5+sTivN1hcl+ik2t7vropjLpWNF4qUwlRkSo+C4EhMqSxgGOm07en+dpQ
 qCmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KMFxRGlKUpvBvlbQG58xrVAgA23tAIXMetii0uOnwLo=;
 b=s9jArVZy2xQBdOIYSBgV0j4RIFrS2Zzh3XdcDsUPAxX9FkoyjgUrofp5CA+4QU401g
 brlOjLlz0RxJYnaVOBFNhqDDxV0hPEFF8JmMGLpw5oceqTXMK23lkOLcZ4pI8cSbArDo
 ZY3qVTrj43lgOmAHIsgCPWs5m7YGOaSedhdESznF2lz6G/rCqtaax7Kpq3eadP/pTyCh
 5gwAa8Z8wY0fQk1Bii5In8if2VfqIoMwUKY6v20iEMpR6kNAunZ2nuDVKai3/gxVXRoO
 JTAaar58JXpPei2Nh11UfVVCpSf5S/78iazRcRdSRzBUCsicoty7dWRufQJIRVDd472V
 SnYg==
X-Gm-Message-State: APjAAAVztx/6o3YEfAmt67HKmoHCtp3YaW6c/BHOsU1NJMFwfSGwR6P8
 Rduqf/5kIBJtF3OvADqP7Y7nNKFAaZl/dSUaP/ipFw==
X-Google-Smtp-Source: APXvYqxoth4mkHbnO0TqcFaUQ9vqz3CUKV8OQ74qrszPxEyAAEGmVBkSK/g9hXXDRNCb6YoL30BzLj001zsiH9XVnNI=
X-Received: by 2002:a9d:148:: with SMTP id 66mr21992873otu.32.1558964332814;
 Mon, 27 May 2019 06:38:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190524201817.16509-1-jannh@google.com>
 <20190525144304.e2b9475a18a1f78a964c5640@linux-foundation.org>
In-Reply-To: <20190525144304.e2b9475a18a1f78a964c5640@linux-foundation.org>
From: Jann Horn <jannh@google.com>
Date: Mon, 27 May 2019 15:38:26 +0200
Message-ID: <CAG48ez36xJ9UA8gWef3+1rHQwob5nb8WP3RqnbT8GEOV9Z38jA@mail.gmail.com>
Subject: Re: [PATCH] binfmt_flat: make load_flat_shared_library() work
To: Andrew Morton <akpm@linux-foundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_063858_361339_89B788A5 
X-CRM114-Status: GOOD (  21.65  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 T_DKIMWL_WL_MED        DKIMwl.org - Medium sender
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
Cc: Nicolas Pitre <nicolas.pitre@linaro.org>, linux-m68k@vger.kernel.org,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 kernel list <linux-kernel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 25, 2019 at 11:43 PM Andrew Morton
<akpm@linux-foundation.org> wrote:
> On Fri, 24 May 2019 22:18:17 +0200 Jann Horn <jannh@google.com> wrote:
> > load_flat_shared_library() is broken: It only calls load_flat_file() if
> > prepare_binprm() returns zero, but prepare_binprm() returns the number of
> > bytes read - so this only happens if the file is empty.
>
> ouch.
>
> > Instead, call into load_flat_file() if the number of bytes read is
> > non-negative. (Even if the number of bytes is zero - in that case,
> > load_flat_file() will see nullbytes and return a nice -ENOEXEC.)
> >
> > In addition, remove the code related to bprm creds and stop using
> > prepare_binprm() - this code is loading a library, not a main executable,
> > and it only actually uses the members "buf", "file" and "filename" of the
> > linux_binprm struct. Instead, call kernel_read() directly.
> >
> > Cc: stable@vger.kernel.org
> > Fixes: 287980e49ffc ("remove lots of IS_ERR_VALUE abuses")
> > Signed-off-by: Jann Horn <jannh@google.com>
> > ---
> > I only found the bug by looking at the code, I have not verified its
> > existence at runtime.
> > Also, this patch is compile-tested only.
> > It would be nice if someone who works with nommu Linux could have a
> > look at this patch.
>
> 287980e49ffc was three years ago!  Has it really been broken for all
> that time?  If so, it seems a good source of freed disk space...

Maybe... but I didn't want to rip it out without having one of the
maintainers confirm that this really isn't likely to be used anymore.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
