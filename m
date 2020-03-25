Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A3FE193417
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 00:02:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UOdEqiGS1lTgpFalXV9YU8NCkcRNyPVagPonAIbYZ1k=; b=iy0oxHaNC0NPoL
	tqgrd+Qk7QI6EC0Sch0i+9hI/tN+RuZelYnROFzhMg07UEX6DzuFYjBjqxXehlIZlYmThKNam8Xze
	+CCngEmYLT8y3piAhrzEwmMIqkFaTyLyiWka8y1cYowtdtODuWr5lb/FMIPBlvSUj1f2dVe5El3I1
	Dexna53XHVeu9s7CQ3wGgleVJ3FaXUMAkP48/ZCyF7Cdny8q+NOTuWor7KnjNDy8y/ivMqMzPevGy
	1rkrgAIVNxl4I+8u599Sb1rHvJ9UdKZdjWGR/e45KUoU/VqBKUAG03SMpu9gkOgF23JskB8F59uSQ
	ldID2KrgufHpDbAzRecw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHF2Q-0000JT-AO; Wed, 25 Mar 2020 23:02:18 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHF2C-0000J1-L0
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 23:02:07 +0000
Received: by mail-lf1-x141.google.com with SMTP id n20so3220620lfl.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 16:02:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BhYWNeuI7fxySpW45Kxze00QPvGt6EkBnz4YWCMRr38=;
 b=OpH/8hZQTg2SJikq6biTXo8/bYAy9RmjdvGqmZlTRV2KiX5dw9BrFyEVWY6DgVdUOh
 0vO/66dL7horRhNEjDgdgJPwTyV9MMkTE5UhTxhsUFyXanIrspkrbwp8IqF1pJ6iXl2U
 mHUwamaKdQXgC/T6Y1RSX+Qz09H5nRkqHt4Rt6fq2OEz3G7aI53HRH4nsQ2b9VHdh9JH
 Oo4b4ZYlplhiUGso2Sr+Dd7tmT5AjYI86K0z4RUj3FeckZDawYobat7KQQL7H4RBVU0s
 Z/M61Qqb8q7PxeWcPaY+/eZ9V1xuvzhqWx9OgL7tI8A7cJVCac7b99AFBV4dJg+1FVEq
 AxyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BhYWNeuI7fxySpW45Kxze00QPvGt6EkBnz4YWCMRr38=;
 b=n2xJ6/RZ9lakCGTOY8uJPfXXvwV1o5NlQD7eI+1LP6YbrPPmKLBEyyI2Q+55IBn1UB
 lWwV5gNg28qiW6skjr0eOwsWim9lgQIebQax8/PDDZyOt660jlBHVciCctK2rgdKaLbG
 CJy6xlOLsB+yfdDZIwFPwhQgaKV0DMScpMLafRPGtTkT8r72W3eBdBfHSYhE25KQ+KrX
 iaOVNs+i+N5QUEwzUllfO3+7GVPaC5QB6Ae8x78yXOpnIQWjU47XBXH0D9DBDvZoJZg8
 yrdI7oqKqYBbMf+hbF87MK/fzPYxpJdos1ZzAf/hBUOxOgkR4H8kbPg01Ga3s0B/In1J
 7M8w==
X-Gm-Message-State: ANhLgQ1HZbpK10HxpCIN488D8WSuetEmSZ+8jDB95woQd8fDojIF4wwv
 jlGRjzTmR3Sq2gzp6YUwC4QfK0tTZkoGZSumcsJcNA==
X-Google-Smtp-Source: ADFU+vtJik8NSp1FnZI4YjNb2Y+iw3oCOKRIyxD47R3rfEGrNA1Ywfe/cEKGAWBVGf9RtW8IvODoCsveb82PZVjsVao=
X-Received: by 2002:ac2:5f7c:: with SMTP id c28mr3528125lfc.4.1585177322363;
 Wed, 25 Mar 2020 16:02:02 -0700 (PDT)
MIME-Version: 1.0
References: <1583780521-45702-1-git-send-email-opendmb@gmail.com>
In-Reply-To: <1583780521-45702-1-git-send-email-opendmb@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 26 Mar 2020 00:01:51 +0100
Message-ID: <CACRpkdZiqT4hOS6bqucW7uG1ZQeijKQ1_OX2n3F8xO_H3y4-xw@mail.gmail.com>
Subject: Re: [PATCH V2] gpio: brcmstb: support gpio-line-names property
To: Doug Berger <opendmb@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_160204_832284_334BC9F6 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Gregory Fong <gregory.0xf0@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 9, 2020 at 8:02 PM Doug Berger <opendmb@gmail.com> wrote:

> The default handling of the gpio-line-names property by the
> gpiolib-of implementation does not work with the multiple
> gpiochip banks per device structure used by the gpio-brcmstb
> driver.
>
> This commit adds driver level support for the device tree
> property so that GPIO lines can be assigned friendly names.
>
> Signed-off-by: Doug Berger <opendmb@gmail.com>

Patch applied with the ACKs!

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
