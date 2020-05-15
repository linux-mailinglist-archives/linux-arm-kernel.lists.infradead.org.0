Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E8D1D4B13
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 12:33:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VTv2/4oPAmnOf/qRKUErjz/LGo97N2mBSqUl4a49s4U=; b=rWoxgurRQtLKME
	1NvzS9Xgz9n/DMrom2Bc8gc7uJWlYiUUIqWSA+sERP8YWvPWBNLI3W0O3Mym70XxZWouPCIasceLP
	Bbt9D3C04kL8i2xde7Ktxw066rWCr5vnFWf9eSrHz2loQyRDj8ER9DY8rbY1JBx6eLUw6wnTYUfGq
	3pCmaubb+NIl8Pw6h8G0syVYCdnhctA80IPup/BpJR23D9EuW+V0Sb+1Tvt8TuKr6uy4cPlaBP1xa
	fkIpvKtoZs0F1Wxe+MyIBwCnAjz+4+ZP1gacfRnKwovZol8LS4GZ8GcqpxKcI0hs0EutCV+FwtOaX
	YFGeWBHPY/iy/tqdP4ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZXeY-0006hF-0Y; Fri, 15 May 2020 10:33:18 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZXeL-0006g1-Od
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 10:33:10 +0000
Received: by mail-il1-x141.google.com with SMTP id e8so1968087ilm.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 03:33:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uxCT2XVxCtoNmTqiWhqBcEudlvFd9wfrP50N1uK7vP0=;
 b=CEpylQx8/jmoucaFxOo6aDvRXqpObt3GOf3QrRyhcuqdkgrNf1lSuUtWU6UwC8nV1S
 K+DOmwilg/Su+oxqQRNpuw5BhEJzEnUgmkfMeb1QnS2dglQiL3VeTsFf360Qb+lPaXbT
 0nQQnlMc9696yhdUynH2cBEM6k1fMa3/3F3c2l8oJ27Z1IFD5oB4cjLYuvD4v7pLri3G
 0xv6Bymoqgq33uYlm9zg8EA2fYhDFv34nSO0Th6tb8BoyWAg03s5OSGrP2Dr7GVzGUfS
 4df6x/6gUqLeiPKccFIeBBtZeqnNF2UOUQ8eXik4yu/qS6URNVCNYGYQcHek958U0tWA
 pjGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uxCT2XVxCtoNmTqiWhqBcEudlvFd9wfrP50N1uK7vP0=;
 b=VaVlexMFbOmf9c2SycL865LItRHaBs6+owrVrkKIzmC9ugcixjEU2pFGScGBjkZOaq
 9E85YVF07vlFMhGloYt0yXYXW2cyDRB7+Zg0dEy8D7NQeDB2ztIM7v4fM43XLG8NVxRW
 vLznHpj8jH0fy0oBdZgIGTZDNatmFeXcHQei2RjEN+0VEyBFrwpmhrxlXQnakjl2/RXZ
 ZEdOYp3juFW2sOZy165hPor5FbyBpX1M0Dg7qKnYETD0+uCj9HPow7/eBnBplQZYpTh1
 hcHhMbCcQKxNA/MSxVGp4IdbTuMWl6bJzCeVdAOMydfvD/ReHSQN+eGmvREKVlgCXWD/
 s2Sw==
X-Gm-Message-State: AOAM533OZCYJgLqkpmqQnt86V2QOWRShtYqx/KHuK+wJzzwimn3kEAea
 d45SmuW3QoqnGtZEf018KzWhHGiN70bPhJAuW7Q=
X-Google-Smtp-Source: ABdhPJzaWAkOj9ePr5WQ4WHJ7n0TNGqqxQVutiX22A22NsEmGBBEDDIzhAQZOVUh6ahtJoIJUaUjWwbwXnRetbDtAY0=
X-Received: by 2002:a92:a1c9:: with SMTP id b70mr2367268ill.184.1589538784758; 
 Fri, 15 May 2020 03:33:04 -0700 (PDT)
MIME-Version: 1.0
References: <1589267017-17294-1-git-send-email-dillon.minfei@gmail.com>
 <1589267017-17294-4-git-send-email-dillon.minfei@gmail.com>
 <CACRpkda5VjjBdbruXTi33QBNb=VU6vK2zDE8yyQXoWw7=NQFeg@mail.gmail.com>
 <a4ebd7cd-5756-0683-135f-0f96be8a4a7b@st.com>
 <CAL9mu0Jt_xwo5pJfcx6G3grBuOaxLXvakpEjiB4gV3=bkiq2fg@mail.gmail.com>
 <818b93b4-4431-8338-cd90-ed125ecac615@st.com>
 <CAL9mu0L6d2V5qypPfOSeMdhc=DdHkcsaF4GysNG-vfDe5npkhw@mail.gmail.com>
 <2afd2853-e3bc-0c69-a0e5-8d4aa631a634@st.com>
