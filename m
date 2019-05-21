Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CFF824C77
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 12:13:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ELHlsH1sHhCSuiTpieFcX6+ijmXCgbVfBXx6Tqict08=; b=KQn+q8dZlqTPHd
	Jag/GNi2rg1xsFXr5Sk+HNRAsIXAS3mUajxRJcI9YRviPeg361Hjuw07Q2LGz7A84B6+D+yzM5xyo
	17YmR6COVo1JF+3ukgk/XrvS4lcvPN0Ju/E9VuMFnY+NmuIjG4esmSuFJvf1ut9FYxdKNV57eBc3C
	7DusPUsKx7v3ud5MLgZ5T6uS9SLCaWKoMqSlFUH25TP7X5ujQ91x4DldTJMF26m+dveSfWk0mA1Qh
	mOxp9FmAOU6MNPx9scYp9NCTk9JplZJjWpfKa9ULHZ3LG8PEOB120fqRFv/JzslPYZUhstKPRvjr5
	obNi+9PzPWbezc/tphrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT1m7-00081G-D0; Tue, 21 May 2019 10:13:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT1lz-00080r-LO; Tue, 21 May 2019 10:13:32 +0000
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
 [209.85.221.51])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 918B621773;
 Tue, 21 May 2019 10:13:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558433610;
 bh=OufmRIYJQ0nbYLIvqyUNnOhI9i9mkYrk0LMrip+KEiI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ryfrH3Wpwo2adEt4OeWEHICRHYnhpBhlyK66YfjCP0puw45cAuqNoYm8thn9W3mkd
 kWQ4RlSa8sMKzjuBwR/QImifJYSWp8Q0Slhnu6jVxxtfSmQWup7R5D05uId9XdsFuM
 AxlIZzHLF+n+PEvOThSGF8l08U2XN+RCqv/PXWJk=
Received: by mail-wr1-f51.google.com with SMTP id e15so17922208wrs.4;
 Tue, 21 May 2019 03:13:30 -0700 (PDT)
X-Gm-Message-State: APjAAAVbfBZJoO/6/50gMajqsr7C6glsUXhGr3ZwKwQi99onoJ4ITcEk
 FNybk/7Zv1yFpbecEcsnUGI1TFoMlJBikcKQz0o=
X-Google-Smtp-Source: APXvYqzmTjjOL9v8MqfbpV2G5sAp6vg4KFpwg98Fgc4v9EVuXBUC7juwUBRFOmLuLrdEoaon7lkrW6QqVeiKkYCEMQ4=
X-Received: by 2002:adf:ee0c:: with SMTP id y12mr24087711wrn.34.1558433609178; 
 Tue, 21 May 2019 03:13:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190508073331.27475-1-drinkcat@chromium.org>
 <CACRpkdZb73vNyepcfjzEGAopc7BBxde_N1wxn7PSJ3aGC0=Gig@mail.gmail.com>
In-Reply-To: <CACRpkdZb73vNyepcfjzEGAopc7BBxde_N1wxn7PSJ3aGC0=Gig@mail.gmail.com>
From: Sean Wang <sean.wang@kernel.org>
Date: Tue, 21 May 2019 03:13:17 -0700
X-Gmail-Original-Message-ID: <CAGp9LzriFJTf_pqUDx3Tmp2dbJBy7Rv1y73Tq+Rw5WeXPT94aA@mail.gmail.com>
Message-ID: <CAGp9LzriFJTf_pqUDx3Tmp2dbJBy7Rv1y73Tq+Rw5WeXPT94aA@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] pinctrl: mediatek: mt8183: Add support for wake
 sources
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_031331_710555_E54B413D 
X-CRM114-Status: GOOD (  16.33  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Nicolas Boichat <drinkcat@chromium.org>,
 Chuanjia Liu <Chuanjia.Liu@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Evan Green <evgreen@chromium.org>, Stephen Boyd <swboyd@chromium.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 4:56 AM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Wed, May 8, 2019 at 9:33 AM Nicolas Boichat <drinkcat@chromium.org> wrote:
>
> > This adds support for wake sources in pinctrl-mtk-common-v2, and
> > pinctrl-mt8183. Without this patch, all interrupts that are left
> > enabled on suspend act as wake sources (and wake sources without
> > interrupt enabled do not).
> >
> > Changes since v1:
> >  - Move changes from mtk-common-v2 to mtk-pinctrl-paris, as
> >    recommended by Sean, to keep better separation between eint
> >    and pinctrl-common features.
> >
> > Nicolas Boichat (2):
> >   pinctrl: mediatek: Add pm_ops to pinctrl-paris
> >   pinctrl: mediatek: mt8183: Add mtk_pinctrl_paris_pm_ops
>
> All seems to look fair to me, but I need some official ACK from
> Sean on these.
>

sure, it looks good to me and thanks for Nicolas' help

Acked-by: Sean Wang <sean.wang@kernel.org>

> I see there is some discussion on a related patch set which
> also has two patches so I am a but confused how mature the
> two patch sets are? Are they at all related?
>
> Yours,
> Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
