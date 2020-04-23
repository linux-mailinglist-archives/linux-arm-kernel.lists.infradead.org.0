Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4863F1B66AB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 00:17:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N9Mq91/gU7IuhmSRzx6hQaHf/7RXZyqbPGBpHj92xWM=; b=KTFOPNWiNLX65Z
	ZatorOxWYFRbv6E0uRvIcenhtNNYp9Q5F4g1HjyW+ENeFysLocHf8VzMefAGABhiYozqx0qUx6LiS
	mIBmklx/v1mJSAQPNWO8fRvcDHQt6mGFRI9Jr6nOlrdMdll6DsSUzs0QCWmZNwA16ZTC26mmVf7CS
	sYtO3iWMDWf0Uk2iwSKll6/+6StG6mbiNZjC2g3TmcG/1EDCHTZ/pEz9fYzw2vFo1CHjklgR93tpL
	u1U/xqqkAgQXNYwUC0ZDxABudea+005SHO3T+0EIKyvWYNkRl/46AC2npZrTPPUVG7saVIWftFx3K
	WcYuvJNVNveJFm2aGeWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRk9w-0008JC-Cd; Thu, 23 Apr 2020 22:17:28 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRk9o-0008HW-L4
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 22:17:21 +0000
Received: by mail-ua1-x941.google.com with SMTP id s5so7523864uad.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Apr 2020 15:17:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ImyDKT5GUuGx4UdReAU1SFZBdyoyuA09f+p98B9B22U=;
 b=MVrB7ptavsGiQQua0Vjywdn5LaMTu4XF0Z1Ou35iDTtlPrECrJF03b1X9OfQreT1Sv
 Vrs6/p06qmY0edU5rq5DjBnn0HF8gPWw2/bsLkke5gs8JhP6nZqduiZuAIPqaK/geeaF
 9jGZybC4kWQR1xAWiRngZ+uRtePeQ1MeLOEvk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ImyDKT5GUuGx4UdReAU1SFZBdyoyuA09f+p98B9B22U=;
 b=dDr9uKJOoft5lT1OxEyHuMBOIvPiNN/YVg32KhNeOKIJKMEF7cG+KnDUmmaq6ASweL
 YlZllR1dl8RG8eDExR5yXXYVOoCPDk+8R98cQsKpBrbcabGnBXtSYwn42xHy0aLMHgp7
 gNGfSJr+JOHF/Hh4vkEnpk/AAUcEwGsqpK25oMVVXy+ORuE7Bq5hoPYeC2RQE4stynsc
 8aEUHrvzIAPpkZeCO+ND6UfaD/HLRoJq4Rzm2Jpct/j6UOyoHMPUfne3jmB6KamUAg8h
 PA63P953lHRzHWR5WiOZLGGRMMdsEcVdxaHx/guAvoqjJnBRF6y7Di8wpJQlEgRcrzif
 LGEw==
X-Gm-Message-State: AGi0PuYHvYtpg3FOKWphqnM9VxuJuYC+vBnLA1F0jVrdPpKf25lJOWF4
 u4IQwjjwyXUSe1upgcSkLkrHwrFX7f2S/rQH6zOy0w==
X-Google-Smtp-Source: APiQypJDlCWw7UIoyUEUjtlXhQdYSbXsrKe/ELL5y8iA5voVOv7hSWTM7nSU1GgatF1cMHiK0C9YmT8nvji7Iv8Jnmc=
X-Received: by 2002:a67:1447:: with SMTP id 68mr5466353vsu.163.1587680238725; 
 Thu, 23 Apr 2020 15:17:18 -0700 (PDT)
MIME-Version: 1.0
References: <20200423044036.234578-1-evanbenn@chromium.org>
 <20200423143945.v5.2.Ia92bb4d4ce84bcefeba1d00aaa1c1e919b6164ef@changeid>
In-Reply-To: <20200423143945.v5.2.Ia92bb4d4ce84bcefeba1d00aaa1c1e919b6164ef@changeid>
From: Julius Werner <jwerner@chromium.org>
Date: Thu, 23 Apr 2020 15:17:06 -0700
Message-ID: <CAODwPW9-c8EcZh_zB6SwohzvHtCQasaNLQM0fj2bj5O5KuVPfg@mail.gmail.com>
Subject: Re: [PATCH v5 2/2] watchdog: Add new arm_smc_wdt watchdog driver
To: Evan Benn <evanbenn@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_151720_721307_25A90B2B 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.4 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, Will Deacon <will@kernel.org>,
 Xingyu Chen <xingyu.chen@amlogic.com>, Rob Herring <robh@kernel.org>,
 Anson Huang <Anson.Huang@nxp.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Valentin Schneider <valentin.schneider@arm.com>,
 Guenter Roeck <linux@roeck-us.net>,
 LINUX-WATCHDOG <linux-watchdog@vger.kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Olof Johansson <olof@lixom.net>, Julius Werner <jwerner@chromium.org>,
 Shawn Guo <shawnguo@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> +       err = of_property_read_u32(pdev->dev.of_node, "arm,smc-id",
> +                                  &smc_func_id);
> +       if (err < 0)
> +               return err;
> +       watchdog_set_drvdata(wdd, (void *)(uintptr_t)smc_func_id);

Your device tree binding says there's a default and this is optional.
I think you need to change the code so that that's actually true.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
