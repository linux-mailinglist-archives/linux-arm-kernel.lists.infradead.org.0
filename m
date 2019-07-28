Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E46A77EFA
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Jul 2019 12:02:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TpXVq5WozXfPPMOJcA27eDwl5el7YZUAZQF/G1ZRjJ0=; b=Y2oeHwvhugngiJ
	21sn85Dtkop47za8ioRoupqeGjTLHv08hH6+Pl402QoJX7DO3gXrXAFAogLruTXGMS+wuD5z9pgrX
	f5MrMGzFUhf8a8I8GWJT+vuslL1GId44od7BCHB9ljcQMByUTeN3NuZiVNp8AQyLR4V0wjiWgtu3w
	N31NSU+hbOJWlvXzyx1J98fDJey7ewxc0tnAjCh7mZM5frzPgjjtGQKnzT29hRqIqQn8ctEaARRGd
	ThuPLFv2Oe0CtbqdaRFFsrJhe78hqgWJZAYyUXViJDb3Rzm7acj0KjNBb1/EJDx0qC0eLXwO2jVSU
	0df+ezrx1JShh9bFEnYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrg0u-0007bi-A8; Sun, 28 Jul 2019 10:02:48 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrg0g-0007bN-0U
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Jul 2019 10:02:35 +0000
Received: by mail-lj1-x241.google.com with SMTP id m8so21983599lji.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Jul 2019 03:02:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dqJPOf3ole/ocwpSBgy0ZOy0oBYIEFe0Lpin0fI4i4g=;
 b=ATSPbECq/2Dk57WgaaHGygsRg1afRoCRLL5jv2+lMJP5BmgY/x/Y6ccmzhGFuwVKwg
 xwU9DQbweCbPfb7SnrSXADgqPsF4lVdP9zsoQZIR9HUy2aUBe9kRKuAzeaRP8UyS5AMk
 E/nPFTLjgD+WnqqqgS9LIlTuZACBvgBZ2mbE3kKlax864d/M+qrTAgzs2yVeVERJ2271
 vMTx/LdiJhVtUCm8ph6Iv01CiTj42iENItK5UUp754dQfQLsmmnchn6s5PWEDbylafvu
 tzJIvhikFsRS+4YtJONZtCO9GD/x/2XIIhvRbjYOLNtS4JRTxi3eNvr/CXHfYiaCnGXs
 LB8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dqJPOf3ole/ocwpSBgy0ZOy0oBYIEFe0Lpin0fI4i4g=;
 b=qHVoceHCDylyRP91Mgpdccu2gtf9EIS0VVieiDJyeWL9ITUAoKuqKtffQOEpfc1NQM
 xjJ5oCl9qp2ConDzmQrXtHl+PI0fXOVcTiQSdPv2ofeFCULYdxLoheMU3nw6h+mN1KnI
 pDbDCY+tn5dL3r3nl604WSApng5XFVQKbO2ejifROojTyIAQKijEDMnG4KPKQyZpbCrH
 EHLA1DNifKWar/fM+pwN92d6CIclvU6+SooHnq15b7Vm6xMiYXip+VQIhELOKd3rqdyi
 /u58iC1NZX5MQSWqRJUtv5e7V7AizUGPVZIPgq9GYVweVGqZxSkBvCXYdsw2mYKf6PfQ
 QFnA==
X-Gm-Message-State: APjAAAVdBI/nUZ+3MLYCUvS80oixSMn3lb4v+yHEo/OrxmC3IFy83gey
 QPSO5+M3tQaUI/SEb9GA89ZC0i4PTBwN2NhYSDqDlw==
X-Google-Smtp-Source: APXvYqz6EmJJJTKLfbfJEwbI9boVgwgnhYa+vwRfTg39dxtl7DiKAYb7s7X1xZfaTDAEq8Rul0rr79Hz1LXszhPLgOM=
X-Received: by 2002:a2e:a0cf:: with SMTP id f15mr32928008ljm.180.1564308151456; 
 Sun, 28 Jul 2019 03:02:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190629125933.679-1-linus.walleij@linaro.org>
In-Reply-To: <20190629125933.679-1-linus.walleij@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 28 Jul 2019 12:02:20 +0200
Message-ID: <CACRpkdZ-6qBxzTTY4=CV+-ZmnTRPmPNAWrHMb_cMXTYdaNeYQQ@mail.gmail.com>
Subject: Re: [PATCH 1/7] drm/msm/mdp4: Drop unused GPIO include
To: "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_030234_061941_440AF6CD 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: MSM <linux-arm-msm@vger.kernel.org>, Rob Clark <robdclark@gmail.com>,
 freedreno <freedreno@lists.freedesktop.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jun 29, 2019 at 3:01 PM Linus Walleij <linus.walleij@linaro.org> wrote:

> This file is not using any symbols from <linux/gpio.h> so just
> drop this include.
>
> Cc: Rob Clark <robdclark@gmail.com>
> Cc: Sean Paul <sean@poorly.run>
> Cc: linux-arm-msm@vger.kernel.org
> Cc: freedreno@lists.freedesktop.org
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>

Rob & friends: can this be merged to wherever you merge
the MSM DRM patches? If it is in drm-misc I can apply it
but I need some ACKs.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
