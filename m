Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B53FE1C87
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 15:26:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kuPH8RXRINV0iB9JuXWZ42z1OVdhMkm04BTml2VO+4c=; b=rjvKjnbeD7R5Fv
	aNDf3ncJuvxAMv3KX3OG1djU12B+VPHLnSVUEj9qaylIjYT8z+i/LvVzWaMBsjlD6KY8Aj+n4CItC
	sPbGZk9FyHw6eswHMV8t61L8N0vpSbsG/ECXwIqnbN90NRJY4rHUryxefmk0DZJ8cjOGPXLmlTQy3
	uu0NqCTJ7QRhdic257E0OO1dthFlPKzymC6TMGF2vEXz0p1VxU/19fwjzI77TNwPzaJyDZCdK8fRG
	DYsiYFQ8RiMeijbr0+XmmymK+9H4rfsrVHrCoJuzZEBRG7CnsEMZsjsyzuacmf3svaAEZfI1/rlMw
	vPYcvl9Kko6fscDyzj5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNGf6-0002S1-JF; Wed, 23 Oct 2019 13:26:52 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNGeu-0002Qy-Az
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 13:26:41 +0000
Received: from mail-qt1-f180.google.com ([209.85.160.180]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1N0X4e-1i2PvM0zWW-00wXMr for <linux-arm-kernel@lists.infradead.org>; Wed,
 23 Oct 2019 15:26:36 +0200
Received: by mail-qt1-f180.google.com with SMTP id z22so11719013qtq.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 06:26:36 -0700 (PDT)
X-Gm-Message-State: APjAAAV52XUp2kNOj/duZiCLOPQxsmP552J9MfTMWZwt7u89w+TiuHKH
 xr01wl0rX3+UB3HNLdsZh3KkCAmmEotfsqNyrZE=
X-Google-Smtp-Source: APXvYqxAZ5sW4MUn7hs0uPvxFoT5m55RrQo24Ahjlcek7m7qX3oExJe4OpV4BiqYQAQiBrLzW5XHJy3sKNWlb5r7mmE=
X-Received: by 2002:ad4:5011:: with SMTP id s17mr8084805qvo.210.1571837195091; 
 Wed, 23 Oct 2019 06:26:35 -0700 (PDT)
MIME-Version: 1.0
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
 <20191010203043.1241612-3-arnd@arndb.de> <20191023124648.GE11048@pi3>
In-Reply-To: <20191023124648.GE11048@pi3>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 23 Oct 2019 15:26:18 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0_iYkpK45HmLGYObEXkYbCjDjoDdZXS5Eybw9hPYC=CQ@mail.gmail.com>
Message-ID: <CAK8P3a0_iYkpK45HmLGYObEXkYbCjDjoDdZXS5Eybw9hPYC=CQ@mail.gmail.com>
Subject: Re: [PATCH 03/36] usb: gadget: s3c: use platform resources
To: Krzysztof Kozlowski <krzk@kernel.org>
X-Provags-ID: V03:K1:s0tH2VutZdBpFN5LRXCLKE/UyeQ9JSr0Xjo6j+jmPX/Vh7fwjtH
 7Uag4q3rHuGDNsCfLv+otcFY42lWsBqBQe7/4TzbawuYxN/qf9HMiA7AtS6T7smuax7HZwD
 gGXB5OiPqOr8RTbHGyYv5UimybcGAkIKp/703QmLW6Ps2m8GoLFJH7vukxA82OTpKoCMxbV
 Utq4xlZLOZCBs8sfoCIWA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ILhtJYzaePM=:FKX6kt1RQweIgiJl1VxajN
 m8A/Wuk5pDnQ35gGgkW15c7zFtFwxI8oPG+gAKB6Pa/HJGHqemkfpzdPP0wDoY5GIl6xx6N+U
 hx9leHkPJvzoUXM+U/Cr0k4q/RbKazpx7IlTdUN1NgNyyt0P8KxMOrKXhWPVezb/042aBr8F6
 6IYTaphL0MY6vqdg1ltcJtZVhgJVJgZNnHek5NEr+ZfAfojpMdH2ymMB22qsextl1h4tSh5rj
 IgsM6neWHn7etHG+hdvsmJvznl+Pix4bVMtFCx5mg1WnwzHCjVW6DNJs6IL/VDdjgWfGpPk0K
 MSAf5ssfMckSeZa/a9lqda8tCTgXN/MQ68Hkuvd89orAFvTFxrnvtye4rtmcZptwTg7HgN2Jm
 9bcln6GtNWpgVcX3pWOI2IW5D80MABqNel+q1tAZ37ax6IPNTuE7H0/4/VmelY6ZcUnhwdPdC
 f3Ko6i5sFz4MRuvgnZfrgSPJ/bLe/5iqEkPV6nldVrMi7KxJY18kF27g3Fknpc/Yd75YeT229
 WAmzyDf5lc6fpwYPCnOImxmVxRc4QXGPdfEUU6qhdCnT39E9AVCll1Cp03NY1VKeoNZjLU/lg
 djmt4qSnAWhBaxVuaR9i79yMSfAL6Uvz8HeU3R8GnIDP56/HjZRqfp2ELkSD53mEnlBpVKz52
 sG5vMlS5hevgYQRk8v6T3f3v4vw9l9A6n1d1dNmpCOj56HGpp+zyRO8i00LCwxE5xkXjK1bj8
 3fwC5ZUw4zAe5hwNHA0yvyPNhexDet9JAcAHAakUfE4ortOqgFi5kRHaYQOcscwz84kV3tucL
 pbygH9TJWgoS0u9/sUoHA4iUDRAjU510wNECOtVZBlekuF01xxt5l5J1udGOHKlpHW12Nv1DG
 wUIg3d4x1Q7lK33Bb3Ug==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_062640_672684_CF149911 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Felipe Balbi <balbi@kernel.org>,
 "moderated list:ARM/SAMSUNG EXYNOS ARM ARCHITECTURES"
 <linux-samsung-soc@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, USB list <linux-usb@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Kukjin Kim <kgene@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 23, 2019 at 2:47 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On Thu, Oct 10, 2019 at 10:29:47PM +0200, Arnd Bergmann wrote:
> > The resources are correctly initialized, so just use them
> > instead of relying on hardcoded data from platform headers.
>
> Generic comment to all patches - you seem to break commit msg lines
> slightly too early. In certain cases it makes them unnecessarily longer.
> Maybe your editor has to be fixed to wrap at 75 column.

I tend to use '/usr//bin/fmt' with the default setting. I think the idea of that
default is that an email reply with added '>' characters doesn't immediately
have to reflow the text.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
