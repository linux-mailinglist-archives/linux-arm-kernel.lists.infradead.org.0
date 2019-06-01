Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 601A7318CB
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  1 Jun 2019 02:29:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LnYkbaI1nOpGLrB+cXz54Vqhr8VewBVap/cYx1GztIA=; b=rmwH7nGUI6COnB
	OxB2X9ZoawhyPQ7caV58daQU6K6herAP0yHIkR4VLtH8GTYkdsb2xI7iRcWBTZzCJ/f6umpDKa1/+
	PIgrABAnEDcV4r5zwNl0B2V5r/z5Dl3h01HHGJ8d47iEljuCBH7560te+qTdp7atNlE+Ww0pfpN4P
	a4b6J7N9YBUu7R03iZfS+lHcG/wT1AOZi4UU82WpvdWjk0wO5RaJt9lBbxJXCtgqsvL/GYaMyCg7V
	2GvK6dwDqpoO9aNEdaQF6QFB9XTCO3C/W+sRhnpAgTsiub47eIQ1d25brvA54R2S3Rcl8grV0oStd
	mHiIDPCNJXPkrlUOLGbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWrtX-0008AU-6B; Sat, 01 Jun 2019 00:29:11 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWrtQ-00089n-Mt
 for linux-arm-kernel@lists.infradead.org; Sat, 01 Jun 2019 00:29:06 +0000
Received: by mail-ed1-x542.google.com with SMTP id w37so17102864edw.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 May 2019 17:29:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=JNA+M2HNg5wC58bq9MZMCh6YyzsCVe0fiW59+AoI+uk=;
 b=g7AQ2p/RBhEEwukGt++EPQDzHYe3xAanZFkwZbDE2W/aOJnnVSHjYYJyumy9E3fGIK
 MOYIQP5P9hNJ/8I6BMNJauiYurLi7++SWUKkh10Q0nWDqa9uayZhElnX4el7hGmqoNvQ
 U7uDj2Hrst9GJYcVKnfWPPlSLGRmh66qyJC8yFR3EgO6/8uK/fwbLtw2klXXCQaeRD8/
 cAOBe+wMbSvjmTJrdxom7WKJ/rNw/wJEXVVro9JNLuP15MDMgzMFcESSm4cOTSUSbSKn
 h8IjqqdAea5IqczJoAirb11KMsrKfU/IZIVZODIfcvwgHHbdNwEoNCf5v/lUFY04XvUp
 O2sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=JNA+M2HNg5wC58bq9MZMCh6YyzsCVe0fiW59+AoI+uk=;
 b=SGVn1VLQa11n5OVvNiS8qzdYUajbPEHUg8OgDKv9x+4YhBkVT4CE6o5HEEUr/ul5AF
 ru4ZchGSjv2gtBHDhOg1RiiGmyBcmgOn+dUMcYuh0apJ18FDQOo7pjAZ8tznoiTi30Ec
 7RA4qa+e5DOn2vNk30mTbLMp3Dj7HFsXFyC+qUJSooZ39KJYwYMTmVluFvZ3NNGpD3fN
 wPnJu/3VjizZG0RLtNXo0b7UkTLglo5w703JQiwza+41QVS7GJZNNAX3cXMPrwUAslGr
 D4ITdUG9XqYkVb9zY5BDaIPp2NS7eGq77Lqd1DWeZliSucwybC6BJtOVFADk3qRUE/77
 JCrw==
X-Gm-Message-State: APjAAAVbgfVtmQj32hbphm531FsPpeqE2isIyIyyPQDzjv9Wjeyzv24i
 G/0aRB/JK5WqS35m4ElhimQ=
X-Google-Smtp-Source: APXvYqyjHBP6Ky2mspUst454rSxki3hW4y23rkcxYomBYUoZjYnk+QD/AlcwIriW+0mzpinwEfLa/w==
X-Received: by 2002:a50:bb24:: with SMTP id y33mr14611589ede.116.1559348940661; 
 Fri, 31 May 2019 17:29:00 -0700 (PDT)
Received: from archlinux-epyc ([2a01:4f9:2b:2b15::2])
 by smtp.gmail.com with ESMTPSA id h20sm1244729eja.37.2019.05.31.17.28.59
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 31 May 2019 17:29:00 -0700 (PDT)
Date: Fri, 31 May 2019 17:28:58 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] ARM: xor-neon: Replace __GNUC__ checks with
 CONFIG_CC_IS_GCC
Message-ID: <20190601002858.GA89184@archlinux-epyc>
References: <20190528235742.105510-1-natechancellor@gmail.com>
 <CAK8P3a0a0hMsZDkqKsfsyCWpdvDni72tjAxCz2VeAaU56zqrXg@mail.gmail.com>
 <20190531183227.GA34102@archlinux-epyc>
 <CAK8P3a1-_KRvoeK4w0b8775izox8fRm=NGJC=yicDRn7J5UW2Q@mail.gmail.com>
 <CAKwvOdkyk3qLMPquSZqXCFauTADJU5X9qJi_fhJqbUuCYBH-6Q@mail.gmail.com>
 <CAK8P3a2pYp6aaOSrtHKbVW+hPbwgj1An6dWNd-YLJyR5otvU-A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a2pYp6aaOSrtHKbVW+hPbwgj1An6dWNd-YLJyR5otvU-A@mail.gmail.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_172904_774939_BD7EE104 
X-CRM114-Status: GOOD (  18.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Nicolas Pitre <nico@fluxnic.net>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stefan Agner <stefan@agner.ch>, Russell King <linux@armlinux.org.uk>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 31, 2019 at 11:03:19PM +0200, Arnd Bergmann wrote:
> On Fri, May 31, 2019 at 10:06 PM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> >
> > On Fri, May 31, 2019 at 12:21 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > > clang, I would suggest dropping your patch then, and instead adding
> >
> > I disagree.  The minimum version of gcc required to build the kernel
> > is 4.6, so the comment about older versions of gcc is irrelevant and
> > should be removed.
> 
> Sure, that's ok. It just feels wrong to remove a warning that points
> to a real problem that still exists and can be detected at the moment.
> 
> If we think that clang-9 is going to be fixed before its release,
> the warning could be changed to test for that version as a minimum,
> and point to the bugzilla entry for more details.
> 
>       Arnd

I just tested the arm64 implementation and it shows the same warnings
about cost as arm.

However, I see a warning as something that can be resolved by the user.
The GCC warning's solution is to just use a newer version of GCC
(something fairly easily attainable). This new warning currently has no
solution other than don't use clang.

It is up to you and Nick but I would say unless we are going to
prioritize fixing this, we shouldn't add a warning for it. I'd say it is
more appropriate to fix it then add a warning saying upgrade to this
version to fix it, like the GCC one (though I don't necessarily hate
adding the warning assuming that clang 9 will have it fixed).

Cheers,
Nathan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
