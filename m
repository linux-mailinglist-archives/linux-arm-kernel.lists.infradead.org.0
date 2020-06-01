Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A24E81EADC1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 20:48:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cJscPcW2oGZouE6co4GCE9OZTX1OqpHw+W7p9FVQVl0=; b=qLS1aJk+rz0Xo8
	YW904Tm8T0lSpilWBqM2o5yndZPt+voSv44D5k5uihDbt1fcgtUhGWR8vA2El+keL3xOu1jwXcZuZ
	qXNCUJCb+Pk6qBoEL7HX6BkpTeLefEqG+AuUDRzyqfBayUUHQaiNcvB/FUljbR3Sb8a5ROTLVanOD
	EK1Tk7txr8RQd4e+VXoB71kyQd00dOZDMy5P83CuQ7RLDAzLvTOhs+XJOS+nnZVctE1jYQzE5VQrN
	OFbTbd4KY3CzRtZvKEnV9YnnY3x68aTD6nCy9flIo8BumEoqjkel1cwhPg0r6mwMVTjUc/482C8OD
	3KeB8m+DH5HV6lxJ8Y7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfpTw-00006d-DR; Mon, 01 Jun 2020 18:48:20 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfpTm-0008WG-FN
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 18:48:11 +0000
Received: by mail-ej1-x62d.google.com with SMTP id mb16so10200469ejb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jun 2020 11:48:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ll0Hxtpd9kUjoZ6368PBnHFjk1t/KP9A5doX0NsjS8Y=;
 b=HHXQoRKkRwnj5wx8VXlsES6HymXOV8W2MTPYDHm4YaFpj9bCVwM2Nxf2BlFpKZp3XB
 2Qh/o6KxlEKLbqinUeFXafMKslx9YzDJAaZs+8Unv53j5DBKoqiPBjGvg/IYBC7Q3JA/
 Ieg4HsYz/NKf3SaU/zciPOSrIIBePr/Z58XAE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ll0Hxtpd9kUjoZ6368PBnHFjk1t/KP9A5doX0NsjS8Y=;
 b=kkmjTfpO6Sfq2MwRHNfZBgNWpSbupBijkEGcP8GfbD6fnwwt9zOEM+uqx70o8pEks5
 shQ7CAN9reNzvyEFX5RTOkDpXpaWUDaOaClOu9sinNn/O3M0uCYIQrABdO44r6h6W7/j
 wxRWGNqjgMJ2EJZfO8npAcyGlFV7v7Nn1kyWTThQw/EZZcuucckXtr5hUzLksmMUQ9pE
 qoduEk9HXF9+JjllDflN0fAIqtVKY5zSO7AyTvyNb/fL5DlBzeJAvII0O5Y4iJaxrVdo
 R6fu6/1NUgFeMhvkYP0Zml6OBEiguhBJLRfz2eVuTLqb92oHSexlFKVwFe8SCFhdYE/G
 HE3A==
X-Gm-Message-State: AOAM530qB+yI6zBApW1uO05sxUqwG1KZkUMeen8EJaZ8m4ue2C0yoBjH
 NCTVeZPo6MeobHPWIKcGL3ORVT+JLJ3OJw==
X-Google-Smtp-Source: ABdhPJze8XDmtyUOF2Sn/7DwF/OCWnUPdjdg2I9/ZPsKUtjuf60exm1PzUp4fSTYFYeT4OxDIZtwPQ==
X-Received: by 2002:a17:907:1005:: with SMTP id
 ox5mr19841107ejb.480.1591037288602; 
 Mon, 01 Jun 2020 11:48:08 -0700 (PDT)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com.
 [209.85.128.48])
 by smtp.gmail.com with ESMTPSA id h9sm334144ejc.96.2020.06.01.11.48.06
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 01 Jun 2020 11:48:07 -0700 (PDT)
Received: by mail-wm1-f48.google.com with SMTP id f185so561320wmf.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jun 2020 11:48:06 -0700 (PDT)
X-Received: by 2002:a7b:c622:: with SMTP id p2mr590231wmk.55.1591037285905;
 Mon, 01 Jun 2020 11:48:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200518132731.20855-1-dongchun.zhu@mediatek.com>
 <20200518132731.20855-3-dongchun.zhu@mediatek.com>
 <20200521195113.GC14214@chromium.org>
 <1590139561.8804.390.camel@mhfsdcap03>
 <CAAFQd5CCsT_oM9aij_imV+NABzByi94RmCj97Dx0Tk3S0WDsTg@mail.gmail.com>
 <1590570089.8804.453.camel@mhfsdcap03>
