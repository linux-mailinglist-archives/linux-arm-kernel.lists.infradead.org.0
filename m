Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2487315CD5D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 22:34:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1HIQq+mo/wdq392ETF4PZdCeQDqpfzh+6HUhGrA0lYw=; b=hfBTCtRbExCX+M
	stHfwQUuxFUniVlbnxCMNjS7DF9KrI4HJGH9yEBlFYXxXVgyNp2DjOgZFyU9rFKbQU6DpOP5rmfnr
	lAPFwvsOqCsGLm6fVlB3qdb0/+yXRXZu1PD1DD+jkVKxlmiKaRqdOEhcIeVzHU/n08XS0Xrkot3Uj
	FqdNa9MCZfRhtClZgC48dWWCv5AT6PJdLceSZ+uRMaAnM9tRc0nPJPCV8b0I260ZD8ws2LnIhcicG
	qxVAvOAtaEQ/GItudmG8URDIFFOyORHnp93BjDNX9zNypdKWzRc8PSsSszkWihcPcwRgmFStRdp6n
	uJh9M+7G2elHcHH18NWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2M7d-00085k-Tp; Thu, 13 Feb 2020 21:34:09 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2M7U-00085Q-I0
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 21:34:02 +0000
Received: by mail-wr1-x441.google.com with SMTP id u6so8568822wrt.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 13:33:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=thrfidZEXfFD2ylg+vGXSjTreZQAX0NX3YGDxc6rNSg=;
 b=pcr2ELWAOW3MYGXvvBfDBoRM3qbzHOybRv9WbmKycoQa37rKhRF10aLaXGi249l6iS
 ARkoY8V3FMzw/a/h9madJHc0Au9LYSL85VXUMTMd39Ux9GuOkx8cxAUB7/ly5y5NzrNS
 Tck0J2JXltDadRBBPPv7p6lc5sdxKWipFZLTdvv8O6Lp9sl+pVRdN+QxQ+wMLRaSvpJ+
 WVgcBFgbH9SyinnWl/BU0T12s7qVNKVSNOutpswWaMNQEkfBKbFZXVDi3897bnNcPr2M
 xfJqP+vS87iPr/LytrK/2SXbbpmD2qVbwKbospaYTl8FBXFjf+WuJdrpdYgcRsNTK95U
 IY0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=thrfidZEXfFD2ylg+vGXSjTreZQAX0NX3YGDxc6rNSg=;
 b=DOYZ4DFDUJEvbGLDLaGrL6yIE/YhF72t4mTj8In3gseuz2/5OdpWDOxl3DbmWViLnd
 gq9J2xYoB+jqPH5Af2dSGr0q/7TOW2I7KfT2fCgm4ag1HhwnwsbmL9LyowTXpD9dP1Gb
 tVDvF8syhrTo36OYzM8+sr8fZmznROIGE4FdzVCieHaEIQvTRk4jZUNtudukHPlF6nOW
 mX0qJk6xAm9pxWiD/y4SziybzjEggdieU3MBPY4Ly9sp2I/qPsDQI3WmNHyi5nmlNUmO
 oMaUfmBV9nfCzrqsUtjxQgHv6r8BfJz6hnl5VSgnQRLC7OI6abnqEsydX5og0ius4z07
 bVEg==
X-Gm-Message-State: APjAAAVXsM8crt3woySqPP43cN6UzevtY4lFb8cI7mXCh22HPMbLrWNi
 YtBDTBr2o78Z3tND9wLW6e5TWykzKA1hVbtsLWrJSg==
X-Google-Smtp-Source: APXvYqzr00y2DFZH5q6ouHgsRGIlUhbotdyNjCkLctIPWaycNmnAKQS7K2YoXX/AfBSCa4EPho4zGte6nnlUhEioJ/g=
X-Received: by 2002:adf:fd8d:: with SMTP id d13mr8318827wrr.208.1581629638081; 
 Thu, 13 Feb 2020 13:33:58 -0800 (PST)
MIME-Version: 1.0
References: <79b91017-b52a-8aff-4b9c-913ae655f7bf@wizzup.org>
 <185CD173-C13C-4D56-B3DE-9A8D7784963C@goldelico.com>
 <20200207163623.GA64767@atomide.com>
 <da14d6bb-f241-2dd4-8e94-886217a40ed7@wizzup.org>
 <20200207165344.GB64767@atomide.com>
 <20200207170149.GC64767@atomide.com> <op.0fmv4jevhxa7s4@supervisor.net28>
 <8a19bde5-f49f-ad58-3b3b-6df8a764f1f2@wizzup.org>
In-Reply-To: <8a19bde5-f49f-ad58-3b3b-6df8a764f1f2@wizzup.org>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Thu, 13 Feb 2020 21:33:47 +0000
Message-ID: <CAKv+Gu8Yh2Y5Rg6rVtL5zsm1CJhgRKjug3NW4j_uuuO+YhMzRA@mail.gmail.com>
Subject: Re: Nokia N900 on 5.4 and 5.5
To: Merlijn Wajer <merlijn@wizzup.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_133400_604806_99CED97B 
X-CRM114-Status: GOOD (  17.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>,
 Kees Cook <keescook@chromium.org>, Nicolas Pitre <nico@fluxnic.net>,
 Tony Lindgren <tony@atomide.com>, "H. Nikolaus Schaller" <hns@goldelico.com>,
 Aaro Koskinen <aaro.koskinen@iki.fi>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 linux-omap <linux-omap@vger.kernel.org>, "Arthur D." <spinal.by@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 8 Feb 2020 at 02:48, Merlijn Wajer <merlijn@wizzup.org> wrote:
>
> Hi,
>
> On 07/02/2020 21:20, Arthur D. wrote:
> > Hi.
> >
> > I was able to build linux-5.5 and run it on N900 with no problems.
> > Even WiFi works, mmc0 is in place too. It seems you're doing something
> > wrong.
>
> Well, I didn't try mmc0 on 5.5 (since it was also non-booting due to
> issue below), so I will have to try that this weekend. The steps I
> applied to build either kernels (5.1 with our patches, 5.4.18 and 5.5.2
> are identical, except for the defconfig for our 5.1 branch)
>
> > Were you able to build linux-5.1 with your scripts and run it on the
> > phone? I mean the pure linux-5.1 without configs and changes done
> > in https://github.com/maemo-leste/n9xx-linux.
> >
> > BTW, I didn't find STACKPROTECTOR_PER_TASK option to be enabled in
> > omap2plus_defconfig.
>
> Well, I can assure you it was turned on on my system after a
> omap2plus_defconfig. I do run Gentoo Hardened on my daily systems, so
> perhaps that somehow makes a difference in what defconfig is picked.
>
> Either way - the option is turned on by default after I make
> omap2plus_defconfig, and it breaks appended DTB loading, so I hope we
> can look at fixing that.
>

The STACKPROTECTOR_PER_TASK Kconfig option is only selectable if the
prerequisite GCC headers are found on your system which are needed to
build GCC plugins.

Is there any way you can enable early serial output one one of these
boards, to see if you are making it through the decompressor all the
way into the kernel?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
