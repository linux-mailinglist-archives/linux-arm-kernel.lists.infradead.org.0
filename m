Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 915B8161D4A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 23:24:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GzpcZNewxqJk2jwD1ZSrDFXmrVDG/DlsTO6oFxWUgsE=; b=Y5rk1JLgyR7dM9
	EPGzAlTRSaoolWPgXtr52+RlVuw3DHiHeyDa76mNr84f3YBmMGZ8eRJabG4CgbCx9afLIFLSuV8lz
	LeYognz/td5PZGlQ06E3zBUoXMW8cOF8JlcfYY6tD9MlEo18xUvqeg3vHLwe0rv+PbjECUvA7/3pl
	pUboY8l9laZqdlbmtvmg1sCF/iRwqOlR2JLKpuX3Ffd6E1wvc+vSn9bP/DeNgciGoi7UivG/w7gIF
	U8USRKT/KSSHRsXPKdD5dU/f/JrD/1e47QO3n/fKM5vJoq85Z6nW4b58jWYDk3jf39XQZc0xgfsX/
	D0clIHhGqEalRpeTv58g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3ooZ-0004Mu-Dk; Mon, 17 Feb 2020 22:24:31 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3ooR-0004MQ-Gf
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 22:24:25 +0000
Received: by mail-oi1-f194.google.com with SMTP id p125so18164471oif.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 14:24:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PbYZrxbxhBBKk5C91qZpoXk9cEvY6aisFfocm2j3KvA=;
 b=Dxg0kqBEqlWJFdygRCuUOFCWsISSvf3n86PxUIpQRYFcsJD+cE3NwAEuZsqn0WvE5Y
 UgiC4zxTdgNy5f89yQ8xDzZdhYSE1V5cA/2TnAlG9OInPY7wtPQ1JeuatbXkUOlf4u/Q
 49rS34TW9YlY0V8iuJXLcDX4NP3TnOs55+QdB0nnACS+MVCYZ47uu0Q+sYUrHh+AFZ8a
 C9j6wQaaHMWvIFOzLi+yt0XmVomyv7oTBIAcDHvv5aBQokqNaNxcY099xSGmI58RSMMu
 hkY0lkCr5MVeYio8EIS2OhpBErczQkRvA6Qui6/U2nubfrECsQwF4hal0jPyYqL9taRf
 zzAg==
X-Gm-Message-State: APjAAAUVZmN1XgTpuM2k75npRKszo+ImFz+qtOdWraZmBf/2vTFUA8Ib
 xX6GdY8DbjXE6w5Dp1pfYadk16awLjSE4Fs/rJI=
X-Google-Smtp-Source: APXvYqz3Xxu6MK5IoxY+z+kFQJuuEELpdbhj84fkAG33NBqiXYnC9I/rrXr/6fP1+IugvUqR7fDBJ8pHyvEZfsIXAtc=
X-Received: by 2002:aca:c4d2:: with SMTP id u201mr802861oif.54.1581978262056; 
 Mon, 17 Feb 2020 14:24:22 -0800 (PST)
MIME-Version: 1.0
References: <20200217144050.3i4ymbytogod4ijn@kili.mountain>
In-Reply-To: <20200217144050.3i4ymbytogod4ijn@kili.mountain>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 17 Feb 2020 23:24:10 +0100
Message-ID: <CAMuHMdWaCqZ_zcHuBetAQu4kmoffNw5jvHM5ciTi29MAxL70bg@mail.gmail.com>
Subject: Re: [PATCH] dmaengine: coh901318: Fix a double lock bug in
 dma_tc_handle()
To: Dan Carpenter <dan.carpenter@oracle.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_142423_549502_DDC570FD 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Linus Walleij <linus.walleij@stericsson.com>,
 kernel-janitors@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 Jia-Ju Bai <baijiaju1990@gmail.com>, dmaengine <dmaengine@vger.kernel.org>,
 Dan Williams <dan.j.williams@intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dan,

On Mon, Feb 17, 2020 at 3:41 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
> The caller is already holding the lock so this will deadlock.
>
> Fixes: 0b58828c923e ("DMAENGINE: COH 901 318 remove irq counting")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
> This is the second double lock bug found using static analysis.  The
> previous one was commit 627469e4445b ("dmaengine: coh901318: Fix a
> double-lock bug").
>
> The fact that this has been broken for ten years suggests that no one
> has the hardware.

Or this only runs CONFIG_SMP=n kernels?
This seems to be used in arch/arm/boot/dts/ste-u300.dts only, and
CONFIG_ARCH_U300 is a ARCH_MULTI_V5 platform, which looks like
it doesn't support SMP?

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
