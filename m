Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C214B3967E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 22:11:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iCJDYNGTPu6dnHIM1PB4aJu7gS5PzyKa5E4DWUHDRx4=; b=lcca6vomJHGN16
	kY+bIvuqWYeiQltUhDftA1eIeXfJDEfC4zwpRpDjpfCU3kfVEdJrImp4Wb38BNAcRLYDc+CQ4bGqS
	/X/Tn3xFaaDRs/LlprICS6EU9zMXsAdhAbwqnNwEIe+IKgcvFOH0zv0hCkWgCw0YUGNzzjS+J0Clr
	R4Ywkvoc7LvTh4PwtSTV/An2+uVX3Ddc3AihzzptV2hYhZ61LCcG7oFmQD6U066EDVXlUvjQzBUcl
	XNnP/0VOojJ9Ezn+KqIGlGe0S4g+YDXHB1bmtUjim/mE43dm6SDrr56miRiXDdpnQhLRCVqsbfqIB
	x6TCiFeA65+lmB29CLlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZLCq-0002Vg-Au; Fri, 07 Jun 2019 20:11:20 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZLCh-0002V4-Td
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 20:11:13 +0000
Received: by mail-lj1-x241.google.com with SMTP id 131so2809131ljf.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 13:11:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+IlYOcz6MNUONhjjBYHuT8/QTI8M6rG//OnFFoEPmts=;
 b=JamJvjNSga7wum4UHIzRpQ2ggGqR3TS0Ky3ghoX7KcWNz8Sk+A3tuB7WPgceeqShLW
 nkFVY32F//ZpHLDi01RoWYF0DRnMpUJfvGw13D4xRwu8fxepDRERdpAgOw7kRX4gPwDp
 1UYD90Jfac/Amyi8nekd0EYx6+jSjy9ePtfCY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+IlYOcz6MNUONhjjBYHuT8/QTI8M6rG//OnFFoEPmts=;
 b=WOTZn3+CfGQfRQRS73LUvIJBvDF5fB4RxDf3xgKkBiIXZvA5+y1PrboNUv64HwOEaG
 or6GR1rEvxv9yBQyCS03XS2w3nxo2CcMerISnXdny9GYIWL7BEYLcq7fTAabLWZ9Euq3
 uPXcULvRBpMqFzpc5sHTU6pgFzYmREMETH507D8UAa8CDM1+WRealWRtH3phWkl93X58
 QBCkZz913uM0fkoQ+9ROcGCUBDua3uGEKOx6nWJBuC3pZ2ybnLKFd/h3xTpsjtKj/a/c
 DhP/WNggipId9BR+a46ev7t1R2dXrW5KZsuFAwsZvfFXI5pOrzALdbkjD8MuGia1bQkO
 Xcdw==
X-Gm-Message-State: APjAAAWkXXTznWUSEU9O0qSPMl8E9iG5hA1MKY6bN7GrewglAkw4XJ7d
 EU+G+GJ+7DVJB/pwUZBxs+DwMUAzuIc=
X-Google-Smtp-Source: APXvYqyw68JygG24vF6JPZXcAfk1Vqf6eMyBVOT3Gmt9w7QcP5lRm/ARWDDNOlOmBtwBcDWL7vsjrQ==
X-Received: by 2002:a2e:654d:: with SMTP id z74mr13293151ljb.111.1559938268986; 
 Fri, 07 Jun 2019 13:11:08 -0700 (PDT)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com.
 [209.85.208.180])
 by smtp.gmail.com with ESMTPSA id u9sm566259lfb.38.2019.06.07.13.11.07
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Fri, 07 Jun 2019 13:11:07 -0700 (PDT)
Received: by mail-lj1-f180.google.com with SMTP id h11so2816333ljb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 13:11:07 -0700 (PDT)
X-Received: by 2002:a2e:4246:: with SMTP id p67mr29114030lja.44.1559938267141; 
 Fri, 07 Jun 2019 13:11:07 -0700 (PDT)
MIME-Version: 1.0
References: <c8311f9b759e254308a8e57d9f6eb17728a686a7.1559649879.git.andreyknvl@google.com>
In-Reply-To: <c8311f9b759e254308a8e57d9f6eb17728a686a7.1559649879.git.andreyknvl@google.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 7 Jun 2019 13:10:51 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjKy5503vYoj3ZizGz69iBos69wdrEujojuri67vV=BVQ@mail.gmail.com>
Message-ID: <CAHk-=wjKy5503vYoj3ZizGz69iBos69wdrEujojuri67vV=BVQ@mail.gmail.com>
Subject: Re: [PATCH v2] uaccess: add noop untagged_addr definition
To: Andrey Konovalov <andreyknvl@google.com>, Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_131111_967311_0E5B1EA6 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Linux-MM <linux-mm@kvack.org>, Khalid Aziz <khalid.aziz@oracle.com>,
 sparclinux@vger.kernel.org, Felix Kuehling <Felix.Kuehling@amd.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Dmitry Vyukov <dvyukov@google.com>, Dave Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>, Kevin Brodsky <kevin.brodsky@arm.com>,
 Kees Cook <keescook@chromium.org>, Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>,
 Linux List Kernel Mailing <linux-kernel@vger.kernel.org>,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, enh <enh@google.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 4, 2019 at 5:04 AM Andrey Konovalov <andreyknvl@google.com> wrote:
>
> Architectures that support memory tagging have a need to perform untagging
> (stripping the tag) in various parts of the kernel. This patch adds an
> untagged_addr() macro, which is defined as noop for architectures that do
> not support memory tagging.

Ok, applied directly to my tree so that people can use this
independently starting with rc4 (which I might release tomorrow rather
than Sunday because I have some travel).

                  Linus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