In-Reply-To: <1590570089.8804.453.camel@mhfsdcap03>
From: Tomasz Figa <tfiga@chromium.org>
Date: Mon, 1 Jun 2020 20:47:54 +0200
X-Gmail-Original-Message-ID: <CAAFQd5Dgboh8om68546ADELX3g-0y40rdBxY+H3WsX5xAD1_FQ@mail.gmail.com>
Message-ID: <CAAFQd5Dgboh8om68546ADELX3g-0y40rdBxY+H3WsX5xAD1_FQ@mail.gmail.com>
Subject: Re: [V6, 2/2] media: i2c: dw9768: Add DW9768 VCM driver
To: Dongchun Zhu <dongchun.zhu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_114810_514673_B8E5A3E4 
X-CRM114-Status: GOOD (  20.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:62d listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Nicolas Boichat <drinkcat@chromium.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 linux-devicetree <devicetree@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 =?UTF-8?B?U2hlbmduYW4gV2FuZyAo546L5Zyj55S3KQ==?= <shengnan.wang@mediatek.com>,
 Louis Kuo <louis.kuo@mediatek.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Sj Huang <sj.huang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Cao Bing Bu <bingbu.cao@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 11:03 AM Dongchun Zhu <dongchun.zhu@mediatek.com> wrote:
>
> Hi Tomasz,
>
> On Mon, 2020-05-25 at 13:45 +0200, Tomasz Figa wrote:
> > On Fri, May 22, 2020 at 11:27 AM Dongchun Zhu <dongchun.zhu@mediatek.com> wrote:
> > >
> > > Hi Tomasz,
> > >
> > > Thanks for the review. My replies are as below.
> > >
> > > On Thu, 2020-05-21 at 19:51 +0000, Tomasz Figa wrote:
> > > > Hi Dongchun, Sakari,
> > > >
> > > > On Mon, May 18, 2020 at 09:27:31PM +0800, Dongchun Zhu wrote:
> > [snip]
> > > > > +   pm_runtime_enable(dev);
> > > > > +   if (!pm_runtime_enabled(dev)) {
> > > > > +           ret = dw9768_runtime_resume(dev);
> > > > > +           if (ret < 0) {
> > > > > +                   dev_err(dev, "failed to power on: %d\n", ret);
> > > > > +                   goto entity_cleanup;
> > > > > +           }
> > > > > +   }
> > > > > +
> > > > > +   ret = v4l2_async_register_subdev(&dw9768->sd);
> > > > > +   if (ret < 0)
> > > > > +           goto entity_cleanup;
> > > > > +
> > > > > +   return 0;
> > > > > +
> > > > > +entity_cleanup:
> > > >
> > > > Need to power off if the code above powered on.
> > > >
> > >
> > > Thanks for the reminder.
> > > If there is something wrong with runtime PM, actuator is to be powered
> > > on via dw9768_runtime_resume() API.
> > > When actuator sub-device is powered on completely and async registered
> > > successfully, we shall power off it afterwards.
> > >
> >
> > The code above calls dw9768_runtime_resume() if
> > !pm_runtime_enabled(dev), but the clean-up code below the
> > entity_cleanup label doesn't have the corresponding
> > dw9768_runtime_suspend() call.
> >
>
> Did you mean the 'entity_cleanup' after v4l2_async_register_subdev()?

Yes.

> Actually I made some changes for OV02A V9, according to this comment.
> Could you help review that change? Thanks.

Sure, I will take a look.

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
