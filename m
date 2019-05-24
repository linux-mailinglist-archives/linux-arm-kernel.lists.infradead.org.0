Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6C072971D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 13:25:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VgbQ/UVCGsWqpSpZItbroQfp+KRYU+VrGdCShX9ShBE=; b=fHqDaNCCz+AXvH
	a+E9TI41jlxqPD4S4hrRL0zod6Qg+BjDmxjZV2TDImupdf0kFtUqjuH7F0bTncdraAnYD5QM8iHS/
	y2BWNYBjWgihmhRN5RL3xvl3fEFisuDIm6oQotgErh4yKJjc804W+YN0p46NV4kFPESrGy24Xk6CV
	whyiyFYX/oq/WwsgHOSnhMRZs/37ZAE6fnMJ0sccbmcROhHQkBIqLZjWpIucY1TVVWiYOsquha0id
	/xouGXdZ5frokFbHUXd9haVhSJeNip7KmvxgsjsoQWu2bnrSl99wjpEszqEY5DufdenV0YDvS93xj
	4psIGmJxsqARXJQagtvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU8Jr-0001dc-Pl; Fri, 24 May 2019 11:25:03 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU8Jf-0001bC-H2
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 11:24:55 +0000
Received: by mail-qk1-x743.google.com with SMTP id p26so4363613qkj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 04:24:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pJOfEs/MqDUbj+5GWfxqoTL+Bnu2gJiCCqBKbfD1wrw=;
 b=Cvl7JA+e+AVFmYWhu4jfB9IBFJMs3UrJuQAHr8G84WfcFbHYYdnqNhSCTe+ZtcSnWf
 rzXWKMc6HTAUDclUVjYUUww8hXPFS50T6YXTCSLdGrNaqWPnMnrQxAd6MoOgU6DzPuz5
 BrMBv068cpA54YqwABzC/8gwXnsigRRsGM/gtorFnLkDK+whFy50WUW8FVR57zy4AWE+
 kNzBR+1njXc1ImbB9goDKdUvjbNPZcXF7yDvJb3YZUZUR/pYPtQiNXXfqiow8V//vFpR
 KfTsSDiGsVVBdvgCwXal2d90XQF3X0YgmERFZmDMipobhdPM/xt/Xtu2BfXtCE7+LitZ
 GPOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pJOfEs/MqDUbj+5GWfxqoTL+Bnu2gJiCCqBKbfD1wrw=;
 b=V2sBB+QkJvxYJjf6NHhjdkq334Sn8Ix5/8NVmu8muU0WAqUemfRtGJGRdEYlOmH7/c
 8L8QmJe3HysvSDcB9FQTtTZDM+jb5url/4+yUixD0JlxgmkNgCWk5PO0Y/Lb8awaNbNn
 uYlgFYUbBa8eNmgoQOZRfUc4SwyWSWCZFWZHoDaZ0MT00wIMNHN4jdut6GncwJ/QZVvS
 HeMUxabyxyupuRIWcIBtOJlkGyKIFvjXI+a6W9awmqhHZp9YIQshuTWmWP8l4oKsyvgK
 TTXNZ1X7rT45sz2Rc+uL9F2ZyFNdhFxAftVDqSSYVaGxrKekQUsG25rm4pneNzhq7s9e
 bhQA==
X-Gm-Message-State: APjAAAWbbQ/cN2vaf29PxkSW8iTGrvHk2x0bsvJlnGFKr6dn/9ScVthp
 VGNkRSPv5NGFj1QR2P9davOvoWbp7pRWWmtd5Spn7Xvw
X-Google-Smtp-Source: APXvYqwdg7Y2VtK6CWVYHgo4gTEBhE8cGin8YUEKNu+EbS+93jSoldSI3JTfoxGuJdQANtMMQQ2lmSxsjjO2/iAmeuA=
X-Received: by 2002:ac8:2291:: with SMTP id f17mr33453092qta.51.1558697090303; 
 Fri, 24 May 2019 04:24:50 -0700 (PDT)
MIME-Version: 1.0
References: <1557474150-19618-1-git-send-email-alexandre.torgue@st.com>
In-Reply-To: <1557474150-19618-1-git-send-email-alexandre.torgue@st.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 24 May 2019 13:24:37 +0200
Message-ID: <CACRpkdYgTbTa6RmM3y-myk31ZxLGZ+8KvLof1XHkockrX4tofA@mail.gmail.com>
Subject: Re: [PATCH 0/2] pinctrl: stm32: add suspend/resume management
To: Alexandre Torgue <alexandre.torgue@st.com>,
 Benjamin Gaignard <benjamin.gaignard@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_042451_592743_2B722C5D 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 10, 2019 at 9:42 AM Alexandre Torgue
<alexandre.torgue@st.com> wrote:

> During power sequence, GPIO hardware registers could be lost if the power
> supply is switched off. Each device using pinctrl API is in charge of
> managing pins during suspend/resume sequences. But for pins used as gpio or
> irq stm32 pinctrl driver has to save the hardware configuration.
> Each register will be saved at runtime and restored during resume sequence.

Both patches applied.

On the same pinctrl devel branch is also Benjamin's patches to support
the "link_consumers" property on the pin controller descriptor to
enable links from pin control consumers back to their pin controller
suppliers, especially important for STMFX.

Would you please check if it work fine if you turn on this feature
for the SoC STM32 pin controller?

I am working a bit on refining the patches, so I want to enable testing
with some SoC pin controllers as well and possibly make the
behavior default.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
