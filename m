Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3511E151593
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 06:55:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qqdmz7Da6rOPJM/Hx5y2M2vXdGvsp+kYqc8eqRXMVm8=; b=F3p0LUgZHAGl1Q
	8MpkCC3CnT9MpafK1ao3PEbfflHezbqkgfNRUIdWl1DLr/kxQR2RVrBSVMPiwTce9hHmZAG2+FTcD
	gMH0xIK1b4hMDyFvj7KIDdpcFrWwKfic/AsJjPcHNE8oFigXVzL2TJebL/06mH/tEF+tzdNuQeFtY
	4Qbyqpvh9ikq4vjcB5iVR1zR2d0gNsLCFgVNT/G+HtoMmQFVo0DpKK2dfHQDvRxRpIrljSs1PRpfn
	kSY2XwS/WskK1vneWvf5WApOsQyTi+7/ddAWIuwUfSk5fFFcbpjNpIOeYElRYWsG1WI7JVLI0lakA
	levow0ubBMyZ9gUzg6yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyrB4-0004Ju-Vo; Tue, 04 Feb 2020 05:55:14 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyrAp-0004Ii-R8
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 05:55:01 +0000
Received: by mail-qk1-x742.google.com with SMTP id g195so16761183qke.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Feb 2020 21:54:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=p7n4zoUIIiZA2ALJJ4mJ57lt2Tcsn0/OESnXuVktsWY=;
 b=iVIquOkE279Q+7leFvYOkIFSqSRBJPoOawRF8kQpKRY1g1IVeYzB53msqcbdBWFHuk
 2VKjw/GtlEhJxzocBgubpF/H/yMargA5Txm2lTb8KCXoviEE+uJp3lC4f+4eqacg0pDq
 NKAdbraEwRWewqIh8YdXUBf/heEP4vlAfXjac=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=p7n4zoUIIiZA2ALJJ4mJ57lt2Tcsn0/OESnXuVktsWY=;
 b=MqFO0oBDXi6NjlUi2S9KKtCQmJsWYeuRFaD56qb9q2YpkBdzctw6B6glTdyGoX4QOt
 Kx0Wc8/gHOUzD0bU364SZnbwl2vLAtzJq1o6jVyvhyYsds7KzjkNecj4iHlvB7uWAaqg
 W1JnGzpfUO3IRCCS5BTFXS6SzFu2ZdOBSYFlnCNPlZwh7JdGUkmCfM/Fxr/KRu4PnW8W
 JnBruJve7NUFypmk7Vqi7toVkOzSBtf4vax7kXJfEm5ce0JYV0ILOge7ggC/DlinSFeK
 dfVbgNCCWDH1XPZAMj5r1u/kMWI3wMp6gznvCdP1TKsddaktrYm/c69o8tcVW4IMMFLE
 2ubg==
X-Gm-Message-State: APjAAAUtPV1yRDZe/XcEau/ecTzgD7QtWCT8IZDRzgfclmC2VkFSRlEl
 j1mG6CuAZr29TjZtE5v2fOmDSVYz/AxLUJCv5Uo=
X-Google-Smtp-Source: APXvYqzF7uxnpiHtFepL2gYUO8yy3dYQIdv2llaISfPr13fI0OQDLILTDeVHgt8XFYYHzXLAZwTJy/dPVgzXJUE43Ec=
X-Received: by 2002:ae9:e702:: with SMTP id m2mr26659032qka.208.1580795697026; 
 Mon, 03 Feb 2020 21:54:57 -0800 (PST)
MIME-Version: 1.0
References: <20200202163939.13326-1-linux@roeck-us.net>
In-Reply-To: <20200202163939.13326-1-linux@roeck-us.net>
From: Joel Stanley <joel@jms.id.au>
Date: Tue, 4 Feb 2020 05:54:44 +0000
Message-ID: <CACPK8XeLWZT-VvuErtz6oE1tv1dhwwOnpZbV7PVr2PxgT2fopA@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: aspeed: tacoma: Enable eMMC controller
To: Guenter Roeck <linux@roeck-us.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_215500_129213_22A3CB39 
X-CRM114-Status: GOOD (  15.31  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [joel.stan[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrew Jeffery <andrew@aj.id.au>, devicetree <devicetree@vger.kernel.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 2 Feb 2020 at 16:39, Guenter Roeck <linux@roeck-us.net> wrote:
>
> Enabling emmc without enabling its controller doesn't do any good.
> Enable its controller as well to make it work.
>
> Cc: Andrew Jeffery <andrew@aj.id.au>
> Cc: Joel Stanley <joel@jms.id.au>
> Signed-off-by: Guenter Roeck <linux@roeck-us.net>

Thanks Guenter. The description in aspeed-g6.dtsi changed at some
point and Tacoma was not updated.

> ---
>  arch/arm/boot/dts/aspeed-bmc-opp-tacoma.dts | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/arch/arm/boot/dts/aspeed-bmc-opp-tacoma.dts b/arch/arm/boot/dts/aspeed-bmc-opp-tacoma.dts
> index ff49ec76fa7c..47293a5e0c59 100644
> --- a/arch/arm/boot/dts/aspeed-bmc-opp-tacoma.dts
> +++ b/arch/arm/boot/dts/aspeed-bmc-opp-tacoma.dts
> @@ -132,6 +132,10 @@
>         use-ncsi;
>  };
>
> +&emmc_controller {
> +       status = "okay";
> +};
> +
>  &emmc {
>         status = "okay";
>  };

This node is redundant, as it is not disabled in the dtsi.

Andrew, should we add disabled to the emmc node?

Or remove the label completely, and just have emmc_controller?

Cheers,

Joel

> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
