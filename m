Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 218702A721
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 23:43:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IelHbldTYEgbg7t16HG7bqQ8SncQ8CzE7WpHL98kxH0=; b=YnDNILikbEwoWf
	dPLpYEi7BWYJaHSsO4JYCHnn84RteggV4esg8+3v4/VcdrBscThRyp85pbnrhQz4PUHXD2ei6Rt8L
	txyoVWLEQeSg1Zu4j/avVPh7jlhf9ZOoaml9dUUY4JjGM9u/xhf2zR0u08S7qTpMmXwrJSBS6XJUr
	PodcQM4wHjQTAC0tfBhDuN21bRhoHEAetD9LR7DzfMQLTRyt6Q+0I5S1jPYY5x3JXOn7hLLjQ0gqT
	9Vw5Z+fi2GYDPEJbsSlbq+AhUtAvCyrNZY+TBRwGa4vT1IzGvHwFVh7LTRAJ/g9I78aJFBa3pv+WE
	dblvOlGpmO+d+KUGEf/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUeRf-0008BE-Nx; Sat, 25 May 2019 21:43:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUeRY-0008Am-TA
 for linux-arm-kernel@lists.infradead.org; Sat, 25 May 2019 21:43:10 +0000
Received: from localhost.localdomain (c-73-223-200-170.hsd1.ca.comcast.net
 [73.223.200.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C17D920717;
 Sat, 25 May 2019 21:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558820586;
 bh=RSkWc9M4HXsc7P5xgZgm2GYbuJuLKG99DNM5QI2xszs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=qcH5klgZXiIVY3yzZ3y1eFDh75WpT2Eo69UkgFOvGL+a9UoXR4VQGx/af580/7q6s
 82dNlsR9lOhsJucrwvrRl7Ily/sxnI/ahZxXajfHcLo2nxsEj+6tuTMw66DZmfXIM3
 BVS4WSXi3EAYM3JAmPvesPTE7wof+WW4rJKojdm4=
Date: Sat, 25 May 2019 14:43:04 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Jann Horn <jannh@google.com>
Subject: Re: [PATCH] binfmt_flat: make load_flat_shared_library() work
Message-Id: <20190525144304.e2b9475a18a1f78a964c5640@linux-foundation.org>
In-Reply-To: <20190524201817.16509-1-jannh@google.com>
References: <20190524201817.16509-1-jannh@google.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_144308_956651_8D2955B9 
X-CRM114-Status: GOOD (  17.45  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
 linux-kernel@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>, linux-fsdevel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 24 May 2019 22:18:17 +0200 Jann Horn <jannh@google.com> wrote:

> load_flat_shared_library() is broken: It only calls load_flat_file() if
> prepare_binprm() returns zero, but prepare_binprm() returns the number of
> bytes read - so this only happens if the file is empty.

ouch.

> Instead, call into load_flat_file() if the number of bytes read is
> non-negative. (Even if the number of bytes is zero - in that case,
> load_flat_file() will see nullbytes and return a nice -ENOEXEC.)
> 
> In addition, remove the code related to bprm creds and stop using
> prepare_binprm() - this code is loading a library, not a main executable,
> and it only actually uses the members "buf", "file" and "filename" of the
> linux_binprm struct. Instead, call kernel_read() directly.
> 
> Cc: stable@vger.kernel.org
> Fixes: 287980e49ffc ("remove lots of IS_ERR_VALUE abuses")
> Signed-off-by: Jann Horn <jannh@google.com>
> ---
> I only found the bug by looking at the code, I have not verified its
> existence at runtime.
> Also, this patch is compile-tested only.
> It would be nice if someone who works with nommu Linux could have a
> look at this patch.

287980e49ffc was three years ago!  Has it really been broken for all
that time?  If so, it seems a good source of freed disk space...


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
