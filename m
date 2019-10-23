Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B15B5E19DE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 14:21:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y7KrqyryZGdgskyMEv2fsTKZDepMnju/I+m6gKdtL94=; b=EAWDcOz35KR5iO
	0BCtXQowCMnm+fLcihf1EGhwqwrSDgS9JgsNWjQoi71BebugKLC5Q2YfVMccxGdh4mCT/lqWNbugg
	tY4pmtVgKK+xwZS+HrJVDXLsF+cSFzyb/tqIKZ8bBiR+ilcT0ew5yWytniSf2f1MDXJv5AfvQoG2g
	7GNLy22thrGV++zQK2PAU4BDkdeNBDvnbkTt+EDDtSU1SKu8GjHb2wrBhHThGzPmA5OOAvUZpXXW4
	rgMrH3mUuAXZgpJLB0TNOdW1uazVd5WT4+3KalSHap3PPTXG2bSrphgukcfEkw9ZZ+KC4cKXO1SG5
	6jShXPtY1aY3Xnldf/hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNFe8-00086Q-5i; Wed, 23 Oct 2019 12:21:48 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNFdv-00085a-MI
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 12:21:37 +0000
Received: from mail-qk1-f175.google.com ([209.85.222.175]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1N9dbx-1htwUq2Air-015bTs for <linux-arm-kernel@lists.infradead.org>; Wed,
 23 Oct 2019 14:21:33 +0200
Received: by mail-qk1-f175.google.com with SMTP id f18so18917454qkm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 05:21:33 -0700 (PDT)
X-Gm-Message-State: APjAAAU9FPDZPVcrl+nael04o7NRxQLXp9MUhq17vGbGPDnweBQ+S1Xa
 ld8VaKQSvnmdXmg8pszxIan+a0NdYl0GeAGFt5Q=
X-Google-Smtp-Source: APXvYqywolZK5PhhD1Ci5xyPoP7evjr9xymo+jxueW74UL7uRR5HCmN3nKfxdtCNF+ok3sOC78HxeesW7dFmNGJpN8M=
X-Received: by 2002:a37:a50f:: with SMTP id o15mr6758290qke.3.1571833292457;
 Wed, 23 Oct 2019 05:21:32 -0700 (PDT)
MIME-Version: 1.0
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
 <20191010203043.1241612-4-arnd@arndb.de> <20191023100958.GB10630@pi3>
In-Reply-To: <20191023100958.GB10630@pi3>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 23 Oct 2019 14:21:15 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2YtMV2rSkR2yq5-47BmDKViROrwxaix8MsKxPSvbsz-w@mail.gmail.com>
Message-ID: <CAK8P3a2YtMV2rSkR2yq5-47BmDKViROrwxaix8MsKxPSvbsz-w@mail.gmail.com>
Subject: Re: [PATCH 04/36] usb: gadget: s3c-hsudc: remove platform header
 dependency
To: Krzysztof Kozlowski <krzk@kernel.org>
X-Provags-ID: V03:K1:a0X66Kv5x12ZqEb9n5zVCXflCZXvPvwG6Jhf0u5LjGJNLYITs3u
 TQsvj/r3rd8wwxVVIdAstM1PLOHKIt+D68V1iCZDCHwO87xVzwigOtS36otDeh0svqL+nI8
 6yGGnv5KuLJwyD+dgk8ZS3Xl7agEynTvM1sCrV2XgYHgfXkyJokpTxGZRbD7zhYDjHr2K/Y
 4f4l5VlCxTAu9yaSAVuHw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:fxidf6GWIyM=:1mxCeC2mJR1QnnMU+YdI9P
 qjV7+ldhekycKpMSo0XHjOTj8ci2HkpoZzzG1vYWdV3InSbA/vEKd+7+hTSdnLWoOv7NxT//y
 Yt8FHFTKMRBJu+kctbEeUQP+wxL89iLLbLHNpyyL53brGbSSJutVDivik6ttMkLPZhm89Aa88
 77NCC5gNmaV6WzmRl9Uc1MSWjgmdovTj4tSB6kYyWqkaWympoZYhX1bDFUR570D4h2C7qTh0n
 /UzrUGOtsHOAdmTkx64UkIbECiiW3NHc1kpYkFiIKkOv3EBJ/KvSjcVm0lh3SPvuzauj3xvz/
 g2nEPYNLuoL7faHQvon3BRu1lNQy+mBxJrL3Kd+2KhBzPkRa5sgSvK1u6PNlcVYyTSDqHxbLi
 e5snbDKzKLXbPtdyqpRO8WZ1WkVkgUKGkGqIRCmmSlVN2OJF4uCiZDtjKfZ+Xt5to3Us9ceB2
 3GyKPKE/v0pWh9hswxNoj13bJQ+uETvyOVagidHRyKevK9n/GDXyCfftI1iHyPnYBsw8WKJVn
 UXjQLyT/lVbNWKHX2mBSP01veJycNr1YH5I/h+AW0KHnHqVrMdTeSlgbDNPK9MrbflfyAHvr4
 sUfGTngACNf3SeDqqp5xWw1XAJx6cN+ZbCwa8UWX+dXv1q22RqwslMtGHBwypi4w78gGfpI9a
 hX4r/lU35QEwg2M2gBnLhiLX5v56iiEuqND79fMf88Q9m05IwUtXPH2oSfxZEodawRZlssP5i
 25aoZ4rY677j5+K23Gq9g0aO1RsYwLxWV0Fbtv7AnWP3zFY+nmCSrTUAwBwxIKdvQoP0JY9Kc
 Y+hIVBMwxbaDHGkWNgqKeDr6rOws3q+925U+a3dzGr0Q84nshO0WxFXvLtIgUyWFfMmnVWpBu
 Af+h4vrIv1gMXK1RuSMA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_052136_019916_7775C22B 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
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

On Wed, Oct 23, 2019 at 12:10 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> On Thu, Oct 10, 2019 at 10:29:48PM +0200, Arnd Bergmann wrote:
> > @@ -1188,7 +1139,8 @@ static int s3c_hsudc_start(struct usb_gadget *gadget,
> >
> >       pm_runtime_get_sync(hsudc->dev);
> >
> > -     s3c_hsudc_init_phy();
> > +     if (hsudc->pd->phy_init)
> > +             hsudc->pd->gpio_init();
>
> Copy paste error - phy_init().

Fixed, thanks!

> Are here (and in previous usb gadget patch) any dependencies? If so, I
> would need an ack to take it through samsung-soc.

Yes. This patch should not depend on anything else, but later patches
in the series depend on it, so I'd like to keep everything together.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
