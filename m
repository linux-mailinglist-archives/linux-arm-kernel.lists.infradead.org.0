Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 453B41550D5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 04:07:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ad8idd57KZA968T1WqAUfxMPbelHS6Mupj8Wm6fC77E=; b=avlFmuOUKrarTa
	YVJ5qK4RJrKVw7eUMcBzSxER70aSzUXc4rShktNDuCDMY7G0FREv/q6TCu14HLsfBT7akP3MwOiqk
	TPll81cUgF0GiUYAgJpeJe/AJhkDxstg1kFqPz26u72RsZZfBf/Txb9kWAQIw4P7KFTUdsFyo2TIb
	40fo49Hc38Qwn+sBaaN0li4jy6KQygBZV14+IH/MBbGxtkNGD027tMLgF/ZKLJ65SlSKHsr/mz20D
	EuuzOTs6jee+vSbsSV2nZvcplUP/tZ7w2YzTO1QQcexjdxJXQSDAR3mjrCai6Jdqe5WeUY+rBIzYm
	OmVXvE6U8+iie7X2lR0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iztyn-0004Sw-MH; Fri, 07 Feb 2020 03:06:53 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iztyT-0004Gf-F7
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 03:06:34 +0000
Received: by mail-qk1-x744.google.com with SMTP id x1so829431qkl.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 19:06:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=s3TxFkwUBzoZxEqhHCb5Dpa2HZc5hJhUkqC/KNrkDQc=;
 b=oPPLUfN/w8TsNQT5FmZWFRbcL2X+OQPCnFdi3CoAh86Vc1akO5DDdEuhA4jXAT8Tgy
 +D48c/EPGWfn/tkt+76tePp/JgvcAiokBGkYgxFjqw/N5OST8Z+xEkNgfLWT5N+Mpp7E
 8jzLtZ/IP75iaFWsIKlT18p0KVqhZqOaK+zxc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=s3TxFkwUBzoZxEqhHCb5Dpa2HZc5hJhUkqC/KNrkDQc=;
 b=mil7jwnHL9iiCsrmgBFXwWT6apDHrCPv9Mo7+rjTPT1W/nKDoOtjzbDo62PkWwK6r0
 QcYTEBPaKa2M91FbUvIHAr8y8RhDAPoFUPbWJsQXyipWB5Qd7xcDgzF3Id4wXK447CrK
 HWSoG2YSnG5EZYj5SsEIFBIKY4VYn7ZvuKt04YcAM8VgTT6arOuT2/d/jGpYqyrkSJBK
 3yMT98OlenNr57dCUycoyinkO4ggjabvpg7MG4RmtS2o4qMyCzi/hseX254fm86HZg46
 fXgS3CVxrfQaCKWbyJ6ppgNjuZ66YXkREALN3dc/H2PVRbSAIJuP3d4l+h/+bKaYEO6D
 P3sQ==
X-Gm-Message-State: APjAAAUN1V0zcon+Cj/X/mXRi5Q/31/aPbMuUEjPa0fqiPwGz1mBtYlO
 /tBOzF6oLsQQPmO0PpYxGo0FBVyg8UN8NfcrePciHA==
X-Google-Smtp-Source: APXvYqyylJuMDkKA7gnAsAhliXtut7vEzHdVLf8fTNkkiclmjbUpYD2oxeEcbD7bCMDcK99RCxtzazSCPbnSooRDfo8=
X-Received: by 2002:ae9:f003:: with SMTP id l3mr5455012qkg.457.1581044792080; 
 Thu, 06 Feb 2020 19:06:32 -0800 (PST)
MIME-Version: 1.0
References: <20200114071602.47627-1-drinkcat@chromium.org>
 <20200114071602.47627-6-drinkcat@chromium.org>
 <8b300f30-aa6d-89ee-77e3-271e3fa013f8@arm.com>
In-Reply-To: <8b300f30-aa6d-89ee-77e3-271e3fa013f8@arm.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Fri, 7 Feb 2020 11:06:21 +0800
Message-ID: <CANMq1KDEdbiHWzfZhvfpKG4cNOnp_x3bMO5rOaCuLzNJ5W4zEA@mail.gmail.com>
Subject: Re: [PATCH v3 5/7] drm/panfrost: Add support for multiple power
 domains
To: Steven Price <steven.price@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_190633_526816_B095ADE7 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Devicetree List <devicetree@vger.kernel.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, David Airlie <airlied@linux.ie>,
 Mark Brown <broonie@kernel.org>, lkml <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Hsin-Yi Wang <hsinyi@chromium.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 20, 2020 at 10:53 PM Steven Price <steven.price@arm.com> wrote:
>
> On 14/01/2020 07:16, Nicolas Boichat wrote:
> [snip]
> >
> > +     err = panfrost_pm_domain_init(pfdev);
> > +     if (err) {
> > +             dev_err(pfdev->dev, "pm_domain init failed %d\n", err);
>
> No need for this print - panfrost_pm_domain_init() will output a (more
> appropriate) error message on failure.

Dropped.

> > +             goto err_out2;
> > +     }
> > +
> [snip]
> > @@ -196,6 +274,7 @@ void panfrost_device_fini(struct panfrost_device *pfdev)
> >       panfrost_mmu_fini(pfdev);
> >       panfrost_gpu_fini(pfdev);
> >       panfrost_reset_fini(pfdev);
> > +     panfrost_pm_domain_fini(pfdev);
>
> NIT: The reverse of the construction order would be to do this before
> panfrost_reset_fini().

Oh right, fixed.

Thanks.

> [snip]

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
