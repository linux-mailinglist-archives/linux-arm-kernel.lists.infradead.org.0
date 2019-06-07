Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 699D83989A
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 00:25:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RhdmVAhNlmEvbttb+5qwVhkOnTyUvKYDB6omQIsmzMk=; b=bPIyUsFuXiutPp
	u29xzDDxhHdv04bbkB4dKpK8pbCS+T/bWX4encRfZ88cXcoZhPv1g+O6o5e8EmoEjdo5+FHB6iMgJ
	7AJnO/6yTI6JeR19wXUucF0uEAg1P5G9EX6c6guBVoNqY9hXN+FgHiPU1jLqfZrD4EFiU2+erKtML
	1IKFGjFfR9ok/dyfFWtCtpKLKH70bTBpzjzmYEo92m8CVkC8HBcBke+CsyXZ2alO4zW0kaJynef9q
	6GYMkd8W0nuoKxi1TNKc3kg9P9Tln37X+8E3gZe3K9w6BcLWpYT/Ze+onN/I9ZJ0VgwgIwwfhhey6
	O/zocf+FOpDmk/gpiOLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZNIj-0000VU-R8; Fri, 07 Jun 2019 22:25:33 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZNIc-0000Uv-6I
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 22:25:27 +0000
Received: by mail-lf1-x144.google.com with SMTP id r15so2709143lfm.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 15:25:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rGW8Zw9vrerYLKuQT2nRCi+4sph/YuDXDjL6O2OUlyY=;
 b=YoToUoWcx3852gvqkcDqaAMEmvxpkHkiUSN4e9zc8dZ3goxm71AXrawyITaIP5GLLS
 rx8hYH26Xwb+TFFur666Px//Tfwd4vaFmukaXEVxWybwGOTaBZBGIruWs4fpO789FIy6
 AHnYYBcAvstBHMkkTugoQ3vKfE+mGkEWW0d2EV8/DQkiXnUerfubSJdBuU70KlkB2QLa
 HB7QXW6NkYRO8/wG9fo4DrzI2En8SOVEcua2UQk/+9wJ4XDCsURRpCMV2n112gAgRjt/
 g+Wd1S1krdN31vYrT3InbPW9RpSg4p1pHwLs1HVgEEfY/NHDHfgty7gAJ/Au1Rlud4qS
 sDfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rGW8Zw9vrerYLKuQT2nRCi+4sph/YuDXDjL6O2OUlyY=;
 b=QwH74pTUejsTiR4B+ts8FW8xk2hf2z5EMe5p2QpZWPgWqh6BmgIf081+Clfa9OWlFo
 CJQFUcuVmuH1rLJ2wODOBH0E51azMXjMddBMjmhDYkaWz06Q82EagLexLBkdWq2S48U+
 qMeuDPmUe+TJY1iQIWj9upOLvBOkqQkPJ5xi90DcL/VYgYNAqXWqxuK+SIX04XkBnuBZ
 Qk6t8jAv4XIFhQ/ACo+No0ekocBNsZMZCLl9SgGsgEMrZm7M7KO2pm65Z/Zaynkl/iYa
 pjl5DkzLAEuefD+rB2pH8ECcdBpFR/yj2+fxvKVRov4vRr/bsHfX+kputly5op1s6frD
 Wo6A==
X-Gm-Message-State: APjAAAVYh6ZkWShFdiz/e6AGPeHNxpKAaWwdqVsEcfjTrOQya/KzLf7z
 WARiha/yhb/ZcBkUl0ZA19eo/4QfctzrOgFD0sJPiw==
X-Google-Smtp-Source: APXvYqxNvBh6hAcA49cetya1d7GzlkGbHULmzKnolLcB2hj9KdHRpewtAF6MLQb+nLBB50KHLqayPIOHqmuTwhkTOL0=
X-Received: by 2002:ac2:50c4:: with SMTP id h4mr14458737lfm.61.1559946324431; 
 Fri, 07 Jun 2019 15:25:24 -0700 (PDT)
MIME-Version: 1.0
References: <1559684524-15583-1-git-send-email-hongweiz@ami.com>
In-Reply-To: <1559684524-15583-1-git-send-email-hongweiz@ami.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 8 Jun 2019 00:25:16 +0200
Message-ID: <CACRpkdYW3rezzJ3XAuuSNNsRiDh9nYNL8NNFjaZ=_NeXrmZbqA@mail.gmail.com>
Subject: Re: [PATCH 1/3 linux dev-5.1 arm/soc v2] ARM: dts: aspeed: Add SGPM
 pinmux
To: Hongwei Zhang <hongweiz@ami.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_152526_237980_567C7035 
X-CRM114-Status: UNSURE (   8.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 <devicetree@vger.kernel.org>, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 4, 2019 at 11:42 PM Hongwei Zhang <hongweiz@ami.com> wrote:

> Add SGPM pinmux to ast2500-pinctrl function and group, to prepare for
> supporting SGPIO in AST2500 SoC.
>
> Signed-off-by: Hongwei Zhang <hongweiz@ami.com>

Acked-by: Linus Walleij <linus.walleij@linaro.org>

Please funnel this part of the patch through the ARM SoC
tree. I guess Joel will queue this?

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
