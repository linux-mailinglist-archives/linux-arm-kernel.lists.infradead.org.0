Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 033901BB565
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 06:43:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bOI9Rfeva/SAWeFeUrvjZvL8+zT2IkZMUaeimH16VHg=; b=ULjtnnS0G78tl/
	I7mtywyTRkIjq/XDjJtjk4G+toRyF+lqmEAMHbYfPaCGeWS7V0p4GwqOCZ6sjiNVgrFHQnreXRH9/
	o6ZdZbpRghURM2jzyGd1Q+gWGiq/Ds22/ftQZzOj5OJ+vOFAo8ri5uLXYwqYZgKJ1WL/4f2byYB55
	FDdrCxk+UBBP/TXRF11FGOAd6N3R123xgUg+DUOQblbbjyLaSGrciPxoQPfyDNsf7/Is20pciCnfa
	ImjiYYJbHxJtD0bYpaYWDGIz7ZRdHzV2E8N9XBQ9U5X0s6YtsjCK0TYuloIb2HmStICsvZITzia84
	pfngTjyImi4FEJLrbweg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTI5m-00076m-K0; Tue, 28 Apr 2020 04:43:34 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTI5a-000757-OV
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 04:43:24 +0000
Received: by mail-pg1-x541.google.com with SMTP id p8so9719260pgi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 21:43:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6MzIVWZpSVCHDb5pf6WQNcJ/ckZ7Y5e/ESVb+fFzIZA=;
 b=WD0Vdo9P4/N4GSEpKAhopNTQVyTrPiPKK3hWvrtsiHMzebOMrruO2aJX9wZe95BGHj
 XGk8c62wFBqDPwNbo61yYZGaWDExozBcGqaTvzvhgue/6PH25ZdF3jIcE9D0iv7XULGu
 hc0qeug7S/R/21XHC27bLSFzxUVEnjHArDV38=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6MzIVWZpSVCHDb5pf6WQNcJ/ckZ7Y5e/ESVb+fFzIZA=;
 b=dbDFEyBmbNbrM5eFwlArODLGzxwQTnmMhcGLZP79TTtpncwW2MAJId4v7jAyT/cqRl
 j0oh7hgMUJbZnN5J4x/uccd6kgMTS/gWaCMIFF8mmyattp1tvyBsVmfgjdZlTIKPozog
 ZD7esi5wF5B70LzWaVKInA6pDVmMdRpPskfUPQOzk9IGSDV23zy0KU31+JeTnIFj0aRd
 BDXPVkfl++Y75gqzR+bGWtengCaP+/alIsDppUmkKG1JWhyxC7Y8W7B/LVgXCQgEqX8t
 SdoGbL34LpcStHtCVzC5gzpbl3iK6364WnMdA8WlPjOwMpmuwnivNsv3wmMdTRAXouxj
 xwag==
X-Gm-Message-State: AGi0Pubd5Etu7y/MPGYQwNr35JubXHyZRTasDMu27I+EsA53FqU54ecM
 lleCTIKLg3sqXRnhJ5cQbv9tlcdBQ4Q=
X-Google-Smtp-Source: APiQypLiAWSh9x1cKOkSEnOT0Rh2bsz2ms33Ntt0PX7rXyZiSfynHHXqCsiqJOuHfKYE9SEmUhLY0Q==
X-Received: by 2002:a63:7f1a:: with SMTP id a26mr14090125pgd.252.1588048999941; 
 Mon, 27 Apr 2020 21:43:19 -0700 (PDT)
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com.
 [209.85.214.177])
 by smtp.gmail.com with ESMTPSA id mn1sm815085pjb.24.2020.04.27.21.43.18
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 27 Apr 2020 21:43:19 -0700 (PDT)
Received: by mail-pl1-f177.google.com with SMTP id k18so7858364pll.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 21:43:18 -0700 (PDT)
X-Received: by 2002:a67:f9d0:: with SMTP id c16mr19912596vsq.53.1588048997072; 
 Mon, 27 Apr 2020 21:43:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200423044036.234578-1-evanbenn@chromium.org>
 <20200423143945.v5.2.Ia92bb4d4ce84bcefeba1d00aaa1c1e919b6164ef@changeid>
 <CAODwPW9-c8EcZh_zB6SwohzvHtCQasaNLQM0fj2bj5O5KuVPfg@mail.gmail.com>
In-Reply-To: <CAODwPW9-c8EcZh_zB6SwohzvHtCQasaNLQM0fj2bj5O5KuVPfg@mail.gmail.com>
From: Evan Benn <evanbenn@chromium.org>
Date: Tue, 28 Apr 2020 14:42:50 +1000
X-Gmail-Original-Message-ID: <CAKz_xw0nQL2t1a-ofosLVb72JwSAGXCea5wOuddstOMrULNygg@mail.gmail.com>
Message-ID: <CAKz_xw0nQL2t1a-ofosLVb72JwSAGXCea5wOuddstOMrULNygg@mail.gmail.com>
Subject: Re: [PATCH v5 2/2] watchdog: Add new arm_smc_wdt watchdog driver
To: Julius Werner <jwerner@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_214322_822000_D1E94192 
X-CRM114-Status: GOOD (  15.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Olof Johansson <olof@lixom.net>, Shawn Guo <shawnguo@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 24, 2020 at 8:17 AM Julius Werner <jwerner@chromium.org> wrote:
>
> > +       err = of_property_read_u32(pdev->dev.of_node, "arm,smc-id",
> > +                                  &smc_func_id);
> > +       if (err < 0)
> > +               return err;
> > +       watchdog_set_drvdata(wdd, (void *)(uintptr_t)smc_func_id);
>
> Your device tree binding says there's a default and this is optional.
> I think you need to change the code so that that's actually true.

I think I have misunderstood the device tree json-schema spec.
My intention was for the device tree to fill in a default value in the dtb for
arm,smc-id if it was omitted in the dts. But now I see that does not seem to
happen, I cannot really find any documentation of `default`, so I will just put
a documentation string in instead and force the default in the driver.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
