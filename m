Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 344FC1DD694
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 21:05:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mgT6PAWh31E0iS6h4WtvEo/TSRI9z3FuYPADrvBzkpI=; b=tBaWDHB9/sZ/m+
	e0I57gqVIWY3eciQkH+nzdsSmqt2zX+9dSbDDU4wlKPA4oGs9PNvMicXm8rW/dokJ6Nuyi0ZZdl7T
	3dCiuPU938be51In0ntn1eIbyVM/e9gxfMdXJd8FpgM4mytx/uxFfoPaRsffBDew0OtIsOZouB2bQ
	DJjbNEczleDRCZFbJ0+3Lms0t+rWODxafSdG0Zct0Bz4x+UZYjwncKsZ2beLFx2/o0kFgqdd9dJ6v
	TCdQa1fJ29SgpaecFbYfUALg5RnLLYC28qwgqkw4UFk56hsSxrV3R6JPnbWZDWGN+n0C1yeouM7Ta
	u2NM9f1rJizjFDV2uUHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbqVl-0004jI-22; Thu, 21 May 2020 19:05:45 +0000
Received: from mail-ej1-x642.google.com ([2a00:1450:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbqVV-0004im-CO
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 19:05:30 +0000
Received: by mail-ej1-x642.google.com with SMTP id yc10so10095717ejb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 12:05:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UqwEmbeOGGl5axCIs5ejLFLJkH/v9z3WmODPpOgQhPw=;
 b=ctQ6SI0E7ok+GU+8Ex3LjacXwtrRve+ePuCEcSI/JDcGOh6Bp1+Pw/A6KoAtjV59F2
 z+5NwYvl+gbitSQKeu7ZlBFIhO5ZeBNaIg/x6qgzUh/ARMapWSn6guWiuKv17MDKIHa4
 hpfKR6y5Gzk//on7cJenwGp+e9HRXublre33g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UqwEmbeOGGl5axCIs5ejLFLJkH/v9z3WmODPpOgQhPw=;
 b=gIq/+WORwiLesO2pe3nzHS3o5e2oZQ97HtpfcML9sh/hx3Nl4tFtb62rOzK7jKVjxW
 8ebKKRN3oVaY42CS+lBZCZsFcfn2ZGZx+erqjx4aBfcVyeLSJsJv8Jj3OferW+q35Bug
 tkufEpPVgDcEeNdEf5z7fYI7JWlaQdirJm/TZV6fEaIQRl3xcBwqppWWY17DATkjViYk
 ve5p+zs2JWkIuBpRbsEFLaJ4kHWSbLlVi+cDXnjvnia5Jg8qg/1E4z78Lp/UC8ft2/v+
 PyxoL7ikUDuJfpx0tw1744a7V/2d4hnEkHGHZ5z3WV/R/mdW/BddNmuSv18o678p40jl
 7jNw==
X-Gm-Message-State: AOAM530uSDNLWV9xrxqlU8edsbeakGzUTlgBVg0e9FHQhKlFyn3DWQnY
 gBrwIFFJ2LRBsl7odR5GwXhrhjrfvTvieg==
X-Google-Smtp-Source: ABdhPJxNSwPgjUbkmQTuHu6IDq3V1Ye9iwBytBXbEcHw5RZxLSAj52CnpBZtxhALjvmBLPhsODmJdA==
X-Received: by 2002:a17:906:2ad4:: with SMTP id
 m20mr5144865eje.324.1590087927329; 
 Thu, 21 May 2020 12:05:27 -0700 (PDT)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com.
 [209.85.221.53])
 by smtp.gmail.com with ESMTPSA id e18sm5661941ejr.2.2020.05.21.12.05.26
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 May 2020 12:05:27 -0700 (PDT)
Received: by mail-wr1-f53.google.com with SMTP id i15so7703221wrx.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 12:05:26 -0700 (PDT)
X-Received: by 2002:a05:6000:ce:: with SMTP id q14mr42592wrx.105.1590087609172; 
 Thu, 21 May 2020 12:00:09 -0700 (PDT)
MIME-Version: 1.0
References: <20200509080627.23222-1-dongchun.zhu@mediatek.com>
 <20200509080627.23222-2-dongchun.zhu@mediatek.com>
 <20200511160207.GA32476@bogus>
 <1589251221.8804.289.camel@mhfsdcap03>
In-Reply-To: <1589251221.8804.289.camel@mhfsdcap03>
From: Tomasz Figa <tfiga@chromium.org>
Date: Thu, 21 May 2020 20:59:56 +0200
X-Gmail-Original-Message-ID: <CAAFQd5DgrDwPEpdN9ErJWsHbMDpo2s_u3pwsqtpNwVk4g3_CdQ@mail.gmail.com>
Message-ID: <CAAFQd5DgrDwPEpdN9ErJWsHbMDpo2s_u3pwsqtpNwVk4g3_CdQ@mail.gmail.com>
Subject: Re: [V8,
 1/2] media: dt-bindings: media: i2c: Document OV02A10 bindings
To: Dongchun Zhu <dongchun.zhu@mediatek.com>, Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_120529_440368_A95AEB01 
X-CRM114-Status: GOOD (  14.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 linux-devicetree <devicetree@vger.kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 =?UTF-8?B?U2hlbmduYW4gV2FuZyAo546L5Zyj55S3KQ==?= <shengnan.wang@mediatek.com>,
 Louis Kuo <louis.kuo@mediatek.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Sj Huang <sj.huang@mediatek.com>, Nicolas Boichat <drinkcat@chromium.org>,
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

Hi Dongchun, Rob,

On Tue, May 12, 2020 at 4:41 AM Dongchun Zhu <dongchun.zhu@mediatek.com> wrote:
>
> Hi Rob,
>
> Thanks for the review.
>
> On Mon, 2020-05-11 at 11:02 -0500, Rob Herring wrote:
> > On Sat, May 09, 2020 at 04:06:26PM +0800, Dongchun Zhu wrote:
[snip]
> > > +            port {
> > > +                wcam_out: endpoint {
> > > +                    remote-endpoint = <&mipi_in_wcam>;
> > > +                    data-lanes = <1>;
> >
> > This doesn't match the schema which says this should be 4 entries.
> >
>
> Property "data-lanes" shows the number of lanes that sensor supports.
> If this property is omitted, four-lane operation is assumed.
> For OV02A10, it is one-lane operation, so the property is supposed to be
> set to <1>.
>

To clarify on this, the ov02a10 sensor supports only 1 lane. It's not
a driver limitation.

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
