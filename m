Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (unknown [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45031141A00
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Jan 2020 23:07:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jdNQ/XFcez618X5iRBLywU+BS0HLo6N0n3mmFd3z6+4=; b=mgsytkeKRZWU6u
	8Nlw83PQ7ZaJvVPSc1tSKvQWGRBsUnvDC1dFjnx6xJQAKoK+Jr96Chb274XvF6XcSSj/eWP+38R2p
	ANn9F/lyL6dcR+wTziKvpcNmpHkpojiyy5c7XE/dP2K3AYQ3gK994y7XP8s8CFvi/A+gX1+pvkvMH
	s4DOZXErFRHapfGl0KluMNOn8abMKF4qib0sn5ChaJrcYPpKOSrVdcj7Urm7DJJbEAVT57gcsFDZw
	QtLau9g7o4olqZMiEyXRXhpQWAhU619gCKWzOpdcH2UvjnsTzMOdSNXgQmWutThTowFt30AF7kB9p
	DOKbpAw/q6+YH9qSkWGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iswED-0006Bt-Uq; Sat, 18 Jan 2020 22:06:01 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iswE5-0006AZ-QL; Sat, 18 Jan 2020 22:05:55 +0000
Received: by mail-ed1-x543.google.com with SMTP id t17so25890318eds.6;
 Sat, 18 Jan 2020 14:05:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IZo36abDKqjdvzc5GwhroDqR39xgOE1dZtSOdvhsHaY=;
 b=rrWBZd43dKN2kOfO+ejr5Z7+dyqYVVj50e+wGMqTbZBEstOVS6YXQyRUpr0Y+7R5h9
 FjlQICJh7caGHGRWzQpSCOqXZUnhH6y2uHCnal9eJNho/+TEdrP9BNWZWERYWrrlJVq2
 BEDYyjW6IgnNOM1Qov5RBgUBP6gAByvEzSGyUMV9Yg3aXnxU4WKsfMdB3ZeiHsuNCTfU
 ikTwlAJcNycKOPvnbJ7sIKy3vHNuReSSHgSASLXzfJRbNPt/zeDkqDkWEgO35WzvZsYL
 vTzVHHy44Ism6FVpp8/k7o81pySIKU2xH2qxB+KrRC8I8j8+cO8bROIyf7qokKdW9ViY
 vDHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IZo36abDKqjdvzc5GwhroDqR39xgOE1dZtSOdvhsHaY=;
 b=hKsvESV8v7wOeAL5BW8X8MykfaWKvXbpGgaVsVHIhaqIV/EUvH2MBZIjoPfqPW1y+u
 UmkEJU421oT17XmwrXZQl3AAImwLBA7RKf5lOeASV2xTT3LzYoqmPvwISGrEUOmKCCy2
 rb4LEaMpH4M3SrgSWdZMEZ8UDH2bwgwKvGpAR5bW4iyTnv6neLMpDdYgRCA59uSoQpaX
 qiekSgZEuL2ybHVWT+2g3BYkroMD12Y+OjSIeuau4sbC5YZxUe8QcZL0soaMNe9gLa4i
 ScAjEgeNWumRKstl8O615qYFaY0uuU5gKSZOdMTiEGFKi+Z4vKYnKnbMjqBYmaSM+pKn
 hgXQ==
X-Gm-Message-State: APjAAAX1IG/IR1knozFF2pEHqfIgY4SPN630mbPnEde4TctqaWxnice8
 nBm8KoCOTB44pz3mASQ/ife18zTgV4ngetk8+Kc=
X-Google-Smtp-Source: APXvYqyNH1kS9f9T6kQko9VTwsuHR9OgAGx0Ogkz4TN5x/HgDfDbqpYogNZD1zO4DAwEf3ZVTRNcAK5Ra6gnLeWPTDs=
X-Received: by 2002:a17:906:90c3:: with SMTP id
 v3mr14156897ejw.30.1579385151960; 
 Sat, 18 Jan 2020 14:05:51 -0800 (PST)
MIME-Version: 1.0
References: <1579220504-110067-1-git-send-email-hanjie.lin@amlogic.com>
 <1579220504-110067-6-git-send-email-hanjie.lin@amlogic.com>
In-Reply-To: <1579220504-110067-6-git-send-email-hanjie.lin@amlogic.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sat, 18 Jan 2020 23:05:41 +0100
Message-ID: <CAFBinCD9iwBHYArqU55kg_uG3xc=JnL=F1P0KW1+6BP2xHoN0g@mail.gmail.com>
Subject: Re: [PATCH v6 5/6] arm64: dts: meson: a1: Enable USB2 PHY
To: Hanjie Lin <hanjie.lin@amlogic.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200118_140553_879099_66856862 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rob Herring <robh@kernel.org>, Victor Wan <victor.wan@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>,
 Felipe Balbi <felipe.balbi@linux.intel.com>,
 Neil Armstrong <narmstrong@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-usb@vger.kernel.org,
 Yue Wang <yue.wang@amlogic.com>, Qiufang Dai <qiufang.dai@amlogic.com>,
 devicetree@vger.kernel.org, Liang Yang <liang.yang@amlogic.com>,
 Jian Hu <jian.hu@amlogic.com>, Xingyu Chen <xingyu.chen@amlogic.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Carlo Caione <carlo@caione.org>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Hanjie,

On Fri, Jan 17, 2020 at 1:22 AM Hanjie Lin <hanjie.lin@amlogic.com> wrote:
>
> Enable USB2 PHY for Meson A1 SoC.
>
> Signed-off-by: Yue Wang <yue.wang@amlogic.com>
> Signed-off-by: Hanjie Lin <hanjie.lin@amlogic.com>
> ---
>  arch/arm64/boot/dts/amlogic/meson-a1.dtsi | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
personally I would squash this with patch 6/6 because it's only useful
together with patch 6/6
on the other hand: it's not worth sending a v7 just for this

> @@ -100,6 +101,18 @@
>                                 #power-domain-cells = <1>;
>                                 status = "okay";
>                         };
> +
> +                       usb2_phy1: phy@40000 {
> +                               status = "okay";
we typically use one of the following patterns:
- status = "disabled" in SoC.dts
- status = "okay" in board.dts whenever the peripheral should be used
(example: I2C, USB, ...)
OR
- no status property if the peripheral is mandatory on all boards (for
example: clock controller, ...)

so for consistency with other Amlogic .dts I would either drop the
status property or set it to disabled (and enable it in
meson-a1-ad401.dts)
same applies to patch 6/6


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
