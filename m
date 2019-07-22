Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB7626F9CD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 08:56:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ixeYpG3p1uFJCUms3dYxauqHXOU18/ZLcOuNr6RrpDQ=; b=FYVWxB5pyKdAIk
	a92J36fcZ7YYmQL083UBka7imyKrOmGxFnSaDDhAEdIzV5NtpM8YVif8ftxWsdqj+CivnjRyKc6Tu
	iHRNdqUkoJDaXKxFX8mWyJtjVu9np8AbZEVA8TmS1K5HKcNlliWyGCY7OvzmHVf0aUauTBMBnKPlF
	q/e+G7VNX1ZvBruAtcVcap0KBIa3E9gEpGtOP4LWAsAptFrFHeFGRJr70+PcmX/kS0vyYe8/b+otT
	1CtYrZO590YY2udmrSkF0gcCas5UlBbTuM8YflHLzUYHlmDjQfneIAnChRNTVI8bjLRp2JBPIRc8j
	4x0UzaXGiykjCkHqzbgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpSFd-0006bP-FJ; Mon, 22 Jul 2019 06:56:49 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpSF4-0006Ry-0H
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 06:56:17 +0000
Received: by mail-wr1-x443.google.com with SMTP id f9so38083396wre.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 21 Jul 2019 23:56:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1scnAc3sjeh3WnhlFA65T1sb9Wb1g8NqJ7QEYKWinXI=;
 b=dcq8pFqd4whWmN0hnHjTTI8gBlxfAFygZQYCUnkKG6l5Dnep7c1/qbOjMP1b8376Rg
 xHUZOwwOLr3SuWX+LHjx1Gunrx3InG2MC335OZ9KQON3Q/+xtzeZI5b2V7BkvV19N4s6
 D9w1mNn8rrFiGVPbDFWx2F8bROD6olINKM7DA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1scnAc3sjeh3WnhlFA65T1sb9Wb1g8NqJ7QEYKWinXI=;
 b=Bd6zWWXK4dXsXdCfV2ybAX66uum7D9Ir5JGxIVgMddKlTLlCVp2evLIzaxsLpSnwpU
 zmf6dzvRjoqwgNVdDsmfMND37UUc0R3Y6fBvvAKVKXb3/9tjDbDMHrz9MYuUBvn2P0Yg
 p+24BbdjjhMC4DmyFSmt4SGGKwELk3aDmcvMm4wSuLbc1zdXrzW3F8SA+xZohrYjCStS
 kZT+eu8GrUdLlwfYPfuPFP795QW1FL5DD/ov7jpjXiY14Sy5Y8NdzWAh4uv++GD5AyQI
 cDd9o2RIbQabfvu83ojw1qeg90KX9x2zgyon6ydRK33yDm75RCzDDnB3AFFuvrU/vnWX
 5ecQ==
X-Gm-Message-State: APjAAAWpOmjPK5ogmiTTwMpL+LZA+lHvFCgrUjUXZfwwuWeV9OMApUAd
 Vcpy3C2TdNX/Us3nJUKMQcS3oi15Ie97Xpu6Kxb8fg==
X-Google-Smtp-Source: APXvYqwCsFlLcZIboFmBzsjOKnB2+3vm3wBmHSjjERq1FdF1fyAUmXB8XhbTC41jULay24oeapefuqgs+ZsLgVKZXYk=
X-Received: by 2002:a5d:4284:: with SMTP id k4mr70423576wrq.194.1563778571585; 
 Sun, 21 Jul 2019 23:56:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190708100641.2702-1-dongchun.zhu@mediatek.com>
In-Reply-To: <20190708100641.2702-1-dongchun.zhu@mediatek.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Mon, 22 Jul 2019 15:56:00 +0900
Message-ID: <CAHD77HkDrGgiTceE2jLX8Tqc8GH9R1UyRhiU83=HRvZKjoDYjw@mail.gmail.com>
Subject: Re: [PATCH 0/2] media: add support for DW9768 VCM driver
To: Linux Media Mailing List <linux-media@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_235614_064602_394B1249 
X-CRM114-Status: GOOD (  16.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 srv_heupstream <srv_heupstream@mediatek.com>, shengnan.wang@mediatek.com,
 Louis Kuo <louis.kuo@mediatek.com>, Sj Huang <sj.huang@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 dongchun.zhu@mediatek.com, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Cao Bing Bu <bingbu.cao@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 8, 2019 at 7:12 PM <dongchun.zhu@mediatek.com> wrote:
>
> From: Dongchun Zhu <dongchun.zhu@mediatek.com>
>
> Hello,
>
> Add a v4l2 sub-device driver for Dongwoon's DW9768 lens voice coil.
> This is a voice coil module using the i2c bus to control the focus position.
>
> The DW9768 can control the position with 10 bits value and
> consists of two 8 bit registers show as below:
> register 0x04(DW9768_REG_POSITION):
>     +---+---+---+---+---+---+---+---+
>     |D07|D06|D05|D04|D03|D02|D01|D00|
>     +---+---+---+---+---+---+---+---+
> register 0x03:
>     +---+---+---+---+---+---+---+---+
>     |---|---|---|---|---|---|D09|D08|
>     +---+---+---+---+---+---+---+---+
>
> This driver support :
>  - set DW9768 to standby mode once suspend and turn it back to active if resume
>  - set the position via V4L2_CID_FOCUS_ABSOLUTE ctrl
>
> Dongchun Zhu (2):
>   media: i2c: dw9768: Add DT support and MAINTAINERS entry
>   media: i2c: dw9768: Add DW9768 VCM driver
>
>  .../bindings/media/i2c/dongwoon,dw9768.txt         |   9 +
>  MAINTAINERS                                        |   8 +
>  drivers/media/i2c/Kconfig                          |  10 +
>  drivers/media/i2c/Makefile                         |   1 +
>  drivers/media/i2c/dw9768.c                         | 458 +++++++++++++++++++++
>  5 files changed, 486 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.txt
>  create mode 100644 drivers/media/i2c/dw9768.c
>
> --
> 2.9.2
>

Gentle ping. Some help with review would be appreciated!

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
