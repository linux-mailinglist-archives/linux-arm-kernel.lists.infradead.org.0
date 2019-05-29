Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E0C92DC37
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 13:52:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1TGngKo4WYHbnsFDNg8/ABZbM6sw0USwjR2lpVR3IYE=; b=DtHYHvz9fHwpHk
	K8wQ/eCN+ty2Xgx6TtVS11t0+rsURmJR2qMRYYk2/3yNcuJiqw8P1gaQWsIG5q4451mpI/AVbdayk
	tSI6IaH5s5Cot2N3OBTURCWAd9DBfoCxCvVL4N0BoO33V0KvDE2T20LffdfzvlWUWThQqGLjOf+At
	b5R8bMPhVuXdAjM8O+rWS8AqgmqLn0hmnM7BODiEmeWq/4pj52UfDoSzrYko2eaOfTtZT3wdkvRVN
	HMqpqO2A396DXhKFQElRya3igc9JZ9EqH7G04S3OVBvKVoMysNxiFC0IUdKw/3KLxY99pM8geq8Cl
	PqJc9244llBSl9K/y3rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVx8D-0008Mb-Qk; Wed, 29 May 2019 11:52:33 +0000
Received: from mail-qk1-f196.google.com ([209.85.222.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVx80-0008Do-Dx
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 11:52:22 +0000
Received: by mail-qk1-f196.google.com with SMTP id w187so1172497qkb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 04:52:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TdAznkRxrKE17L8clQuRvpoCe6A9H8ATfOCcLEenWWI=;
 b=GqG2XYBTnxnemG4ky3eZZxgC714wkZzVcHS/XaVrFJBIclVU2ryEr61HOwwpHNb7cb
 LmbeUjo59anh7WbWrrEtGX0eZxqXTK2j1r5Fg/fo9oJHIdtsZ68dpaKJSp1WlIx2DlcQ
 wNf5xsvcnuKoRw9acm+/7G/qPO99WJ1dQ79B1J98jyQ5Tr37ovJTaVko6/E1s24Qlbx+
 eaFwYfeGcyxyO9VQGfwp6Bm9I3XE68L44mI0GskP3qnXS3mAeltQDmJjhLS6F2p2x4IJ
 /wHw0H803tI9vS+r/I623lHAHPjWpK3KHxQjr9avarF8bfSunDJOoMwG+5WC0DSLsWYF
 pdNA==
X-Gm-Message-State: APjAAAXEyeziII6hvYCDwIXvabzwm9ZWcI6ao9242S5s2h35XfsM4B5o
 Keugok9C+MagNjXIg7nMrOVCNqasedVMyv19jmE=
X-Google-Smtp-Source: APXvYqzg32MH5decqHjgAwz1/0NlrkGcjLsvjWutrE0FtLUETA9tge85aPqT4FbVImIWliuZ7t/XSkbxBIATrB3QgH4=
X-Received: by 2002:a37:bb85:: with SMTP id
 l127mr27927380qkf.285.1559130738893; 
 Wed, 29 May 2019 04:52:18 -0700 (PDT)
MIME-Version: 1.0
References: <20190524201817.16509-1-jannh@google.com>
 <20190525144304.e2b9475a18a1f78a964c5640@linux-foundation.org>
 <CAG48ez36xJ9UA8gWef3+1rHQwob5nb8WP3RqnbT8GEOV9Z38jA@mail.gmail.com>
 <aa7f66ad-dab5-f0b6-ade9-7d3698d509a9@westnet.com.au>
In-Reply-To: <aa7f66ad-dab5-f0b6-ade9-7d3698d509a9@westnet.com.au>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 29 May 2019 13:52:02 +0200
Message-ID: <CAK8P3a2wA4R-V-W1+pPTaqVP7Dr=170G2a76AzASpx1xtRWj0Q@mail.gmail.com>
Subject: Re: [PATCH] binfmt_flat: make load_flat_shared_library() work
To: Greg Ungerer <gregungerer@westnet.com.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_045220_898678_5C49F526 
X-CRM114-Status: GOOD (  21.56  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Nicolas Pitre <nicolas.pitre@linaro.org>,
 Linux/m68k <linux-m68k@vger.kernel.org>, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, kernel list <linux-kernel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 12:56 PM Greg Ungerer
<gregungerer@westnet.com.au> wrote:
> On 27/5/19 11:38 pm, Jann Horn wrote:
> > On Sat, May 25, 2019 at 11:43 PM Andrew Morton
> > <akpm@linux-foundation.org> wrote:
> >> On Fri, 24 May 2019 22:18:17 +0200 Jann Horn <jannh@google.com> wrote:
> >>> load_flat_shared_library() is broken: It only calls load_flat_file() if
> >>> prepare_binprm() returns zero, but prepare_binprm() returns the number of
> >>> bytes read - so this only happens if the file is empty.
> >>
> >>> Instead, call into load_flat_file() if the number of bytes read is
> >>> non-negative. (Even if the number of bytes is zero - in that case,
> >>> load_flat_file() will see nullbytes and return a nice -ENOEXEC.)
> >>>
> >>> In addition, remove the code related to bprm creds and stop using
> >>> prepare_binprm() - this code is loading a library, not a main executable,
> >>> and it only actually uses the members "buf", "file" and "filename" of the
> >>> linux_binprm struct. Instead, call kernel_read() directly.
> >>>
> >>> Cc: stable@vger.kernel.org
> >>> Fixes: 287980e49ffc ("remove lots of IS_ERR_VALUE abuses")
> >>> Signed-off-by: Jann Horn <jannh@google.com>
> >>> ---
> >>> I only found the bug by looking at the code, I have not verified its
> >>> existence at runtime.
> >>> Also, this patch is compile-tested only.
> >>> It would be nice if someone who works with nommu Linux could have a
> >>> look at this patch.
> >>
> >> 287980e49ffc was three years ago!  Has it really been broken for all
> >> that time?  If so, it seems a good source of freed disk space...
> >
> > Maybe... but I didn't want to rip it out without having one of the
> > maintainers confirm that this really isn't likely to be used anymore.
>
> I have not used shared libraries on m68k non-mmu setups for
> a very long time. At least 10 years I would think.
>
> Regards
> Greg
>
>
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
