Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7EDF1387E1
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Jan 2020 20:06:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=11jRQyBAMy3VLMGu6RvNjTsGOT/cd8wvI+JpjK4Wj/A=; b=AWdpQ2AA22mzTl
	fqEji0jqoutAo/cgZj1dU5+KRIVXkmeNeYmgtrxUVsG+zDGYt6Jo5Rc5PQ9/X9vOSRl5FVC6o1Zv8
	ZA8Zcg7BXgYvDzmpH27zQ1viuadNUNMLJRrtBS/CNgT4ytO/GGZT4oANR+BO7l/FiY2b5axgfFoLb
	Mu6kwhvOL54Zwm9bnsoOGENhHFp2tY8YVA0Kv69YQSDObvD62y66e6CJQb90UnZ6tKlcWx+z0iMAu
	2vAVOxQRam1ZK0vaZJNCtQYabxDMgPy1op2B3AzTEiQycupTehmiSsyS+7PfuEY3awhlWBk9kqrcW
	22ns7zNU+nbfGy51XQpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqiZI-0006ra-T8; Sun, 12 Jan 2020 19:06:36 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqiZ8-0006ql-Mg
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Jan 2020 19:06:28 +0000
Received: by mail-qt1-x841.google.com with SMTP id g1so7204446qtr.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 Jan 2020 11:06:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jaO6DXldCrIaBMyJwqkJKQl+dRJH1+v3O79foIjmK+w=;
 b=OASXytEQdwxuvxuYrJn1CT1UbK4h72OVEU+1oxm7Yt7nBPNLFWKkYCyOtRNEc+WD8t
 yZZ44oDl/qMFY0kgsnghuKDR4mnOiSpHoFea38iCQsaPpWp4fnXiNgZTyQwFccjbwdLQ
 OmqhNRWKeYGxD2tmkKAmJR/AUIog7TjRIBD8VZWnNgcLLxml7wthlgpkSDqipjifc3Kp
 9pmr016Mwq6RR+0I982TG0HeRULB5IIUgwzud8k9OOm28/0iT2xhRf9gvVG2hZUz+WsG
 dLJVEMZbQN45+Z043156ZYrP4YNG9hxfwUrC9JGW9FD5W/3+gJ6evo/RB5LWvy8eJkKA
 g0MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jaO6DXldCrIaBMyJwqkJKQl+dRJH1+v3O79foIjmK+w=;
 b=kMLolVgFkM9HC3m+QnHJ5IIAwZo5KkkHwD7HrEvYvMwJneHhpdzqBtb5xqZj3YbGbM
 1FWv/0ev/qlSgddg3x/JCuuJj6E5shqtBwr71vQXde/A3TmmrGWJby4QLBdX32h8PIVv
 WUWpn62z0jITX5vSpEusIlHuzExwiYGXVtrOztdqxBGbz4aMReRqMPKPbwc2yROnGmI9
 mxIir5Cj4kbMaQFgXqJ2cr69UrG04w9BGDC6/POIziVXqmXVH694plSXyp+TfL/1qBBs
 4LS1Fq9RxP+dyPzBhBXpgJ8N7vK5bPIKZ/a6MhuFw+Y5v3HTZc/HYem8i8bFnvlWNMK4
 D2cw==
X-Gm-Message-State: APjAAAXWH24Tsc2AWbOipA4OL3/MGCPEbz+9diNdCebOIBR1fsA9Zqeb
 DVrguSefetH/GDO/fpgDYHDVRhllqu5PEUJ+fgK7UpaL
X-Google-Smtp-Source: APXvYqzX9V8uv9owOlTztI+1XxTmljqwKOpo6Ikjl94ghETd6a6OA2Q5z1cvlvuZyuDPHqQWdVWK+bwSXyou0mVntJA=
X-Received: by 2002:ac8:5241:: with SMTP id y1mr7333431qtn.373.1578855982515; 
 Sun, 12 Jan 2020 11:06:22 -0800 (PST)
MIME-Version: 1.0
References: <202001120045.BaGKHeel%lkp@intel.com>
In-Reply-To: <202001120045.BaGKHeel%lkp@intel.com>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Sun, 12 Jan 2020 11:05:55 -0800
Message-ID: <CA+E=qVdq-zNJDOV_4PXEA_MfvkbXjPbaTVe1S66Zc0FVAdgpMw@mail.gmail.com>
Subject: Re: [arm-soc:sunxi/dt 49/52] Error:
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:54.19-20 syntax error
To: kbuild test robot <lkp@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_110626_767309_5E652B9C 
X-CRM114-Status: GOOD (  12.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: arm@kernel.org, kbuild-all@lists.01.org, Maxime Ripard <maxime@cerno.tech>,
 arm-linux <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jan 11, 2020 at 8:57 AM kbuild test robot <lkp@intel.com> wrote:

Hi,

> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/arm/arm-soc.git sunxi/dt
> head:   6163ce8467052cdfe42581036bc71fe4aac09eab
> commit: 7486ee80f62e610053a33e4f94fb04172c09a41a [49/52] arm64: dts: allwinner: a64: add CPU clock to CPU0-3 nodes

I can't find sunxi/dt branch in arm-soc tree nor this commit, 'git
show 7486ee80f62e610053a33e4f94fb04172c09a41a' complains "fatal: bad
object 7486ee80f62e610053a33e4f94fb04172c09a41a"

> config: arm64-defconfig (attached as .config)
> compiler: aarch64-linux-gcc (GCC) 7.5.0
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout 7486ee80f62e610053a33e4f94fb04172c09a41a
>         # save the attached .config to linux build tree
>         GCC_VERSION=7.5.0 make.cross ARCH=arm64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
> >> Error: arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:54.19-20 syntax error

Line 54 references "CLK_CPUX" in sunxi tree sunxi/for-next branch, so
I assume that someone merged sunxi/dt-for-5.6, but not
sunxi/clk-for-5.6 which exports this clock.

Regards,
Vasily

>    FATAL ERROR: Unable to parse input tree
>
> ---
> 0-DAY kernel test infrastructure                 Open Source Technology Center
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
