Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1A61C4082
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 20:58:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zqk3qOhV5SU5O3Hsu8KIT3k9vTTSzTtHcv7Iups4RYU=; b=fzKXFhAKq2ikie
	2Om5Vzc0tvuv7KAThE+R9wxBszDs2Z4iK8sMBXmLPHmPXdGJ6etB8Cm4ZJZ5Uuy5bShv3oQ3TgnhY
	Z4pd6eFfdRVWqbCeNdVNuU4nl4U9EbJ9hYoPOsZLkFZNr72RN9wVf7j42K0NAyPL+xjSSZ8V7FrxM
	amtmFCGXXTxKqdQPHv6G6NIhffWf/cJoX79ns9Cn1ZQPZZDhnV6p7zITC+2iC3erqvAQwV73Ccqkd
	5zI4ssKvY+DZ4M+yEXQpHv8kmLc/vt1TPw8j7x57SBS58RYiahCv18XyNg+yJczB5nHEe98joW+P+
	Yja4Kz8T1zVnDi9lR8dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFNLh-0006JO-Iw; Tue, 01 Oct 2019 18:58:13 +0000
Received: from mail-qk1-f194.google.com ([209.85.222.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFNLa-0006Ir-93
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 18:58:07 +0000
Received: by mail-qk1-f194.google.com with SMTP id f16so12322614qkl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 11:58:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7EY66jo6PvKaSsJh31JkxqgQFmjMunJ0Kvj/PM6tpU0=;
 b=MlgA9zKYNc7EXODfDnSryPQ0Us9CSlNQ1D7AINUwPjVBWJ5o9yevSGyxL2D6OwcAQY
 tewY68XxThG8llxsdbrIoXEDcxZ+gEP9yoGLUb7qHk+OypKhtO7NNyByct2BSoUdTgmv
 xaAs1Eg/T/sUohnhS/fK2XVdY+LDELIgZykrhWwurejHJNUlT8ScS1fo9YxUpa4G4ZXI
 aWWftxCTgEnexBZ9Zo3Rz+O7i9MVPq3aJO/6gUeLMpAwXLAi9F+Mc9rI68sIJEmCBtYV
 UVh+TzNmnBdRtIyuxpBz/ucgOq6FKTKLXgF+5008NR33+gVC4qLkaxTU0XIhzyJuJ1xZ
 V9vQ==
X-Gm-Message-State: APjAAAXz8axavnhJSsXJbSEsCwRh8AIFUihjCZh/W7ZGGxfF4UWpCEN8
 dgZDo+P1CY13p5m9vmAMzrRpepIHTt8qBk6wFzz9BQw/
X-Google-Smtp-Source: APXvYqyDB8xPt1kofeJ9vy4DjGVaLfhn0UKXBeJHpGI6/IjnKwTQqHsuDY0fC/wEA0lObfyGUxpteBLFU4gleCtca20=
X-Received: by 2002:a37:a858:: with SMTP id r85mr7732418qke.394.1569956285225; 
 Tue, 01 Oct 2019 11:58:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190906153948.2160342-1-arnd@arndb.de>
 <alpine.DEB.2.21.1910011032500.20899@sstabellini-ThinkPad-T480s>
In-Reply-To: <alpine.DEB.2.21.1910011032500.20899@sstabellini-ThinkPad-T480s>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 1 Oct 2019 20:57:49 +0200
Message-ID: <CAK8P3a3Nhh1isvm--U8-s5F0bH1DHQ8pYR_+yB9xckhzyV=x3Q@mail.gmail.com>
Subject: Re: [PATCH] ARM: xen: unexport HYPERVISOR_platform_op function
To: Stefano Stabellini <sstabellini@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_115806_319496_5B071093 
X-CRM114-Status: GOOD (  14.07  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.194 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Emil Velikov <emil.l.velikov@gmail.com>, Russell King <linux@armlinux.org.uk>,
 Denis Efremov <efremov@linux.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 xen-devel <xen-devel@lists.xenproject.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 1, 2019 at 7:38 PM Stefano Stabellini
<sstabellini@kernel.org> wrote:

> Thank you for the patch. HYPERVISOR_platform_op() is an inline function,
> the underlying function that should be exported is
> HYPERVISOR_platform_op_raw. So, instead of removing
> HYPERVISOR_platform_op, we should change it to
> HYPERVISOR_platform_op_raw.

Ok, that makes sense.

> For convenience, and for testing I cooked up a patch. Arnd, if you are
> happy with it (in the sense that it solves your problem) we'll check it
> in the xentip tree, unless you would like to get it in your tree?
>

Please merge it through your tree.

> @@ -437,7 +437,7 @@ EXPORT_SYMBOL_GPL(HYPERVISOR_memory_op);
>  EXPORT_SYMBOL_GPL(HYPERVISOR_physdev_op);
>  EXPORT_SYMBOL_GPL(HYPERVISOR_vcpu_op);
>  EXPORT_SYMBOL_GPL(HYPERVISOR_tmem_op);
> -EXPORT_SYMBOL_GPL(HYPERVISOR_platform_op);
> +EXPORT_SYMBOL_GPL(HYPERVISOR_platform_op_raw);
>  EXPORT_SYMBOL_GPL(HYPERVISOR_multicall);
>  EXPORT_SYMBOL_GPL(HYPERVISOR_vm_assist);
>  EXPORT_SYMBOL_GPL(HYPERVISOR_dm_op);

Note that there are obviously no callers from any loadable modules in the
kernel, all users are in built-in code at the moment. As an API definition
it still makes sense though.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
