Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1971147721
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 04:22:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Udj6S0PoyHaHPTHmd2RuL3zTWHk1Q0aEUzlPMH7JrCM=; b=hlgfsXqYaTBJ/F
	IFYm0jWG+NP/IyKA2q/2AM/i0MbuikeymaiVWNwYCKfboWZTAdgJYFuRUxhcB4r9W6NC5Ya+PjA9k
	KhLonlSnnnz0h1cMXSWnqYwQnfQ2CZYzKgLXpYUH+Gb7lirlM6WRXIfClTXZa+DjkDzhia5Fz2PP3
	qbiWajMx8cChAzK9AMvKQT2WZOCVbqKQj2XqcVFRveENFSAT5ADKdmqgRvVsPvdI7afIAnn8uTETJ
	JZrT81SM1KCaoMTjanzxdTmx1HFvyST+iSZhSBdQLvlRNY0L01w7FHswQimk0eIWX3MmWrAT4+cEi
	oXliN/eZLx3X9hscmC7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iupYI-00017Q-Ig; Fri, 24 Jan 2020 03:22:34 +0000
Received: from mail-il1-x136.google.com ([2607:f8b0:4864:20::136])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iupY8-000170-Mo
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 03:22:26 +0000
Received: by mail-il1-x136.google.com with SMTP id t2so558495ilq.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Jan 2020 19:22:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RO4QmiYLbmwlmb+nj9OQJ/MLdymgjHxPp+7GD55K2+4=;
 b=pWDNEp8jENP4snua1ds4FSGEO11qSlGUwMJrC6nSQ0WXAS/rIHF0AbRouLd0/81O1b
 Zs2Zn7d6bkF3oT94zw8z6ZbSRo+W+6xa+pJtqLAQUxeJwz1vTImSwY0wmZBnKqXXFKY2
 Wch+CJpZg2UNEfH0+9OjUn817jjXjlIKK4aCfs908JOd0HvTt6XZW+dNmJCb+lDg3wZi
 TlplFr4Ql/B7os0PnvgEMWaM3+f+v7k7vfKVeK+Vpf9+Y/gAK7tqwg1a9M7OqPdbVo92
 VZphWftzj2y2hjIL2F3pd6/anjSoAeCQ+20Iu5s5gTf4HQEGLTocG+s+lMZYzHS9hOwH
 3vSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RO4QmiYLbmwlmb+nj9OQJ/MLdymgjHxPp+7GD55K2+4=;
 b=hyb3LrC0kSj9kSlEYA8rq2uE+uOEXvDcOw2tsmHTeEVpvRpyvLvIxE1gK0JmZLwtqh
 j7aU7jhlt8ZaN5JmoCFjKUyb1wYOQqppeE1UaB/p3DxXXe4k6QzGRVZ21K7Fq0k1lAl1
 evSA0kIdiLVK7GL8coSFoegykEk/0eVjvjClSyzIwkA05nev94OnXGTYYGS3bfJN0Xjk
 jTgPWmDqdceqVsF3tSB9ZvLhyT/UyMQcEjuty77doie/5bJCAPVf+jFC894la5RE5+He
 ifOHp8wHHd1hu7KwNpXaV+u3X09BAofphSZhBymKA3vCwT8sOlkEPAIH0qw1khqhf4v5
 parw==
X-Gm-Message-State: APjAAAVyIhezfSNvec6QPmpUEGY6aL5f6nkbxRal5tIemZ2rYVHwlIIR
 7BDGm3IUv3WdNnfNWNQIeS7m6QvGy9E2WvWem7cySw==
X-Google-Smtp-Source: APXvYqzKJBh0W0/XaTS/vFrA+HAX2ghLAelaK1OPwEuCWPLXiry4DfP3TQDyH/naSEb6Nq9v1wNLRPLcRmBKbMm99IQ=
X-Received: by 2002:a92:db49:: with SMTP id w9mr1223575ilq.277.1579836143272; 
 Thu, 23 Jan 2020 19:22:23 -0800 (PST)
MIME-Version: 1.0
References: <CAK7LNASEaiFia8NKZN8++-9RfGXOPKSFuCkdukBk9Jy7+nHecQ@mail.gmail.com>
 <CAK7LNAT721bVwVQif--UY1dXMhq8NSRpkPOYTN-=nxyBSBOn2Q@mail.gmail.com>
In-Reply-To: <CAK7LNAT721bVwVQif--UY1dXMhq8NSRpkPOYTN-=nxyBSBOn2Q@mail.gmail.com>
From: Olof Johansson <olof@lixom.net>
Date: Thu, 23 Jan 2020 19:22:12 -0800
Message-ID: <CAOesGMgyh2NmR_AbEzC2jQe070e_u3zozWi=v7RjMXszXgetZg@mail.gmail.com>
Subject: Re: [GIT PULL] arm64: dts: uniphier: UniPhier DT updates for v5.6
To: Masahiro Yamada <yamada.masahiro@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_192224_800824_ACBEBE83 
X-CRM114-Status: GOOD (  15.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:136 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Masahiro Yamada <masahiroy@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Arnd Bergmann <arnd@arndb.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Thu, Jan 23, 2020 at 6:49 PM Masahiro Yamada
<yamada.masahiro@socionext.com> wrote:
>
> Hi Arnd and Olof,
>
> I know it is already -rc7, but
> it would be nice if you could pull this for the next MW.
>
> Thanks
>
> Masahiro

If you don't email us at soc@kernel.org, we're unlikely to see your
pull requests. :(

In this case that's what happened. Please do so -- that way it gets
caught in the patchtracker. I sort the patches to that alias in a
special folder to make sure I see them too, since I get too much in my
inbox and it easily gets lost.

Mind resending the two pull requests to that alias? That way you get
the notification email when it's merged -- if I bounce it here I don't
think you'll get it.


Thanks,

-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
