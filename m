Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1A44814AC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 11:02:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+I/iH10rJupK0NQUtpkQFk76vELb/T7kibMdYMxTZt8=; b=StQX771dVknQC8
	Znas6rLHF3Qp64iZUgNWPfiYT2pzLKy2LOM/TxwHJhEEO0lqLz1fgVkOokAgCxHh+eIxeEiCMXWOL
	Fsp/L8heJ2dxE2UCYqCaoT8UubcjZCoulAFbVBW/K1JwNDWzqs0ePaK0Mg3JULHbOQERp9X8iFWSi
	G5/r2QD6L1AP3JYKcBFvvgHQ9iZdzlhmVjfLCJs0EFL13HUK7N5/BmvtwU5Xy2/aXHYUijbfuUpPI
	ePj3XkmG+HwFdOkn3zm5tY5ozUsigG7kOvR9dCx6ISKf0EKzoDc3G+3oSjXQ4Ly4r6uWaiKIbBfFm
	FCXbdz9EwLGBt9ReXjbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huYsq-0000HJ-LG; Mon, 05 Aug 2019 09:02:24 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huYsE-00005w-W0
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 09:01:49 +0000
Received: by mail-lj1-x241.google.com with SMTP id v24so78773868ljg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 02:01:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ofL+84/X8WTQ87INym+beTDzeijUUSg8XFUdF2WJ2nY=;
 b=HmmKYJ7mhl+/8zgV9AOWeEOrzP4ybrJE9LPi6oF9/4j1y1StKRkLvw3DtlIUUtQwuE
 gCDxlJNM1DvxV89sqaeJ0toUIG+U4tE8sIKq5Dd/5U6w3hx5i8swa1xLCQYKyMNkXkcZ
 339+gnXSRpxc91M+kGqwLni0gcEs37hlPMyfftjiD2YsRS/RwRFoAbuG14NcUAH2iUTh
 K4CZxw1SQEirbsAbhXBwme1CPbreRdfMGuORnDUe83NO9lWk1irmvVb7FokaCIt3/yfo
 HHQm7fIHSOd7JZpxApSeRGwiKwNDJCyobxFYtzlpWJkRw6LhOwJ0dYGu7VnO6m6DTvce
 7Fow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ofL+84/X8WTQ87INym+beTDzeijUUSg8XFUdF2WJ2nY=;
 b=KrGmYTtFjvA49tfWMLGr6u5tw6Os5HOfYKq2UjPwJO6yUP2CnjYapPHpmNVzIt3rpR
 8AQd8gRuIADQGwyhas7AV9WLZhcC/ca4gwEEXZSYxXxNdB6cULBP/EgyeC6hEJr9aZ6b
 OB/2oV1d24bGJx7f9KQ0QactLINTDrik0wMln8rDE9AJEEZFYB3WqN+DaH7czlDHZWfH
 g48ADM6CJ6fxYkpbDjaLSzc7jjeUYRvOpglp1wv421cjRMj0N+4+elyVLyqnq1gYb4av
 J3LD19C5mi8DnLQ9KkpckzPKRiOTUSHaVPDLcukIzW4XwuiziNX3AKv5JVcAy7R+SwRm
 St6Q==
X-Gm-Message-State: APjAAAUJ8j82N3lBGZlbLQZgLR8+7oJ7/GdJTf/7B5Gitj29QBUOR8GK
 /vmgI79AIgRSTQPCN+Jkw3KlQrFZq97KcAMVsOZcqQ==
X-Google-Smtp-Source: APXvYqyy6J/Oydbl1XgI8D9WR+GWwiKIDSANNwFAP8xjqs4qVcz/MsRWaN94GdaujXiAmgVlHAwCD5VXOfoYorScUgQ=
X-Received: by 2002:a2e:2c14:: with SMTP id s20mr16260537ljs.54.1564995705613; 
 Mon, 05 Aug 2019 02:01:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190629125933.679-1-linus.walleij@linaro.org>
 <CACRpkdZ-6qBxzTTY4=CV+-ZmnTRPmPNAWrHMb_cMXTYdaNeYQQ@mail.gmail.com>
In-Reply-To: <CACRpkdZ-6qBxzTTY4=CV+-ZmnTRPmPNAWrHMb_cMXTYdaNeYQQ@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 5 Aug 2019 11:01:34 +0200
Message-ID: <CACRpkdaf7ZOr-ci0VnYcS=cVpmHyvQrDS2PY_tE18ZfhLfmRGA@mail.gmail.com>
Subject: Re: [PATCH 1/7] drm/msm/mdp4: Drop unused GPIO include
To: "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_020147_030654_C7129758 
X-CRM114-Status: GOOD (  11.32  )
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
Cc: MSM <linux-arm-msm@vger.kernel.org>, Rob Clark <robdclark@gmail.com>,
 freedreno <freedreno@lists.freedesktop.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jul 28, 2019 at 12:02 PM Linus Walleij <linus.walleij@linaro.org> wrote:
> On Sat, Jun 29, 2019 at 3:01 PM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> > This file is not using any symbols from <linux/gpio.h> so just
> > drop this include.
> >
> > Cc: Rob Clark <robdclark@gmail.com>
> > Cc: Sean Paul <sean@poorly.run>
> > Cc: linux-arm-msm@vger.kernel.org
> > Cc: freedreno@lists.freedesktop.org
> > Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
>
> Rob & friends: can this be merged to wherever you merge
> the MSM DRM patches? If it is in drm-misc I can apply it
> but I need some ACKs.

Ping on this!

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
