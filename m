Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD9B812A954
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 00:22:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8f0Xe3e6TAQSR6xxFNde0RM7Duz7d3/fO0sWiuEgwJM=; b=XTkYilkn7D8fkr
	hzHTZ9BiADpbbrksPCGz216W+w5pMYrGya1mRwooxQGsVtM3aC79pYtwIAsLVmjlHVtDVo1SRMRPN
	2eQDzggE6l8n8oweRJEF6id/MQkUtBMVbDLNiiTPzPToN59W9ywGLqIXaI9wXYubqmylW7Rb9H545
	xvC5rgiuAYl17Y7CcI5Sv6ERRvwtJrSG2TMUXUKoMHiKiujUinAD1XkD2athE1G9AL71BQ2eTtKHu
	JjlVKYcCA08UfYaraJK5JEl2Y2EkvHbVT1Rt+aulg5eKHiDOR2L9xcFAfXK+m52tQQqs1YCv2to3C
	N883+V/3PP3j6qNkrY/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikFyv-0004J4-CE; Wed, 25 Dec 2019 23:22:21 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikFyl-0004IO-RZ
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Dec 2019 23:22:13 +0000
Received: by mail-lf1-x143.google.com with SMTP id n12so17419584lfe.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Dec 2019 15:22:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+Gy6dk1JceW57KpSGmAR3pzf0NX9lVcNuOQ3hyF1SQQ=;
 b=QftLw47QATwWJrAK1J1ZkIPFgUbtVl/bijGpTQCZQnEbmlyWXU8+Dc1pLgxt2uazqb
 lepCE2/H22kDC4gA4qcIq/QOQoHLvRUlAB3fYrwilQRWmIs66vJLWx54zSUIdxu19VDz
 j0fBs5fg9aUMldgRX4sJosAL9Qiuc50NSjD50AK946tUKOhHZgRUDVOqlYzKAVBKPaR8
 Ku7SJiSO16CJzFdbcsHM4+/oDtfM2KM2QiKT4NXNCgnEE2sOFu63RSajiRinXumBwsA4
 pOlSidyJrjd9yR32tnhj9/F4+0zQ1oxftC0BgCZWFxhe8tsGhnF8NZERs7t3qNXfto2Z
 n6eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+Gy6dk1JceW57KpSGmAR3pzf0NX9lVcNuOQ3hyF1SQQ=;
 b=atuHUJoTxb0NM1gfBZlvqKABFVDY146yisAW2UwIiS+JKUoB/nV44oVVD1tcezC6Iu
 ysrxXH4cAKmOexFXD5kSRQRdr642R7MR787ZNnkIhqQeNXM/P3h/62Pvgb5HClu5B2Pu
 0vVJr0WnKMZnwKnBtLC/WUyRp696VNe/y0em+HplHIo7LGS2VtDIg8wxkdWQN5ifnk9l
 VLj55y8twIqEFFCZ2Zli/DpLYTTLzlNRDeEUB89czuMLyeyF8zB0kuvMZ5WHZ5/Fh0oM
 su2cr93glR2oiQSXf87MeUWGH1vtg81fNy3UTICjXsafJrUXREnRS1AlbD7AI2MTUMMf
 c8mw==
X-Gm-Message-State: APjAAAUFrLFxrhym1I2t9FA99Afu6TbXGq1tRAPTT/pU88s+zStjxJ5A
 +0+tFnOoemXO0zxWvyHkErNhX7JxKY+PiXBfolKtXg==
X-Google-Smtp-Source: APXvYqxP+4vajSwjPFxjWCJawxrvcwrC5tMG1NUMTBSdIZQPpZe+BN3HpSqOaj2VfoRuz2wvDvieM3+jXWf32Siik2k=
X-Received: by 2002:a19:2389:: with SMTP id j131mr23035440lfj.86.1577316129048; 
 Wed, 25 Dec 2019 15:22:09 -0800 (PST)
MIME-Version: 1.0
References: <20191219202052.19039-1-stephan@gerhold.net>
In-Reply-To: <20191219202052.19039-1-stephan@gerhold.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 26 Dec 2019 00:21:57 +0100
Message-ID: <CACRpkdaaK27UNxYkGM=LkeMXN+WzsmxvLgEpWdNd5GroA=4jdg@mail.gmail.com>
Subject: Re: [PATCH 0/9] Add device tree for Samsung Galaxy S III mini
 (GT-I8190)
To: Stephan Gerhold <stephan@gerhold.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191225_152212_019146_18192FEC 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 19, 2019 at 9:21 PM Stephan Gerhold <stephan@gerhold.net> wrote:

> This patch series adds initial support for booting mainline on
> the Samsung Galaxy S III mini (GT-I8190), codename: "samsung-golden".
> samsung-golden uses the Ux500 SoC, which has great support in mainline.

I queued all the DTS changes in the linux-stericsson tree and will
send a pull request for it soon-ish!

Thanks for your hard work Stephan!

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
