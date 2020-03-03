Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7FA6177055
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 08:48:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WN+DbHpCkV/o7rDcAOyb+SLB9+5AXoT2pSPwLDd4538=; b=j/7j7TpI3ZisFK
	HdtAeohYe4wXxGfe1ZWrez+Ib+SuLKWtyiJioAyAFnBqxkoLMhNVAq0PF88bwJdOegudrrublt7rM
	8Bqaj79JUHk6b8VGRC7YJlWwrQtU3YSujiZnXQyGc1phJiBWLiB5dThb8uEPG0lpNBH4VoDqd0Oik
	Bu2RvNZ8UknF8rgWoLBuHTTg9P1/CWixK0mpZqTqcHAQEZwCyaLj3T0KSmQQQJza5JyEl9CTZbbHa
	DdMe5Ojefef9oRx+m2S6vfLxcYgL2wA5TRak8JeqO3tZYo/aRsVJUgkkfdaba7UeACYI5ZnEL/wON
	MJicEk6jUWQ0Tp6TAoMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j92I3-0002Cf-IM; Tue, 03 Mar 2020 07:48:31 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j92Hv-0002Ak-LK
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 07:48:24 +0000
Received: by mail-wm1-x341.google.com with SMTP id a5so1915745wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 23:48:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=S8P0LJ7u6TOFiOZkcDuJhkn/2H/OUG6d25AO7qTixAo=;
 b=tMa+sriRSXr26gkkZ4JOU3NXaWVStazw6D0JzFbiDcrFlgTwuPRxVCf7o+qeIiZyTm
 JBOi2SNBcUmyhgEJ/KaJJJNSWRxgysSYVcrsSC9jWhHBhms7GOR2TR1Kt2SOl3IVG7Bt
 30Otju7A1JXFcA5EQqEs75Tk4uJPFn2Ir541JbO8i5abn7JysWqJiI29d5btGTaU+Vgq
 s6EYCzVdxTEWSlTw/x6tWkL60zjp1D7iT+awm03HbsIaqGwnqAE+9Hxk/omN6XwmdlG/
 K9nejPTIClizao5I2hVcpTxLE7R3s+H8x3/dxputV6u78wni6kFrPWq9R1H3xzwo+0xC
 My6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=S8P0LJ7u6TOFiOZkcDuJhkn/2H/OUG6d25AO7qTixAo=;
 b=PS7axnAJhAMKHYwByB4nrbKzNwUxLtDET+S8iDvxpdxKQYycFNFTeoWkrU1yWHY9Fq
 d5rDT9msayQvCkuH5VBWPEjkyrWb7Esojof8jxFVJ7/8M5Q3ZdlZ9O0YyDUkeumE/i/I
 iTkJM9bRmN1o5GNlVh/G1dI0qTyr29gYILF1vBICKKlSNX43B3lUyHDP4IAB4l8qSScW
 6KIAqWZFf5Q1DOgcW+SoTEP+1bYNof/Ca8puUFjF/4FE5y1b8yLg6SZSEcDbJ/AFmLAo
 DLArjbmYaqFHVNtIrvhLmzLLvueuOoTLkmkPIUijWSDdXcmde9fb2OmnZ6eIZN51zMXm
 gfow==
X-Gm-Message-State: ANhLgQ0ap+id9PJUUa2sZrhEsypansb9Cnio20SXbkFj6V66uFep2PSy
 59hxTOB8UlA/0D/6O31aNqM=
X-Google-Smtp-Source: ADFU+vu8Gb4tXqwFBAViua1vl9+zS/LE0+lNqsDQ5GogCnCEm1+FqStbg/GYbA8hHXs7Zpj3rdrq3g==
X-Received: by 2002:a1c:1fd0:: with SMTP id f199mr2833854wmf.168.1583221702071; 
 Mon, 02 Mar 2020 23:48:22 -0800 (PST)
