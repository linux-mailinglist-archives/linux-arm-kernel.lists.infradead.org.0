Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3F1916AF83
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 19:43:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RYksrR2bR0wEtL7ddiVehrYfDnvahF/L53DPY+KIIwA=; b=bd8gp6jr1gKmLN
	idqLtEvlJOr924iDOeQpGGKQzY28CyhczT85v45YAj5Uhtx1pSUdM2GbEZX1rso+0ilp2+eJlNgz0
	kxwQUTs7OCFuxM/VH3QU1yUXvdyJ08NAG0H/R5mCQ4mphzuY32hIlXmo30Eb9qWEAMqE5z/yJMX9Z
	FPfY9kK+aNnhsxWi76Oa0B0r2UY4Jy7/Lily267Pkj0uLnBPMo+8EwRHgPQM7glXHMZFPdye0D5mb
	7oTCt5KlLqsKbEkq3gd1KgSUgm4x6quvjV9z7dJUpikCATOG19JIJpLJEnGrU+HHb7h/53m5ccVhW
	kG+u+f77nHkEn5R+oNQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Ihd-0004kS-SD; Mon, 24 Feb 2020 18:43:37 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6IhS-0004jt-KS
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 18:43:27 +0000
Received: by mail-lf1-x144.google.com with SMTP id l18so7568387lfc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 10:43:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uCmCqGkBSNCRTaEPKViwOJ/762o19mpcQcrckJGGFEA=;
 b=k2mwXkvdmgi8pr7kvr78v5r1c+AnLoKifDlTcCs/ZSikAZfhL088/hZVAQ1V1srjUW
 adK/hdF1CUFI0dDf+hlDbEPRtlSXcL2zxq95AAYfEpOO3eQVdUf6EvX6rChQV8hQbo8v
 8riLPA0EsHRca0FXC9j8nsopqWH1As4UIhBuVffez4KsHgxuWIUp19NXeLhknVrRe9+N
 Sp+7x/eT/OC8u0VhApIAdQrx/AVHnjtYqgZrVQAlEAT/ebn/eqX6kf+7Fv8zELrAO9uZ
 EYLmQ5qTINJfnaSl40WMelswQ70B8cmZf+d4kRok2h07fXkML/ilqbhADPJoekdqgL9f
 sAGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uCmCqGkBSNCRTaEPKViwOJ/762o19mpcQcrckJGGFEA=;
 b=N7wUolZji6qAQlU1KjwMFJACtm0gsNhdAayrXrylPALh+SmOcF21hONuKGmSozwf+i
 JZbo6S9LeUiH7qTBudrrRGsGBbWJKwclCpnSWFgWwj1GcO74YmH6Bg/WjROEM4OY6OiN
 AN4lCxxRXyXVgkjybwoacQ1x6eHxuxoKjHIGw/x2tHzZtr7LAEGnTaLAgSw7UG3lo+5j
 5u6NrPL2kCRO2TeFRe2phBc1Z/3jjjIkQLMTZBB1qfGV+Qf0+qsrffzb8qyqTU6RGK53
 Ha5S6x+9cXgVnu3zHWyhcm9Y3bDgbJ2uGaSWGyqPIl5Vfe2e5DJcobWGFZVHZEmgoZnF
 kAAQ==
X-Gm-Message-State: APjAAAXh6HRdHg7VV4sMX6lXgao6P2/sB8K73aN+2AU0bZk10OQDwk+9
 0PGuX3FgH78rOZYumJVBsGo0sKEbFjnix08/64c=
X-Google-Smtp-Source: APXvYqxVfNaWgGUCHRkeDD7FAEMlSi7VmD5rdHw5mtCFT9xR0L3S4D33CNY+Hp391gODfjB72gHp7oBEt0X4O41lZ/o=
X-Received: by 2002:a05:6512:10d4:: with SMTP id
 k20mr11537422lfg.70.1582569803984; 
 Mon, 24 Feb 2020 10:43:23 -0800 (PST)
MIME-Version: 1.0
References: <20200224172236.22478-1-frieder.schrempf@kontron.de>
In-Reply-To: <20200224172236.22478-1-frieder.schrempf@kontron.de>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 24 Feb 2020 15:43:13 -0300
Message-ID: <CAOMZO5CyYbAZRZrGLJNJXNJiekJXptUTu8tOfVw6y7-n-CXesg@mail.gmail.com>
Subject: Re: [PATCH] dma: imx-sdma: Fix the event id check to include RX event
 for UART6
To: Schrempf Frieder <frieder.schrempf@kontron.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_104326_668100_144C0698 
X-CRM114-Status: GOOD (  12.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linus Walleij <linus.ml.walleij@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 Vinod Koul <vkoul@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 Dan Williams <dan.j.williams@intel.com>, Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Frieder,

On Mon, Feb 24, 2020 at 2:22 PM Schrempf Frieder
<frieder.schrempf@kontron.de> wrote:
>
> From: Frieder Schrempf <frieder.schrempf@kontron.de>
>
> On i.MX6 the DMA event for the RX channel of UART6 is '0'. To fix

I would suggest being a bit more specific than saying i.MX6.

I see UART6 is present on i.MX6UL/i.MX6SX, but not on i.MX6Q/i.MX6DL,
so it would be better to specify it in the commit log.

imx6ul.dtsi does not have dma nodes under uart6, so I guess you fixed
it for imx6sx.

> the broken DMA support for UART6, we change the check for event_id0
> to include '0' as a valid id.
>
> Fixes: 1ec1e82f2510 ("dmaengine: Add Freescale i.MX SDMA support")
> Cc: stable@vger.kernel.org
> Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>

Reviewed-by: Fabio Estevam <festevam@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
