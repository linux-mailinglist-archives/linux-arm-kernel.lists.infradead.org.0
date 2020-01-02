Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3D1D12EA88
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 20:33:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AFoNVJ+Sfp9W2upRsfucBWUUZC+qifIG64TL0vxQP3c=; b=vAt29PU+8yMftp
	ONZwSEm6EPZfUimxyVdVPvE83/PTRbb0IWx11V+1RNclrdJ1DHASuBDDh/molsf1jo1bYPjZ/tl7t
	RENJLT0LGHysfbJVV6Oj2gmb1tBYjk6hN4/SnU3wUxhiW0r2aPQgxLWg8YlerGorpDz5W/fKOkTr8
	k0MWY+pw7FPCD8M51uXJ2WzsH7JO0ZKJO3ZJnPG/LnyzUZ5FdTOJSvORQXuarguLcG9JuIVlj6nHL
	6tdoOxaTqYS+AKL1lMwpzfI90fF5Bx2y8a2/UPWbV7P3nA/G8ROrEyiQLrDnSGc6uGB0QNPIQJeub
	uADCd/6DtObzZuEJFCrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in6DY-000516-Ai; Thu, 02 Jan 2020 19:33:12 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in6DS-000509-GN
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 19:33:07 +0000
Received: by mail-qk1-x742.google.com with SMTP id 21so32182601qky.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Jan 2020 11:33:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=u9dwbogJdW6Yh1Ee8VSFJGnuy/iuVNRbfD1Fa4yAvYY=;
 b=JT0FLN0ZXha1caOUYbQA5kD/HcHTUSlb62XEjpUkqHR/9zHvqWkyZe/uhLoYygbTzF
 DAd+YJcowk3agIzwHK2Ye5qtXHoQAykOI2TfvlkoMCLKgMJ9lypSfRrAojtSioX2Ht1x
 EXyZhRVfJRXlFpjniP5Xro68S7oT4ZPUMyeVVhq7AyCrMeJB9o5xcwKHvSq3Xw5i12qu
 QTDT5i8b2jVFp60ZkZdkb6/kVfRZUEkMrmcm6cz29d2h1htgFq6E7P+dB3WquF/5Tti6
 SvNyxXv4sqAKY4UW9M9+SdTa8y9/nBwnWEQ+dMleE0AxCmz9awUpUUyUuITq4/5iufrt
 7oEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=u9dwbogJdW6Yh1Ee8VSFJGnuy/iuVNRbfD1Fa4yAvYY=;
 b=nU5GdVrq4nxTLV6/uptlVxI1ymyLS6wKcwQibl5UUCI+hP9Dng6+Ab+s2mXDCwFET2
 XbqlBeV2dF3+B/v7Be9uKlKzNwakzbOo4zyGl8OOjuVUYY4B68+8EW2udOZv08NoKLS4
 1c1xFocn3xpmfnw6dL47eywb/BeTJfl8Dj+hXLsK/j9AuCAtSzDceRGG/gu1zLzUNE4D
 8rZxQS6lulTmU8/rC7dqPaDqGBuToUzarqok0rVZ2IWKJk2I8aGgba/9XbVGtBL+V+jr
 dxwmjfkPEfJch2mbqQYsKeGUQ2rS/456lUB9QAAUTm0VkG8wW+Y3pPYvadXrgIX+dtLA
 Hawg==
X-Gm-Message-State: APjAAAXqnG84h4aUSwiMZTjnSsKeoszxaw/bVCkalSEoL+DCML6DHs7a
 CI+NA+8Z+GJJqu8/T4xWt+iKknKUEfe76uWvshFocBxy/OZiYUa8
X-Google-Smtp-Source: APXvYqyFmmxk9SA4wFTWWe4jAnqIFTv5urCIxOy0EjJq4Ol6TlHWI/y56dLg++S1Ps5KvG2pZxfPTVEWHJBe0glxgOU=
X-Received: by 2002:ae9:ed47:: with SMTP id c68mr65365242qkg.136.1577993584811; 
 Thu, 02 Jan 2020 11:33:04 -0800 (PST)
MIME-Version: 1.0
References: <20200102172413.654385-1-amanieu@gmail.com>
 <20200102172413.654385-2-amanieu@gmail.com>
 <20200102175011.q7afo45nc2togtfh@wittgenstein>
 <CAK8P3a3a88e=hkzYG5mj=NuVQWMtyougkKzBznnn2y9ZoZfEGg@mail.gmail.com>
In-Reply-To: <CAK8P3a3a88e=hkzYG5mj=NuVQWMtyougkKzBznnn2y9ZoZfEGg@mail.gmail.com>
From: "Amanieu d'Antras" <amanieu@gmail.com>
Date: Thu, 2 Jan 2020 20:32:53 +0100
Message-ID: <CA+y5pbTwsN6dUWQ+hAWpuo4c7418GV1RdpmKFiJW+cEu+ibGJw@mail.gmail.com>
Subject: Re: [PATCH 1/7] arm64: Move __ARCH_WANT_SYS_CLONE3 definition to uapi
 headers
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_113306_572037_B830AFFB 
X-CRM114-Status: GOOD (  14.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (amanieu[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "# 3.4.x" <stable@vger.kernel.org>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 2, 2020 at 8:25 PM Arnd Bergmann <arnd@arndb.de> wrote:
> On Thu, Jan 2, 2020 at 6:50 PM Christian Brauner
> <christian.brauner@ubuntu.com> wrote:
> > On Thu, Jan 02, 2020 at 06:24:07PM +0100, Amanieu d'Antras wrote:
> > > Previously this was only defined in the internal headers which
> > > resulted in __NR_clone3 not being defined in the user headers.
> > >
> > > Signed-off-by: Amanieu d'Antras <amanieu@gmail.com>
> > > Cc: linux-arm-kernel@lists.infradead.org
> > > Cc: <stable@vger.kernel.org> # 5.3.x
> > > ---
> > >  arch/arm64/include/asm/unistd.h      | 1 -
> > >  arch/arm64/include/uapi/asm/unistd.h | 1 +
> > >  2 files changed, 1 insertion(+), 1 deletion(-)
>
> Good catch, this is clearly needed, but please make the patch change
> every copy of asm/unistd.h that defines this, not just the arm64 one.

Actually __ARCH_WANT_SYS_CLONE3 only needs to be in the uapi headers
for architectures that use the asm-generic/unistd.h header, which uses
it to guard the definition of __NR_clone3. Architectures not using the
asm-generic header don't need this define to export __NR_clone3. The
only other architecture with clone3 that uses the asm-generic header
is riscv, which already defines __ARCH_WANT_SYS_CLONE3 in the uapi
headers.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
