Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99A891E4437
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 15:46:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MGx/H3TKGB6QKuQ748UPA167DmLRhl+PJzkanFl1cG4=; b=d+11UX9PoZREu8
	xSbNas9z2hnrgvINcB1dlPdk+NTi+eKcwRvdsgkSw8aCX6fdXDgMQYxiEIsO4ClajsKAwQ+W3jUGG
	+oaPU+rD2lqavIWZ44PSqiwjd4gDC+MdwEmfntQLHMueLKmAsGkEf5SMxopV9sw+EmSjx7FGtoTyN
	zezuUFqCTUx/wA/S6zESweSIdpvNtrQDLwR3EjYANt0NRnKUv1qLMaPbPQIuptzxXnOZSEBINfcUY
	T+5ATI/sEYDSrhrCN1DaMmm4Yd8Rb8e+y8tGxznXK3kQRdTVYvqVAkaaVpUwajbFmrUkWuH9mQS+o
	FKpm+1JcBP9p2reu8dcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdwNp-0001KP-6w; Wed, 27 May 2020 13:46:13 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdwNI-00016l-K3
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 13:45:41 +0000
Received: by mail-lf1-x142.google.com with SMTP id x27so14474167lfg.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 06:45:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pqMjF481/emegOTyAnp90i2QSPi+4HPq/HRpDph3sd4=;
 b=cEtxG1QBb6k0/9pivnXsIM4fxxgTmO6eKy3cb4jjp5+kQNfHVlksx1KW++A7tdPXNv
 oY2Ob0P9vNNprE6p4NGP04bu/InKQ/EF4F2+wJwW+oY9E8YyJqJNZGtPMuzc5qLL0HWI
 fbhtYM7PcCz7DfVylsOzqby5Qs3IHhHLLbl9blKfUGBSf4zaaAgjnl5o0dbVSJ4DvPoW
 Lx+VZEycnhRAGhdVQAj29L9RY0uZ6YY2m8X2b2LqnnTUPWNtVuoZ+MHCVqwRrOEjYOq/
 EKnUL6kl2azL30dBaSZuMa/KxZcpN6UCJO8YV+KqgmxgC4f8GArCvy88KgPw8b2F4xLC
 ixNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pqMjF481/emegOTyAnp90i2QSPi+4HPq/HRpDph3sd4=;
 b=iV+rMeC8FXX7A/1AJQK8iVaPL2nhRg+eGL0w7UZaygz86bkBmuth0F/5P2dOuVmgpZ
 WeGts7oMQQMwjO4T25Vlf6m/cZCepAAEmCnMiaBpQsENxp8y083sQUUw7jauefoh8cP6
 PKftXvbpB74Cq+kwWi+jqWuTh8jcto/m9ZlO+tRjXfSU1Q60VmZDsbfv8ggxQurJmi2B
 zCKHMBR/UUctD2ea7Cl18v1TpNMbTS403lYDnwxI9iHCF7Qlb/icWMfoP9CWI3glZjzc
 N3yc5O7aD08niib2X9JpoLvIZYixSnLg+XB6qAqSxDOusGtY/bfZM/YIZAo05yjNetFL
 kr0A==
X-Gm-Message-State: AOAM530P883/5vfeJ2BGCwOW+JeyhLHX+YCPol244jlj99G2xIPwdgPW
 t6vnvpmUF8Qlw7y7fYEFxG1hNou3jajzLaEU/Y2yTQ==
X-Google-Smtp-Source: ABdhPJywnRjyy63BmYPCVd6xtABhxO8rvnbtGtftY9/L9Axjxr/II+eDgYpm5vNmJPSCVWS3wWgZuzCOQirdIHM52xc=
X-Received: by 2002:ac2:5473:: with SMTP id e19mr3147605lfn.21.1590587138395; 
 Wed, 27 May 2020 06:45:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200513141134.25819-1-lars.povlsen@microchip.com>
 <20200513141134.25819-2-lars.povlsen@microchip.com>
 <CACRpkdZa7OM3bqB+zRprEQ3M4m9hG3uPCoYxrdH_O=oxD8zi8Q@mail.gmail.com>
 <87pnb1nf2j.fsf@soft-dev15.microsemi.net>
 <CACRpkdYesD9sRQZXQNEaBY2Ouu3bjKKGWpRtU-Lpa4AcjyPwXw@mail.gmail.com>
 <87r1v8oz9f.fsf@soft-dev15.microsemi.net>
 <CACRpkdaJvaqPptPD-A1DriVgBOZGZ4Qf0UsbsjG39ptx6bSJKg@mail.gmail.com>
 <87pnappzun.fsf@soft-dev15.microsemi.net>
In-Reply-To: <87pnappzun.fsf@soft-dev15.microsemi.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 27 May 2020 15:45:27 +0200
Message-ID: <CACRpkdbfNPWKDU5zDaKT0kvJhCpL3X=jvTpLpicm1yMD5brA8Q@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: pinctrl: Add bindings for mscc,
 ocelot-sgpio
To: Lars Povlsen <lars.povlsen@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_064540_684996_67DF05B3 
X-CRM114-Status: GOOD (  10.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 SoC Team <soc@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 10:05 AM Lars Povlsen
<lars.povlsen@microchip.com> wrote:

> The only issue is that the gpios on the same "port" have restrictions on
> their status - they can only be enabled "all" or "none" for gpios that
> map to the same port. F.ex. gpio0, gpio32, gpio64 and gpio96 must all be
> enabled or disabled because at the hardware level you control the
> _port_.

This is fairly common. For example that an entire port/block share
a clock.

> But as I noted earlier, that could just be the driver enforcing
> this.

Yeps.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
