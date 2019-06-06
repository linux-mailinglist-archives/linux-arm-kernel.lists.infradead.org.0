Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11E8737D83
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 21:46:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t2ibLKP0JUMORtoiMiGSjyI3vF9BRWk6JEAN9pVVmVs=; b=NQI1GcsY7viHfI
	NvXafViBAVDzNqvsrJ+sxdiQbZj34dOzvMc/uHbA/cLRtbGQ/PadWpujZtw43sJ5gJdjIOIS7hTFa
	3Jax65vN/oZR4FP3g0KS/EDzj0R+2cx/eV1+DtHlOvjYOmc/QPTPhH7dcbXNR+j77lX/6b4iNihkh
	bhXZvbxpXwOQfaMQlzYIn3Q5hE6OBHUGTt8v/MZAmhqZDpWz0W1NQNsrRvc7mClt8MmCs7y21acXc
	UyKtWbc8zJAONx/JAJTqrI/+awSI9VeqVbqzKFn5V3fnbXNenoNOOLYlGNaw1iH21LWYhppqZ1Uc6
	YW3IIyuyWi5B+cQ+SMlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYyL0-0003LK-Sq; Thu, 06 Jun 2019 19:46:14 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYyKU-0002ka-BB; Thu, 06 Jun 2019 19:45:48 +0000
Received: by mail-oi1-x241.google.com with SMTP id b21so2457807oic.8;
 Thu, 06 Jun 2019 12:45:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HvsZS4bOWzh/rxJ7Vbhm+IleDBXmUoCFx+NzSXIR57o=;
 b=dMA1DpS4lVQzF3ZNO1J8lBPXw7HRf3KPEBh1nnzkpwHzS+JnIlc6I1WhERrDHbG3n6
 ZZMXV2U73oxBby1z/sJfZS2dxWu0uSLZb5L1SaobDKr1D9R1EP2mnsAUNjBCpgTX9637
 PaI1fAwxsKymUjv0iwjOkUUzxkGrmTUFQTpo3IqVi2PRDDtcRWWIOzNeDSzyYApA/YIs
 Iz3P+UD24H7N3ATUYFD71EFh+UsU6bkXcXSU0/dkIV0Yq8MDvXAhEMSRdhbJoB3VOh/s
 n/R2RIS309HBRdorUaO9BWvnXZdtPYPQd0tb1ZTLKhJE7Gj3eTTzvVAjHU8P/KmrdiBd
 zD9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HvsZS4bOWzh/rxJ7Vbhm+IleDBXmUoCFx+NzSXIR57o=;
 b=EqKApnN5I2qdct0zN9NzAC1CzEAZIcYyaMZBZ/92aP6oQs0l6dHm5YHQlIRlC7EPwY
 0Q2WnciO3JLvQRApoc6sEIRg7utJOfVd3lkHu4P2VpagokQIWfJnrR+AVq2BMmLpDAE5
 UjEs401+BCTl5F0nJ8GdygUv95Hq7Nad7jLzke3KrKvoOva1rRInu4YFSW7T+4eb76HX
 YgQidkvIr9r5BhlImCZDWX652URs2CjeEZ6Yq1jAXwZOkSoWUpNkaEBUS0fMQ3G7viSz
 wGyuYg0RnTjKC+6elEU3N6Xnint/x06NGzPwfwpFehhBJuFYDcRDSzk3QlEZBhjf+YyD
 I+Xg==
X-Gm-Message-State: APjAAAW2M/FN2HtkrWabbkAoI9zRygA7a6mQqEB2o85BUqPpEcAFL+9O
 mJPO4nlZpYh6HZdO8/lwAbiKlJz9XdhWA9kLlhQ=
X-Google-Smtp-Source: APXvYqzwNJzMn8BxHcmZMP8ExVHZkbQto4huDPJ4ia1CxvIjvKtYeqqbd10DSX8Ulxk42tGLcO6UqDoPI3VIjCXSj58=
X-Received: by 2002:aca:4341:: with SMTP id q62mr1300541oia.140.1559850341244; 
 Thu, 06 Jun 2019 12:45:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190603100357.16799-1-narmstrong@baylibre.com>
 <20190603100357.16799-4-narmstrong@baylibre.com>
In-Reply-To: <20190603100357.16799-4-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Thu, 6 Jun 2019 21:45:30 +0200
Message-ID: <CAFBinCD5y4rVO7AU7iDcrJXK7nj1uHowVnQOQT2wMSwL3EjuWw@mail.gmail.com>
Subject: Re: [PATCH 3/4] arm64: dts: meson-g12a-x96-max: Enable Wifi SDIO
 Module
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_124543_092691_2E8486C7 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: khilman@baylibre.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Neil,

On Mon, Jun 3, 2019 at 12:04 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> The X96 Max embeds an AP6398S SDIO module, let's add the
> corresponding SDIO, PWM clock and mmc-pwrseq nodes.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
with the comment below addressed:
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

[...]
> @@ -155,6 +169,12 @@
>         pinctrl-names = "default";
>  };
>
> +&pwm_ef {
> +       status = "okay";
> +       pinctrl-0 = <&pwm_e_pins>;
> +       pinctrl-names = "default";
on the other boards we list the input clock explicitly here (I assume
to avoid jitter due to a less precise parent which may be the chip
default or set by the bootloader)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
