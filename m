Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E1710450A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 21:28:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tquyazd9kWL05AACdFZSpfWklm9JuKOrSvnsDAoNRA4=; b=dt0UFC9ECnA4zp
	R84pp46WdeNRchhs7aRqaO4+kxx+LhwJGWm6NI7rcrSztTIJnjYkR9OqrZ3iUMyKJ/YFQtIoD9o2G
	QVRVc74pZCN2IsWCVwYYVfctO1TKRYe2t9GhAWUsT9RxUsC3JnVSCVQQrNzwYFD9WeHio6U6CbyN3
	aK+aO+jWHgMRTpucN5VCVZEA8TkuWXstjd++P9imfeljLhrhrqCL+MSgexcHWGLCXVHGXQoBYAlcF
	K9pDgEhXBxX4gTJyN8GFfTXn5Cxgj2F/iHgZLZGbhX7R8GQR7Gp3YU9psCX4QBftUk8E4/ahoAM+Q
	p9hFSrSeNq0jAdRVl+pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXWaW-0003wM-PC; Wed, 20 Nov 2019 20:28:32 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXWaO-0003vP-3j
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 20:28:25 +0000
Received: by mail-lj1-x244.google.com with SMTP id r7so629808ljg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 12:28:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hIzUKaoECvunhbN29FjzqY9PEax2EkF9njXNYkmUhLU=;
 b=yCT/Yu8RcVXCHsJMDqy5t57P24BBlombjpiids+RS7GhDXg7DTcLYZJvyJ3g3u0AOt
 JHf5TcDOTI1Q0AkXOV4226pn1sZpzTM7pWhDpaATRlbOoCyku5rNp3xlhADwZwgUGOCU
 Vbh/lNG0jnKXmbvVF9NVcUy5lOKqWSzRQKGyvyxCShGLbPN9M6+6e59PHv9LmrH8EfcR
 8s1V6u5cw3FziVZ4g7shVaaQl4nqcRqEBVsIbJ2pXprCJPJEtDcNLpD9QqLtDksuMu76
 JV1cjcdXaGdaBiPZMIPp7kN/wWXrFjcCSmiXTm/goRPvfCsMvVxN6t+ZMv/3O4m8pyKG
 s0gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hIzUKaoECvunhbN29FjzqY9PEax2EkF9njXNYkmUhLU=;
 b=HiiuukXDMg5EimfNdcGTXIDZCI/cFKLh4/oegDkTZ0u00qdRR4D5sQttYrLdKRGjVq
 +cJgl5Opr9+XW3NwVz4i2kphNIJuFOAILHjqcvJj6Mnrt/gBh7mgNywyRiKT8bgtmIjG
 l8dysBckevyyFJPdFR8L1veo4H/BfDb9aGhXp0xlCSogsVGT1Sti/AxBq5W9upovn9Ml
 W8KUrtsbPfdV58jDB2HQZgBpzCLu5Ce88KLd6+48U9SPYBRbRPn0/7BotlLPPhyzuzyQ
 QlQy/dms0xlf4KdRIfvYV2uAkE7Y8VIqWM8sQEkAoOImC7u/iV6r9h82WurSkBKI4m9X
 lpSA==
X-Gm-Message-State: APjAAAWwjxFgaaKGNXlbRlo1TQyKs5ZkAwL0MYULLzNWvIKmi/YPtrsZ
 jvpLSztnVs8/Yc94Utxv9WUNdTYxpHGkXB8XuykmfAw7J3M=
X-Google-Smtp-Source: APXvYqw2KwqjpIV0V6oRLeXHrwRQZnmr1x4FciKMFTAVp2odcq+17a0QwOb1FYvEVa0z4PF5XdX7LJo0w89Qd9BnXr8=
X-Received: by 2002:a2e:90b:: with SMTP id 11mr4289023ljj.233.1574281701154;
 Wed, 20 Nov 2019 12:28:21 -0800 (PST)
MIME-Version: 1.0
References: <20191119214234.27932-1-linus.walleij@linaro.org>
In-Reply-To: <20191119214234.27932-1-linus.walleij@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 20 Nov 2019 21:28:09 +0100
Message-ID: <CACRpkdYr93nZDcTqoMxB4NMEALweqBRNL8mzYQD_ZYzxoWWKUA@mail.gmail.com>
Subject: Re: [PATCH] drm/mcde: Support using DSI in LP mode
To: "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>, 
 Inki Dae <inki.dae@samsung.com>, Andrzej Hajda <a.hajda@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_122824_169894_2EC697A1 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Stephan Gerhold <stephan@gerhold.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 19, 2019 at 10:42 PM Linus Walleij <linus.walleij@linaro.org> wrote:

> It is possible to set a flag in the struct mipi_dsi_device
> so the panel is handled in low power (LP) mode. Some displays
> only support this mode and it is also good for testing.
>
> Cc: Stephan Gerhold <stephan@gerhold.net>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>

Inki: this is the patch making the MCDE use LP mode on
all commands also screen updates on command-mode panels.

If this is how the flag is intended please ACK this and I'll make
a patch to the documentation as well making it clear that this
is the intended semantics of the flag.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
