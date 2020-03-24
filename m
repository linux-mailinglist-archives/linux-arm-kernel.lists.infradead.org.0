Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F326B1912AA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 15:19:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ANRV0uW6YlEm1WYSuThX8hs96Ln3ARZxSXvnr48DRW8=; b=o5GdqgSaKKCUvc
	JwYvEa8wCMWH/i74FtI6LOV4oUnlL58Wjnps9zp3pfdcMzjI17Rgu8Q/DFMrbM31+VDcqBQfT8/kL
	Qa99PLNGano0B0w8IpsbF3JB16RlUByuYNDmWpgbAZdpXn34N9Tq2FeiqCj/hyB+KLjgd+RBMxGpJ
	PdIYhzdj6iC0JHcebMPR2jyqKDcRatUWU54Ied8XjFuv4lUhjcNFlHb/nAvOLLIYBve+744kFxHy4
	JJXySp9zjRQzH/9MoLFf27kxYWQyDW4SEswcoxB5o505KChfbXPfvjVSBi4Ja2h079ma5CS79aed8
	RsjQ+jQjdeyFHnVqQbbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGkOr-0005AT-6d; Tue, 24 Mar 2020 14:19:25 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGkOe-000592-Vm; Tue, 24 Mar 2020 14:19:14 +0000
Received: by mail-ed1-x542.google.com with SMTP id u59so20819555edc.12;
 Tue, 24 Mar 2020 07:19:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ehoOnX7cANRVwJFsnMxVRh4r6y5ZhsDcj+HsQoBA7+k=;
 b=DMw1BKgt0azEVcvVYUMM1IkV7V4vJbbF4AiQjha6peh3TlOebMmfm3ZPhdRYb8grnF
 CZzf0+AGl+SprOwNMoeDLN9U4c7Uz1aFz99MhqCPezI+SnIH6QankzBqanoEDdD8SKK6
 AnIcnrIn+joXS+F83m5TdbQhZpZ77Cs1WBoJCdZ0JXlg04f90b0SFshmAwhx5ompDdVE
 F7gm9WQVGNdvhE4qTCtU6wRRaQ53ZRWr4FEqpeMaqzuUcYHKoQ9/qHd+7UCsMXsDXcjN
 QMCgzI8IPVA/dhA4/7kVk2i331h9ORzUSCavNwrSWZMmYbhJ2IKONWu8xYsvNbBLWx7Q
 ZQ4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ehoOnX7cANRVwJFsnMxVRh4r6y5ZhsDcj+HsQoBA7+k=;
 b=m+IN7+qCSSlqHizQg3fsqcNEiYeFuDEHwi6bNY2JKZR6b/5Nn/KO1qbZKV8P0w/iSa
 EZuvN0758xIoZqYr5O9W4HjYl231nRVMo7USHk/caDlseC23d96UWZq3LBKOKu7+MgyK
 aLOfRk2QFP3RaETTwwqprKh8fmq3aIsu/jZVSQuB8MZwEU6M+RzN+rOubcclffW5yh8j
 eGpC1X2YH/EwxXtYnxatLK3aj+cslZRPXgO6/8pn7BPvUso4SdbCq2yRkeMUrL1rXIQe
 Q9pux6STJrYrE5DelM6n21PTRYK5skelHDCXMYdONwoXO8iNAdkXC2HGzG3psSl1Lnpb
 8n8w==
X-Gm-Message-State: ANhLgQ2vSf1aLUMBMboLYUy+8WGJMmCj5q4pUHdTmSmm22xWK4XNsnrT
 a/Zl0sXTv1wAFX9Kaa5xCeaWMejVbmhEZgcXHEI=
X-Google-Smtp-Source: ADFU+vt31prwEca7GwsYh+geJS6aapO+qLf6iqX1sFmVz6WP6dYHwK3JRoZpOYFXuRR1Je8lCqAgLKZWE4TAor0WPYU=
X-Received: by 2002:aa7:c910:: with SMTP id b16mr7488409edt.13.1585059551514; 
 Tue, 24 Mar 2020 07:19:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200324102030.31000-1-narmstrong@baylibre.com>
 <20200324102030.31000-3-narmstrong@baylibre.com>
 <CAFBinCA9rQKWx47F2-dT4ZrCwSKW+LiwAH2VdzPKr-9ymRxkSw@mail.gmail.com>
 <a7020606-57be-81de-da2d-73d399853217@baylibre.com>
In-Reply-To: <a7020606-57be-81de-da2d-73d399853217@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 24 Mar 2020 15:19:00 +0100
Message-ID: <CAFBinCDOrhXAEwPf4L8-5XoCGqDT89=L2CX2Qsr2J-1pQp6N5Q@mail.gmail.com>
Subject: Re: [PATCH 02/13] usb: dwc3: meson-g12a: specify phy names in soc data
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_071913_030599_214B594C 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: balbi@kernel.org, Hanjie Lin <hanjie.lin@amlogic.com>, khilman@baylibre.com,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, kishon@ti.com,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 24, 2020 at 3:17 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> On 24/03/2020 15:13, Martin Blumenstingl wrote:
> > Hi Neil,
> >
> > On Tue, Mar 24, 2020 at 11:20 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
> > [...]
> >> +static const char *meson_a1_phy_names[] = {
> >> +       "usb2-phy0", "usb2-phy1"
> >> +};
> > my understanding is that the A1 SoC only has usb2-phy1.
> > +Cc Hanjie Lin to confirm this
>
> I forgot a comment here, it only has a single PHY, but still the 2 U2 PHY
> controls slots... it would need a large amount of code to handle this
> tweak, and leaving 2 PHYs keeps the behavior before the patchset.
I just reviewed patch #3 and I now understand that it would require a
large code-change
I'm fine with a comment


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
