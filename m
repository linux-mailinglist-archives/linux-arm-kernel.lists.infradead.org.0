Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50AAB1E3F5D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 12:46:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aBeT1+kM69YGfwlLpI9DFJTsz7lS7IapV65AxYEyn2s=; b=L7DfjfDo8bVumr
	K4bpG39yPCfIQ12qaPh4Ycj62fplUzWWspKRWZNYyVNeDcfA94y5rMoTfttf3yoTsWrzczcrAI9Qq
	PXSJlZKR11CPwvYJIurWf86ulJh2c9kXzyZ8NlWlW+3VpuRKNMrq0vZOJglPC8xDPtXhFxLm1biaN
	apix4xT/pGwdZI2KPqMPB+/s/LO3QDF780VRlHcUTNFGbCMmtJyga6KThi2pbmZ22vG0eR7xeG4ls
	YcCsygkrDdI61Ag67rdqh/EkUCzawAI6vMX4bZ509qtQFfk30HYB6q72RvpnbVA2PCOdSo1vkivzO
	Q1NYzxEYFmUzKv5MPDSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdta6-0003Sx-BH; Wed, 27 May 2020 10:46:42 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdtZz-0003S8-01
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 10:46:36 +0000
Received: by mail-il1-x142.google.com with SMTP id d1so976083ila.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 03:46:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jV5qqlg6B+ZoGgVeaw+flUZDliIqHLZTV9SrChni80o=;
 b=mlA8n5ltaxaXU5Jzq9gQDdiAdLm7WHNtzEPDDmBFHHI5aY7Pd0ha50AJnDMF9b5/Xm
 Z2ZZRZAcqCMtYbCKXy3nceVZD3RnzhXQfF+FLoOHKH8bFRYpXfHoR4oHaf9m4htN+X4B
 kHOeUbi0Es6U1y5RBtZATXe0Vo/gA2fGm6nOOsrDYa+k5mwPj63ViOoY1u9rdK/cGq+8
 TNYJXlgXwwoTT32s8D0Fll3n5Ele44yw479wCHp13y6U/wV9kEPFVAgD6FH+dQ8sbV4q
 7hsp0Qisu5/+NRQsczixdYHaJcgLXXiFIaskLiZHmpQiPYObZI0OhYc25SDBa5uqdRto
 J8OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jV5qqlg6B+ZoGgVeaw+flUZDliIqHLZTV9SrChni80o=;
 b=ieLzASkGqwxZZ69W1cMeqljD7f2SQ8beqLLR+l1vozYYDSoGh49XMYwqWItkxy/0BN
 4POohQDdGqcGiFacbsagz/uuKODSUIAKWpCMRyOEREweJa/VhSojtYx/Dh4/8m06Jc3A
 5nTs4k2kRnaMukwm/FDK1LP6mSK8rpaUVKAgVmvMlhgL7ck2UbFye0OOhb7FndkiVw5Y
 rFFUT9IafJqUJPvKtMZfoNJoZlAgS4A5BM/QmVJn6L9Pvkqboz4sKATuJUS321lVnWjp
 woPgvo4c8xPIP5YAjwv5kpe2MpHeF4ND9Rr/cCMs8zrM5B5f+vpYJGrS4vLB0f/YwZPZ
 ve3w==
X-Gm-Message-State: AOAM531AnI/3u05lu2hedKYyE6ftTZaJfszRwpo7MjsLlYBWgL/+407q
 EJyfgCbn5oax0F2mFqqAbIStwx0myHIXB6YMdik=
X-Google-Smtp-Source: ABdhPJxI8DmrhVOnjKvhDVgxWJ8+FIMyXLu/ryLZET7ClD2+54nQb9OTeBYG7x2X1lNxLOkc/LfdMlqtuwE8cn4F3ds=
X-Received: by 2002:a92:dc85:: with SMTP id c5mr4964053iln.270.1590576390035; 
 Wed, 27 May 2020 03:46:30 -0700 (PDT)
MIME-Version: 1.0
References: <1590564453-24499-1-git-send-email-dillon.minfei@gmail.com>
 <1590564453-24499-9-git-send-email-dillon.minfei@gmail.com>
 <20200527095109.GA5308@sirena.org.uk>
In-Reply-To: <20200527095109.GA5308@sirena.org.uk>
From: dillon min <dillon.minfei@gmail.com>
Date: Wed, 27 May 2020 18:45:53 +0800
Message-ID: <CAL9mu0JA=XRTj_HONQGtj74X05TAV0__dW2At0AAeymwNvJhEw@mail.gmail.com>
Subject: Re: [PATCH v6 8/9] spi: stm32: Add 'SPI_SIMPLEX_RX', 'SPI_3WIRE_RX'
 support for stm32f4
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_034635_038780_0A31EB51 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 =?UTF-8?Q?Noralf_Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Hua Dillon <dillonhua@gmail.com>, p.zabel@pengutronix.de,
 linux-clk <linux-clk@vger.kernel.org>, Dave Airlie <airlied@linux.ie>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 linux-spi <linux-spi@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 thierry.reding@gmail.com, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Sam Ravnborg <sam@ravnborg.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Alexandre Torgue <alexandre.torgue@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 5:51 PM Mark Brown <broonie@kernel.org> wrote:
>
> On Wed, May 27, 2020 at 03:27:32PM +0800, dillon.minfei@gmail.com wrote:
> > From: dillon min <dillon.minfei@gmail.com>
> >
> > in l3gd20 driver startup, there is a setup failed error return from
> > stm32 spi driver
>
> Please do not submit new versions of already applied patches, please
> submit incremental updates to the existing code.  Modifying existing
> commits creates problems for other users building on top of those
> commits so it's best practice to only change pubished git commits if
> absolutely essential.

Hi Mark,

sorry, forget to remove these two patch from this submits, will not
include it in later submits
which ack other's review result.

thanks.

best regards

Dillon,

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
