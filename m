Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4B0E81589
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 11:34:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SXJZUo/7WJ61TdtQ4hkHuXbpaxATRUKrqRS/sS6QAwc=; b=BMwc4N0Kxk584R
	LVVlkuQ8XyaVFkYm2qdWGmmg961jWQhNZHCvM6inT3HuF37O2fFfe+gLlbKlzgzJJ8cTXDZ//zxMb
	P2HdcpMwZ0uQuW0eWsBeeu+56CNlgxkj9M71Lf6Icjr/yswCYU99Jbv4uhnUG77LdFZYYWkCFMnvH
	xHSO8uAS5IU3F3ywx4izr1h3eY/4qgCeFZQyV2/RVAi3hEsNgFsx/u+yHpHuyX1rAOO4944K46Inx
	Miu7+tH0qR2vfRAXf8f0fwDdfcBKIW18A6aKqA5nlD8jUEXHEZnRIxlphaoZrgtdI6esbE6j1RUXd
	A0jQVrd4NIUD5FrRyI5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huZNI-0000e8-4K; Mon, 05 Aug 2019 09:33:52 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huZN5-0000dQ-Qi
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 09:33:41 +0000
Received: by mail-lf1-x143.google.com with SMTP id v16so3514183lfg.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 02:33:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=a5/OTJbMULuScAIGgUwgZh44c0Q2JNkTQ861C4qV4Cc=;
 b=ho/2sxNBfDxcs2tNhtJSlBcXOrGb3Cz10/jv02e7llYA9pzqalUNakRqDqG664oW2P
 8v6QuzOZLIZjG8Rd1PGJUzokrnO8V/QU48nvtl5ZXdOfq6pkQnDSpvwfIMBiwA9ukO0i
 eJkHHbY2Wl/d9ITBiRKFdvBXQx6vMSnkP2C7v0r0mU/d6XRmRcSCCu2GDt5N8BSQ4Gen
 hRNLnMD8WiiU1hFvDPPrzwfy7iBSWZk2c1YimgnzTS6f25exVdtkK6W/8+lg5GCjfhvA
 nYT4BKCaRs6RLR4KlSqx9ZVz955VzDaK6PbLn4aIHKVOzacnhEh5zr5kdRvRqpEzGxaF
 B7fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=a5/OTJbMULuScAIGgUwgZh44c0Q2JNkTQ861C4qV4Cc=;
 b=rJZARUyRm2u2w1gZRG06AnIJ/jbsoGyWMqWHe66I7RrUx4hfTTFQ8l2haTIAj1Faf8
 mwAxnRa2DWRmi02PVXyOcy48Hic6Ln5mIPt8YVVxItcPeEjiZBEFiMbiMNYwa66giWs1
 /UEf4wZdkFq2o2ujvuunQUeOHfQZNMW+Dyvncgp3fff4ohOUtu4phpiv3NAZhdhWmdnQ
 1bQVqqcY/QzBvV/6wfyiTWDp1rn50OLk09yR/Ke6/xUNmK6WGkbugKYklhjcmQYjenoc
 OuMr44lhek3OsLEp7ZMGfpYKPlHZGvBBfzxnAQddKKqdPIr4eI9ndA1i0oT1Lokph1m8
 OvBw==
X-Gm-Message-State: APjAAAU0neDBH4CD8XDVm/GdOOqx0XyCnLrsri61z7U6WZ3ZrWbQWqeb
 b/+3wycgC/Tge1b8l3zT1jXRjH56AO/e4mrFyHTAMg==
X-Google-Smtp-Source: APXvYqzkLt/2s7lmYJRBiAbQdejEqAdGn0s71l9TnQmxS1/x8GXzJw1ryF1BLIw92aPA24EkDs5CVVp1VW7C2rdLl/E=
X-Received: by 2002:ac2:4c07:: with SMTP id t7mr1239072lfq.152.1564997618266; 
 Mon, 05 Aug 2019 02:33:38 -0700 (PDT)
MIME-Version: 1.0
References: <1563774880-8061-1-git-send-email-wahrenst@gmx.net>
 <319549e0-23b5-4a49-49ae-723da754f984@gmx.net>
In-Reply-To: <319549e0-23b5-4a49-49ae-723da754f984@gmx.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 5 Aug 2019 11:33:26 +0200
Message-ID: <CACRpkdatwda5Pj_mLsg4zgT5WnRWyhkm=eaOschd8UTJGHKYvg@mail.gmail.com>
Subject: Re: [PATCH 00/18] ARM: Add minimal Raspberry Pi 4 support
To: Stefan Wahren <wahrenst@gmx.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_023339_931318_235F338B 
X-CRM114-Status: GOOD (  11.08  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Ray Jui <rjui@broadcom.com>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-mmc <linux-mmc@vger.kernel.org>, Adrian Hunter <adrian.hunter@intel.com>,
 Rob Herring <robh+dt@kernel.org>, Eric Anholt <eric@anholt.net>,
 Matthias Brugger <mbrugger@suse.com>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-rpi-kernel <linux-rpi-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jul 28, 2019 at 1:22 PM Stefan Wahren <wahrenst@gmx.net> wrote:

> any comments on the clk / pinctrl parts or do you just wait for Rob's Ack?

I'm just gonna apply it.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