Received: from Red ([2a01:cb1d:3d5:a100:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id z64sm2537257wmg.35.2020.03.02.23.48.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 23:48:21 -0800 (PST)
Date: Tue, 3 Mar 2020 08:48:19 +0100
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: Daniel Jordan <daniel.m.jordan@oracle.com>
Subject: Re: WARNING: at kernel/workqueue.c:1473 __queue_work+0x3b8/0x3d0
Message-ID: <20200303074819.GB9935@Red>
References: <20200217204803.GA13479@Red>
 <20200218163504.y5ofvaejleuf5tbh@ca-dmjordan1.us.oracle.com>
 <20200220090350.GA19858@Red>
 <20200221174223.r3y6tugavp3k5jdl@ca-dmjordan1.us.oracle.com>
 <20200228123311.GE3275@willie-the-truck>
 <20200228153331.uimy62rat2tdxxod@ca-dmjordan1.us.oracle.com>
 <20200301175351.GA11684@Red>
 <20200302172510.fspofleipqjcdxak@ca-dmjordan1.us.oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200302172510.fspofleipqjcdxak@ca-dmjordan1.us.oracle.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_234823_702383_D1A8281A 
X-CRM114-Status: GOOD (  19.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [clabbe.montjoie[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, jiangshanlai@gmail.com, linux-kernel@vger.kernel.org,
 linux-crypto@vger.kernel.org, tj@kernel.org, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 02, 2020 at 12:25:10PM -0500, Daniel Jordan wrote:
> On Sun, Mar 01, 2020 at 06:53:51PM +0100, Corentin Labbe wrote:
> > I tried to bisect this problem, but the result is:
> ...
> > # first bad commit: [81ff5d2cba4f86cd850b9ee4a530cd221ee45aa3] Merge branch 'linus' of git://git.kernel.org/pub/scm/linux/kernel/git/herbert/crypto-2.6
> > 
> > The only interesting thing I see in this MR is: "Add fuzz testing to testmgr"
> > 
> > But this wont help.
> 
> Hm, that merge commit has only a couple lines of powerpc build change, so maybe
> there's something nondeterministic going on.
> 
> Does this fix it?  I can't verify but figure it's worth trying the simplest
> explanation first, which is that the work isn't initialized by the time it's
> queued.
> 
> thanks,
> daniel
> 
> ---8<---
> 
> Subject: [PATCH] module: statically initialize init section freeing data
> 
> Signed-off-by: Daniel Jordan <daniel.m.jordan@oracle.com>
> ---
>  kernel/module.c | 13 +++----------
>  1 file changed, 3 insertions(+), 10 deletions(-)
> 
> diff --git a/kernel/module.c b/kernel/module.c
> index 33569a01d6e1..db0cda206167 100644
> --- a/kernel/module.c
> +++ b/kernel/module.c
> @@ -88,8 +88,9 @@ EXPORT_SYMBOL_GPL(module_mutex);
>  static LIST_HEAD(modules);
>  
>  /* Work queue for freeing init sections in success case */
> -static struct work_struct init_free_wq;
> -static struct llist_head init_free_list;
> +static void do_free_init(struct work_struct *w);
> +static DECLARE_WORK(init_free_wq, do_free_init);
> +static LLIST_HEAD(init_free_list);
>  
>  #ifdef CONFIG_MODULES_TREE_LOOKUP
>  
> @@ -3501,14 +3502,6 @@ static void do_free_init(struct work_struct *w)
>  	}
>  }
>  
> -static int __init modules_wq_init(void)
> -{
> -	INIT_WORK(&init_free_wq, do_free_init);
> -	init_llist_head(&init_free_list);
> -	return 0;
> -}
> -module_init(modules_wq_init);
> -
>  /*
>   * This is where the real work happens.
>   *

Hello

The patch fix the issue. Thanks!

So you could add:
Reported-by: Corentin Labbe <clabbe.montjoie@gmail.com>
Tested-by: Corentin Labbe <clabbe.montjoie@gmail.com>
Tested-on: sun50i-h6-pine-h64
Tested-on: imx8mn-ddr4-evk
Tested-on: sun50i-a64-bananapi-m64

Thanks again
Regards

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
