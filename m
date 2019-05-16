Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD85A205A3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 13:56:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dR7BPI/SygrUusmCV20YBoQ9WSJINT7any1OUBPNO+E=; b=WNIfaO+wAjLlun
	oVQH5v5t21JjZhaN1loVpoOlhscsWqZE6GH7gwOJ4mxSTR0jrSy14aaUFJXzIG8EYe8YG6uIxRdY5
	siU3wm+EMy4PlenFoC2FqgZuR3spUY0Ie5x8j6vjE7zeIznEh3YfsnnZqHNl+hO7Iq5XZ8cbjSlXd
	hB9XdNW4UEt4R+vduzMqRoMl4Wgq8H/7yEoh+ZaD1XYCr5zha6VZho8rCiQc9od2r7dXA9WYye/5h
	gawXQBh5oTreVKgFm6WFt0PvuEIaQMD9i+XPT5ioWTQauEWZrj+LURwSOdcJXPLGLgIZwHrMTILks
	TwCo4sWgCTSGuXZAzsgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hREzY-0001Dh-2K; Thu, 16 May 2019 11:56:08 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hREzP-0001CX-42
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 11:56:00 +0000
Received: by mail-lf1-x141.google.com with SMTP id n22so2370580lfe.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 04:55:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hO177V5YstoHgCwjJTd6QkNHj63uQ+DjBf4IdD4xe9U=;
 b=CUsyorl2ruAim6PW7M+EDIOkom4xJQXASAd8/umQpC24MPSnfKP1z/6sQVViheAjF0
 5EF6lw9qAc4E/11MOWdtZ2lMTogd4pz+rY65IAbvn5hJKCxL+SiUDPTXK282GvCmqoI2
 a+kpWjK+OlweLcp2FOnLoidRq0bCigIVTWoEXSiQCceK1hoY3IjV2kvY8FS2763FKYOx
 mmYRyQFEUN5P1zjdQKTaqL8RPcrTsLQCqiE5d2NcP9FjR/q3Qg+hsPXIOx8QdjBN+7uz
 t98bs17n0trMpRKcS3QNHg3KgD1RrGZIoEeGHYD36OZfMEBNLCuJ/AEhMCzHStHnMDah
 2jew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hO177V5YstoHgCwjJTd6QkNHj63uQ+DjBf4IdD4xe9U=;
 b=lwvNDjxzNYrqQeUADDaA+uye+G90ivnYg72AdXX3LLqY2+F6a/Lg7VM2N0LojbZHKY
 wo1CjKM2L2zbnSy5By1xwWBf8OnM4Piwyp66aVw2ZL/3IUdA0MRJtikPbADuLMaHZ9dz
 NkfunHAnSZoQ6Cpz8R9PAHLSL0VQXRWPbH1MPeP4q4xyOuEoRkRtMzvEPdtz6jThLZxF
 XQ3UVWpz1SZSY6YoMIvNx5ij+CX0LwdyNCuFwW44gHNHrt3tr85NnQDA0wWYuQZju7P6
 +6puUXxGjACd4GJRkonBg849E7+nc3wfHB+lG+IQLqFX1NsLdr6/KPLMU+/I8sO3RX66
 uQ8g==
X-Gm-Message-State: APjAAAVB5j5bYGGsH6Q2XQC37xLIzxrA+iHegz6xDMn0ox44Z1gDKBH3
 JFen/MgcCDB6swEVEMUG/5ZwxNxbOA1XOxQF/D92TA==
X-Google-Smtp-Source: APXvYqyZ8YtOPeMszJlq1lN+VhvgOvRHSsqzsCTDLezRY/k3Tb/Z9ZQ2wRmo8YDVATi18dFWIID2WHYRpAKSQEcvW8I=
X-Received: by 2002:a19:cd82:: with SMTP id d124mr11861237lfg.8.1558007757283; 
 Thu, 16 May 2019 04:55:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190508073331.27475-1-drinkcat@chromium.org>
In-Reply-To: <20190508073331.27475-1-drinkcat@chromium.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 16 May 2019 13:55:46 +0200
Message-ID: <CACRpkdZb73vNyepcfjzEGAopc7BBxde_N1wxn7PSJ3aGC0=Gig@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] pinctrl: mediatek: mt8183: Add support for wake
 sources
To: Nicolas Boichat <drinkcat@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_045559_245517_BEAB7A8D 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Chuanjia Liu <Chuanjia.Liu@mediatek.com>, Sean Wang <sean.wang@kernel.org>,
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

On Wed, May 8, 2019 at 9:33 AM Nicolas Boichat <drinkcat@chromium.org> wrote:

> This adds support for wake sources in pinctrl-mtk-common-v2, and
> pinctrl-mt8183. Without this patch, all interrupts that are left
> enabled on suspend act as wake sources (and wake sources without
> interrupt enabled do not).
>
> Changes since v1:
>  - Move changes from mtk-common-v2 to mtk-pinctrl-paris, as
>    recommended by Sean, to keep better separation between eint
>    and pinctrl-common features.
>
> Nicolas Boichat (2):
>   pinctrl: mediatek: Add pm_ops to pinctrl-paris
>   pinctrl: mediatek: mt8183: Add mtk_pinctrl_paris_pm_ops

All seems to look fair to me, but I need some official ACK from
Sean on these.

I see there is some discussion on a related patch set which
also has two patches so I am a but confused how mature the
two patch sets are? Are they at all related?

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
