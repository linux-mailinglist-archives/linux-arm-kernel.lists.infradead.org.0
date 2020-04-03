Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E757519CFFD
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 08:01:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GUmqwdt3WTVLN3SKT1IkTTjaZFqKMUFfm2p52sux/y0=; b=Q5Dtr3kfbBNDWF
	55ZbmNkM/plmAFiSelbK563Bo5MlzSGlcOB+FRCLQOMrIyITnhFg7CryXQUCQodMUXvh47BJIRap6
	Or54+kYVX+aecuQUEH/e7uEJxoxbCAcks1XESQOimO2AGE3mVOMeCwCxZe9ovOT7aCih4r4ercIVZ
	ita6nKO6TCxiMqYiRG55sqSjrQLwdp6bG3qY5IizCfqVjntLKviNQ01Hi+YKvClXkNUE8kbK3uBC0
	Wi3MoeXCYoFiHeeGw4LpxRIbLYeBM7fT3dsht6fv6ooGmwImwo+I7oBBvTHUPQMKBpiodFkwOsdBO
	wygMJyNUy3+2kHXYdPpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKFO0-0008Tu-5I; Fri, 03 Apr 2020 06:01:00 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKFNr-0008Sy-FI; Fri, 03 Apr 2020 06:00:53 +0000
Received: by mail-pj1-x1044.google.com with SMTP id m15so2493020pje.3;
 Thu, 02 Apr 2020 23:00:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=x91h2tLyTlc0iDe/5j3RCDbqB7p+b6c6m++cx7QhiU4=;
 b=Mfd0P8XlBUeT3svQWKNFphNvd7/KN1aCiN2pYOjw1C1YhI4RksEgbj2lZlCOmuVydw
 yDkQT79vAi12Q8YcmSqpuWpbWKgzJr7F8jFnYppWPUNmxH6tiwgYEXUC000cH4NHtOnc
 7BSSvrVODv1MRQNDKnevxlBOTKaSBpczQPjCAl1diwHz7RxwM8NhahytzhQWz59jPG+5
 jqsjH4bVCsuV4idpO6E8JDuGLXfWXr7Y4i9c+Q2ddSkqqHCUqcmpm8/I5qWVjvFqL2LX
 /uv7eXMl531dJJ5E4PsW70QEntYZtv6Vj+gCSVc+OHCDaOWj1yQSgn0usqigtFNmHISh
 a0Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=x91h2tLyTlc0iDe/5j3RCDbqB7p+b6c6m++cx7QhiU4=;
 b=K6USvyI5hH6EgtxleM3BPX8QMBD4pa/DJ6uND1NVAu92xYgiqR1RJTflpFLMOlwdml
 aYfiLPI7H2wu6dlsZivrEEgNCbHGPZ3m07+xf+HpTktqZg+koAZnGg42H2xMTgCZyNqX
 S+3YKpWZgME0LXh7ZHHxbuYj8752woQDvxzShmPcIVDkVqB3IuI5kmfzWhUM8UbLKVj7
 McbkdB4WJMLghxKXTpa3Njy4FlmEgE/LkpxpQXfxC9QuMNcSOEM1RqHdvF25+rWNSvDS
 00hByGo4eQyoiKFIhWy0lGbMv2cexpSwRR6iUKoRa0JkjXaPLTApKXgdsN3JzFSOUufg
 fm+A==
X-Gm-Message-State: AGi0PuZ9Jx3mqiKXIdENfM+8J4cmiMfkF+c1vsgdigPzXifxSb88xxjC
 UF+xh9L9Oo6YaeBwZ+MT6Fk=
X-Google-Smtp-Source: APiQypK8XbyWn3ZnQaFnbDolPcc04wWirWxbpBYroE8OL8s8uzDCEjQ/PWbPHv9R/8g/MsL6Oqt0pQ==
X-Received: by 2002:a17:902:7404:: with SMTP id
 g4mr6126025pll.69.1585893650600; 
 Thu, 02 Apr 2020 23:00:50 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id h2sm5048442pfr.220.2020.04.02.23.00.49
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 02 Apr 2020 23:00:49 -0700 (PDT)
Date: Thu, 2 Apr 2020 23:00:48 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Evan Benn <evanbenn@chromium.org>
Subject: Re: [PATCH v2 2/2] watchdog: Add new arm_smd_wdt watchdog driver
Message-ID: <20200403060048.GA206691@roeck-us.net>
References: <20200403052900.258855-1-evanbenn@chromium.org>
 <20200403162742.v2.2.Ia92bb4d4ce84bcefeba1d00aaa1c1e919b6164ef@changeid>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200403162742.v2.2.Ia92bb4d4ce84bcefeba1d00aaa1c1e919b6164ef@changeid>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_230051_735278_F0F34101 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, Will Deacon <will@kernel.org>,
 xingyu.chen@amlogic.com, Rob Herring <robh@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Anson Huang <Anson.Huang@nxp.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Valentin Schneider <valentin.schneider@arm.com>,
 linux-watchdog@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Olof Johansson <olof@lixom.net>, jwerner@chromium.org,
 Shawn Guo <shawnguo@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 03, 2020 at 04:29:00PM +1100, Evan Benn wrote:
> From: Julius Werner <jwerner@chromium.org>
> 
> This patch adds a watchdog driver that can be used on ARM systems
> with the appropriate watchdog implemented in Secure Monitor firmware.
> The driver communicates with firmware via a Secure Monitor Call.
> This may be useful for platforms using TrustZone that want
> the Secure Monitor firmware to have the final control over the watchdog.
> 
> This is implemented on mt8173 chromebook devices oak, elm and hana in
> arm trusted firmware file plat/mediatek/mt8173/drivers/wdt/wdt.c.
> 
> Signed-off-by: Julius Werner <jwerner@chromium.org>
> Signed-off-by: Evan Benn <evanbenn@chromium.org>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

Guenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
