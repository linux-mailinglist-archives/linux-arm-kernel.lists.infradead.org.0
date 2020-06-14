Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEE5D1F88DD
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 14 Jun 2020 15:06:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ivQc+Ej5l2hS0GUDsV/IONc1jDa2mBV6aXaWwyVSj7I=; b=MLOOs4aj8OERZL
	Km4WaUpzvVhrDv21Wj+EV4AJpBt9+Fj0fkFH9A2YqMazVTyWWtT38+EEilX45DK20TJwM7MLyYLeg
	U9tWqm0iGwXW6r0CyODjSLm3HXzXnwPbb/f6dYoZJeuFgB2aEdf/lEp6/ZAHCW9IS1LX8fOxXKHqe
	HWVXgVkcvK+p5NYXda+y3T8R6cqZn5qvft5TDFE1q9SkIrGMTjyIJzuBNpgp10URc5IAivYYeZx3B
	Yr3OwJh02v9WDn9M/bBP01nXfqD53PhxxVXUJlAb/pgy0aAUJlUfeCD2MZNgt9GXNge0R9rk3TlGL
	Bm6/Mmr2Ao2/hPzxwHnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkSLW-0006xW-BN; Sun, 14 Jun 2020 13:06:46 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkSLO-0006wx-U6
 for linux-arm-kernel@lists.infradead.org; Sun, 14 Jun 2020 13:06:40 +0000
Received: by mail-pf1-x441.google.com with SMTP id b201so6615654pfb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 14 Jun 2020 06:06:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=tbNPHbcJdd9Zy5vpitc4It2x0QhJhg6ckwY09//qr6Y=;
 b=onBIBYT4ViSU7ygp5zYYYBkpUleSF5iOdLkVHxQBdUzs6HwG5FPU2AJIL94jiO1/3q
 e611vI3yaKJGxZt2s4y6snRpXKvWJq8OqYUJjwVNmgfG7HHqxMRpPNskzZb5sxAjWHjY
 xnRzeKS3IREF5B9/QGpTyAwqFLQY/nYBHWJAnL9xC8VVruuUd86ny7YZy0CwYO06X5JA
 S87sPGgfHf0Of2/wEO3Lf7D81x16zacDo1gKx/WP3icE0P4D0ZRLXudAyfnGbhm2eAFX
 FoESIv6H9gYq4R8Kg1xRHUcUxg6EpkTgR8UX8haSscXC6Q7aRYqatXBg5s4wlT6QdIlv
 AbXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=tbNPHbcJdd9Zy5vpitc4It2x0QhJhg6ckwY09//qr6Y=;
 b=fVrdJrz8Zc0RogaKsDXxvVlsC3CS61dwuy4+rI4HVvmuN/NZGIgJwl8oGgm3+YEWny
 bVYaURGuBT661v6B9ysBN7c8VvRqekq1c78xb12yysq3I3n1CHeXVLjsh1gsoqQ2LlPt
 ECZtu4lUE8ompntqnGDDsnvAO1mv6sioQFmJQsWWKDFElvccmH7h0WWh3diaIUPJKfGq
 caRRwLRNxZ19kOppwa0zQwkIWAx9T6UxESshUxiN9RNZH9/0LivgEZNH1jka9JH6XWNd
 irK2gq1DsUZijBAWtIxz102DXYhksjAJCo1PJq4a+Sr5If/9L1Qn2XTxHo0sxTrqNmzL
 XzoA==
X-Gm-Message-State: AOAM5323gX0Q0PYqQSXZCBT5Yi332vS7f2D0joaSYFOOGrz2IIN8ADz+
 ZBfmujOv41HPHCheYn4jDgA=
X-Google-Smtp-Source: ABdhPJzSwp75HDSJw1OL5kd4Rpdjmi7CLAzvE7VPRCs+dMV7al78Ke9fy4XDN78px0l2mL6bUhjXnw==
X-Received: by 2002:a63:4861:: with SMTP id x33mr109880pgk.448.1592139997958; 
 Sun, 14 Jun 2020 06:06:37 -0700 (PDT)
Received: from localhost ([49.207.199.244])
 by smtp.gmail.com with ESMTPSA id y10sm9811760pgi.54.2020.06.14.06.06.37
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 14 Jun 2020 06:06:37 -0700 (PDT)
Date: Sun, 14 Jun 2020 18:36:35 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [RFC 1/3] lib: copy_{from,to}_user using gup & kmap_atomic()
Message-ID: <20200614130635.GA5037@afzalpc>
References: <cover.1591885760.git.afzal.mohd.ma@gmail.com>
 <9e1de19f35e2d5e1d115c9ec3b7c3284b4a4e077.1591885760.git.afzal.mohd.ma@gmail.com>
 <CAK8P3a1XUJHC0kG_Qwh4D4AoxTgCL5ggHd=45yNSmzaYWLUWXw@mail.gmail.com>
 <20200612135538.GA13399@afzalpc>
 <CAK8P3a25ffh_2Y1xKDbkL2xU9nLpGbEq7j6xHdODEwUtavgdwA@mail.gmail.com>
 <20200613120432.GA5319@afzalpc>
 <20200613131552.GL1551@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200613131552.GL1551@shell.armlinux.org.uk>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_060638_988045_1EDE9CC3 
X-CRM114-Status: GOOD (  13.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
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
Cc: Arnd Bergmann <arnd@arndb.de>, Nicolas Pitre <nico@fluxnic.net>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux-MM <linux-mm@kvack.org>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Sat, Jun 13, 2020 at 02:15:52PM +0100, Russell King - ARM Linux admin wrote:
> On Sat, Jun 13, 2020 at 05:34:32PM +0530, afzal mohammed wrote:

> > i think C
> > library cuts any size read, write to page size (if it exceeds) &
> > invokes the system call.

> You can't make that assumption about read(2).  stdio in the C library
> may read a page size of data at a time, but programs are allowed to
> call read(2) directly, and the C library will pass such a call straight
> through to the kernel.  So, if userspace requests a 16k read via
> read(2), then read(2) will be invoked covering 16k.
> 
> As an extreme case, for example:
> 
> $ strace -e read dd if=/dev/zero of=/dev/null bs=1048576 count=1
> read(0, "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"..., 1048576) = 1048576

Okay. Yes, observed that dd is passing whatever is the 'bs' to
Kernel and from the 'dd' sources (of busybox), it is invoking read
system call directly passing 'bs', so it is the tmpfs read that is
splitting it to page size as mentioned by Arnd.

Regards
afzal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
