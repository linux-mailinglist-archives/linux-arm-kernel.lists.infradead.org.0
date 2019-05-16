Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7D9B20719
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 14:41:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3K0JHnYqo10JjCleOCklAkDxnVIrr1K78JJW8l4t9JY=; b=Jtf0R2FsfiHPTQ
	W84RY00Y+/+faB45FF+dfd98DwYyO4mJaLCXu6N1uI7GVucZx4gz2v6KoYO98yAzqy0rLsTYmkyma
	ey2Ghvu9ke1dKZy1rrB/+nQo0XcqXvYbuOHu6s5RRICl5zKbl4q0KnpnYKPybvLBLRgdNPYtWQO70
	BG9SRG+IfGTBGastfZ+YAGKr7VOfoYkJYqTVxGI8bUPQm0htFqgepFQgWXQOTrj21RNsqYjGvacZZ
	s/RsYlDqcIvshl7HwEwKNTyXfoMOmu6+xbukYAe/jy3jzM0k2agCg6jFN3AUmzb+zbt1wNQm9+sdN
	MRPMeGYO3S9uRp3BSWGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRFhC-00087q-OG; Thu, 16 May 2019 12:41:14 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRFh6-00087F-9n
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 12:41:09 +0000
Received: by mail-lf1-x143.google.com with SMTP id y19so2526472lfy.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 05:41:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1X4AgGfxt3hQwDE5huGGHXpI65Z8aUP5RYNXv/j5IHI=;
 b=Joug+VR6S7QUmRqv9ZAHEOFpjfAahMBKgIpazqWYWz6ynTF3C9MOTrTDxr0AB9h3De
 iN/iKELVs3GuPOTdJArPHJVlOeORKsGkyWa71jIYNL9AFu1jk32PTuRNVuAukyLMX30z
 XExeQ3qj4YaSZqA3BbmGqD++IFURL1NTCFTDL07M52r5Lo2514Ufhq2yOv1ldamRybKx
 GkBnXbIck4VxJAz9e3w0RRbL+pTQ8QVI3CSMBf14OImWWJ7UgtWDN+RIcfQ33td2BdCI
 HTJbqItsHImJJjaa3G0de13spI/i3uiePNnydMD0O5eDzH8UmFunSBNJw2RwauyrAmOI
 Er1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1X4AgGfxt3hQwDE5huGGHXpI65Z8aUP5RYNXv/j5IHI=;
 b=fDfzfcMWw9vQMxkk2dVl+RFvBinnxAiqlf5ntGEhzpo/Y/wt9YXfBLL5zTvvFKmOKB
 OiAg6E7hzEV8u/1gwfK0bz5rRp+2OB3k2yiT4eL+GiEecexKREMlyB68ex4rMZImuyCr
 4CHrzyAcEbaJ9UHveuQaAb0fggRw+r46Y237uuWS3D4QHCAMBDYTN/8qUA1wJUKjuag2
 uCrE+Xf/iRDiTyoYIRGwncMVwV6YTdM77obzlEPhjezT3Ej5mf+wTLwa65CKgriqokX7
 k31eS0z9rkIfeSqWqtzA7HHzvPPpUp3uR3Q0QLdEMjJrd8uOu056Q+NNLq7zVlGqe3pi
 ZyHg==
X-Gm-Message-State: APjAAAUvw1kwWe+tIxtI+zJmT/qM2SoyWcbwVDP51elPW0u3LpKJAeML
 XixwhrJ7XL6L5k5s4ngArb7FPjbdvYOcUjyPCg13ZQ==
X-Google-Smtp-Source: APXvYqwL0nOCeQ1S6udzXuh+ghhU4LjIum1XX4LqTvNH88uWDV+w/yIFM1p6yvSYTYxnOgbsBAEGbCkhSzweHbwigtE=
X-Received: by 2002:a19:cd82:: with SMTP id d124mr11996894lfg.8.1558010465952; 
 Thu, 16 May 2019 05:41:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190430101230.21794-1-lokeshvutla@ti.com>
 <20190430101230.21794-7-lokeshvutla@ti.com>
In-Reply-To: <20190430101230.21794-7-lokeshvutla@ti.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 16 May 2019 14:40:54 +0200
Message-ID: <CACRpkdaEJ_2bmkgcbRW+zWm16+EV9-b77xFVZiBbu_=M2sTt5g@mail.gmail.com>
Subject: Re: [PATCH v8 06/14] genirq: Introduce irq_chip_{request,
 release}_resource_parent() apis
To: Lokesh Vutla <lokeshvutla@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_054108_402927_0A4A223E 
X-CRM114-Status: UNSURE (   9.34  )
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
Cc: Nishanth Menon <nm@ti.com>, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Jason Cooper <jason@lakedaemon.net>,
 Device Tree Mailing List <devicetree@vger.kernel.org>,
 Marc Zyngier <marc.zyngier@arm.com>, Sekhar Nori <nsekhar@ti.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tero Kristo <t-kristo@ti.com>, Tony Lindgren <tony@atomide.com>,
 Rob Herring <robh+dt@kernel.org>, Santosh Shilimkar <ssantosh@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 12:13 PM Lokesh Vutla <lokeshvutla@ti.com> wrote:

> Introduce irq_chip_{request,release}_resource_parent() apis so
> that these can be used in hierarchical irqchips.
>
> Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
