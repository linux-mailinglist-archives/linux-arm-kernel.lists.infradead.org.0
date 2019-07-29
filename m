Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B13D786E4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 09:59:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hWBFpy10UIR0HUCrVARF3VKcSPP/L2WIkNvDtd6usQc=; b=ujQ3fBNy+wnMSO
	iT0PBSG07cUYSWE+93SXpJOr4eXFPEuU4c7bnf6BaR7t3jK5XoaSRwAWb86nnl4ycm42kswXGYYgj
	2ZGJIx2/Kq4O8npySo/IdNjQ6Tsqdn1++Ei6ML1RSJB0/SyvrqbDo0+S/iQbyXlL2XmLR6QHa6gZd
	GyoZ/6KTvCxeO14bdcdTSkMTO0kq8q8NOWqsaeMWMsgDd5KvUUsJK7zHxKyt3aqdPSjCKnc0auxUf
	n8aXPnu6FC2TR0gdiNeovJUXKmX9hSdoXK1SyhO/Srw36U6zVxRFzseIO14FiiVNCTITRMx/Ov7LD
	vOjY3VhhqUq7bzN/GmrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs0ZD-0001c8-Iv; Mon, 29 Jul 2019 07:59:35 +0000
Received: from mail-lj1-f173.google.com ([209.85.208.173])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs0Z2-0001Vz-JF
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 07:59:25 +0000
Received: by mail-lj1-f173.google.com with SMTP id r9so57631088ljg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 00:59:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=z0X7I7dffw1LhnC4nVMW+8AwSH2HYvA+5a9p+PbDV/Y=;
 b=qTQ1uBDKJ4tadr2egbbxx+/9QeRHd7rM/Vh7T833b4EGDwJzPRSt3KUpGyis4xZavJ
 iAUVI75zKgsXtX1yfq+15RB/NdL0fwH8frNZHkXb4mGI3kRCDvE1iR1m5GJSaumHXoBS
 SkpPlIXUBEyXqIOQWAJnJQTGMbJiPhGbQfnYWKHFLKn62+sTRFrFPSDjfBLv1FebTcqq
 Sf5p9Ar7aJmEVajci9Zf+ec4YvP4wdc+8qFlpnDpZDShBbb6gT8X7HNUrk61k1TfGZig
 XqqPASuzJCCJfhT5g8MnIevqXJpqAomcEsosVTzK7oXfZ/47AZspZmnxyJUTsaXWLYC1
 pEVQ==
X-Gm-Message-State: APjAAAVm03jkPyiFUGhLwXpnkPXSVD87k+HlNNlmveXs89JP+oJ8oI/K
 9imtJxnZ41kHIwkaJzoLZmuk+mUqUd3sW6T5+O1Zrg==
X-Google-Smtp-Source: APXvYqw7/YBCA9dzyYL9QUBcjLEFOBq8sQ4hNsuED2wZFCVGwW+UaBuvGY/RNusnwUxtFEAT3PdLAci/FZVk4o03W9A=
X-Received: by 2002:a2e:8756:: with SMTP id q22mr57841858ljj.108.1564387162794; 
 Mon, 29 Jul 2019 00:59:22 -0700 (PDT)
MIME-Version: 1.0
References: <CAGnkfhySwXY7YwuQezyx6cEpemZW4Hox1_4fQJm3-5hvM3G6gw@mail.gmail.com>
 <20190729044403.GA27065@OpenSuse>
In-Reply-To: <20190729044403.GA27065@OpenSuse>
From: Matteo Croce <mcroce@redhat.com>
Date: Mon, 29 Jul 2019 09:58:46 +0200
Message-ID: <CAGnkfhz=RgsPVqk964=hg1kJc=FJJ0WA7ysbhN6B3aNZgbD2aQ@mail.gmail.com>
Subject: Re: build error
To: Bhaskar Chowdhury <unixbhaskar@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_005924_637245_03A204EF 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.173 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 29, 2019 at 6:44 AM Bhaskar Chowdhury <unixbhaskar@gmail.com> wrote:
>
>
> Matteo,
>
> it's look like gcc is not in your normal PATH. Could you please locate
> that fellow and realign it ,where is suppose to be.
>
> Or if I understood right (I doubt that is why asking) that you might put
> explicitly the architecture to target build with make also, that might
> help.
>
> Please do let me know, if I derailed grossly ...am not sure.. :)
>
> Thanks,
> Bhaskar
>
> On 22:08 Sun 28 Jul 2019, Matteo Croce wrote:
> >Hi,
> >
> >I get this build error with 5.3-rc2"
> >
> ># make
> >arch/arm64/Makefile:58: gcc not found, check CROSS_COMPILE_COMPAT.  Stop.
> >
> >I didn't bisect the tree, but I guess that this kconfig can be related
> >
> ># grep CROSS_COMPILE_COMPAT .config
> >CONFIG_CROSS_COMPILE_COMPAT_VDSO=""
> >
> >Does someone have any idea? Am I missing something?
> >
> >Thanks,
> >--
> >Matteo Croce
> >per aspera ad upstream

I've  "fixed" the error by unsetting CONFIG_COMPAT
There should be something broken in the CROSS_COMPILE_COMPAT handling

-- 
Matteo Croce
per aspera ad upstream

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
