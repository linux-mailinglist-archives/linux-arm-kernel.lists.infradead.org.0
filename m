Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8BDC6F39D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 21 Jul 2019 16:15:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VMOGfPqBQG8bdC930qZue64s4SVF7yQ43Aoo6lvedrI=; b=ABmS5sLhQUdsU1
	AlygGqdPhXQWFEAyHzZHz1GAuvEIAHHqmrKp4smoaPmyHsuG0505/NAfl9hkTBilgwREWh1q46LNe
	Gg8ZDsuvrWvzagXOPSpEHJiaO1AK49SaCL9C7Gc/zqLfaNlD158bnoGQaaZWqRSwP8D7L/MkujSv0
	fUeCWU+nUWZmPyYncIs3YmkyxEu6b1cvV4pixitbU51ZNH9b8ESIy/czNuL4PYxsb4CFdY/WArkww
	1Ko0fWVYIKqDDo7j0R0bsmzkFJpqNuUv5bWL3ei217+pSou8/GuUT2e1c4GK8ya7eyxJNQ+SV1eL8
	37UFyvizxgZ1x1fwr7Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpCcv-0003DH-4B; Sun, 21 Jul 2019 14:15:49 +0000
Received: from mail-qt1-f195.google.com ([209.85.160.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpCcX-0003CY-NY
 for linux-arm-kernel@lists.infradead.org; Sun, 21 Jul 2019 14:15:27 +0000
Received: by mail-qt1-f195.google.com with SMTP id z4so35907358qtc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 21 Jul 2019 07:15:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1fgIseiVrtAquhWDjVQHmGJTo29/NM2BiyqyCsBeT0k=;
 b=oAWxGC55j4qLULDARVC5/f/qcLiRuYna6mqWFj1DjWoTUMR8PHCWlCO+Jb58kd3l+Q
 oYlLMkggde6M1HEel4+5lGCtISiyZlUKeMvWBJr7Ib50TOTUCeU46Ja7viFQxIRM3WbZ
 xiZOsRBEVY35z8vTxYnBp0Yo4mqikYpy0eXnRhSWkpxgOvgROTZ8tJOxa/Cmmr0Ag6Sq
 YE9ul45GmQghV0z2y/j+2VrRemMh8oBXfCDz37kjUftfF2SuWtr98XYU7tr/o4I0Qoua
 u7vGFsF9HIHEBalmPygvmcems0fiJ5Gj6VkQ1cN0gCuz45NYxGHY3XJG4N7v8o+9cKZL
 +Dcw==
X-Gm-Message-State: APjAAAWxnw3YYRBG3T9CCVZaJdCxk7rFHSd/DDwStX1xGdI1/r/uOWwe
 AhaW1yX7C3coR/u3aESpA2XKH4JShyVziHx3cx0=
X-Google-Smtp-Source: APXvYqzmfpQVXcNsR7ZSo+5zgHmqeAV8HCP9yQSQY8uxhFJlST1Js4TTMvUvxzkovdtsU1jBTePEin3IcT5vrcf7Dc0=
X-Received: by 2002:a0c:b88e:: with SMTP id y14mr45073099qvf.93.1563718522909; 
 Sun, 21 Jul 2019 07:15:22 -0700 (PDT)
MIME-Version: 1.0
References: <CAK7LNASyzmYjjBkFxRc06rqf36-en-bvJvrKcg6iiRfjoPCxhQ@mail.gmail.com>
 <CAK8P3a2AeUpmNfFLJSvHT=AJ0kFRT2B=TWDm0HsTwoHt2jQ0gQ@mail.gmail.com>
 <CAK7LNATPbCjwzVnAigsQ8tQRXjC31uxgPg3jgi7pwp+N1RPgWw@mail.gmail.com>
 <CAK8P3a3cURmbGZc-6ESLjrF465VLnBroD4QENyfsSsCrNenRrA@mail.gmail.com>
 <CAK7LNARN=iNmresDJ2=J1wOb2QYoZ7yw4O0Q9sYVPo0jRKDf=w@mail.gmail.com>
In-Reply-To: <CAK7LNARN=iNmresDJ2=J1wOb2QYoZ7yw4O0Q9sYVPo0jRKDf=w@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Sun, 21 Jul 2019 16:15:05 +0200
Message-ID: <CAK8P3a133ekPqkLWfC2ee0mT3iLbFzSjJ9FDokSyaX+hMVigKA@mail.gmail.com>
Subject: Re: [Question] orphan platform data header
To: Masahiro Yamada <yamada.masahiro@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_071525_769252_3E956F42 
X-CRM114-Status: GOOD (  17.70  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: DTML <devicetree@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ben Dooks <ben.dooks@codethink.co.uk>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jul 21, 2019 at 2:13 PM Masahiro Yamada
<yamada.masahiro@socionext.com> wrote:
> On Sun, Jul 21, 2019 at 6:10 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > On Sun, Jul 21, 2019 at 5:45 AM Masahiro Yamada
> > <yamada.masahiro@socionext.com> wrote:
> > > On Sat, Jul 20, 2019 at 10:55 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > > > On Sat, Jul 20, 2019 at 5:26 AM Masahiro Yamada <yamada.masahiro@socionext.com> wrote:
>
>
> Another example that I have no idea
> how it works:
>
> drivers/net/hamradio/yam.c
>
> yam_ioctl() reads data from user-space,
> but the data structures for ioctl are
> defined in include/linux/yam.h

That is different: the hardware attaches to a serial port and may well
be usable, and the user space side just contains a copy of the header,
see https://github.com/nwdigitalradio/ax25-tools/tree/master/yamdrv

> If we want to fix this, we could move it
> to include/uapi/linux/yam.h

We could do that, or just leave it alone, as nobody would
tell the difference.

> But, if nobody has reported any problem about this,
> it might be a good proof that nobody is using this driver.
>
> Maybe, can we simply drop odd drivers??

Both the kernel driver and the user space side have a maintainer, and
I see no indication that it is actually broken. The driver is clearly
a relic from old times (earlier than 2.4) and we would not merge
this driver today.

It seems more useful to keep looking for drivers with a platform_data
header file that is no longer included by any platform for candidates
that may be obsolete.

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
