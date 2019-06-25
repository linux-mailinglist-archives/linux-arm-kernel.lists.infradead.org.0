Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7017854F00
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 14:37:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=97kPwGukLCStAfVIn3w3o7j/zhKxoPI0pTbITQAzqFA=; b=e3nqSQ55c+Rys1
	7QUIrwUPNXbxdZ5qrPeDYtHpL0r9VxI7GvmyRpCNpEqIZKxENt5p1IQNY2nRQePshpGO0OUndTcRF
	S3euaijcNK7Okchluyu6VdClyz9aqJ2ylTY0XgYR2HXxNHn0ef5tzK/U5WXDgaTscYw1cnZmsqzff
	46MOzNXPd+xc70ev+j/ObUJbf25ba0ycL6BrsbG4zZbPQhHo84yNJ+PQKwi/AHFgoYxXUyLSsHIbF
	7dU2Vk6EPFf4tyZG//VBiKc/j215opUKpQ3T8s7wuHcDKbLl/CECs4iiJcefRblEiD7SKNWkeq+2Q
	wBSQCTNX0JF3Ey8fCkhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfkh1-0005OX-LX; Tue, 25 Jun 2019 12:36:59 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfkgm-0005O9-T5
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 12:36:46 +0000
Received: by mail-io1-xd44.google.com with SMTP id w25so1950023ioc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 05:36:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xvOVsIqivKL0v3SHYT6dF2qM1JyQCXVqRbWQvdYMp3Q=;
 b=oaAlCKm5215lYggf2TQotMlHKsxT6Xb/hI7Ha5yKbfiRcXjPBzsRlvM2OdOQzxidON
 EmnQZjLonu4ZRgiai/u72cEGJVj0xcSUtoLbOvaJdyE+/pP4mUyWjQfGdKJVeOZ1WKqw
 9t9smlfN5QPMLbDj4NC1RpDHZuXkQtOrO9nOzHL5SzXFYnV0Qil8HJ0AgTqs38tJ+8iR
 wFwH4RZ9yk80zke1hp0BBPOyVJ693zj9awJOmqaZk1NKFqZpcs7dMFPdpzg6mxB9IjY+
 sU0i4D4GEfwVSFKZ4ABTNRwh8GS/C4oBtdgQJXphW1ivT6lNKzzTUPms7IAFRv9NR06m
 jI/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xvOVsIqivKL0v3SHYT6dF2qM1JyQCXVqRbWQvdYMp3Q=;
 b=tl0ejTippRlaIZOJYLgqlc7R199nGWEUkZ3i0Zx75WmMnxUzVpRQZufKqAABIlpSDK
 wFUE4J66BItr2qHcW0DO0jtFO/23M96zNQF8iXOMVQGe393+fuzNy84YI0St5rvDFEs6
 lvv8KJV1pLB275cA65Zs1XGdfuOs8KcZ2BGWkoeirCpG5RCSothErUDTH85XyNTlUpwq
 96QXBVpQbpT81wrEWa2W4lVWgclPRo4T2C8YcvVFUHbksvIwF9mHAZsXBqS603aHA04C
 M9dTAZr3t0LPe3ujs5ZtxIVdiiSKI0QadVO1uoSyLXTVoL24qmtOORqMm97fBM1Z/nts
 0Ohg==
X-Gm-Message-State: APjAAAWfeVp6GcBXdxbW1fAEx3IU7q4zqaO5r8wgzEYr4bLQBIDLiSoi
 4a/BQ+3CR+/coa8eJCRB4raYa9BBs16sl42Vb7cclWKBM0Q=
X-Google-Smtp-Source: APXvYqzIXPC/KZvjbMHV63ZlkLPFoew8MCROuDcVu/L47fh5CUkjGm+msT1sJvsKH5g05otQoPgHlTMIGb0Zzn2UZ3U=
X-Received: by 2002:a6b:9257:: with SMTP id u84mr42653766iod.278.1561466203531; 
 Tue, 25 Jun 2019 05:36:43 -0700 (PDT)
MIME-Version: 1.0
References: <459c0bad-c02e-40f0-9e56-1dcdad9c6591.lettre@localhost>
 <20190625114119.tgxsiwstd3pfm64i@localhost>
 <20190625123219.hwg5vjz3qocxavn5@flea>
In-Reply-To: <20190625123219.hwg5vjz3qocxavn5@flea>
From: Olof Johansson <olof@lixom.net>
Date: Tue, 25 Jun 2019 14:36:30 +0200
Message-ID: <CAOesGMhXVnNuEKHPBo6s9GBWrKAiX8zFPSt89cQRYNS711ymvw@mail.gmail.com>
Subject: Re: [GIT PULL] Allwinner Device Tree Changes for 5.3
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_053644_945914_12A47AA5 
X-CRM114-Status: GOOD (  17.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
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
Cc: Chen-Yu Tsai <wens@csie.org>, ARM-SoC Maintainers <arm@kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 2:32 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> Hi Olof,
>
> On Tue, Jun 25, 2019 at 04:41:19AM -0700, Olof Johansson wrote:
> > On Fri, Jun 21, 2019 at 10:08:08AM +0200, Maxime Ripard wrote:
> > > Hi,
> > >
> > > Please pull the following changes for the next release.
> > >
> > > Thanks!
> > > Maxime
> > >
> > > The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> > >
> > >   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> > >
> > > are available in the Git repository at:
> > >
> > >   https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git refs/tags/sunxi-dt-for-5.3-201906210807
> >
> > You know, there's a timestamp in the tag too, no need to encode it in the name.
>
> Yeah, I've switched to some tooling to send them instead of doing them
> manually, and having a timestamp was the easiest solution to avoid a
> collision, but I guess having it down to the minute was a bit
> overkill. Do you have any preference on this?

Main thing for me is that I can't tell from time timestamps if it's a
respin/new version, or a re-stamp, i.e. if it's something I should
care about or not.

I.e. it doesn't carry any useful signal for the consuming side and is
mostly noise.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