In-Reply-To: <2afd2853-e3bc-0c69-a0e5-8d4aa631a634@st.com>
From: dillon min <dillon.minfei@gmail.com>
Date: Fri, 15 May 2020 18:32:28 +0800
Message-ID: <CAL9mu0J7s589e7weQ7vyi1iFCwPOmmyFHwqhwWfYwWVqJpN+Dw@mail.gmail.com>
Subject: Re: [Linux-stm32] [PATCH v3 3/5] ARM: dts: stm32: enable ltdc binding
 with ili9341 on stm32429-disco board
To: Benjamin GAIGNARD <benjamin.gaignard@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_033305_797605_E8EE8C8D 
X-CRM114-Status: GOOD (  23.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Alexandre TORGUE <alexandre.torgue@st.com>,
 Michael Turquette <mturquette@baylibre.com>, Dave Airlie <airlied@linux.ie>,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>, Stephen Boyd <sboyd@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Daniel Vetter <daniel@ffwll.ch>, Sam Ravnborg <sam@ravnborg.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Benjamin,

got it, thanks a lot.

best regards

Dillon

On Fri, May 15, 2020 at 5:34 PM Benjamin GAIGNARD
<benjamin.gaignard@st.com> wrote:
>
>
>
> On 5/15/20 11:24 AM, dillon min wrote:
> > Hi Benjamin,
> >
> > thanks for reply.
> >
> > On Fri, May 15, 2020 at 4:31 PM Benjamin GAIGNARD
> > <benjamin.gaignard@st.com> wrote:
> >>
> >>
> >> On 5/14/20 3:07 PM, dillon min wrote:
> >>> Hi Alexandre,
> >>>
> >>> On Thu, May 14, 2020 at 8:53 PM Alexandre Torgue
> >>> <alexandre.torgue@st.com> wrote:
> >>>>
> >>>> On 5/14/20 10:24 AM, Linus Walleij wrote:
> >>>>> On Tue, May 12, 2020 at 9:04 AM <dillon.minfei@gmail.com> wrote:
> >>>>>
> >>>>>> From: dillon min <dillon.minfei@gmail.com>
> >>>>>>
> >>>>>> Enable the ltdc & ili9341 on stm32429-disco board.
> >>>>>>
> >>>>>> Signed-off-by: dillon min <dillon.minfei@gmail.com>
> >>>>> This mostly looks good but...
> >>>>>
> >>>>>> +&spi5 {
> >>>>>> +       status = "okay";
> >>>>>> +       pinctrl-0 = <&spi5_pins>;
> >>>>>> +       pinctrl-names = "default";
> >>>>>> +       #address-cells = <1>;
> >>>>>> +       #size-cells = <0>;
> >>>>>> +       cs-gpios = <&gpioc 2 GPIO_ACTIVE_LOW>;
> >>>>>> +       dmas = <&dma2 3 2 0x400 0x0>,
> >>>>>> +              <&dma2 4 2 0x400 0x0>;
> >>>>>> +       dma-names = "rx", "tx";
> >>>>> These DMA assignments seem to be SoC things and should
> >>>>> rather be in the DTS(I) file where &spi5 is defined, right?
> >>>>> stm32f429.dtsi I suppose?
> >>>> I agree with Linus, DMA have to be defined in SoC dtsi. And if a board
> >>>> doesn't want to use it, we use the "delete-property".
> >>> Yes, will move to Soc dtsi in next submits.
> >>>
> >>> i'm working on write a v4l2-m2m driver for dma2d of stm32 to support
> >>> pixel conversion
> >>> alpha blending between foreground and background graphics.
> >>>
> >>> as you know, some soc's engineer trying to add this function to drm system.
> >>>
> >>> do you know st's planning about soc's hardware accelerator driver on stm32mp?
> >>> such as chrom-art, will add to drm subsystem via ioctl to access, or to v4l2,
> >> On stm32mp we do not plan to use chrom-art in drm or v4l2 because it
> >> does fit
> >> with userland way of working. We use the GPU to do conversion, scaling,
> >> blending
> >> and composition in only one go.
> >> As explain here [1] DRM subsytem it isn't a solution and v4l2-m2m isn't
> >> used in any
> >> mainline compositors like Weston or android surfaceflinger.
> >>
> >> Benjamin
> >>
> > After check stm32mp's datasheets, they don't have chrom-art ip inside. sorry for
> > didn't check it yet.
> >
> > for stm32h7 series with chrom-art, jpeg hardware accelerator inside.
> > does st has plan to
> > setup a driver to support it ? i prefer v4l2-m2m should be easier to
> > implement it.
> > co work with dcmi, fbdev.
> ST doesn't plan to create a driver for chrom-art because nothing in
> mainline
> userland could use it.
>
> Benjamin
> >
> > thanks.
> >
> > best regards.
> >
> > Dillon
> >> [1]
> >> https://www.phoronix.com/scan.php?page=news_item&px=Linux-DRM-No-2D-Accel-API
> >>> thanks.
> >>>
> >>>>> It is likely the same no matter which device is using spi5.
> >>>>>
> >>>>> Yours,
> >>>>> Linus Walleij
> >>>>>
> >>> _______________________________________________
> >>> Linux-stm32 mailing list
> >>> Linux-stm32@st-md-mailman.stormreply.com
> >>> https://st-md-mailman.stormreply.com/mailman/listinfo/linux-stm32

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
