Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76ED0754B1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 18:54:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eqK5HOAtYwF/SdT7k6TLbTJM4JssVDHWvVbqai7pVqM=; b=FPhe0UvOTEycvv
	hd6/K8L39NufTjTTzP5FzmqHI1thdEQF3UdFzPhtHG04o5n6yeiVlMJXXRGZpUY+GTOSA1/9R7X5z
	/63vyriz4BhtC1b6qQLSqozI9C/grqQJYCb5KSBey/MrrAsx6uTwFLghjEeH6fb++n/XDiFZ8feD+
	bTa8Wxq3w8WqtXShzy94B8dQNTjw4ZPnLlj1DgKdtEuO2g9lIbSQxIjL2yqUsW8PDrhVgZmeEa5c6
	RI0u565vZ2hkDsi/z3ITdg+MV+hnSlBEILOa6t1v4GoYDCmH1RRBZhdLlyyu/gS9Ld7Sn5NzIZECt
	v9iQfOXL+WU84JgrDiyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqh05-0002sX-7s; Thu, 25 Jul 2019 16:53:53 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqgzp-0002qP-QD
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 16:53:39 +0000
Received: by mail-io1-xd43.google.com with SMTP id k20so98657361ios.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 09:53:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kolA9oGTMt2kJuYg8zC6oRG5UHIMOnhc3kiBOYsRrZA=;
 b=IPSevJy2liwkLBHgCIP++Od2vm8pxaK7qAFqKLBz212Z655uA/9ROOg+s5IaImVzfs
 mp32U3H4iTgV7TrIOZ+ToG924T9y/qluKpRZOuijot3YOobPniwSFgN0j+k3iBv5Ur+V
 vqSmZD4y6I1UTcz6Rz2aS0nGWj9Ge5ijQbM4c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kolA9oGTMt2kJuYg8zC6oRG5UHIMOnhc3kiBOYsRrZA=;
 b=R75Td4l0SXdBWUNOCQYcIC+pIGIrr83DhVBmgF3jWN0FGDeeYF8EnE4jby+DobZMN3
 StnMJ1Rymmb5n+VQonNX6027jrzrCQpwDMzWGI1Kh9aY7bOOwx5NFf+kFIHmmb3Yq0ti
 sDnsQaH3C9CkEvOHuPvt9nEuHAP1JAaeJOe7b6b52AdtrdOMW5G4g+STKA0RZa0DL+Lc
 PdyWkUvkfS0HlYORt+Un7JwoAYRwuHr7NxroFTgeP3wVYWmvHDc8woYE3IanHhCUZk1S
 uQKEaA1/xB2fzVpkHu3vHlVZ45jGFx9qKIqmZ64srdG6R/RR2OOcpwZqoaPf+Z5Op7D1
 4WfQ==
X-Gm-Message-State: APjAAAUm36Djqa99oefJlgdmddQ6hO6pWKdRK/vq6uh35ToChf2ThBJ2
 Y1ITUvlMLJlyJM92sAcAcNpNiyIopD0=
X-Google-Smtp-Source: APXvYqwsed8IHMsU17NwovUhNWZ9MLMVeorBYYhHpTUKxfn/0hZ+dqabtp7Ze/cVsJI24jCULd2klA==
X-Received: by 2002:a5d:8ad0:: with SMTP id e16mr20275118iot.262.1564073616684; 
 Thu, 25 Jul 2019 09:53:36 -0700 (PDT)
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com.
 [209.85.166.47])
 by smtp.gmail.com with ESMTPSA id h19sm34349562iol.65.2019.07.25.09.53.35
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jul 2019 09:53:36 -0700 (PDT)
Received: by mail-io1-f47.google.com with SMTP id f4so98726198ioh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 09:53:35 -0700 (PDT)
X-Received: by 2002:a5e:c241:: with SMTP id w1mr77963588iop.58.1564073615649; 
 Thu, 25 Jul 2019 09:53:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190725162642.250709-1-mka@chromium.org>
 <20190725162642.250709-4-mka@chromium.org>
In-Reply-To: <20190725162642.250709-4-mka@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 25 Jul 2019 09:53:23 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VZur9gPvUnRtdwieqkjMxx1nOabaRXjMsQ7hZwgNVE5Q@mail.gmail.com>
Message-ID: <CAD=FV=VZur9gPvUnRtdwieqkjMxx1nOabaRXjMsQ7hZwgNVE5Q@mail.gmail.com>
Subject: Re: [PATCH v3 3/5] dt-bindings: ARM: dts: rockchip: Add bindings for
 rk3288-veyron-{fievel, tiger}
To: Matthias Kaehlcke <mka@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_095337_847972_6B1BEB41 
X-CRM114-Status: GOOD (  12.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Heiko Stuebner <heiko@sntech.de>, LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Thu, Jul 25, 2019 at 9:27 AM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> Fievel is a Chromebox and Tiger a Chromebase with a 10" display and
> touchscreen. Tiger and Fievel are based on the same board.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
> Changes in v3:
> - patch added to the series
> ---
>  .../devicetree/bindings/arm/rockchip.yaml     | 30 +++++++++++++++++++
>  1 file changed, 30 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
