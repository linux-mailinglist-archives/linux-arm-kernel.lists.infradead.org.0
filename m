Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41FBF6EF90
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jul 2019 15:55:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RIQIYlm+1SNyhWAAP8xvnVGOgvDISFcEzWcw2nDyQQ0=; b=S7i9PaOa79KO1M
	yW4PRr3kgIWkQ5tUwIMo81CMPGtQ9pc6e+mmhm5i31FbNkOfUuNU8sG/CAbPveHSuX1S3ax5DjdFD
	TtrCi63Wa9WZtyhLfV2U2Y6V4SAAjjoknaJMPI7H4mC+eKOj5xUBCS24O8Xv6DfTuhBrhQNVHDUoD
	+fXmOrxD9/go585rTvqyoXFa0pqTcpmSdAErHIqzAVqLI5GmZFMT2Ru30Kzt71KP6hyl31+DEB4+D
	qcqrX0dYm8YwrVyrxF3veVwGwZ20TaHpjGq0bygyztvSmVnn2Rmk9wfuD2U0p+WLe+wY7kF5WZ1fh
	lgKQhT86iH3g06DQU4+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoppj-0004Bc-ML; Sat, 20 Jul 2019 13:55:31 +0000
Received: from mail-qk1-f194.google.com ([209.85.222.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoppX-0004Ab-8w
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jul 2019 13:55:20 +0000
Received: by mail-qk1-f194.google.com with SMTP id g18so25398740qkl.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 20 Jul 2019 06:55:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ahfkEPbPjVvWh/5AReF1hyMp+EpgnJ/V5qr8O+zjfvU=;
 b=NMcD/VjTLveph3TON/t/XV2O3SxAGl0LR+1f2XPntwU9xI1c9HN0sDRcIZfvMRK/ZV
 VwkiqBRxLMw57T2AYcC1r3j5rrHqCz8YDSeehd5PeClyOPbcAHVsjlgt/vHPGvJExWpd
 pg8uCO2nPyRDHzP2hdvn7zd/NbXw4eJFi7sCZjBR7eZ2/0Uk5dFvMeqZZPB8+oL0wSoj
 lwwS8Z4XbL8PAhirL3ODG2nR0dl51EFXvA9SPVSKjO8vzgLVYRXWLAKf9Cwr4YdWWfRM
 MkcOlKAoD4UyMwT3OHF0tNbb9JHlHU8FDOT7qjobDbrHXvL66jCaD9z4qTdP71ILjB3q
 RK2g==
X-Gm-Message-State: APjAAAX2eH5S4zWEP6OljJOn6STjLkWpzvvvRe0gYw87arir44Mvjdz0
 vN0hn8KcP9lU008ckrJBjOjdYgi5tHxsBPIQQHA=
X-Google-Smtp-Source: APXvYqwhpGKT7zSA9mD05iko8/JxymPyqR8SfuFym9s9fXdmypb7BApcUOD8RFbAF7Y64iyunzIOn2UQJBP4Vo9uteI=
X-Received: by 2002:a37:4ac3:: with SMTP id
 x186mr37928430qka.138.1563630917260; 
 Sat, 20 Jul 2019 06:55:17 -0700 (PDT)
MIME-Version: 1.0
References: <CAK7LNASyzmYjjBkFxRc06rqf36-en-bvJvrKcg6iiRfjoPCxhQ@mail.gmail.com>
In-Reply-To: <CAK7LNASyzmYjjBkFxRc06rqf36-en-bvJvrKcg6iiRfjoPCxhQ@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Sat, 20 Jul 2019 15:54:59 +0200
Message-ID: <CAK8P3a2AeUpmNfFLJSvHT=AJ0kFRT2B=TWDm0HsTwoHt2jQ0gQ@mail.gmail.com>
Subject: Re: [Question] orphan platform data header
To: Masahiro Yamada <yamada.masahiro@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190720_065519_318558_1A89460E 
X-CRM114-Status: GOOD (  10.24  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.194 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, masahiroy@kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jul 20, 2019 at 5:26 AM Masahiro Yamada
<yamada.masahiro@socionext.com> wrote:
>
> masahiro@grover:~/ref/linux$ git grep netxbig_led_platform_data
> drivers/leds/leds-netxbig.c:                          struct
> netxbig_led_platform_data *pdata,
> drivers/leds/leds-netxbig.c:                                 struct
> netxbig_led_platform_data *pdata)
> drivers/leds/leds-netxbig.c:                      struct
> netxbig_led_platform_data *pdata)
> drivers/leds/leds-netxbig.c:    struct netxbig_led_platform_data
> *pdata = dev_get_platdata(&pdev->dev);
> include/linux/platform_data/leds-kirkwood-netxbig.h:struct
> netxbig_led_platform_data {
>
>
>
> So, what shall we do?
>
> Drop the board-file support? Or, keep it
> in case somebody is still using their board-files
> in downstream?

Generally speaking, I'd remove the board file support in another
case like this, but it's worth looking at when it was last used and by
what.

For this file, all boards got converted to DT, and the old setup
code removed in commit ebc278f15759 ("ARM: mvebu: remove static
LED setup for netxbig boards"), four years ago, so it's a fairly
easy decision to make it DT only.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
