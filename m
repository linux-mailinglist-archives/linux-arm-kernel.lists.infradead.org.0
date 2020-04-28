Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D08D81BCCFF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 22:07:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KGzvUaAomiNZlMYzFgbGfeesU2YTFIXL/jixFfBDwZw=; b=JvNWWjz59mMZO/
	A/kRkD+OWH0odtTp5klUHSZVPZM8Pa0BnPMQRExY+IlqQEJK9wbDQINs5VnOO3jWZUp0YQ/+kepMY
	2d3kV9MfRFmUg+3IHky8OuDuwxe5+UnBhSDh+M8p3FF7ivyDY7GcP2M4rjpprZpMgwvHN5AD1lO3o
	3bIy3Zv4oWccIZ72V+m3Rr051FzmvcgNGekgnIUMGsJyduhLNCg0N+o7mIe+Zy7Am1OLV1piEzLX4
	FOBYBxzws9gJd8G8NvjQrY9XWwfwhNEunzSKp8O3lM12yd5bnLvU61rO7Ilw2y+kwsvu1Cu3mVCNM
	Lt+z78yaMkAQRwzMXtYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTWVL-0007vA-4F; Tue, 28 Apr 2020 20:06:55 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTWV4-0007sO-My
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 20:06:39 +0000
Received: by mail-ua1-x944.google.com with SMTP id b6so9030413uak.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 13:06:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NWN2pTS6iB36h7DaRZrhXtMe3/2D3xJNS6+5ajy+5jY=;
 b=lxlBvAi5+Kp0E1kvuLZIfX3f5amfiRbPoT6rwz3YRt6V2J5+GvjYw+NTGMfqvzrN5e
 8VVsWcLM3UTsASESHTZPQ57s3QqSBVpqWcc2FO4IpeAbwUgcS0LVqe1vsODS2nG7Bz+d
 FscPV1JN0QyruGS7iIFxIIT5zT9F53xrKisX4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NWN2pTS6iB36h7DaRZrhXtMe3/2D3xJNS6+5ajy+5jY=;
 b=OMY89hVr8XluBQT7G+UNhH54kptlqSX/LKo4/8tuUTk6eMtt9bQSuVGgusiZQ7VS3M
 7VtPdIe16cyjSqjMb5stLtReiGdP1IZjVEACUyFd3GPbsb2kWik5TyQvT54YGKCshUoE
 z7l8IY4lDABwr+bBTBVmt1aIujz9pNeFtKGmKI7yG5UbKtnbycEZAluP1JOViCn2DRdt
 L6i/YkDyiv12kuPtQhQTSULErsNKdN8GpZ/Q26OUqSZ+K0U0z16xQRCV59dBRIN5x+1V
 iP+OJyGjpwye5XmJEV68u7Us38q4be3WmVSdqpvRQmruMeCS016csL5e53K9q2y2ia2o
 cvnQ==
X-Gm-Message-State: AGi0PuaZ8qRvtYNljYGlWQ8g87ZEFN6kFYkvuz6TRWJYRrCSFo8qteFP
 cc/gnKtloJv5nPKqJJXjEimCYez3YwstE2y78MuSGA==
X-Google-Smtp-Source: APiQypJ5GASwyuTmq6vb+mMs8GlOiPOB+ZU/74cFC69Z5RtuhkUtZGHT2TQvquei4X23XLIf2FoJH6WJiKs+6iDLpWw=
X-Received: by 2002:ab0:689a:: with SMTP id t26mr24178132uar.105.1588104394359; 
 Tue, 28 Apr 2020 13:06:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200423044036.234578-1-evanbenn@chromium.org>
 <20200423143945.v5.2.Ia92bb4d4ce84bcefeba1d00aaa1c1e919b6164ef@changeid>
 <CAODwPW9-c8EcZh_zB6SwohzvHtCQasaNLQM0fj2bj5O5KuVPfg@mail.gmail.com>
 <CAKz_xw0nQL2t1a-ofosLVb72JwSAGXCea5wOuddstOMrULNygg@mail.gmail.com>
In-Reply-To: <CAKz_xw0nQL2t1a-ofosLVb72JwSAGXCea5wOuddstOMrULNygg@mail.gmail.com>
From: Julius Werner <jwerner@chromium.org>
Date: Tue, 28 Apr 2020 13:06:21 -0700
Message-ID: <CAODwPW9STGmh5EZjhxARmY+PFLC_UoQYxbfGoRTD5w4BvMv=0g@mail.gmail.com>
Subject: Re: [PATCH v5 2/2] watchdog: Add new arm_smc_wdt watchdog driver
To: Evan Benn <evanbenn@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_130638_768890_49523B11 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: -7.4 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Olof Johansson <olof@lixom.net>, Julius Werner <jwerner@chromium.org>,
 Shawn Guo <shawnguo@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> I think I have misunderstood the device tree json-schema spec.
> My intention was for the device tree to fill in a default value in the dtb for
> arm,smc-id if it was omitted in the dts. But now I see that does not seem to
> happen, I cannot really find any documentation of `default`, so I will just put
> a documentation string in instead and force the default in the driver.

The bindings in Documentation/device-tree are just for informational
purposes, they do not have any direct effect on anything. If you want
there to be a default, you'll have to write the kernel code to fill it
in.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
