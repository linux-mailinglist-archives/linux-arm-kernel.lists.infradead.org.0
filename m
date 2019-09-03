Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24D39A69F9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 15:36:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J4wRnPf2HJ+n2l4TOeJs18FZppn33C8nJ87EcLw38uo=; b=NieeutHC+iq5Sx
	YW3H3yvXQwgvjbAA2AOYgxKF3/SwWELs1qDSEZjGK+2Sdi3MbjClMR5udUeUNa568I8RdvyzgR726
	R1W74yLpETS1StAQd7fwurUDpfNEfBeFhQcn+XL5LB3MR7AYRfj8+T9CqsTNrl4Gqnhu8tUiX8eV8
	E+gfHENzsjJIr6akcxeryv9g6ZP/TFZTb9/Vvcen+apJoobxK4r1Z6ZtzjzNM04R9zUbzxDDF7jiJ
	dQO9DvjdhSO+lQCS6BcN9Ih/54cM0Q1IZAAsn9DmZjEfsXDJU9jZB+ECyWqPkCcdUAfyKSvs1P/MR
	mjDn+eowWP9CAbDiBtBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i58z6-0007Qc-Ck; Tue, 03 Sep 2019 13:36:36 +0000
Received: from mail-qk1-f194.google.com ([209.85.222.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i58ys-0007QC-PS
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 13:36:24 +0000
Received: by mail-qk1-f194.google.com with SMTP id q203so6704865qke.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 06:36:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MQm/n4fmdwejgXomcQdi/U1plyqc35h60GF5knvLVoE=;
 b=FmVBivbZtTg1mB9AscMwIvb4Ga55Iii1jsH+FfuSiV+/2bazyqVZ0MZ1BtRiGgpbno
 VF+EUFcjO49XLEHvnC+fXIxIivjUjl7sa1o/WUE+Y6mJsfb1IYiByIb4Z+I/khmPjD4q
 n07dCghbH7KA57cjcWT7eAYqRUuidUAQGGLcN9ek14Mk2I16f5WfsKUAvEoHCvR1klGF
 mgqyIyC9l4Jxfkz0Q6z/P+bjkw3QqvOsngP9ctASAsvez4aThOl1hQEYbZwRzuY3ahg8
 /6xLh/5TZXmoxf76tQDZfrD6TLkTlqWeVxUhqnfjZKvf2RADYzT4SKbJnu+TYMwtT53L
 Wzcg==
X-Gm-Message-State: APjAAAXSnTbTN768wrEGDA7razziVTUEWm34o0cUJE7Qvl8hL4iSHMYh
 wicRCTE88nA8xkP9BP8iYpG2/J3L4MjXqi+uGN0=
X-Google-Smtp-Source: APXvYqxokXZKK+xS38jl/NxfGQk74Kg+k//pCh5gYf3dLbVtd+b8DLQcxTLn4ucrzAyZb7ukIrYk9CEidFd7D4FvNio=
X-Received: by 2002:a05:620a:b:: with SMTP id
 j11mr34354390qki.352.1567517780844; 
 Tue, 03 Sep 2019 06:36:20 -0700 (PDT)
MIME-Version: 1.0
References: <20190823123643.18799-1-geert+renesas@glider.be>
 <20190823123643.18799-2-geert+renesas@glider.be>
In-Reply-To: <20190823123643.18799-2-geert+renesas@glider.be>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 3 Sep 2019 15:36:04 +0200
Message-ID: <CAK8P3a1H1eQzg0pF4rBeUyByYTBs5nNnit-L=B1hqMaK_P7S6g@mail.gmail.com>
Subject: Re: [PULL 1/5] Renesas ARM DT updates for v5.4
To: Geert Uytterhoeven <geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_063622_827509_45C409D4 
X-CRM114-Status: GOOD (  12.18  )
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
Cc: Simon Horman <horms@verge.net.au>, Magnus Damm <magnus.damm@gmail.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>, arm-soc <soc@kernel.org>,
 arm-soc <arm@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 23, 2019 at 2:37 PM Geert Uytterhoeven
<geert+renesas@glider.be> wrote:
>
> The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:
>
>   Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)
>
> are available in the Git repository at:
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-devel.git tags/renesas-arm-dt-for-v5.4-tag1
>
> for you to fetch changes up to 57012813f1ba82412cdcc3665b04d4353b357378:
>
>   ARM: dts: r8a77470: Add PMU device node (2019-08-21 10:28:57 +0200)
>
> ----------------------------------------------------------------
> Renesas ARM DT updates for v5.4
>
>   - Fix HSCIF PM Domain on R-Car H1,
>   - PMU support for RZ/G1C.
>

Pulled into arm/dt, thanks!

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
