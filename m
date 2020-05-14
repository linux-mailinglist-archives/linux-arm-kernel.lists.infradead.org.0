Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D4B1D29E1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 10:21:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KTxF7b2z01Qdo5iqB64fEVmBSPRV83A23H7tZ2dsreA=; b=Q6Xcd7y6y5dI9j
	ZvAIQw17Gz7/R0VkCzJJebq8ua9/k4HkbEo0ZHkFfag55qoPSvLTTHJJW0C0IfYAos63lmbdUh9eH
	l6K4V4mx4mbFMraUZumZ9uJRGu4dYxd5oeBFwcFr/9EhRNeZcz19vYvuMSMK2GiU4Z/AxroPfykig
	WSqYkf3DJHm+OqgbTJ/geqo7gv54JuiHOriFVoJ/gogZKvVDEb0yIo3gIaAZduAhOedmUi325N+LY
	BBTX/rLYev6nq0mH6JNszzU0zcoZo4/plj4jJ0C28PSAdhZOwGX2NtVQqiTr2rj4fJYe6YydtQ3f0
	ZpG9TwrVshwbKH9wE3iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ97U-0004kR-37; Thu, 14 May 2020 08:21:32 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ97L-0004jH-3q
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 08:21:24 +0000
Received: by mail-lj1-x244.google.com with SMTP id a21so2472511ljj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 01:21:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ylNyjxPU0jW9A5cG6J8lYn77ZbNao4PuP4byNxuwb40=;
 b=pL+XB6xDy0cGnanxPxZeCoXI+0/bH/MJrC9FZHLbSFeABMiSHzmaFy/I+vlbadTqdg
 moVU55iWLxpm1nnhHrCGKzA2uK7DqkWVrHrypLWkQ77O98C65VIQg4eWTACmBhqQAvbe
 pHSqklAJtsA1BGN8aJrEPgAzkjuaIRy0vNfWRPOiZ0Gx9pkVb9qjr26pYd9MiqLjtOJr
 54QU9Kl6XwBPNiecFaQ5Q2UN0C0xobJnHAsuUb9l4eWMcWJxS8krPxWVDver5JV680GH
 IzpZdlsYOHiSkmT8GBGTZ0VfuqV8Pk7Uv4HSe7NIk0lkUADLNFPO/dZ01aPB2TJo4RoU
 he7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ylNyjxPU0jW9A5cG6J8lYn77ZbNao4PuP4byNxuwb40=;
 b=nGlnus6MIEnSvhFJTsu5jxECiGfmgyO8H0XJl3a0m4FOksAKOP2fd88XcjFxQQbmnq
 qaH+xcL9FAuW0m5+RGlVN9UCPhCnwMgmlfHdaIpBPUa0lxrWOXD2rbvQVJ7Pc4A2HxPb
 8dcrJLWyp54zxMp+5FWM2zjOOwY62ki1vEgXcjnrcb7qH4csGZfQoDkgo4G/mYE8hJ4T
 0d0eYHNiJFt3Ubr6iRID6YtfbbN+FIrGafgykmEK2JM9/QxnItKLgdYrSt8Rtk7CJl2t
 az3KgucGuBybZYNYRLgMGi4GbSDS9+6RupUd+dlYCDPzgSgPyawPTPzMr9SfNMs5kV7G
 KH5A==
X-Gm-Message-State: AOAM532wagArCIl59bdrBo0wOMtMqM5hEJWX8cSZzGE6kBpJgXtWNkeZ
 cRQFxgsTvfhb3Mb/LMUSF5BBQeDm6Dk1r8i7PfZt6g==
X-Google-Smtp-Source: ABdhPJyRERMIh+MQZPItj7QatuGXtUx06mgJ88uloHfqTCykxSiONeYCm+tNHIHuv9MC+hs2Hr0mPlFfLP8XGnr3zRA=
X-Received: by 2002:a2e:531e:: with SMTP id h30mr1125043ljb.168.1589444480845; 
 Thu, 14 May 2020 01:21:20 -0700 (PDT)
MIME-Version: 1.0
References: <1589267017-17294-1-git-send-email-dillon.minfei@gmail.com>
 <1589267017-17294-3-git-send-email-dillon.minfei@gmail.com>
In-Reply-To: <1589267017-17294-3-git-send-email-dillon.minfei@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 14 May 2020 10:21:09 +0200
Message-ID: <CACRpkdZUyRh0KZzRxsdfFU_L-F=Ns0j1d3eR-ermhx2Gb0Zrgg@mail.gmail.com>
Subject: Re: [PATCH v3 2/5] dt-bindings: display: panel: Add ilitek ili9341
 panel bindings
To: dillon.minfei@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_012123_159877_0A3B376B 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Alexandre TORGUE <alexandre.torgue@st.com>,
 Dave Airlie <airlied@linux.ie>, Michael Turquette <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 linux-clk <linux-clk@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sam Ravnborg <sam@ravnborg.org>, linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 12, 2020 at 9:03 AM <dillon.minfei@gmail.com> wrote:

> From: dillon min <dillon.minfei@gmail.com>
>
> Add documentation for "ilitek,ili9341" panel.
>
> Signed-off-by: dillon min <dillon.minfei@gmail.com>

This looks good to me.
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
