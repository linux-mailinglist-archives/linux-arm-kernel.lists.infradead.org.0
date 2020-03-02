Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41362175B1D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 14:03:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DQwm9M6GGjljO/V/2rs22SrexSQXloMkC2c5HsTWgXE=; b=D+hjytIGMK7I23
	MkefPd0xg0LlrQc37krCsiEuT71k3+dUMcIIfRG6LAGm9KBfwC5pBwKS6TRgvZSvI39V4tTjuDNoM
	RPnpu7ZVvmzouFoYTx8rNLUNDWxEdf8AGefhYmbB7Olh/5/rlQxejNxE/SMFQNONBfZ4Oe+Bt1s0p
	QaiQvw1XuPY/1fIQlPrdhidVuUxxwgYdYoSPuzbrseY1PorPVn6xg0lxWk0i+oJ7iokCY5sFIZ2/9
	gVDJtxrH5v28wJoPhs1nXGa1Ug4dldPR2j/OD2GJVOTghBI8wIPlmQPCqakMgSuoQgr+JFr+nQn7H
	pDk7bIbb4Y+Ns20Xuv1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8kjP-0005X5-1P; Mon, 02 Mar 2020 13:03:35 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8kj8-0005VO-6c
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 13:03:20 +0000
Received: by mail-wm1-x344.google.com with SMTP id 6so2620895wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 05:03:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=f5W1+VDAgXwgm27HM/dSDLhd13oiMZYWRhU39zs/56E=;
 b=VL/p5u5MxrqPbpsnUeJsGg2+zaymsNPsSrtX5LtlbBRHPR76xpwAIdpoQHUrT6O4V1
 pX1Rx+/fXWiSwINUtEK0K/8KGG2HELuv/iC7xs3o+eTJFwTP/4LWzlV6RsIea8jnx7At
 1pSkBdZN9ts1P1uRZfp6QGYYpPM9Duws82fEKXb2768hofcvnzC4HKu54ZPghM1mEUsS
 l1082Gy8362KF11dmaJXhzbvtYPLadAcMDEfAePw4SjI/TjhEINjpF3gS5GIBzhSNCV+
 gZS6LnQ/Lmowm4Tr5hRtPbgompWe8tdEEmI+rfhByH2LGl2hnYhZxb/Tav/6Ik6onMXm
 yy9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=f5W1+VDAgXwgm27HM/dSDLhd13oiMZYWRhU39zs/56E=;
 b=rEa0rYBBkTM9e778qdUJ4+Y2a/bL1AgQOzweOip33DCj7yXgBoAuQiAl4fjaa5Rkt9
 aZtWIGIXXKobj2unjPsAZJTPQ3LaNj40b81xIrYzyG5M4ylLF9SS/facx2LRyNrkOBRA
 BcQbQFzagtsQpkRDsN1ADISZyjHlHswlKx5Tsuu63YtALzR7kO5ZJwFBlowivXKuwPAj
 PyZwwtMScTmp4Ll39tNYBc3p8M1IfoFnkbprENw0wE0qmXQVKUA8qCiDC862clm5XYnM
 uLnF6NWAPqW7/VWRQvVRtfrYVu7VXSW13pZ7DIQfXwsy3kKToL6Ki8ShBygQrUHxeP9X
 XTdA==
X-Gm-Message-State: APjAAAVCVXUE9cKwZpGxOPO2FA0nZKc/KjLNePRnxg2XKhZM8wHyGnQh
 znqMTOhBui5Q6/vKbVfsNMkFb0SsJndw+6LkBSQ=
X-Google-Smtp-Source: APXvYqz6WKuyVy/9PnCleaCMggOFDoRnbRnI+UO7wa56fEel46cxxunC5R0QhS7cAoxr0JV2ipGv7rbIhc+DRETlFzU=
X-Received: by 2002:a05:600c:2c13:: with SMTP id
 q19mr20166181wmg.144.1583154195913; 
 Mon, 02 Mar 2020 05:03:15 -0800 (PST)
MIME-Version: 1.0
References: <20200228213838.7124-1-christophe.jaillet@wanadoo.fr>
In-Reply-To: <20200228213838.7124-1-christophe.jaillet@wanadoo.fr>
From: Jonas Gorski <jonas.gorski@gmail.com>
Date: Mon, 2 Mar 2020 14:03:04 +0100
Message-ID: <CAOiHx=me0H6xjz__bJthvF0=MGJfTcRyxd8mM1SD0fwjXpVERw@mail.gmail.com>
Subject: Re: [PATCH] spi: bcm63xx-hsspi: Really keep pll clk enabled
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_050318_267241_FA83ED1E 
X-CRM114-Status: GOOD (  22.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jonas.gorski[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 Mark Brown <broonie@kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 28 Feb 2020 at 22:38, Christophe JAILLET
<christophe.jaillet@wanadoo.fr> wrote:
>
> The purpose of commit 0fd85869c2a9 ("spi/bcm63xx-hsspi: keep pll clk enabled")
> was to keep the pll clk enabled through the lifetime of the device.
>
> In order to do that, some 'clk_prepare_enable()'/'clk_disable_unprepare()'
> calls have been added in the error handling path of the probe function, in
> the remove function and in the suspend and resume functions.
>
> However, a 'clk_disable_unprepare()' call has been unfortunately left in
> the probe function. So the commit seems to be more or less a no-op.
>
> Axe it now, so that the pll clk is left enabled through the lifetime of
> the device, as described in the commit.

Good catch!

Acked-by: Jonas Gorski <jonas.gorski@gmail.com>

>
> Fixes: 0fd85869c2a9 ("spi/bcm63xx-hsspi: keep pll clk enabled")
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> ---
> To be honest, I don't see why we need to keep pll clk, or hsspi clk
> enabled during the lifetime of the driver. My understanding of the code is
> that it is only used to get the 'speed_hz' value in the probe function.
> This value is never refreshed afterwards.
> I don't see the point in enabling/disabling the clks. I think that they
> both could be disabled in the probe function, without the need to keep
> track in the bcm63xx_hsspi structure, neither during pm cycles or the
> remove fucntion.

The hsspi clock is actually gated, so it needs to stay on during use.
The pll clock is only used to convey the rate, but is not gate-able.
These used to be the same (that's why it checks for the rate of the
hsspi clock first), but were split to make it easier to move to common
clock framework (since we can just use the generic gated and
fixed-rate clock implementations).

Incidentally these are AFAIK also two inputs, so it even happens to
match the hardware more closely.

Since the pll clock isn't gated, we don't need to keep it enabled - we
don't even need to enable it in theory, but IIRC the common clock
system will complain if you try to get the rate of a non-enabled
clock. And if we do enable it, then we can also just keep it enabled
over the lifetime of the device.

Regards
Jonas

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
