Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94CB68E638
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 10:25:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CYVs12qwGtB1PIk7y8yRveHdSTdCWdjCPyv+N/MVrK4=; b=Xfu3lHXBD9DfsH
	Kjl3BikTKwWeYXU3g7BdGFcc8VvYux6G74uAjstnkK+uMopROz/GJSurgAlKAfcqnENPs8PHDKkzd
	fedylJ3l8Rw2p0T+w6eYBVopYLq0YphB3WqZcOLFWimYtnJFnql5sVvGMDdaVl8hbFqS5E+LVzcIW
	T5P5qI/EkoYV3+ATg2qLbzhQTqufnAc0j4zaaF2Sa3RMnrVq1YjvkHEw9Jc+bSMN2Ug8vuEUR+Oal
	zzrXUsgCvzLXcZjgwvgq/Q40TRY6vpxgq0uRCn4J2YwsqM0Vb44j8rpEdiHuHxmdumCWrUIOyO54l
	JlKoCET4OxvzwB8CajAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyB4f-0005HC-UI; Thu, 15 Aug 2019 08:25:33 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyB4R-0005Go-LH
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 08:25:20 +0000
Received: by mail-lf1-x143.google.com with SMTP id p197so1146605lfa.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 01:25:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=P02BSDCRijPbd9yK/6Voa9R/D56p990RHfEVvViY/Bo=;
 b=VwGU6RQs7iolsd3xhQ/RkLbxvAo8VLkErvnXtuEhQmdWmK+++AzDqwQcuwgE0X927k
 Xk1vn5vYXh3iYZc1Ah5SkL8Dn0uUnfO+jYr1jwuAmBphIqlCxmDSCATpGnl27Ai5CXWm
 YD4wkOLZrBYoyhR4aN8RpI18MKGPkk/YYbjfPEW9G4/iO/Kbz/73F0C5g9LIiZM+7NW+
 SWMSaC74D0zgMt6U1z7UYiWvzxRj+tYEBacypVR9VrNjLFL2Uy/AVDacXEKsfVm9BBZ7
 DjX2KwkQOk7M498JD3EVo4RSmkCSboE7ziaIIdobStjnVp99VmOZudUnn/aaxrywezgs
 OKHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=P02BSDCRijPbd9yK/6Voa9R/D56p990RHfEVvViY/Bo=;
 b=haipLbY2b7nI0unz2LnsRbIkaKugyeXdGrnssAwkukFZ7K7SAtVmt8YcA4D/hRf7eP
 AW/q8BG7057wgQ6ZHpkbiCI8Rv0+yUPEOEnH52T3pjJJSwiaX0Wq8CGUZDh/n+R2uYGa
 WMn9mqEHq7ZYIEdQJ8OOOkABdQ+OSjIOArYX9ClzsbmHrqt74Iec5kE4qiJWhtAuxHAg
 yTMtRB2PxpgigP8mod0g0JT/pbacwr+sVwno/MUQ6JjIBx8kRH2U9++mXs5hqNMS07H8
 xXTfp6T45JBrPzWADi6NW6N6eNc+ZAbagXQmOKlccV367ID5gT8Xtcq9ty0V3TPN6wcB
 /nxw==
X-Gm-Message-State: APjAAAXKD4efwOfzQBrqwd7j+bNCscSmzWvLMaZP0RZdgM5DTrXwmdyT
 a+HrWShRc+xOJVDvr1dyx1ZqbBul7hc1mFs8CAywFw==
X-Google-Smtp-Source: APXvYqwuz6gUlIPqwTv4NphE9CuB8QLz9uvS26JNUXQ4p8UjA/NuXYuyNh1rl3LRryriamcIaIyf7prYAZZock0AxlY=
X-Received: by 2002:ac2:4c07:: with SMTP id t7mr1613650lfq.152.1565857518224; 
 Thu, 15 Aug 2019 01:25:18 -0700 (PDT)
MIME-Version: 1.0
References: <20190815004854.19860-1-masneyb@onstation.org>
 <20190815004854.19860-11-masneyb@onstation.org>
In-Reply-To: <20190815004854.19860-11-masneyb@onstation.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 15 Aug 2019 10:25:06 +0200
Message-ID: <CACRpkdYkmLXOJHGy5S55r60zZVY9dg5m9j87S3wx=banFxx6aQ@mail.gmail.com>
Subject: Re: [PATCH RFC 10/11] ARM: dts: qcom: msm8974: add HDMI nodes
To: Brian Masney <masneyb@onstation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_012519_704013_214EE46E 
X-CRM114-Status: UNSURE (   9.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Jernej Skrabec <jernej.skrabec@siol.net>,
 Neil Armstrong <narmstrong@baylibre.com>, Dave Airlie <airlied@linux.ie>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jonas Karlman <jonas@kwiboo.se>, Andy Gross <agross@kernel.org>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Rob Clark <robdclark@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, MSM <linux-arm-msm@vger.kernel.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 freedreno <freedreno@lists.freedesktop.org>, Sean Paul <sean@poorly.run>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 15, 2019 at 2:49 AM Brian Masney <masneyb@onstation.org> wrote:

> Add HDMI tx and phy nodes to support an external display that can be
> connected over the SlimPort. This is based on work from Jonathan Marek.
>
> Signed-off-by: Brian Masney <masneyb@onstation.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
