Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C1AB1D71DD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 09:32:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wL5BG1kP5qP3sC35L8LxH6VW8xW8JxPPZ8groIQiAy4=; b=CAGIP/dP2nbONz
	votcG0YwxxCmw86mHWhVoAJ/Si6hhCzL3cXqEabZ6g9AoUsnWzhgE3n+tQuqqKKfH7BxCHtFbirrR
	Wro+TteALisIgKxI1gq6M7bEuo+OxOKkRRFMLPDBvMDBKM8Zy36z1n481bvbi7cr2TL7/pzTyrIoA
	btC/cB0fZkrNIF8uwpBjfBC3nJEA8WxGbm8Kl5Iv9Zg43FxcEyqb77xUY2pqduLZ5/qkLwFTEqz/I
	JIs0IkilY4p+c6khbbzdlUWBMVMW/4xGqWQUc8CxWm4HVgVPVATNyTEkaaH5qzQf3cRkb2KYRjdtT
	DZarlj+s2n0RI/EWMY8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaaG2-0002Cq-MN; Mon, 18 May 2020 07:32:18 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaaFr-0002Bj-59
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 07:32:10 +0000
Received: by mail-lf1-x142.google.com with SMTP id x27so6998335lfg.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 00:32:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yDgJBK14qCAv+Ly5Qcs1dAnO6ksblSLGGgT9S8evwgc=;
 b=JS49KQEH/OR4uP/4njTqN6ALEiaaKHohd/LBQiGVcdrqaLVdBHQ2w5e33tHi3qdAcV
 r9/TEQFnykL839HJTEeOQyT9l62tOrOfSFETZeZBOfY04+GeZW0HIctkfKDt1KNXK2Yo
 JS81rztNjP13LyCgnV8yV0i4SLa4Sbp0On6MmGxPxGt+WinOHQR2ErBrg0Vp1t/HOr9J
 xCpO99Bf8AJIAKLlqEuA4cAHAxh+j853D0+NSddrXD5zbnBFs85R+hIRGjeb1HpNAhjL
 LYY8pBUf+UuGhj/2ULDY7YsLPcr99IGVuvU+38C2/rTzuDA84Zw1hYFiyUSoQorlH/4C
 5dAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yDgJBK14qCAv+Ly5Qcs1dAnO6ksblSLGGgT9S8evwgc=;
 b=rUrBdQZp8SlsvxJYw9Q111EJIs2Ck0ydnDpjKBhcxiPsEm/wVz9DCmxKFnEev+t/Lq
 cXDvOs9eBiq9GRKe4acISetjpDEgWVJdX2I+A+ACjiE/SPCoF93ZbSIwAx6r26D4nsoH
 6UUA7cZI5F8ood4xteWpZFXP5he/MdWQUGisS2rGTxxs0J0Jkyen6IwYA7hC2ubuhSaq
 PgJlL3zz/+NuTu7zNypXpYkl+sG5TmrjY0Htuu0SoBHkhvfaEOQQ7rjBGz0n3OEkTa/T
 SlR+xj7K3qPxwRxVMU1Rt0qCBUoppbi2fHYYtXsKw9/gqNjYh6VIuXkbfIL/OQFgKWwT
 nYwQ==
X-Gm-Message-State: AOAM531dwXpeStqmGxwTKnMSzAQf/qxXmQY244rNPAvpIA3arhxu6T1q
 4D+iXKeG9ylHgDF1dN2fGkG7wHOns2Kn7HuHTQPQgQ==
X-Google-Smtp-Source: ABdhPJwxV8YVto5NNCCuMGHZxBejD642Xxg/qE3YJ9UCpF1p3OO1llWxz/lGbdc0Fb6TgpRyFpP/j9gd8eCnm9Agq/U=
X-Received: by 2002:ac2:5cd1:: with SMTP id f17mr3837953lfq.4.1589787125044;
 Mon, 18 May 2020 00:32:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200513125532.24585-1-lars.povlsen@microchip.com>
 <20200513125532.24585-4-lars.povlsen@microchip.com>
In-Reply-To: <20200513125532.24585-4-lars.povlsen@microchip.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 18 May 2020 09:31:54 +0200
Message-ID: <CACRpkdYo7AUzWTeK+1ouq29R_7rVJ8cz=rjBHVTQjHFx9HmMQA@mail.gmail.com>
Subject: Re: [PATCH 03/14] pinctrl: ocelot: Fix GPIO interrupt decoding on
 Jaguar2
To: Lars Povlsen <lars.povlsen@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_003208_908903_A7F3FF7A 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 <devicetree@vger.kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Arnd Bergmann <arnd@arndb.de>, Stephen Boyd <sboyd@kernel.org>,
 Steen Hegelund <Steen.Hegelund@microchip.com>,
 linux-clk <linux-clk@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 SoC Team <soc@kernel.org>, Olof Johansson <olof@lixom.net>,
 Michael Turquette <mturquette@baylibre.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 2:56 PM Lars Povlsen <lars.povlsen@microchip.com> wrote:

> This fixes a problem with using the GPIO as an interrupt on Jaguar2
> (and similar), as the register layout of the platforms with 64 GPIO's
> are pairwise, such that the original offset must be multiplied with
> the platform stride.
>
> Fixes: da801ab56ad8 pinctrl: ocelot: add MSCC Jaguar2 support.
> Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>

This patch applied to the pinctrl tree.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
