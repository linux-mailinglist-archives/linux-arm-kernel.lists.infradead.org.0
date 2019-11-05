Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9B19F00BE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 16:06:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EUzzFWfi/m4k6f0Ks00PMsXiXpUFqjjdBtPTtqubzwk=; b=gZCsmLlHDN/rFR
	KBmU0r0Mv032KdYh2P0txrzT4G43l87+2iYzed+XFEv0dAn9Avrx6HHCq2QOXwnfAJyaEs0rbbAgA
	e924uw1ikT4ucGPHsW+5f8vErPPz3z2DwQCFqyNPgxfERGcUv/gC8kxCTR2iyXSh/2l+BETqKarle
	SRBFBuzHyGWUnTvvEE4YgBXUiQrQhwVL6e9pYzUEpHL2olqhCg+a8ozlZIbfXsLs4MVrjaWn35eVc
	m6/Yf5W536A4cmc3+8kfnYYImaajGqLXjxfpLCRtSYAaoSmNVbyaDP4O3pJMNAjGQ+nuSocV8XtW+
	GMISYrkh7j3knyNb7WGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS0Pt-0002IU-ES; Tue, 05 Nov 2019 15:06:45 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS0Pl-0002I5-EG
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 15:06:38 +0000
Received: by mail-lj1-x242.google.com with SMTP id g3so16101778ljl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 07:06:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XeLKSI0KpVKh7U51GFQKhu41G/kKMM6hiwNkiVQAYno=;
 b=vmLGemzHKaxLBgLOj8ysaBgUxFMaOKKjcTIanlNzhYP69lx4N1ogVqivjUM37D2rJU
 mqZpFLjzo/ZL8PcdliQcdNt45so0lInDzm5XPZpxb1dEXl776kPWKrmh47wo2KHWKBiS
 OihVcAcKa7ILvYycaHoOqrGsb/Xv569qGfL5cyivyxmpqWoV70XY2FaTfZ4Nn4xQiBsv
 7FcYcUKl5Yun5MQhkq6/S3MoubixSgNFspwkPZUoQQxzpKOqlkR4hn9SmDQqQpgZpaP4
 ea/FaQ/9Ig6WlPkVHuj6Fj2xBUe3a5dMC/UZ3Z/D2iXjk3U6bGdWAoxHw5RPFdN0or70
 1pFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XeLKSI0KpVKh7U51GFQKhu41G/kKMM6hiwNkiVQAYno=;
 b=MMkVGr4JRfWLzB20RSGIfqeOWcc2YpDmUC+NWZjyTRdt90vQU1vBj+X6D/7FANBWcN
 V/cUeIusbKjkukxFKtmdl2lrD2zET/rSXXHFGhJ0IGlDn4RYFCXtDFU54EN7rU23Ug7T
 njtW1d+qoJ8rjd+8g+XGQotPQ7Y3WuL4BrQnPCE46BmVLrk2JgMhMJ0vHfIqt/lwy0dI
 FWX6oDsR7WSjlS/BzQtwo4gU8SVDN1I6Gke2WUGJFCMtL34Q8LBwCf4kTqwrYQJfnHzd
 WkEKIkhtW12TatYIyMzH2byl0wnLyR+oflFo+UurugKHwg/MV7bLTeQHXk08sj4kBLv+
 uLxA==
X-Gm-Message-State: APjAAAXzxoFOcYJYi9eEngy2/dUHWj15jRVfteFG2YbSNhJ0+1TY7p6t
 tGAiSNY5rgtZjMhgQcp3f4fgOZpQ0MEa/TgJtYg1cg==
X-Google-Smtp-Source: APXvYqwnwnosIbALQWhH9iE66VbRevpNKoo2+AlOIGbO/YK+JvXEq7xF97GQzxccFEeM+dwg//oNT6x78p7b0HM0Jk0=
X-Received: by 2002:a2e:9a12:: with SMTP id o18mr16050255lji.191.1572966395420; 
 Tue, 05 Nov 2019 07:06:35 -0800 (PST)
MIME-Version: 1.0
References: <20191104163834.8932-1-andrew.murray@arm.com>
 <20191104163834.8932-4-andrew.murray@arm.com>
In-Reply-To: <20191104163834.8932-4-andrew.murray@arm.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 5 Nov 2019 16:06:24 +0100
Message-ID: <CACRpkdYcUFkUUG8jQ=9i9LDpKbrzqNR0o_eLObijXn4YiBHOJw@mail.gmail.com>
Subject: Re: [PATCH v1 3/7] arm: dts: Use IRQ flags for legacy PCI IRQ
 interrupts
To: Andrew Murray <andrew.murray@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_070637_481878_8A04AB55 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 <devicetree@vger.kernel.org>, Jesper Nilsson <jesper.nilsson@axis.com>,
 Antoine Tenart <antoine.tenart@bootlin.com>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Andy Gross <agross@kernel.org>, linux-arm-kernel@axis.com,
 Rob Herring <robh+dt@kernel.org>, Lars Persson <lars.persson@axis.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Santosh Shilimkar <ssantosh@kernel.org>, MSM <linux-arm-msm@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Tsahee Zidenberg <tsahee@annapurnalabs.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 4, 2019 at 5:39 PM Andrew Murray <andrew.murray@arm.com> wrote:

> Replace magic numbers used to describe legacy PCI IRQ interrupts
> with #define.
>
> Signed-off-by: Andrew Murray <andrew.murray@arm.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Thanks for just changing them all in one patch, it is swift and elegant
patching.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
